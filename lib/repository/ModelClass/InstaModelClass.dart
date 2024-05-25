class InstaModelClass {
  InstaModelClass({
      this.data,});

  InstaModelClass.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.about, 
      this.accountBadges, 
      this.accountType, 
      this.activeStandaloneFundraisers, 
      this.adjustedBannersOrder, 
      this.adsIncentiveExpirationDate, 
      this.adsPageId, 
      this.adsPageName, 
      this.bioLinks, 
      this.biography, 
      this.biographyEmail, 
      this.biographyWithEntities, 
      this.businessContactMethod, 
      this.canAddFbGroupLinkOnProfile, 
      this.canHideCategory, 
      this.canHidePublicContacts, 
      this.category, 
      this.categoryId, 
      this.contactPhoneNumber, 
      this.currentCatalogId, 
      this.directMessaging, 
      this.eligibleForTextAppActivationBadge, 
      this.externalLynxUrl, 
      this.externalUrl, 
      this.fbidV2, 
      this.followerCount, 
      this.followingCount, 
      this.fullName, 
      this.hasAnonymousProfilePicture, 
      this.hasChaining, 
      this.hasGuides, 
      this.hasIgtvSeries, 
      this.hdProfilePicUrlInfo, 
      this.hdProfilePicVersions, 
      this.id, 
      this.isBusiness, 
      this.isCallToActionEnabled, 
      this.isCategoryTappable, 
      this.isEligibleForRequestMessage, 
      this.isFavorite, 
      this.isFavoriteForClips, 
      this.isFavoriteForIgtv, 
      this.isFavoriteForStories, 
      this.isParentingAccount, 
      this.isPrivate, 
      this.isProfileAudioCallEnabled, 
      this.isVerified, 
      this.latestReelMedia, 
      this.liveSubscriptionStatus, 
      this.locationData, 
      this.mediaCount, 
      this.merchantCheckoutStyle, 
      this.pageId, 
      this.pageName, 
      this.pinnedChannelsInfo, 
      this.primaryProfileLinkType, 
      this.professionalConversionSuggestedAccountType, 
      this.profileContext, 
      this.profileContextFacepileUsers, 
      this.profileContextLinksWithUserIds, 
      this.profilePicId, 
      this.profilePicUrl, 
      this.profilePicUrlHd, 
      this.publicEmail, 
      this.publicPhoneCountryCode, 
      this.publicPhoneNumber, 
      this.sellerShoppableFeedType, 
      this.showShoppableFeed, 
      this.thirdPartyDownloadsEnabled, 
      this.totalIgtvVideos, 
      this.upcomingEvents, 
      this.username,});

  Data.fromJson(dynamic json) {
    about = json['about'];
    if (json['account_badges'] != null) {
      accountBadges = [];
      json['account_badges'].forEach((v) {
        accountBadges?.add(v);
      });
    }
    accountType = json['account_type'];
    activeStandaloneFundraisers = json['active_standalone_fundraisers'] != null ? ActiveStandaloneFundraisers.fromJson(json['active_standalone_fundraisers']) : null;
    if (json['adjusted_banners_order'] != null) {
      adjustedBannersOrder = [];
      json['adjusted_banners_order'].forEach((v) {
        adjustedBannersOrder?.add(v);
      });
    }
    adsIncentiveExpirationDate = json['ads_incentive_expiration_date'];
    adsPageId = json['ads_page_id'];
    adsPageName = json['ads_page_name'];
    if (json['bio_links'] != null) {
      bioLinks = [];
      json['bio_links'].forEach((v) {
        bioLinks?.add(BioLinks.fromJson(v));
      });
    }
    biography = json['biography'];
    biographyEmail = json['biography_email'];
    biographyWithEntities = json['biography_with_entities'] != null ? BiographyWithEntities.fromJson(json['biography_with_entities']) : null;
    businessContactMethod = json['business_contact_method'];
    canAddFbGroupLinkOnProfile = json['can_add_fb_group_link_on_profile'];
    canHideCategory = json['can_hide_category'];
    canHidePublicContacts = json['can_hide_public_contacts'];
    category = json['category'];
    categoryId = json['category_id'];
    contactPhoneNumber = json['contact_phone_number'];
    currentCatalogId = json['current_catalog_id'];
    directMessaging = json['direct_messaging'];
    eligibleForTextAppActivationBadge = json['eligible_for_text_app_activation_badge'];
    externalLynxUrl = json['external_lynx_url'];
    externalUrl = json['external_url'];
    fbidV2 = json['fbid_v2'];
    followerCount = json['follower_count'];
    followingCount = json['following_count'];
    fullName = json['full_name'];
    hasAnonymousProfilePicture = json['has_anonymous_profile_picture'];
    hasChaining = json['has_chaining'];
    hasGuides = json['has_guides'];
    hasIgtvSeries = json['has_igtv_series'];
    hdProfilePicUrlInfo = json['hd_profile_pic_url_info'] != null ? HdProfilePicUrlInfo.fromJson(json['hd_profile_pic_url_info']) : null;
    if (json['hd_profile_pic_versions'] != null) {
      hdProfilePicVersions = [];
      json['hd_profile_pic_versions'].forEach((v) {
        hdProfilePicVersions?.add(HdProfilePicVersions.fromJson(v));
      });
    }
    id = json['id'];
    isBusiness = json['is_business'];
    isCallToActionEnabled = json['is_call_to_action_enabled'];
    isCategoryTappable = json['is_category_tappable'];
    isEligibleForRequestMessage = json['is_eligible_for_request_message'];
    isFavorite = json['is_favorite'];
    isFavoriteForClips = json['is_favorite_for_clips'];
    isFavoriteForIgtv = json['is_favorite_for_igtv'];
    isFavoriteForStories = json['is_favorite_for_stories'];
    isParentingAccount = json['is_parenting_account'];
    isPrivate = json['is_private'];
    isProfileAudioCallEnabled = json['is_profile_audio_call_enabled'];
    isVerified = json['is_verified'];
    latestReelMedia = json['latest_reel_media'];
    liveSubscriptionStatus = json['live_subscription_status'];
    locationData = json['location_data'] != null ? LocationData.fromJson(json['location_data']) : null;
    mediaCount = json['media_count'];
    merchantCheckoutStyle = json['merchant_checkout_style'];
    pageId = json['page_id'];
    pageName = json['page_name'];
    pinnedChannelsInfo = json['pinned_channels_info'] != null ? PinnedChannelsInfo.fromJson(json['pinned_channels_info']) : null;
    primaryProfileLinkType = json['primary_profile_link_type'];
    professionalConversionSuggestedAccountType = json['professional_conversion_suggested_account_type'];
    profileContext = json['profile_context'];
    if (json['profile_context_facepile_users'] != null) {
      profileContextFacepileUsers = [];
      json['profile_context_facepile_users'].forEach((v) {
        profileContextFacepileUsers?.add(v);
      });
    }
    if (json['profile_context_links_with_user_ids'] != null) {
      profileContextLinksWithUserIds = [];
      json['profile_context_links_with_user_ids'].forEach((v) {
        profileContextLinksWithUserIds?.add(v);
      });
    }
    profilePicId = json['profile_pic_id'];
    profilePicUrl = json['profile_pic_url'];
    profilePicUrlHd = json['profile_pic_url_hd'];
    publicEmail = json['public_email'];
    publicPhoneCountryCode = json['public_phone_country_code'];
    publicPhoneNumber = json['public_phone_number'];
    sellerShoppableFeedType = json['seller_shoppable_feed_type'];
    showShoppableFeed = json['show_shoppable_feed'];
    thirdPartyDownloadsEnabled = json['third_party_downloads_enabled'];
    totalIgtvVideos = json['total_igtv_videos'];
    if (json['upcoming_events'] != null) {
      upcomingEvents = [];
      json['upcoming_events'].forEach((v) {
        upcomingEvents?.add(v);
      });
    }
    username = json['username'];
  }
  dynamic about;
  List<dynamic>? accountBadges;
  int? accountType;
  ActiveStandaloneFundraisers? activeStandaloneFundraisers;
  List<dynamic>? adjustedBannersOrder;
  dynamic adsIncentiveExpirationDate;
  dynamic adsPageId;
  dynamic adsPageName;
  List<BioLinks>? bioLinks;
  String? biography;
  dynamic biographyEmail;
  BiographyWithEntities? biographyWithEntities;
  String? businessContactMethod;
  bool? canAddFbGroupLinkOnProfile;
  bool? canHideCategory;
  bool? canHidePublicContacts;
  String? category;
  int? categoryId;
  String? contactPhoneNumber;
  dynamic currentCatalogId;
  String? directMessaging;
  bool? eligibleForTextAppActivationBadge;
  String? externalLynxUrl;
  String? externalUrl;
  int? fbidV2;
  int? followerCount;
  int? followingCount;
  String? fullName;
  bool? hasAnonymousProfilePicture;
  bool? hasChaining;
  bool? hasGuides;
  bool? hasIgtvSeries;
  HdProfilePicUrlInfo? hdProfilePicUrlInfo;
  List<HdProfilePicVersions>? hdProfilePicVersions;
  String? id;
  bool? isBusiness;
  bool? isCallToActionEnabled;
  bool? isCategoryTappable;
  bool? isEligibleForRequestMessage;
  bool? isFavorite;
  bool? isFavoriteForClips;
  bool? isFavoriteForIgtv;
  bool? isFavoriteForStories;
  bool? isParentingAccount;
  bool? isPrivate;
  bool? isProfileAudioCallEnabled;
  bool? isVerified;
  int? latestReelMedia;
  String? liveSubscriptionStatus;
  LocationData? locationData;
  int? mediaCount;
  String? merchantCheckoutStyle;
  dynamic pageId;
  dynamic pageName;
  PinnedChannelsInfo? pinnedChannelsInfo;
  int? primaryProfileLinkType;
  int? professionalConversionSuggestedAccountType;
  String? profileContext;
  List<dynamic>? profileContextFacepileUsers;
  List<dynamic>? profileContextLinksWithUserIds;
  String? profilePicId;
  String? profilePicUrl;
  String? profilePicUrlHd;
  String? publicEmail;
  String? publicPhoneCountryCode;
  String? publicPhoneNumber;
  String? sellerShoppableFeedType;
  bool? showShoppableFeed;
  int? thirdPartyDownloadsEnabled;
  int? totalIgtvVideos;
  List<dynamic>? upcomingEvents;
  String? username;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['about'] = about;
    if (accountBadges != null) {
      map['account_badges'] = accountBadges?.map((v) => v.toJson()).toList();
    }
    map['account_type'] = accountType;
    if (activeStandaloneFundraisers != null) {
      map['active_standalone_fundraisers'] = activeStandaloneFundraisers?.toJson();
    }
    if (adjustedBannersOrder != null) {
      map['adjusted_banners_order'] = adjustedBannersOrder?.map((v) => v.toJson()).toList();
    }
    map['ads_incentive_expiration_date'] = adsIncentiveExpirationDate;
    map['ads_page_id'] = adsPageId;
    map['ads_page_name'] = adsPageName;
    if (bioLinks != null) {
      map['bio_links'] = bioLinks?.map((v) => v.toJson()).toList();
    }
    map['biography'] = biography;
    map['biography_email'] = biographyEmail;
    if (biographyWithEntities != null) {
      map['biography_with_entities'] = biographyWithEntities?.toJson();
    }
    map['business_contact_method'] = businessContactMethod;
    map['can_add_fb_group_link_on_profile'] = canAddFbGroupLinkOnProfile;
    map['can_hide_category'] = canHideCategory;
    map['can_hide_public_contacts'] = canHidePublicContacts;
    map['category'] = category;
    map['category_id'] = categoryId;
    map['contact_phone_number'] = contactPhoneNumber;
    map['current_catalog_id'] = currentCatalogId;
    map['direct_messaging'] = directMessaging;
    map['eligible_for_text_app_activation_badge'] = eligibleForTextAppActivationBadge;
    map['external_lynx_url'] = externalLynxUrl;
    map['external_url'] = externalUrl;
    map['fbid_v2'] = fbidV2;
    map['follower_count'] = followerCount;
    map['following_count'] = followingCount;
    map['full_name'] = fullName;
    map['has_anonymous_profile_picture'] = hasAnonymousProfilePicture;
    map['has_chaining'] = hasChaining;
    map['has_guides'] = hasGuides;
    map['has_igtv_series'] = hasIgtvSeries;
    if (hdProfilePicUrlInfo != null) {
      map['hd_profile_pic_url_info'] = hdProfilePicUrlInfo?.toJson();
    }
    if (hdProfilePicVersions != null) {
      map['hd_profile_pic_versions'] = hdProfilePicVersions?.map((v) => v.toJson()).toList();
    }
    map['id'] = id;
    map['is_business'] = isBusiness;
    map['is_call_to_action_enabled'] = isCallToActionEnabled;
    map['is_category_tappable'] = isCategoryTappable;
    map['is_eligible_for_request_message'] = isEligibleForRequestMessage;
    map['is_favorite'] = isFavorite;
    map['is_favorite_for_clips'] = isFavoriteForClips;
    map['is_favorite_for_igtv'] = isFavoriteForIgtv;
    map['is_favorite_for_stories'] = isFavoriteForStories;
    map['is_parenting_account'] = isParentingAccount;
    map['is_private'] = isPrivate;
    map['is_profile_audio_call_enabled'] = isProfileAudioCallEnabled;
    map['is_verified'] = isVerified;
    map['latest_reel_media'] = latestReelMedia;
    map['live_subscription_status'] = liveSubscriptionStatus;
    if (locationData != null) {
      map['location_data'] = locationData?.toJson();
    }
    map['media_count'] = mediaCount;
    map['merchant_checkout_style'] = merchantCheckoutStyle;
    map['page_id'] = pageId;
    map['page_name'] = pageName;
    if (pinnedChannelsInfo != null) {
      map['pinned_channels_info'] = pinnedChannelsInfo?.toJson();
    }
    map['primary_profile_link_type'] = primaryProfileLinkType;
    map['professional_conversion_suggested_account_type'] = professionalConversionSuggestedAccountType;
    map['profile_context'] = profileContext;
    if (profileContextFacepileUsers != null) {
      map['profile_context_facepile_users'] = profileContextFacepileUsers?.map((v) => v.toJson()).toList();
    }
    if (profileContextLinksWithUserIds != null) {
      map['profile_context_links_with_user_ids'] = profileContextLinksWithUserIds?.map((v) => v.toJson()).toList();
    }
    map['profile_pic_id'] = profilePicId;
    map['profile_pic_url'] = profilePicUrl;
    map['profile_pic_url_hd'] = profilePicUrlHd;
    map['public_email'] = publicEmail;
    map['public_phone_country_code'] = publicPhoneCountryCode;
    map['public_phone_number'] = publicPhoneNumber;
    map['seller_shoppable_feed_type'] = sellerShoppableFeedType;
    map['show_shoppable_feed'] = showShoppableFeed;
    map['third_party_downloads_enabled'] = thirdPartyDownloadsEnabled;
    map['total_igtv_videos'] = totalIgtvVideos;
    if (upcomingEvents != null) {
      map['upcoming_events'] = upcomingEvents?.map((v) => v.toJson()).toList();
    }
    map['username'] = username;
    return map;
  }

}

