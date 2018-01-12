// <copyright>
// Copyright by the Spark Development Network
//
// Licensed under the Rock Community License (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.rockrms.com/license
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// </copyright>
//
namespace Rock.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    /// <summary>
    ///
    /// </summary>
    public partial class InteractionBlocks : Rock.Migrations.RockMigration
    {
        /// <summary>
        /// Operations to be performed during the upgrade process.
        /// </summary>
        public override void Up()
        {

            #region Interaction Pages/Blocks

            RockMigrationHelper.AddPage( true, "BB0ACD18-24FB-42BA-B89A-2FFD80472F5B", "D65F783D-87A9-4CC9-8110-E83466A0EADB", "Interactions", "", "A9661D86-83B6-4AC1-B988-B5CC942A9ED6", "" ); // Site:Rock RMS
            RockMigrationHelper.AddPage( true, "A9661D86-83B6-4AC1-B988-B5CC942A9ED6", "D65F783D-87A9-4CC9-8110-E83466A0EADB", "Sessions", "", "756D37B7-7BE2-497D-8D37-CC273FE29659", "" ); // Site:Rock RMS
            RockMigrationHelper.AddPage( true, "A9661D86-83B6-4AC1-B988-B5CC942A9ED6", "D65F783D-87A9-4CC9-8110-E83466A0EADB", "Components", "", "AF2FBEB8-1E47-4F51-A503-3D73C0D66B4E", "" ); // Site:Rock RMS
            RockMigrationHelper.AddPage( true, "AF2FBEB8-1E47-4F51-A503-3D73C0D66B4E", "D65F783D-87A9-4CC9-8110-E83466A0EADB", "Component", "", "9043D8F9-F9FD-4BE6-A50B-ABF9821EC0CD", "" ); // Site:Rock RMS
            RockMigrationHelper.AddPage( true, "9043D8F9-F9FD-4BE6-A50B-ABF9821EC0CD", "D65F783D-87A9-4CC9-8110-E83466A0EADB", "Detail", "", "B6F6AB6F-A572-45FE-A143-2E4B8F192C8D", "" ); // Site:Rock RMS

            Sql( @"
    UPDATE [Page] SET [BreadCrumbDisplayName] = 0
    WHERE [Guid] in ( '756D37B7-7BE2-497D-8D37-CC273FE29659', 'AF2FBEB8-1E47-4F51-A503-3D73C0D66B4E', '9043D8F9-F9FD-4BE6-A50B-ABF9821EC0CD' )
" );

            RockMigrationHelper.AddPageRoute( "756D37B7-7BE2-497D-8D37-CC273FE29659", "sessions/{ChannelId}", "81DD168F-AE66-4751-961F-75C79B282043" );// for Page:Sessions
            RockMigrationHelper.AddPageRoute( "AF2FBEB8-1E47-4F51-A503-3D73C0D66B4E", "components/{ChannelId}", "488065D3-B22D-4DCE-B766-E75F618DE405" );// for Page:Components
            RockMigrationHelper.AddPageRoute( "9043D8F9-F9FD-4BE6-A50B-ABF9821EC0CD", "Component/{ComponentId}", "F6857FFC-BED9-48D9-9BC1-5FA720817A35" );// for Page:Component
            RockMigrationHelper.AddPageRoute( "B6F6AB6F-A572-45FE-A143-2E4B8F192C8D", "Interaction/{InteractionId}", "99308209-C898-47D5-BF1F-E27AE9192EA6" );// for Page:Detail

            RockMigrationHelper.UpdateBlockType( "Interaction Channel Detail", "Presents the details of a interaction channel using Lava", "~/Blocks/Reporting/InteractionChannelDetail.ascx", "Reporting", "F722A03E-C344-40B1-B87D-EB90E2BCBC47" );
            RockMigrationHelper.UpdateBlockType( "Interaction Channel List", "List all the Interaction Channel", "~/Blocks/Reporting/InteractionChannelList.ascx", "Reporting", "FBC2066B-8E7C-43CB-AFD2-FA9408F6699D" );
            RockMigrationHelper.UpdateBlockType( "Interaction Component Detail", "Presents the details of a interaction channel using Lava", "~/Blocks/Reporting/InteractionComponentDetail.ascx", "Reporting", "926261B2-CF4C-4B1F-A384-CD83696CFBC2" );
            RockMigrationHelper.UpdateBlockType( "Interaction Detail", "Presents the details of a interaction using Lava", "~/Blocks/Reporting/InteractionDetail.ascx", "Reporting", "B6AD2D98-0DF3-4DFB-AE2B-A8CF6E21E5C0" );
            RockMigrationHelper.UpdateBlockType( "Interaction List", "List all the Interaction", "~/Blocks/Reporting/InteractionList.ascx", "Reporting", "468119E3-41AB-4EC4-B631-77F326632B35" );
            RockMigrationHelper.UpdateBlockType( "Interaction Session List", "List all the Interaction Session", "~/Blocks/Reporting/InteractionSessionList.ascx", "Reporting", "EA90EF4F-C783-48CD-B575-AD785DE896E9" );
            RockMigrationHelper.UpdateBlockType( "Interaction Component List", "List all the Interaction Component", "~/Blocks/Reporting/InteractionComponentList.ascx", "Reporting", "00FF58B1-A433-43AA-82C9-45F8F58FBE9F" );

            // Add Block to Page: Interactions, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "A9661D86-83B6-4AC1-B988-B5CC942A9ED6", "", "FBC2066B-8E7C-43CB-AFD2-FA9408F6699D", "Interaction Channel List", "Main", @"", @"", 0, "8C11CA76-6AD8-4C1F-8889-A9C38FE5C966" );
            // Add Block to Page: Sessions, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "756D37B7-7BE2-497D-8D37-CC273FE29659", "", "F722A03E-C344-40B1-B87D-EB90E2BCBC47", "Interaction Channel Detail", "Main", @"", @"", 0, "44FACA50-0358-4A1D-B65C-4F36B26D345B" );
            // Add Block to Page: Sessions, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "756D37B7-7BE2-497D-8D37-CC273FE29659", "", "EA90EF4F-C783-48CD-B575-AD785DE896E9", "Interaction Session List", "Main", @"", @"", 1, "0FCDA1B8-B3F1-4E78-8FCF-E81F2CA77D05" );
            // Add Block to Page: Components, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "AF2FBEB8-1E47-4F51-A503-3D73C0D66B4E", "", "00FF58B1-A433-43AA-82C9-45F8F58FBE9F", "Interaction Component List", "Main", @"", @"", 1, "16884BC7-3185-4E8F-A93A-AF9F3B165DE0" );
            // Add Block to Page: Components, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "AF2FBEB8-1E47-4F51-A503-3D73C0D66B4E", "", "F722A03E-C344-40B1-B87D-EB90E2BCBC47", "Interaction Channel Detail", "Main", @"", @"", 0, "1470D93A-99DC-4AFE-8940-2989CA71BE10" );
            // Add Block to Page: Component, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "9043D8F9-F9FD-4BE6-A50B-ABF9821EC0CD", "", "926261B2-CF4C-4B1F-A384-CD83696CFBC2", "Interaction Component Detail", "Main", @"", @"", 0, "A3B7BF73-6D9E-460E-B7E6-A8FA399B20DD" );
            // Add Block to Page: Component, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "9043D8F9-F9FD-4BE6-A50B-ABF9821EC0CD", "", "468119E3-41AB-4EC4-B631-77F326632B35", "Interaction List", "Main", @"", @"", 1, "5BB4CDA1-8B5A-49BB-910C-7BC9B31F5575" );
            // Add Block to Page: Detail, Site: Rock RMS
            RockMigrationHelper.AddBlock( true, "B6F6AB6F-A572-45FE-A143-2E4B8F192C8D", "", "B6AD2D98-0DF3-4DFB-AE2B-A8CF6E21E5C0", "Interaction Detail", "Main", @"", @"", 0, "FF05ED3A-B1E5-465E-A78F-68A4F9803C48" );

            // update block order for pages with new blocks if the page,zone has multiple blocks
            Sql( @"UPDATE [Block] SET [Order] = 0 WHERE [Guid] = '1470D93A-99DC-4AFE-8940-2989CA71BE10'" );  // Page: Components,  Zone: Main,  Block: Interaction Channel Detail
            Sql( @"UPDATE [Block] SET [Order] = 0 WHERE [Guid] = '44FACA50-0358-4A1D-B65C-4F36B26D345B'" );  // Page: Sessions,  Zone: Main,  Block: Interaction Channel Detail
            Sql( @"UPDATE [Block] SET [Order] = 0 WHERE [Guid] = 'A3B7BF73-6D9E-460E-B7E6-A8FA399B20DD'" );  // Page: Component,  Zone: Main,  Block: Interaction Component Detail
            Sql( @"UPDATE [Block] SET [Order] = 1 WHERE [Guid] = '0FCDA1B8-B3F1-4E78-8FCF-E81F2CA77D05'" );  // Page: Sessions,  Zone: Main,  Block: Interaction Session List
            Sql( @"UPDATE [Block] SET [Order] = 1 WHERE [Guid] = '16884BC7-3185-4E8F-A93A-AF9F3B165DE0'" );  // Page: Components,  Zone: Main,  Block: Interaction Component List
            Sql( @"UPDATE [Block] SET [Order] = 1 WHERE [Guid] = '5BB4CDA1-8B5A-49BB-910C-7BC9B31F5575'" );  // Page: Component,  Zone: Main,  Block: Interaction List
            
            // Attrib for BlockType: Interaction Channel Detail:Default Template
            RockMigrationHelper.UpdateBlockTypeAttribute( "F722A03E-C344-40B1-B87D-EB90E2BCBC47", "1D0D3794-C210-48A8-8C68-3FBEC08A6BA5", "Default Template", "DefaultTemplate", "", @"Lava template to use to display content", 0, @"
<div class='row'>
    {% if InteractionChannel.Name != '' %}
        <div class='col-md-6'>
            <dl><dt>Name</dt><dd>{{ InteractionChannel.Name }}<dd/></dl>
        </div>
    {% endif %}
    {% if InteractionChannel.ChannelTypeMediumValue != null and InteractionChannel.ChannelTypeMediumValue != '' %}
        <div class='col-md-6'>
            <dl><dt>Name</dt><dd>{{ InteractionChannel.ChannelTypeMediumValue.Value }}<dd/></dl>
        </div>
    {% endif %}
    {% if InteractionChannel.RetentionDuration != '' %}
        <div class='col-md-6'>
            <dl><dt>Retention Duration</dt><dd>{{ InteractionChannel.RetentionDuration }}<dd/></dl>
        </div>
    {% endif %}
</div>
", "DF6E249D-092F-459F-8ABF-965AEBBA52F7" );
            // Attrib for BlockType: Interaction Channel List:Default Template
            RockMigrationHelper.UpdateBlockTypeAttribute( "FBC2066B-8E7C-43CB-AFD2-FA9408F6699D", "1D0D3794-C210-48A8-8C68-3FBEC08A6BA5", "Default Template", "DefaultTemplate", "", @"The Lava template to use as default.", 2, @"
{% if InteractionChannel != null and InteractionChannel != '' %}
    <a href = '{% if InteractionChannel.UsesSession == true %}{{ SessionListPage }}{% else  %}{{ ComponentListPage }}{% endif %}?ChannelId={{ InteractionChannel.Id }}' >
        <div class='row'>
            <div class='col-md-6'>
                {% if InteractionChannel.Name != '' %}<dl><dt>Name</dt><dd>{{ InteractionChannel.Name }}<dd/></dl>{% endif %}
                {% if InteractionChannel.RetentionDuration != '' %}<dl><dt>Retention Duration</dt><dd>{{ InteractionChannel.RetentionDuration }}<dd/></dl>{% endif %}
            </div>
            <div class='col-md-6'>
                {% if InteractionChannel.ChannelTypeMediumValue != null and InteractionChannel.ChannelTypeMediumValue != '' %}<dl><dt>Name</dt><dd>{{ InteractionChannel.ChannelTypeMediumValue.Value }}<dd/></dl>{% endif %}
            </div>
        </div>
    </a>
{% endif %}", "E84F0710-5973-44D1-9BE5-1900090DB8CF" );
            // Attrib for BlockType: Interaction Channel List:Session List Page
            RockMigrationHelper.UpdateBlockTypeAttribute( "FBC2066B-8E7C-43CB-AFD2-FA9408F6699D", "BD53F9C9-EBA9-4D3F-82EA-DE5DD34A8108", "Session List Page", "SessionListPage", "", @"Page reference to the session list page. This will be included as a variable in the Lava.", 0, @"", "8A119119-E8D0-41E7-B1E4-E6978FD39CA9" );
            // Attrib for BlockType: Interaction Channel List:Component List Page
            RockMigrationHelper.UpdateBlockTypeAttribute( "FBC2066B-8E7C-43CB-AFD2-FA9408F6699D", "BD53F9C9-EBA9-4D3F-82EA-DE5DD34A8108", "Component List Page", "ComponentListPage", "", @"Page reference to the component list page. This will be included as a variable in the Lava.", 1, @"", "C797358E-FC24-4F8E-905F-476CDF934886" );
            // Attrib for BlockType: Interaction Component Detail:Default Template
            RockMigrationHelper.UpdateBlockTypeAttribute( "926261B2-CF4C-4B1F-A384-CD83696CFBC2", "1D0D3794-C210-48A8-8C68-3FBEC08A6BA5", "Default Template", "DefaultTemplate", "", @"Lava template to use to display content", 0, @"
    <div class='row'>
        <div class='col-md-6'>
            <dl><dt>Name</dt><dd>{{ InteractionComponent.Name }}<dd/></dl>
        </div>
        {% if InteractionComponentEntity != '' %}
            <div class='col-md-6'>
                <dl>
                    <dt>Entity Name</dt><dd>{{ InteractionComponentEntity }}<dd/>
                </dl>
            </div>
        {% endif %}
    </div>
", "ED07DC7B-E700-435D-99B4-6B8CDB8DF244" );
            // Attrib for BlockType: Interaction Detail:Default Template
            RockMigrationHelper.UpdateBlockTypeAttribute( "B6AD2D98-0DF3-4DFB-AE2B-A8CF6E21E5C0", "1D0D3794-C210-48A8-8C68-3FBEC08A6BA5", "Default Template", "DefaultTemplate", "", @"The Lava template to use as default.", 2, @"
    <div class='panel panel-block'>
        <div class='panel-heading'>
	        <h1 class='panel-title'>
                <i class='fa fa-user'></i>
                Interaction Detail
            </h1>
        </div>
        <div class='panel-body'>
            <div class='row'>
                <div class='col-md-6'>
                    <dl>
                        <dt>Channel</dt><dd>{{ InteractionChannel.Name }}<dd/>
                        <dt>Date / Time</dt><dd>{{ Interaction.InteractionDateTime }}<dd/>
                        <dt>Operation</dt><dd>{{ Interaction.Operation }}<dd/>
                    </dl>
                </div>
                <div class='col-md-6'>
                    <dl>
                        <dt> Component</dt><dd>{{ InteractionComponent.Name }}<dd/>
                        {% if Interaction.PersonAlias.Person.FullName != '' %}
                            <dt>Person</dt><dd>{{ Interaction.PersonAlias.Person.FullName }}<dd/>
                        {% endif %}
                        <dt>Interaction</dt><dd>{{ Interaction.InteractionData }}<dd/>
                    </dl>
                </div>
            </div>
        </div>
    </div>", "3C71A209-E094-4DED-A786-0435E61CA885" );
            // Attrib for BlockType: Interaction List:Interaction Detail Page
            RockMigrationHelper.UpdateBlockTypeAttribute( "468119E3-41AB-4EC4-B631-77F326632B35", "BD53F9C9-EBA9-4D3F-82EA-DE5DD34A8108", "Interaction Detail Page", "InteractionDetailPage", "", @"Page reference to the interaction detail page. This will be included as a variable in the Lava.", 1, @"", "06BE5064-934B-4EA2-A3FE-CB841A6FE278" );
            // Attrib for BlockType: Interaction List:Default Template
            RockMigrationHelper.UpdateBlockTypeAttribute( "468119E3-41AB-4EC4-B631-77F326632B35", "1D0D3794-C210-48A8-8C68-3FBEC08A6BA5", "Default Template", "DefaultTemplate", "", @"The Lava template to use as default.", 2, @"
    <div class='panel panel-block'>
        <div class='panel-heading'>
	        <h1 class='panel-title'>
                <i class='fa fa-user'></i>
                Interactions
            </h1>
        </div>
        <div class='panel-body'>
	        <ul class='list-group margin-all-md'>
	        {% for interaction in Interactions %}
		        {% if InteractionDetailPage != null and InteractionDetailPage != ''  %}
                    <a href='{{ InteractionDetailPage }}?InteractionId={{ interaction.Id }}'>
                {% endif %}
		        <li class='list-group-item margin-b-md' style='background-color: #edeae6;'>
                    <div class='row'>
                        <div class='col-md-6'>
                            <dl>
                                <dt>Date / Time</dt><dd>{{ interaction.InteractionDateTime }}<dd/>
                                <dt>Operation</dt><dd>{{ interaction.Operation }}<dd/>
                            </dl>
                        </div>
                        <div class='col-md-6'>
                            <dl>
                                <dt>Interaction</dt><dd>{{ interaction.InteractionData }}<dd/>
                                {% if interaction.PersonAlias != null and interaction.PersonAlias.Person.Name.FullName != '' %}
                                    <dt>Person</dt><dd>{{ interaction.PersonAlias.Person.FullName }}<dd/>
                                {% endif %}
                            </dl>
                        </div>
                    </div>
		        </li>
		        {% if InteractionDetailPage != null and InteractionDetailPage != ''  %}
    		        </a>
		        {% endif %}
	        {% endfor %}	
	        </ul>
        </div>
    </div>", "2507A83C-CC50-49B9-8F46-E7844D44E371" );
            // Attrib for BlockType: Interaction Session List:Default Template
            RockMigrationHelper.UpdateBlockTypeAttribute( "EA90EF4F-C783-48CD-B575-AD785DE896E9", "1D0D3794-C210-48A8-8C68-3FBEC08A6BA5", "Default Template", "DefaultTemplate", "", @"The Lava template to use as default.", 2, @"
{% if InteractionChannel != null and InteractionChannel != '' %}
    {% for personSessionList in PersonSessionLists %}
	    <div class='panel panel-block'>
            <header class='panel-heading clearfix'>
			    <div class='pull-left'>
					<h4 class='panel-title'>
                        <i class='fa fa-desktop'></i>
                        {{ personSessionList.PersonAlias.Person.FullName }}
                    </h4>
			    </div>
		    </header>
	        <div class='panel-body'>
		        {% for session in personSessionList.Sessions %}
		        <div class='panel panel-widget pageviewsession'>
			        <header class='panel-heading clearfix'>
				        <div class='pull-left'>
					        <h4 class='panel-title'>
					        Started {{ session.StartDateTime | HumanizeDateTime }}
					        <small>
					        Duration: {{ session.StartDateTime | HumanizeTimeSpan:session.EndDateTime, 1 }}
					        </small>
					        </h4>
					        <span class='label label-info'>{{ InteractionChannel.Name }}</span>
				        </div> 
				        {% assign icon = '' %}
				        {% case session.InteractionSession.DeviceType.ClientType %}
				            {% when 'Desktop' %}{% assign icon = 'fa-desktop' %}
				            {% when 'Tablet' %}{% assign icon = 'fa-tablet' %}
				            {% when 'Mobile' %}{% assign icon = 'fa-mobile-phone' %}
				            {% else %}{% assign icon = '' %}
				        {% endcase %}
				        <div class='pageviewsession-client pull-right'>
                            <div class='pull-left'>
                                <small>{{ session.InteractionSession.DeviceType.Application }} <br>
                                {{ session.InteractionSession.DeviceType.OperatingSystem }} </small>
                            </div>
                            <i class='fa {{ icon }} fa-2x pull-right'></i>
                        </div>
			        </header>
			        <div class='panel-body'>
				        {% assign interactionCount = 0 %}
				        <ol>
				        {% for interaction in session.Interactions %}
				            {% assign interactionCount = interactionCount | Plus: 1 %}
				            {% assign componentDetailPage = interaction.InteractionData %}
				            {% if ComponentDetailPage != null and ComponentDetailPage != '' %}
    				            {% assign componentDetailPage = ComponentDetailPage %}
				            {% endif %}
				            <li><a href = '{{ componentDetailPage }}?ComponentId={{ interaction.InteractionComponentId }}'>{{ interaction.InteractionComponent.Name }}</a></li>
				        {% endfor %}				
				        </ol>
			        </div>
		        </div>
		        {% endfor %}
	        </div>
	    </div>
    {% endfor %}
{% endif %}", "DF74EDE5-3B7D-4A79-B1F2-499D18FE6F2C" );
            // Attrib for BlockType: Interaction Session List:Component Detail Page
            RockMigrationHelper.UpdateBlockTypeAttribute( "EA90EF4F-C783-48CD-B575-AD785DE896E9", "BD53F9C9-EBA9-4D3F-82EA-DE5DD34A8108", "Component Detail Page", "ComponentDetailPage", "", @"Page reference to the component detail page. This will be included as a variable in the Lava.", 0, @"", "26D25CD6-AF12-4A0C-80E0-0CD4CFEB4C6E" );
            // Attrib for BlockType: Interaction Session List:Interaction Detail Page
            RockMigrationHelper.UpdateBlockTypeAttribute( "EA90EF4F-C783-48CD-B575-AD785DE896E9", "BD53F9C9-EBA9-4D3F-82EA-DE5DD34A8108", "Interaction Detail Page", "InteractionDetailPage", "", @"Page reference to the interaction detail page. This will be included as a variable in the Lava.", 1, @"", "922BDC9E-D1ED-4553-B84D-1C301B291F5F" );
            // Attrib for BlockType: Interaction Component List:Component Detail Page
            RockMigrationHelper.UpdateBlockTypeAttribute( "00FF58B1-A433-43AA-82C9-45F8F58FBE9F", "BD53F9C9-EBA9-4D3F-82EA-DE5DD34A8108", "Component Detail Page", "ComponentDetailPage", "", @"Page reference to the component detail page. This will be included as a variable in the Lava.", 0, @"", "CCF5FD98-6F00-4DE6-9D8C-D1C86C2FE34C" );
            // Attrib for BlockType: Interaction Component List:Interaction Detail Page
            RockMigrationHelper.UpdateBlockTypeAttribute( "00FF58B1-A433-43AA-82C9-45F8F58FBE9F", "BD53F9C9-EBA9-4D3F-82EA-DE5DD34A8108", "Interaction Detail Page", "InteractionDetailPage", "", @"Page reference to the interaction detail page. This will be included as a variable in the Lava.", 1, @"", "12942C84-503C-4D18-A610-E3A2A3CC33E9" );
            // Attrib for BlockType: Interaction Component List:Default Template
            RockMigrationHelper.UpdateBlockTypeAttribute( "00FF58B1-A433-43AA-82C9-45F8F58FBE9F", "1D0D3794-C210-48A8-8C68-3FBEC08A6BA5", "Default Template", "DefaultTemplate", "", @"The Lava template to use as default.", 2, @"
	<div class='panel panel-block'>
        <div class='panel-heading'>
			<h1 class='panel-title'>
                <i class='fa fa-th'></i>
                Components
            </h1>
        </div>
		<div class='panel-body'>
		    <ul class='list-group margin-all-md'>
			{% for component in InteractionComponents %}
				<li class='list-group-item margin-b-md' style='background-color: #edeae6;'>
                    <div class='row'>
                        <div class='col-md-6'>
                            <dl>
                                <dt>Name</dt>
                                <dd>
                                    {% if ComponentDetailPage != null and ComponentDetailPage != ''  %}
                                        <a href = '{{ ComponentDetailPage }}?ComponentId={{ component.Id }}'> Started {{ component.Name }}</a>
                                    {% else %}
							            {{ component.Name }}
    							   {% endif %}
                                <dd/>
                            </dl>
                        </div>
                        {% if InteractionChannel.Name != '' %}
                            <div class='col-md-6'>
                                <dl><dt>Channel Name</dt><dd>{{ InteractionChannel.Name }}<dd/></dl>
                            </div>
                        {% endif %}
                    </div>
				</li>
			{% endfor %}	
			</ul>
		</div>
	</div>", "18BBB704-ECE7-4FEB-A9A0-9D023CEE1B49" );
            // Attrib Value for Block:Interaction Channel List, Attribute:Default Template Page: Interactions, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "8C11CA76-6AD8-4C1F-8889-A9C38FE5C966", "E84F0710-5973-44D1-9BE5-1900090DB8CF", @"" );
            // Attrib Value for Block:Interaction Channel List, Attribute:Session List Page Page: Interactions, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "8C11CA76-6AD8-4C1F-8889-A9C38FE5C966", "8A119119-E8D0-41E7-B1E4-E6978FD39CA9", @"756d37b7-7be2-497d-8d37-cc273fe29659" );
            // Attrib Value for Block:Interaction Channel List, Attribute:Component List Page Page: Interactions, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "8C11CA76-6AD8-4C1F-8889-A9C38FE5C966", "C797358E-FC24-4F8E-905F-476CDF934886", @"af2fbeb8-1e47-4f51-a503-3d73c0d66b4e" );
            // Attrib Value for Block:Interaction Session List, Attribute:Default Template Page: Sessions, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "0FCDA1B8-B3F1-4E78-8FCF-E81F2CA77D05", "DF74EDE5-3B7D-4A79-B1F2-499D18FE6F2C", @"{% if InteractionChannel != null and InteractionChannel != '' %}
    {% for personSessionList in PersonSessionLists %}
	    <div class='panel panel-block'>
            <header class='panel-heading clearfix'>
			    <div class='pull-left'>
					<h4 class='panel-title'>
                        <i class='fa fa-desktop'></i>
                        {{ personSessionList.PersonAlias.Person.FullName }}
                    </h4>
			    </div>
		    </header>
	        <div class='panel-body'>
		        {% for session in personSessionList.Sessions %}
		        <div class='panel panel-widget pageviewsession'>
			        <header class='panel-heading clearfix'>
				        <div class='pull-left'>
					        <h4 class='panel-title'>
					        Started {{ session.StartDateTime | HumanizeDateTime }}
					        <small>
					        Duration: {{ session.StartDateTime | HumanizeTimeSpan:session.EndDateTime, 1 }}
					        </small>
					        </h4>
					        <span class='label label-info'>{{ InteractionChannel.Name }}</span>
				        </div> 
				        {% assign icon = '' %}
				        {% case session.InteractionSession.DeviceType.ClientType %}
				            {% when 'Desktop' %}{% assign icon = 'fa-desktop' %}
				            {% when 'Tablet' %}{% assign icon = 'fa-tablet' %}
				            {% when 'Mobile' %}{% assign icon = 'fa-mobile-phone' %}
				            {% else %}{% assign icon = '' %}
				        {% endcase %}
				        <div class='pageviewsession-client pull-right'>
                            <div class='pull-left'>
                                <small>{{ session.InteractionSession.DeviceType.Application }} <br>
                                {{ session.InteractionSession.DeviceType.OperatingSystem }} </small>
                            </div>
                            <i class='fa {{ icon }} fa-2x pull-right'></i>
                        </div>
			        </header>
			        <div class='panel-body'>
				        {% assign interactionCount = 0 %}
				        <ol>
				        {% for interaction in session.Interactions %}
				            {% assign interactionCount = interactionCount | Plus: 1 %}
				            {% assign componentDetailPage = interaction.InteractionData %}
				            {% if ComponentDetailPage != null and ComponentDetailPage != '' %}
    				            {% assign componentDetailPage = ComponentDetailPage %}
				            {% endif %}
				            <li><a href = '{{ componentDetailPage }}?componentId={{ interaction.InteractionComponentId }}'>{{ interaction.InteractionComponent.Name }}</a></li>
				        {% endfor %}				
				        </ol>
			        </div>
		        </div>
		        {% endfor %}
	        </div>
	    </div>
    {% endfor %}
{% endif %}" );
            // Attrib Value for Block:Interaction Session List, Attribute:Component Detail Page Page: Sessions, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "0FCDA1B8-B3F1-4E78-8FCF-E81F2CA77D05", "26D25CD6-AF12-4A0C-80E0-0CD4CFEB4C6E", @"9043d8f9-f9fd-4be6-a50b-abf9821ec0cd" );
            // Attrib Value for Block:Interaction Session List, Attribute:Interaction Detail Page Page: Sessions, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "0FCDA1B8-B3F1-4E78-8FCF-E81F2CA77D05", "922BDC9E-D1ED-4553-B84D-1C301B291F5F", @"9043d8f9-f9fd-4be6-a50b-abf9821ec0cd" );
            // Attrib Value for Block:Interaction Component List, Attribute:Component Detail Page Page: Components, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "16884BC7-3185-4E8F-A93A-AF9F3B165DE0", "CCF5FD98-6F00-4DE6-9D8C-D1C86C2FE34C", @"9043d8f9-f9fd-4be6-a50b-abf9821ec0cd" );
            // Attrib Value for Block:Interaction Component List, Attribute:Interaction Detail Page Page: Components, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "16884BC7-3185-4E8F-A93A-AF9F3B165DE0", "12942C84-503C-4D18-A610-E3A2A3CC33E9", @"b6f6ab6f-a572-45fe-a143-2e4b8f192c8d" );
            // Attrib Value for Block:Interaction Component List, Attribute:Default Template Page: Components, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "16884BC7-3185-4E8F-A93A-AF9F3B165DE0", "18BBB704-ECE7-4FEB-A9A0-9D023CEE1B49", @"	<div class='panel panel-block'>
        <div class='panel-heading'>
			<h1 class='panel-title'>
                <i class='fa fa-th'></i>
                Components
            </h1>
        </div>
		<div class='panel-body'>
		    <ul class='list-group margin-all-md'>
			{% for component in InteractionComponents %}
				<li class='list-group-item margin-b-md' style='background-color: #edeae6;'>
                    <div class='row'>
                        <div class='col-md-6'>
                            <dl>
                                <dt>Name</dt>
                                <dd>
                                    {% if ComponentDetailPage != null and ComponentDetailPage != ''  %}
                                        <a href = '{{ ComponentDetailPage }}?ComponentId={{ component.Id }}'> Started {{ component.Name }}</a>
                                    {% else %}
							            {{ component.Name }}
    							   {% endif %}
                                <dd/>
                            </dl>
                        </div>
                        {% if InteractionChannel.Name != '' %}
                            <div class='col-md-6'>
                                <dl><dt>Channel Name</dt><dd>{{ InteractionChannel.Name }}<dd/></dl>
                            </div>
                        {% endif %}
                    </div>
				</li>
			{% endfor %}	
			</ul>
		</div>
	</div>" );
            // Attrib Value for Block:Interaction List, Attribute:Interaction Detail Page Page: Component, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "5BB4CDA1-8B5A-49BB-910C-7BC9B31F5575", "06BE5064-934B-4EA2-A3FE-CB841A6FE278", @"b6f6ab6f-a572-45fe-a143-2e4b8f192c8d" );
            // Attrib Value for Block:Interaction List, Attribute:Default Template Page: Component, Site: Rock RMS
            RockMigrationHelper.AddBlockAttributeValue( "5BB4CDA1-8B5A-49BB-910C-7BC9B31F5575", "2507A83C-CC50-49B9-8F46-E7844D44E371", @"    <div class='panel panel-block'>
        <div class='panel-heading'>
	        <h1 class='panel-title'>
                <i class='fa fa-user'></i>
                Interactions
            </h1>
        </div>
        <div class='panel-body'>
	        <ul class='list-group margin-all-md'>
	        {% for interaction in Interactions %}
		        {% if InteractionDetailPage != null and InteractionDetailPage != ''  %}
                    <a href = '{{ InteractionDetailPage }}?interactionId={{ interaction.Id }}'>
                {% endif %}
		        <li class='list-group-item margin-b-md' style='background-color: #edeae6;'>
                    <div class='row'>
                        <div class='col-md-6'>
                            <dl>
                                <dt>Date / Time</dt><dd>{{ interaction.InteractionDateTime }}<dd/>
                                <dt>Operation</dt><dd>{{ interaction.Operation }}<dd/>
                            </dl>
                        </div>
                        <div class='col-md-6'>
                            <dl>
                                <dt>Interaction</dt><dd>{{ interaction.InteractionData }}<dd/>
                                {% if interaction.PersonAlias != null and interaction.PersonAlias.Person.Name.FullName != '' %}
                                    <dt>Person</dt><dd>{{ interaction.PersonAlias.Person.FullName }}<dd/>
                                {% endif %}
                            </dl>
                        </div>
                    </div>
		        </li>
		        {% if InteractionDetailPage != null and InteractionDetailPage != ''  %}
    		        </a>
		        {% endif %}
	        {% endfor %}	
	        </ul>
        </div>
    </div>" );
            RockMigrationHelper.UpdateFieldType( "Time Zone", "", "Rock", "Rock.Field.Types.TimeZoneFieldType", "456DA639-132D-4AEE-B26A-14D1C8AE4178" );

            #endregion

            #region JE: Parallax Update

            Sql( @"
DELETE FROM [LavaShortcode] WHERE [TagName] = 'parallax'

INSERT INTO [LavaShortCode]
	([Name], [Description], [Documentation], [IsSystem], [IsActive], [TagName], [Markup], [TagType], [EnabledLavaCommands], [Parameters], [Guid])
	VALUES
	('Parallax','Add a scrolling background to a section of your page.','<p>
    Adding parallax effects (when the background image of a section scrolls at a different speed than the rest of the page) can greatly enhance the 
    aesthetics of the page. Until now, this effect has taken quite a bit of CSS know how to achieve. Now its as simple as:
</p>

<pre>{[ parallax image:''http://cdn.wonderfulengineering.com/wp-content/uploads/2014/09/star-wars-wallpaper-4.jpg'' contentpadding:''20px'' ]}
    &lt;h1&gt;Hello World&lt;/h1&gt;
{[ endparallax ]}</pre>


<p>  
    This shotcode takes the content you provide it and places it into a div with a parallax background using the image you provide in the ''image'' 
    parameter. As always there are several parameters.
</p>
    
<ul>
    <li><strong>image</strong> (required)  A valid URL to the image that should be used as the background.</li><li><b>height</b> (200px)  The minimum height of the content. This is useful if you want your section to not have any 
    content, but instead be just the parallax image.</li>
    <li><strong>videourl</strong> - This is the URL to use if you''d like a video background.</li>
    <li><strong>speed</strong> (50)  the speed that the background should scroll. The value of 0 means the image will be fixed in place, the value of 100 would make the background scroll quick up as the page scrolls down, while the value of -100 would scroll quickly in the opposite direction.</li>
    <li><strong>zindex</strong> (1)  The z-index of the background image. Depending on your design you may need to adjust the z-index of the parallax image. </li>
    <li><strong>position</strong> (center center) - This is analogous to the background-position css property. Specify coordinates as top, bottom, right, left, center, or pixel values (e.g. -10px 0px). The parallax image will be positioned as close to these values as possible while still covering the target element.</li>
    <li><strong>contentpadding</strong> (0)  The amount of padding youd like to have around your content. You can provide any valid CSS padding value. For example, the value 200px 20px would give you 200px top and bottom and 20px left and right.</li>
    <li><strong>contentcolor</strong> (#fff = white)  The font color youd like to use for your content. This simplifies the styling of your content.</li>
    <li><strong>contentalign</strong> (center)  The alignment of your content inside of the section. </li>
    <li><strong>noios</strong> (false)  Disables the effect on iOS devices. </li>
    <li><strong>noandriod</strong> (center)  Disables the effect on driods. </li>
</ul>

<p>Note: Do to this javascript requirements of this shortcode you will need to do a full page reload before changes to the shortcode appear on your page.</p>',1,1,'parallax','{{ ''https://cdnjs.cloudflare.com/ajax/libs/jarallax/1.9.2/jarallax.min.js'' | AddScriptLink }}
{% if videourl != '''' -%}
    {{ ''https://cdnjs.cloudflare.com/ajax/libs/jarallax/1.9.2/jarallax-video.min.js'' | AddScriptLink }}
{% endif -%}

{% assign id = uniqueid -%} 
{% assign bodyZindex = zindex | Plus:1 -%}

{% assign speed = speed | AsInteger %}

{% if speed > 0 -%}
    {% assign speed = speed | Times:''.01'' -%}
    {% assign speed = speed | Plus:''1'' -%}
{% elseif speed == 0 -%}
    {% assign speed = 1 -%}
{% else -%}
    {% assign speed = speed | Times:''.02'' -%}
    {% assign speed = speed | Plus:''1'' -%}
{% endif -%}


 
{% if videourl != ''''- %}
    <div id=""{{ id }}"" class=""jarallax"" data-jarallax-video=""{{ videourl }}"" data-type=""{{ type }}"" data-speed=""{{ speed }}"" data-img-position=""{{ position }}"" data-object-position=""{{ position }}"" data-background-position=""{{ position }}"" data-zindex=""{{ bodyZindex }}"" data-no-android=""{{ noandroid }}"" data-no-ios=""{{ noios }}"">
{% else- %} 
    <div id=""{{ id }}"" data-jarallax class=""jarallax"" data-type=""{{ type }}"" data-speed=""{{ speed }}"" data-img-position=""{{ position }}"" data-object-position=""{{ position }}"" data-background-position=""{{ position }}"" data-zindex=""{{ bodyZindex }}"" data-no-android=""{{ noandroid }}"" data-no-ios=""{{ noios }}"">
        <img class=""jarallax-img"" src=""{{ image }}"" alt="""">
{% endif -%}

        {% if blockContent != '''' -%}
            <div class=""parallax-content"">
                {{ blockContent }}
            </div>
        {% else- %}
            {{ blockContent }}
        {% endif -%}
    </div>

{% stylesheet %}
#{{ id }} {
    /* eventually going to change the height using media queries with mixins using sass, and then include only the classes I want for certain parallaxes */
    min-height: {{ height }};
    background: transparent;
    position: relative;
    z-index: 0;
}

#{{ id }} .jarallax-img {
    position: absolute;
    object-fit: cover;
    /* support for plugin https://github.com/bfred-it/object-fit-images */
    font-family: ''object-fit: cover;'';
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1;
}

#{{ id }} .parallax-content{
    display: inline-block;
    margin: {{ contentpadding }};
    color: {{ contentcolor }};
    text-align: {{ contentalign }};
	width: 100%;
}
{% endstylesheet %}',2,'','type^scroll|speed^50|image^|zindex^1|noandriod^false|noios^false|videourl^|height^200px|contentpadding^0|contentcolor^#fff|contentalign^center','4B6452EF-6FEA-4A66-9FB9-1A7CCE82E7A4')
" );

            #endregion

        }

        /// <summary>
        /// Operations to be performed during the downgrade process.
        /// </summary>
        public override void Down()
        {
            // Attrib for BlockType: Interaction Component List:Default Template
            RockMigrationHelper.DeleteAttribute( "18BBB704-ECE7-4FEB-A9A0-9D023CEE1B49" );
            // Attrib for BlockType: Interaction Component List:Interaction Detail Page
            RockMigrationHelper.DeleteAttribute( "12942C84-503C-4D18-A610-E3A2A3CC33E9" );
            // Attrib for BlockType: Interaction Component List:Component Detail Page
            RockMigrationHelper.DeleteAttribute( "CCF5FD98-6F00-4DE6-9D8C-D1C86C2FE34C" );
            // Attrib for BlockType: Interaction Session List:Interaction Detail Page
            RockMigrationHelper.DeleteAttribute( "922BDC9E-D1ED-4553-B84D-1C301B291F5F" );
            // Attrib for BlockType: Interaction Session List:Component Detail Page
            RockMigrationHelper.DeleteAttribute( "26D25CD6-AF12-4A0C-80E0-0CD4CFEB4C6E" );
            // Attrib for BlockType: Interaction Session List:Default Template
            RockMigrationHelper.DeleteAttribute( "DF74EDE5-3B7D-4A79-B1F2-499D18FE6F2C" );
            // Attrib for BlockType: Interaction List:Default Template
            RockMigrationHelper.DeleteAttribute( "2507A83C-CC50-49B9-8F46-E7844D44E371" );
            // Attrib for BlockType: Interaction List:Interaction Detail Page
            RockMigrationHelper.DeleteAttribute( "06BE5064-934B-4EA2-A3FE-CB841A6FE278" );
            // Attrib for BlockType: Interaction Detail:Default Template
            RockMigrationHelper.DeleteAttribute( "3C71A209-E094-4DED-A786-0435E61CA885" );
            // Attrib for BlockType: Interaction Component Detail:Default Template
            RockMigrationHelper.DeleteAttribute( "ED07DC7B-E700-435D-99B4-6B8CDB8DF244" );
            // Attrib for BlockType: Interaction Channel List:Component List Page
            RockMigrationHelper.DeleteAttribute( "C797358E-FC24-4F8E-905F-476CDF934886" );
            // Attrib for BlockType: Interaction Channel List:Session List Page
            RockMigrationHelper.DeleteAttribute( "8A119119-E8D0-41E7-B1E4-E6978FD39CA9" );
            // Attrib for BlockType: Interaction Channel List:Default Template
            RockMigrationHelper.DeleteAttribute( "E84F0710-5973-44D1-9BE5-1900090DB8CF" );
            // Attrib for BlockType: Interaction Channel Detail:Default Template
            RockMigrationHelper.DeleteAttribute( "DF6E249D-092F-459F-8ABF-965AEBBA52F7" );

            // Remove Block: Interaction Detail, from Page: Detail, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "FF05ED3A-B1E5-465E-A78F-68A4F9803C48" );
            // Remove Block: Interaction List, from Page: Component, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "5BB4CDA1-8B5A-49BB-910C-7BC9B31F5575" );
            // Remove Block: Interaction Component Detail, from Page: Component, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "A3B7BF73-6D9E-460E-B7E6-A8FA399B20DD" );
            // Remove Block: Interaction Component List, from Page: Components, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "16884BC7-3185-4E8F-A93A-AF9F3B165DE0" );
            // Remove Block: Interaction Session List, from Page: Sessions, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "0FCDA1B8-B3F1-4E78-8FCF-E81F2CA77D05" );
            // Remove Block: Interaction Channel Detail, from Page: Sessions, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "44FACA50-0358-4A1D-B65C-4F36B26D345B" );
            // Remove Block: Interaction Channel Detail, from Page: Components, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "1470D93A-99DC-4AFE-8940-2989CA71BE10" );
            // Remove Block: Interaction Channel List, from Page: Interactions, Site: Rock RMS
            RockMigrationHelper.DeleteBlock( "8C11CA76-6AD8-4C1F-8889-A9C38FE5C966" );

            RockMigrationHelper.DeleteBlockType( "00FF58B1-A433-43AA-82C9-45F8F58FBE9F" ); // Interaction Component List
            RockMigrationHelper.DeleteBlockType( "EA90EF4F-C783-48CD-B575-AD785DE896E9" ); // Interaction Session List
            RockMigrationHelper.DeleteBlockType( "468119E3-41AB-4EC4-B631-77F326632B35" ); // Interaction List
            RockMigrationHelper.DeleteBlockType( "B6AD2D98-0DF3-4DFB-AE2B-A8CF6E21E5C0" ); // Interaction Detail
            RockMigrationHelper.DeleteBlockType( "926261B2-CF4C-4B1F-A384-CD83696CFBC2" ); // Interaction Component Detail
            RockMigrationHelper.DeleteBlockType( "FBC2066B-8E7C-43CB-AFD2-FA9408F6699D" ); // Interaction Channel List
            RockMigrationHelper.DeleteBlockType( "F722A03E-C344-40B1-B87D-EB90E2BCBC47" ); // Interaction Channel Detail

            RockMigrationHelper.DeletePage( "B6F6AB6F-A572-45FE-A143-2E4B8F192C8D" ); //  Page: Detail, Layout: Full Width, Site: Rock RMS
            RockMigrationHelper.DeletePage( "9043D8F9-F9FD-4BE6-A50B-ABF9821EC0CD" ); //  Page: Component, Layout: Full Width, Site: Rock RMS
            RockMigrationHelper.DeletePage( "AF2FBEB8-1E47-4F51-A503-3D73C0D66B4E" ); //  Page: Components, Layout: Full Width, Site: Rock RMS
            RockMigrationHelper.DeletePage( "756D37B7-7BE2-497D-8D37-CC273FE29659" ); //  Page: Sessions, Layout: Full Width, Site: Rock RMS
            RockMigrationHelper.DeletePage( "A9661D86-83B6-4AC1-B988-B5CC942A9ED6" ); //  Page: Interactions, Layout: Full Width, Site: Rock RMS
        }
    }
}
