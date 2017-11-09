//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by the Rock.CodeGeneration project
//     Changes to this file will be lost when the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
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
using System;
using System.Linq;

using Rock.Data;

namespace Rock.Model
{
    /// <summary>
    /// AnalyticsDimFamilyHeadOfHousehold Service class
    /// </summary>
    public partial class AnalyticsDimFamilyHeadOfHouseholdService : Service<AnalyticsDimFamilyHeadOfHousehold>
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="AnalyticsDimFamilyHeadOfHouseholdService"/> class
        /// </summary>
        /// <param name="context">The context.</param>
        public AnalyticsDimFamilyHeadOfHouseholdService(RockContext context) : base(context)
        {
        }

        /// <summary>
        /// Determines whether this instance can delete the specified item.
        /// </summary>
        /// <param name="item">The item.</param>
        /// <param name="errorMessage">The error message.</param>
        /// <returns>
        ///   <c>true</c> if this instance can delete the specified item; otherwise, <c>false</c>.
        /// </returns>
        public bool CanDelete( AnalyticsDimFamilyHeadOfHousehold item, out string errorMessage )
        {
            errorMessage = string.Empty;
            return true;
        }
    }

    /// <summary>
    /// Generated Extension Methods
    /// </summary>
    public static partial class AnalyticsDimFamilyHeadOfHouseholdExtensionMethods
    {
        /// <summary>
        /// Clones this AnalyticsDimFamilyHeadOfHousehold object to a new AnalyticsDimFamilyHeadOfHousehold object
        /// </summary>
        /// <param name="source">The source.</param>
        /// <param name="deepCopy">if set to <c>true</c> a deep copy is made. If false, only the basic entity properties are copied.</param>
        /// <returns></returns>
        public static AnalyticsDimFamilyHeadOfHousehold Clone( this AnalyticsDimFamilyHeadOfHousehold source, bool deepCopy )
        {
            if (deepCopy)
            {
                return source.Clone() as AnalyticsDimFamilyHeadOfHousehold;
            }
            else
            {
                var target = new AnalyticsDimFamilyHeadOfHousehold();
                target.CopyPropertiesFrom( source );
                return target;
            }
        }

        /// <summary>
        /// Copies the properties from another AnalyticsDimFamilyHeadOfHousehold object to this AnalyticsDimFamilyHeadOfHousehold object
        /// </summary>
        /// <param name="target">The target.</param>
        /// <param name="source">The source.</param>
        public static void CopyPropertiesFrom( this AnalyticsDimFamilyHeadOfHousehold target, AnalyticsDimFamilyHeadOfHousehold source )
        {
            target.Id = source.Id;
            target.Age = source.Age;
            target.AnniversaryDate = source.AnniversaryDate;
            target.BirthDateKey = source.BirthDateKey;
            target.BirthDay = source.BirthDay;
            target.BirthMonth = source.BirthMonth;
            target.BirthYear = source.BirthYear;
            target.ConnectionStatus = source.ConnectionStatus;
            target.ConnectionStatusValueId = source.ConnectionStatusValueId;
            target.Count = source.Count;
            target.CurrentRowIndicator = source.CurrentRowIndicator;
            target.EffectiveDate = source.EffectiveDate;
            target.Email = source.Email;
            target.EmailPreference = source.EmailPreference;
            target.EmailPreferenceText = source.EmailPreferenceText;
            target.ExpireDate = source.ExpireDate;
            target.FirstName = source.FirstName;
            target.ForeignGuid = source.ForeignGuid;
            target.ForeignKey = source.ForeignKey;
            target.Gender = source.Gender;
            target.GenderText = source.GenderText;
            target.GivingGroupId = source.GivingGroupId;
            target.GivingId = source.GivingId;
            target.GivingLeaderId = source.GivingLeaderId;
            target.GraduationYear = source.GraduationYear;
            target.InactiveReasonNote = source.InactiveReasonNote;
            target.IsDeceased = source.IsDeceased;
            target.LastName = source.LastName;
            target.MailingAddressCity = source.MailingAddressCity;
            target.MailingAddressCountry = source.MailingAddressCountry;
            target.MailingAddressCounty = source.MailingAddressCounty;
            target.MailingAddressFull = source.MailingAddressFull;
            target.MailingAddressGeoFence = source.MailingAddressGeoFence;
            target.MailingAddressGeoPoint = source.MailingAddressGeoPoint;
            target.MailingAddressLatitude = source.MailingAddressLatitude;
            target.MailingAddressLongitude = source.MailingAddressLongitude;
            target.MailingAddressPostalCode = source.MailingAddressPostalCode;
            target.MailingAddressState = source.MailingAddressState;
            target.MailingAddressStreet1 = source.MailingAddressStreet1;
            target.MailingAddressStreet2 = source.MailingAddressStreet2;
            target.MappedAddressCity = source.MappedAddressCity;
            target.MappedAddressCountry = source.MappedAddressCountry;
            target.MappedAddressCounty = source.MappedAddressCounty;
            target.MappedAddressFull = source.MappedAddressFull;
            target.MappedAddressGeoFence = source.MappedAddressGeoFence;
            target.MappedAddressGeoPoint = source.MappedAddressGeoPoint;
            target.MappedAddressLatitude = source.MappedAddressLatitude;
            target.MappedAddressLongitude = source.MappedAddressLongitude;
            target.MappedAddressPostalCode = source.MappedAddressPostalCode;
            target.MappedAddressState = source.MappedAddressState;
            target.MappedAddressStreet1 = source.MappedAddressStreet1;
            target.MappedAddressStreet2 = source.MappedAddressStreet2;
            target.MaritalStatus = source.MaritalStatus;
            target.MaritalStatusValueId = source.MaritalStatusValueId;
            target.MiddleName = source.MiddleName;
            target.NickName = source.NickName;
            target.PersonId = source.PersonId;
            target.PhotoId = source.PhotoId;
            target.PrimaryFamilyId = source.PrimaryFamilyId;
            target.PrimaryFamilyKey = source.PrimaryFamilyKey;
            target.RecordStatus = source.RecordStatus;
            target.RecordStatusLastModifiedDateTime = source.RecordStatusLastModifiedDateTime;
            target.RecordStatusReason = source.RecordStatusReason;
            target.RecordStatusReasonValueId = source.RecordStatusReasonValueId;
            target.RecordStatusValueId = source.RecordStatusValueId;
            target.RecordType = source.RecordType;
            target.RecordTypeValueId = source.RecordTypeValueId;
            target.ReviewReason = source.ReviewReason;
            target.ReviewReasonNote = source.ReviewReasonNote;
            target.ReviewReasonValueId = source.ReviewReasonValueId;
            target.Suffix = source.Suffix;
            target.SuffixValueId = source.SuffixValueId;
            target.SystemNote = source.SystemNote;
            target.Title = source.Title;
            target.TitleValueId = source.TitleValueId;
            target.ViewedCount = source.ViewedCount;
            target.Guid = source.Guid;
            target.ForeignId = source.ForeignId;

        }
    }
}