class PinnedChannelsInfo {
  PinnedChannelsInfo({
      this.hasPublicChannels, 
      this.pinnedChannelsList,});

  PinnedChannelsInfo.fromJson(dynamic json) {
    hasPublicChannels = json['has_public_channels'];
    if (json['pinned_channels_list'] != null) {
      pinnedChannelsList = [];
      json['pinned_channels_list'].forEach((v) {
        pinnedChannelsList?.add(v);
      });
    }
  }
  bool? hasPublicChannels;
  List<dynamic>? pinnedChannelsList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['has_public_channels'] = hasPublicChannels;
    if (pinnedChannelsList != null) {
      map['pinned_channels_list'] = pinnedChannelsList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class LocationData {
  LocationData({
      this.addressStreet, 
      this.cityId, 
      this.cityName, 
      this.instagramLocationId, 
      this.latitude, 
      this.longitude, 
      this.zip,});

  LocationData.fromJson(dynamic json) {
    addressStreet = json['address_street'];
    cityId = json['city_id'];
    cityName = json['city_name'];
    instagramLocationId = json['instagram_location_id'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    zip = json['zip'];
  }
  String? addressStreet;
  int? cityId;
  String? cityName;
  String? instagramLocationId;
  double? latitude;
  double? longitude;
  String? zip;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address_street'] = addressStreet;
    map['city_id'] = cityId;
    map['city_name'] = cityName;
    map['instagram_location_id'] = instagramLocationId;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['zip'] = zip;
    return map;
  }

}

class HdProfilePicVersions {
  HdProfilePicVersions({
      this.height, 
      this.url, 
      this.width,});

  HdProfilePicVersions.fromJson(dynamic json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }
  int? height;
  String? url;
  int? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['url'] = url;
    map['width'] = width;
    return map;
  }

}

class HdProfilePicUrlInfo {
  HdProfilePicUrlInfo({
      this.height, 
      this.url, 
      this.width,});

