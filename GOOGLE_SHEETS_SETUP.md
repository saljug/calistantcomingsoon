# Google Sheets Waitlist Setup

##  COMPLETED STEPS

### 1. Google Sheet Created
- Spreadsheet with columns: Name, Email, Country, Source, Timestamp

### 2. Google Apps Script Deployed
- Script URL: https://script.google.com/macros/s/AKfycbyoGCWToE1wyXRhChC6OXwOUcauzy1ZbwB_3Y3Cm8WONN16JHxd26qCFNNMU_e6ObcKIg/exec
- Deployed as web app with 'Anyone' access

### 3. Form Updated
- WaitlistForm.tsx now uses Google Sheets instead of Airtable
- Automatic timestamp generation
- No-cors mode for cross-origin requests

##  FEATURES

 **Free & Unlimited** - No API limits
 **Real-time Data** - See signups instantly in Google Sheets
 **CSV Export** - File  Download  CSV
 **Easy Sharing** - Share Google Sheet with team
 **Advanced Filtering** - Sort by date, country, source
 **Email Notifications** - (Optional) Set up in Google Sheets

##  HOW TO VIEW DATA

1. Open your Google Sheet
2. All form submissions appear automatically
3. Export as CSV: File  Download  Comma Separated Values (.csv)

##  TROUBLESHOOTING

- If form doesn't work: Check console for errors
- If no data appears: Verify Google Apps Script permissions
- Development mode: Forms simulate success on localhost

##  DATA STRUCTURE

| Column | Description |
|--------|-------------|
| Name | User's full name |
| Email | User's email address |
| Country | Selected country |
| Source | How they heard about us |
| Timestamp | Auto-generated submission time |

Form is now ready to collect signups! 
