#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread
sleep 30
su -c "pm disable com.google.android.gms/.update.SystemUpdateActivity"
su -c "pm disable com.google.android.gms/.update.SystemUpdateService"
su -c "pm disable com.google.android.gms/.update.SystemUpdateService$ActiveReceiver"
su -c "pm disable com.google.android.gms/.update.SystemUpdateService$Receiver"
su -c "pm disable com.google.android.gms/.update.SystemUpdateService$SecretCodeReceiver"
su -c "pm disable com.google.android.gms/.ads.identifier.service.AdvertisingIdNotificationService"
su -c "pm disable com.google.android.gms/.ads.identifier.service.AdvertisingIdService"
su -c "pm disable com.google.android.gms/.ads.social.GcmSchedulerWakeupService"
su -c "pm disable com.google.android.gms/.ads.measurement.GmpConversionTrackingBrokerService"
su -c "pm disable com.google.android.gms/.ads.GservicesValueBrokerService"
su -c "pm disable com.google.android.gms/.ads.config.FlagsReceiver"
su -c "pm disable com.google.android.gms/.ads.config.GServicesChangedReceiver"
su -c "pm disable com.google.android.gms/.ads.jams.SystemEventReceiver"
su -c "pm disable com.google.android.gms/.ads.settings.AdsSettingsActivity"
su -c "pm disable com.google.android.gms/.ads.jams.NegotiationService"
su -c "pm disable com.google.android.gms/.ads.adinfo.AdvertisingInfoContentProvider"
su -c "pm disable com.google.android.gms/.analytics.service.AnalyticsService"
su -c "pm disable com.google.android.gms/.analytics.AnalyticsService"
su -c "pm disable com.google.android.gms/.analytics.AnalyticsTaskService"
su -c "pm disable com.google.android.gms/.analytics.AnalyticsReceiver"
su -c "pm disable com.google.android.gms/.analytics.internal.PlayLogReportingService"
su -c "pm disable com.google.android.gms/.feedback.FeedbackAsyncService"
su -c "pm disable com.google.android.gms/.feedback.LegacyBugReportService"
su -c "pm disable com.google.android.gms/.feedback.OfflineReportSendTaskService"
su -c "pm disable com.google.android.gms/.feedback.SendService"
su -c "pm disable com.google.android.gms/.feedback.AnnotateScreenshotActivity"
su -c "pm disable com.google.android.gms/.feedback.FeedbackActivity"
su -c "pm disable com.google.android.gms/.feedback.IntentListenerFeedbackActivity"
su -c "pm disable com.google.android.gms/.feedback.PreviewActivity"
su -c "pm disable com.google.android.gms/.feedback.PreviewScreenshotActivity"
su -c "pm disable com.google.android.gms/.feedback.ShowTextActivity"
su -c "pm disable com.google.android.gms/.feedback.SuggestionsActivity"
#su -c "pm disable com.google.android.location.reporting.service.LocationHistoryInjectorService"
#su -c "pm disable com.google.android.location.internal.AnalyticsSamplerReceiver"
#locationsharing and measurement services perhaps to add in future
su -c "pm disable com.google.android.gsf/.update.SystemUpdateActivity"
su -c "pm disable com.google.android.gsf/.update.SystemUpdatePanoActivity"
su -c "pm disable com.google.android.gsf/.update.SystemUpdateService"
su -c "pm disable com.google.android.gsf/.update.SystemUpdateService$Receiver"
su -c "pm disable com.google.android.gsf/.update.SystemUpdateService$SecretCodeReceiver"