  HdProfilePicUrlInfo.fromJson(dynamic json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }
  int? height;
  String? url;
  int? width;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['url'] = url;
    map['width'] = width;
    return map;
  }

}

class BiographyWithEntities {
  BiographyWithEntities({
      this.entities, 
      this.rawText,});

  BiographyWithEntities.fromJson(dynamic json) {
    if (json['entities'] != null) {
      entities = [];
      json['entities'].forEach((v) {
        entities?.add(Entities.fromJson(v));
      });
    }
    rawText = json['raw_text'];
  }
  List<Entities>? entities;
  String? rawText;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (entities != null) {
      map['entities'] = entities?.map((v) => v.toJson()).toList();
    }
    map['raw_text'] = rawText;
    return map;
  }

}

class Entities {
  Entities({
      this.user,});

  Entities.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  User? user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    return map;
  }

}

class User {
  User({
      this.id, 
      this.username,});

  User.fromJson(dynamic json) {
    id = json['id'];
    username = json['username'];
  }
  int? id;
  String? username;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['username'] = username;
    return map;
  }

}

class BioLinks {
  BioLinks({
      this.imageUrl, 
      this.isPinned, 
      this.isVerified, 
      this.linkId, 
      this.linkType, 
      this.lynxUrl, 
      this.openExternalUrlWithInAppBrowser, 
      this.title, 
      this.url,});

  BioLinks.fromJson(dynamic json) {
    imageUrl = json['image_url'];
    isPinned = json['is_pinned'];
    isVerified = json['is_verified'];
    linkId = json['link_id'];
    linkType = json['link_type'];
    lynxUrl = json['lynx_url'];
    openExternalUrlWithInAppBrowser = json['open_external_url_with_in_app_browser'];
    title = json['title'];
    url = json['url'];
  }
  String? imageUrl;
  bool? isPinned;
  bool? isVerified;
  int? linkId;
  String? linkType;
  String? lynxUrl;
  bool? openExternalUrlWithInAppBrowser;
  String? title;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['image_url'] = imageUrl;
    map['is_pinned'] = isPinned;
    map['is_verified'] = isVerified;
    map['link_id'] = linkId;
    map['link_type'] = linkType;
    map['lynx_url'] = lynxUrl;
    map['open_external_url_with_in_app_browser'] = openExternalUrlWithInAppBrowser;
    map['title'] = title;
    map['url'] = url;
    return map;
  }

}

class ActiveStandaloneFundraisers {
  ActiveStandaloneFundraisers({
      this.fundraisers, 
      this.totalCount,});

  ActiveStandaloneFundraisers.fromJson(dynamic json) {
    if (json['fundraisers'] != null) {
      fundraisers = [];
      json['fundraisers'].forEach((v) {
        fundraisers?.add(v);
      });
    }
    totalCount = json['total_count'];
  }
  List<dynamic>? fundraisers;
  int? totalCount;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (fundraisers != null) {
      map['fundraisers'] = fundraisers?.map((v) => v.toJson()).toList();
    }
    map['total_count'] = totalCount;
    return map;
  }

}