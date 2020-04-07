Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 736C71A11B3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 18:39:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+A0WrRpiFO55nmr+0iqwgEsTEZlkYPGlYN48tjbEJ/M=; b=Y+yRpHIwXMBv7/
	wrpFThEqMbBDlvZTBvo2L0Or+mqRfona7Udi73VEYY3bM+2vHqyl2O+kWHkP5kr8EEra3NJhRLimU
	VTCfCbIOX80ZIsgWXx84d0SeUGwL32N6YdHWS20SZbSSD8Vh5XtQsrZcFoV7NPP81ZsuxDUdyz4fu
	AHOyU+EjeggDhFNgzAyhsGjsxAGJecqXwvXqr/rCrVF8Quo/oyjVrQeI5gy5QPwIlXoa2oeHdQjai
	TisBavckYg8qMhMPZzFdWC+qo8fvsmxEIkFbyYcvmFRgVMM3gJS0H1l3LzmIt0Q7fT+mgWukeMIEn
	EOGTYS9HufvZThQrDqdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrFU-0005Dl-RM; Tue, 07 Apr 2020 16:38:52 +0000
Received: from smtprelay-out1.synopsys.com ([149.117.73.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrFL-0005Ce-4z
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 16:38:44 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 217DF405FB;
 Tue,  7 Apr 2020 16:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1586277521; bh=xqnsJAtrDtjK32LVb2MyZOKg5GH46Ca+IpoQjEgyemc=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=PzP7+tHhMZCQgskF30b69K6Uu9C6pk0ZdLgXHvgkwLJPIgnoRib1bcTdB1U0+s0vg
 HYG/9RMmyDhrEgd4feHekZfQ3WNYZklJswx1TkIC4uuLkjVCvyUmP5dBuajODTNVqw
 CMNpzheEgxprUPXqzyJ8hbB/jVJJUq6oubasq6r/cM22Vzfaly0PruTvjcS4vVoXzh
 Lz+Cp6HMdc1SIxB47RdcGTGDW4Srb+56xgjdP5Ia9L9z1n4c50yYGTxRbHfazwLOG5
 k21qK+mNyTfnBgj7Sm1QxjxgG0tGTF2Hg/L7zEXHIBiEP935azDal5h8KdGpu0/Ylc
 TIlVb4VE7OejQ==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id 761EFA0091;
 Tue,  7 Apr 2020 16:38:38 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 7 Apr 2020 09:38:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (10.202.3.67) by
 mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Tue, 7 Apr 2020 09:38:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LH2FjxffTkux2a3mtfYkYS3XdgRArKAPMNPrZwVg+KmePbmJDxLo3PK9uNs0q/GxMYDRjFx1VoYhXKvp1l8Txmu7ZK4VfBHmj5/yEAmMUc3A0geBiReyf3koGlhNsw3iL/vQkmumzng7cgWe0XIZp9oGPy0a0kKcDLrbj+AGtZWeYtieSkv7oMybl3hMMJNsKQ5HUHPwCTTREnWPu3WCByF2YpbAb2umMwf6U/DN+4uZyisO6BJ8ezNmtIsInWBaRjYJ90Sersyc8inQJQdSsShEV8OcOA0k5l2J2KjMZCEqyYfDQ5u5xfLNnaNtRRQYQ0osiGhw1XgtCdD4n8PqXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqnsJAtrDtjK32LVb2MyZOKg5GH46Ca+IpoQjEgyemc=;
 b=IJXA+sDYY3MAnFcRnKxBuAgqp4HcTyiFV7vQjgvWLEDdFJjVabCw/B5cozUVkMek0jxu2kGp0fzXH4QSEeL6yAlSQBj8KLw/pOX3xS7c+Lix6wyTUA7uy+IIT7jNUfLhpP31adLmnnD3d0sF/e7+Rcogrr821G7o/qdP4DXM1kEbilJ/WJRo8Sqr6DnS0Mm2D6q1xPlxBFfAhblVTRxwT2bKAGMARYo02NkfrO3pof/UhiFTBSROssi2hXayXKL26uebCndojE7LNNXE0s1VuDDaNBO5Cr+F2ED6aTtQKx8yFq7y+2BnKlAwHJnZisVxrKRY8wDV7xdczAjxDXH6fg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=synopsys.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xqnsJAtrDtjK32LVb2MyZOKg5GH46Ca+IpoQjEgyemc=;
 b=W8uw4EwYyeZI/URmtmPb+ixHZMPMZTPzsivzjyX3t2jdRfADHnllZYQveyWZFOpfV4GQCM2VE9ssXJHPbA/IRw7fitY+oftAp2KT9NsK1jAmDtEbNlZUP+0JJMcmefp8HWWlKcqF2Cg5UtkP44prZgR9tSctwmOHjEjYyspd+2U=
Received: from CH2PR12MB3782.namprd12.prod.outlook.com (2603:10b6:610:23::28)
 by CH2PR12MB4037.namprd12.prod.outlook.com (2603:10b6:610:7a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.16; Tue, 7 Apr
 2020 16:38:36 +0000
Received: from CH2PR12MB3782.namprd12.prod.outlook.com
 ([fe80::98c8:5bfd:ae23:37cf]) by CH2PR12MB3782.namprd12.prod.outlook.com
 ([fe80::98c8:5bfd:ae23:37cf%7]) with mapi id 15.20.2878.022; Tue, 7 Apr 2020
 16:38:36 +0000
From: Angelo Ribeiro <Angelo.Ribeiro@synopsys.com>
To: Adrian Pop <pop.adrian61@gmail.com>
Subject: RE: [PATCH v2] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config
 through debugfs
Thread-Topic: [PATCH v2] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config
 through debugfs
Thread-Index: AQHWDBo6Hn96DzA7REmPZBpLU636BqhsXhoAgADdggCAAKGz8A==
Date: Tue, 7 Apr 2020 16:38:35 +0000
Message-ID: <CH2PR12MB3782CBF66BB87E0D4A638297CBC30@CH2PR12MB3782.namprd12.prod.outlook.com>
References: <a809feb7d7153a92e323416f744f1565e995da01.1586180592.git.angelo.ribeiro@synopsys.com>
 <CAP-HsdQtdSeiSe3O8P6Pe587PYAqO48pGJLwf+Tvq20sY_nh=A@mail.gmail.com>
 <CAP-HsdRaSBrFHvVM1onwB1nj7P6k9Qwdpp547tNN9XZvXapqoQ@mail.gmail.com>
In-Reply-To: <CAP-HsdRaSBrFHvVM1onwB1nj7P6k9Qwdpp547tNN9XZvXapqoQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jWVc1blpXeHZjbHhoY0hCa1lYUmhYSEp2WVcxcGJtZGNNRGxrT0RRNVlq?=
 =?utf-8?B?WXRNekprTXkwMFlUUXdMVGcxWldVdE5tSTROR0poTWpsbE16VmlYRzF6WjNO?=
 =?utf-8?B?Y2JYTm5MVE0zTldaa04yTXlMVGM0WldVdE1URmxZUzA1WkRjd0xXWmpOemMz?=
 =?utf-8?B?TkdWbFpHTXlaVnhoYldVdGRHVnpkRnd6TnpWbVpEZGpOQzAzT0dWbExURXha?=
 =?utf-8?B?V0V0T1dRM01DMW1ZemMzTnpSbFpXUmpNbVZpYjJSNUxuUjRkQ0lnYzNvOUlq?=
 =?utf-8?B?Z3dNalFpSUhROUlqRXpNak13TnpVeE1URXlORGs0TkRFM01pSWdhRDBpU2s5?=
 =?utf-8?B?UlUxaDFabk5SU2pWVmMwOW5RWEZhWldWVVNua3JUamhyUFNJZ2FXUTlJaUln?=
 =?utf-8?B?WW13OUlqQWlJR0p2UFNJeElpQmphVDBpWTBGQlFVRkZVa2hWTVZKVFVsVkdU?=
 =?utf-8?B?a05uVlVGQlFsRktRVUZDYzJkaWFqVXJaM3BYUVdNMlRVeE1SWGh1VldNcmVt?=
 =?utf-8?B?OTNjM05VUjJSU2VqUlBRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVaEJRVUZCUTJ0RFFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVWQlFWRkJRa0ZCUVVGdmVXNXVObEZCUVVGQlFVRkJRVUZCUVVGQlFVRktO?=
 =?utf-8?B?RUZCUVVKdFFVZHJRV0puUW1oQlJ6UkJXWGRDYkVGR09FRmpRVUp6UVVkRlFX?=
 =?utf-8?B?Sm5RblZCUjJ0QlltZENia0ZHT0VGa2QwSm9RVWhSUVZwUlFubEJSekJCV1ZG?=
 =?utf-8?B?Q2VVRkhjMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUlVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?blFVRkJRVUZCYm1kQlFVRkhXVUZpZDBJeFFVYzBRVnBCUW5sQlNHdEJXSGRD?=
 =?utf-8?B?ZDBGSFJVRmpaMEl3UVVjMFFWcFJRbmxCU0UxQldIZENia0ZIV1VGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFWRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkRRVUZCUVVGQlEyVkJRVUZCV21kQ2RrRklWVUZpWjBKclFV?=
 =?utf-8?B?aEpRV1ZSUW1aQlNFRkJXVkZDZVVGSVVVRmlaMEpzUVVoSlFXTjNRbVpCU0Ux?=
 =?utf-8?B?QldWRkNkRUZJVFVGa1VVSjFRVWRqUVZoM1FtcEJSemhCWW1kQ2JVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUpCUVVGQlFVRkJRVUZCU1VGQlFVRkJRVW8wUVVGQlFtMUJSemhC?=
 =?utf-8?B?WkZGQ2RVRkhVVUZqWjBJMVFVWTRRV05CUW1oQlNFbEJaRUZDZFVGSFZVRmpa?=
 =?utf-8?B?MEo2UVVZNFFXTjNRbWhCUnpCQlkzZENNVUZITkVGYWQwSm1RVWhKUVZwUlFu?=
 =?utf-8?B?cEJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGRlFVRkJRVUZCUVVGQlFXZEJRVUZCUVVGdVow?=
 =?utf-8?B?RkJRVWRaUVdKM1FqRkJSelJCV2tGQ2VVRklhMEZZZDBKM1FVZEZRV05uUWpC?=
 =?utf-8?B?QlJ6UkJXbEZDZVVGSVRVRllkMEo2UVVjd1FXRlJRbXBCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJVVUZCUVVGQlFVRkJRVU5C?=
 =?utf-8?B?UVVGQlFVRkRaVUZCUVVGYVowSjJRVWhWUVdKblFtdEJTRWxCWlZGQ1prRklR?=
 =?utf-8?B?VUZaVVVKNVFVaFJRV0puUW14QlNFbEJZM2RDWmtGSVRVRmtRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUWtGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGSlFVRkJRVUZCU2pSQlFVRkNiVUZIT0VGa1VVSjFRVWRSUVdO?=
 =?utf-8?B?blFqVkJSamhCWTBGQ2FFRklTVUZrUVVKMVFVZFZRV05uUW5wQlJqaEJaRUZD?=
 =?utf-8?B?ZWtGSE1FRlpkMEZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVVkJRVUZCUVVGQlFVRkJaMEZCUVVGQlFXNW5RVUZCUjFsQlluZENN?=
 =?utf-8?B?VUZITkVGYVFVSjVRVWhyUVZoM1FuZEJSMFZCWTJkQ01FRkhORUZhVVVKNVFV?=
 =?utf-8?B?aE5RVmgzUWpGQlJ6QkJXWGRCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZSUVVGQlFVRkJRVUZCUTBGQlFVRkJRVU5sUVVG?=
 =?utf-8?B?QlFWcDNRakJCU0UxQldIZENkMEZJU1VGaWQwSnJRVWhWUVZsM1FqQkJSamhC?=
 =?utf-8?B?WkVGQ2VVRkhSVUZoVVVKMVFVZHJRV0puUW01QlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQ1FVRkJRVUZCUVVGQlFVbEJR?=
 =?utf-8?B?VUZCUVVGS05FRkJRVUo2UVVkRlFXSkJRbXhCU0UxQldIZENhRUZIVFVGWmQw?=
 =?utf-8?B?SjJRVWhWUVdKblFqQkJSamhCWTBGQ2MwRkhSVUZpWjBGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJSVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZuUVVGQlFVRkJibWRCUVVGSVRVRlpVVUp6UVVkVlFXTjNRbVpC?=
 =?utf-8?B?U0VWQlpGRkNka0ZJVVVGYVVVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVZGQlFVRkJRVUZCUVVGRFFVRkJRVUZCUTJWQlFVRkJZM2RDZFVGSVFV?=
 =?utf-8?B?RmpkMEptUVVkM1FXRlJRbXBCUjFWQlltZENla0ZIVlVGWWQwSXdRVWRWUVdO?=
 =?utf-8?B?blFuUkJSamhCVFZGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVSkJRVUZCUVVGQlFVRkJTVUZCUVVGQlFVbzBRVUZC?=
 =?utf-8?B?UW5wQlJ6UkJZMEZDZWtGR09FRmlRVUp3UVVkTlFWcFJRblZCU0UxQldsRkNa?=
 =?utf-8?B?a0ZJVVVGYVVVSjVRVWN3UVZoM1FucEJTRkZCWkZGQ2EwRkhWVUZpWjBJd1FV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZGUVVGQlFVRkJRVUZCUVdkQlFV?=
 =?utf-8?B?RkJRVUZ1WjBGQlFVaFpRVnAzUW1aQlIzTkJXbEZDTlVGSVkwRmlkMEo1UVVk?=
 =?utf-8?B?UlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJR?=
 =?utf-8?B?VUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFV?=
 =?utf-8?B?RkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlVVRkJRVUZC?=
 =?utf-8?Q?QUFBQUNBQUFBQUFBPSIvPjwvbWV0YT4=3D?=
x-dg-rorf: true
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=angelor@synopsys.com; 
x-originating-ip: [83.174.63.157]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 455200bd-4fd4-4cfc-28cc-08d7db121e55
x-ms-traffictypediagnostic: CH2PR12MB4037:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR12MB4037C56F502DC9B37220DC84CBC30@CH2PR12MB4037.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 036614DD9C
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH2PR12MB3782.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(346002)(39860400002)(376002)(396003)(366004)(136003)(8936002)(6506007)(66946007)(9686003)(76116006)(8676002)(66556008)(55016002)(107886003)(81166006)(64756008)(6916009)(66446008)(81156014)(7416002)(86362001)(53546011)(66476007)(186003)(33656002)(4326008)(54906003)(52536014)(7696005)(5660300002)(26005)(316002)(71200400001)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 22dV0NE8MWmXeclHx7Ib53Q8G7sIN8a/kP9fESFfyGYczD2eSSvFlyenb+leOGka+wc+8+TJN2nTbEsq+6IF+TQfLb4HBJ8KKegCiBu+CG4CYYd7/s7S3HAiZ72g0rdhOdugRMUm8k0okZInayuQcOcPi8Giz3Dn1YatbxOSS6lBC46imZUnTBFqFG5d8SOa1rXf5ktb6HbyzruI3RZJI6YNxTFfpS+rpOeST0oCyBvtpNzytiv/jP5OLz5+0NNjF0TAC9sYc8McKxAzlFtuYkJP9anpLDg/Gt7TaEGxzAkKnyhG8yhhM5J+4buL5zmaffa9uQyG9FFVThJz+6XAbZzlf+mYei7HNjybf3RxteHQ14niI15Yjm4x6XnKkATiDfng/HhrWsKRAATsumdoxyCITHV/dk9W4lIvKlgvIAYxQjEY83n2mtLZ/ZL3qpMt
x-ms-exchange-antispam-messagedata: YeRtZShNuTBQh2GnRBGllZQPWsTfso9n3I+xEpDqli86TY7fkcl0OCVcQ1I5hAOb6cekc9gyPmeOthEvMK6RUp51I9fmBlHdHzpjJaOu6PCXojsRsgDLBmU0Rf9uEE6AHGW7uXNbz642QS5YPKcMVw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 455200bd-4fd4-4cfc-28cc-08d7db121e55
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Apr 2020 16:38:35.8377 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: N0bmsU6JeDaBRULeWS9PK5PyY1ibZ1z/OfQ8Q9rPe8msM+fORP3umcUh/4MPB3EBSW42sd0OHiDExK0jgPgMqA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR12MB4037
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_093843_204933_DAF8BF26 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Jose Abreu <Jose.Abreu@synopsys.com>, Joao Pinto <Joao.Pinto@synopsys.com>,
 Daniel  Vetter <daniel@ffwll.ch>, "airlied@linux.ie" <airlied@linux.ie>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 "philippe.cornu@st.com" <philippe.cornu@st.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "yannick.fertre@st.com" <yannick.fertre@st.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "benjamin.gaignard@st.com" <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian,

> -----Original Message-----
> From: Adrian Pop <pop.adrian61@gmail.com>
> Sent: Tuesday, April 7, 2020 7:58 AM
> To: Angelo Ribeiro <angelor@synopsys.com>
> Cc: yannick.fertre@st.com; philippe.cornu@st.com;
> benjamin.gaignard@st.com; airlied@linux.ie; Daniel Vetter
> <daniel@ffwll.ch>; mcoquelin.stm32@gmail.com; alexandre.torgue@st.com;
> dri-devel@lists.freedesktop.org; linux-stm32@st-md-mailman.stormreply.com;
> linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org;
> Gustavo Pimentel <gustavo@synopsys.com>; Joao Pinto <jpinto@synopsys.com>;
> Jose Abreu <joabreu@synopsys.com>
> Subject: Re: [PATCH v2] drm/bridge: dw-mipi-dsi.c: Add VPG runtime config
> through debugfs
> 
> Tested-by: Adrian Pop <pop.adrian61@gmail.com>
> Tested OK on STM32F769i-DISCO, DSI v1.30, on next-20200406.
> 
> On Mon, Apr 6, 2020 at 8:45 PM Adrian Pop <pop.adrian61@gmail.com> wrote:
> >
> > Hello Angelo,
> >
> > Tested OK on STM32F769i-DISCO, DSI v1.30, on next-20200406. I guess
> > there is no horizontal for BER.

Yes, there is no horizontal for BER.
Thank you for testing the patch.

> >
> > Regards,
> > Adrian
> >
> > On Mon, Apr 6, 2020 at 4:49 PM Angelo Ribeiro
> > <Angelo.Ribeiro@synopsys.com> wrote:
> > >
> > > Add support for the video pattern generator (VPG) BER pattern mode and
> > > configuration in runtime.
> > >
> > > This enables using the debugfs interface to manipulate the VPG after
> > > the pipeline is set.
> > > Also, enables the usage of the VPG BER pattern.
> > >
> > > Changes in v2:
> > >   - Added VID_MODE_VPG_MODE
> > >   - Solved incompatible return type on __get and __set
> > >
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > > Reported-by: Adrian Pop <pop.adrian61@gmail.com>
> > > Cc: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
> > > Cc: Joao Pinto <jpinto@synopsys.com>
> > > Cc: Jose Abreu <jose.abreu@synopsys.com>
> > > Signed-off-by: Angelo Ribeiro <angelo.ribeiro@synopsys.com>
> > > ---
> > >  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 98
> ++++++++++++++++++++++++---
> > >  1 file changed, 90 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > > index b18351b..9de3645 100644
> > > --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > > +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> > > @@ -91,6 +91,7 @@
> > >  #define VID_MODE_TYPE_BURST                    0x2
> > >  #define VID_MODE_TYPE_MASK                     0x3
> > >  #define VID_MODE_VPG_ENABLE            BIT(16)
> > > +#define VID_MODE_VPG_MODE              BIT(20)
> > >  #define VID_MODE_VPG_HORIZONTAL                BIT(24)
> > >
> > >  #define DSI_VID_PKT_SIZE               0x3c
> > > @@ -221,6 +222,21 @@
> > >  #define PHY_STATUS_TIMEOUT_US          10000
> > >  #define CMD_PKT_STATUS_TIMEOUT_US      20000
> > >
> > > +#ifdef CONFIG_DEBUG_FS
> > > +#define VPG_DEFS(name, dsi) \
> > > +       ((void __force *)&((*dsi).vpg_defs.name))
> > > +
> > > +#define REGISTER(name, mask, dsi) \
> > > +       { #name, VPG_DEFS(name, dsi), mask, dsi }
> > > +
> > > +struct debugfs_entries {
> > > +       const char                              *name;
> > > +       bool                                    *reg;
> > > +       u32                                     mask;
> > > +       struct dw_mipi_dsi                      *dsi;
> > > +};
> > > +#endif /* CONFIG_DEBUG_FS */
> > > +
> > >  struct dw_mipi_dsi {
> > >         struct drm_bridge bridge;
> > >         struct mipi_dsi_host dsi_host;
> > > @@ -238,9 +254,12 @@ struct dw_mipi_dsi {
> > >
> > >  #ifdef CONFIG_DEBUG_FS
> > >         struct dentry *debugfs;
> > > -
> > > -       bool vpg;
> > > -       bool vpg_horizontal;
> > > +       struct debugfs_entries *debugfs_vpg;
> > > +       struct {
> > > +               bool vpg;
> > > +               bool vpg_horizontal;
> > > +               bool vpg_ber_pattern;
> > > +       } vpg_defs;
> > >  #endif /* CONFIG_DEBUG_FS */
> > >
> > >         struct dw_mipi_dsi *master; /* dual-dsi master ptr */
> > > @@ -530,9 +549,11 @@ static void dw_mipi_dsi_video_mode_config(struct
> dw_mipi_dsi *dsi)
> > >                 val |= VID_MODE_TYPE_NON_BURST_SYNC_EVENTS;
> > >
> > >  #ifdef CONFIG_DEBUG_FS
> > > -       if (dsi->vpg) {
> > > +       if (dsi->vpg_defs.vpg) {
> > >                 val |= VID_MODE_VPG_ENABLE;
> > > -               val |= dsi->vpg_horizontal ? VID_MODE_VPG_HORIZONTAL :
> 0;
> > > +               val |= dsi->vpg_defs.vpg_horizontal ?
> > > +                      VID_MODE_VPG_HORIZONTAL : 0;
> > > +               val |= dsi->vpg_defs.vpg_ber_pattern ?
> VID_MODE_VPG_MODE : 0;
> > >         }
> > >  #endif /* CONFIG_DEBUG_FS */
> > >
> > > @@ -961,6 +982,68 @@ static const struct drm_bridge_funcs
> dw_mipi_dsi_bridge_funcs = {
> > >
> > >  #ifdef CONFIG_DEBUG_FS
> > >
> > > +int dw_mipi_dsi_debugfs_write(void *data, u64 val)
> > > +{
> > > +       struct debugfs_entries *vpg = data;
> > > +       struct dw_mipi_dsi *dsi;
> > > +       u32 mode_cfg;
> > > +
> > > +       if (!vpg)
> > > +               return -ENODEV;
> > > +
> > > +       dsi = vpg->dsi;
> > > +
> > > +       *vpg->reg = (bool)val;
> > > +
> > > +       mode_cfg = dsi_read(dsi, DSI_VID_MODE_CFG);
> > > +
> > > +       if (*vpg->reg)
> > > +               mode_cfg |= vpg->mask;
> > > +       else
> > > +               mode_cfg &= ~vpg->mask;
> > > +
> > > +       dsi_write(dsi, DSI_VID_MODE_CFG, mode_cfg);
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +int dw_mipi_dsi_debugfs_show(void *data, u64 *val)
> > > +{
> > > +       struct debugfs_entries *vpg = data;
> > > +
> > > +       if (!vpg)
> > > +               return -ENODEV;
> > > +
> > > +       *val = *vpg->reg;
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +DEFINE_DEBUGFS_ATTRIBUTE(fops_x32, dw_mipi_dsi_debugfs_show,
> > > +                        dw_mipi_dsi_debugfs_write, "%llu\n");
> > > +
> > > +static void debugfs_create_files(void *data)
> > > +{
> > > +       struct dw_mipi_dsi *dsi = data;
> > > +       struct debugfs_entries debugfs[] = {
> > > +               REGISTER(vpg, VID_MODE_VPG_ENABLE, dsi),
> > > +               REGISTER(vpg_horizontal, VID_MODE_VPG_HORIZONTAL,
> dsi),
> > > +               REGISTER(vpg_ber_pattern, VID_MODE_VPG_MODE, dsi),
> > > +       };
> > > +       int i;
> > > +
> > > +       dsi->debugfs_vpg = kmalloc(sizeof(debugfs), GFP_KERNEL);
> > > +       if (!dsi->debugfs_vpg)
> > > +               return;
> > > +
> > > +       memcpy(dsi->debugfs_vpg, debugfs, sizeof(debugfs));
> > > +
> > > +       for (i = 0; i < ARRAY_SIZE(debugfs); i++)
> > > +               debugfs_create_file(dsi->debugfs_vpg[i].name, 0644,
> > > +                                   dsi->debugfs, &dsi-
> >debugfs_vpg[i],
> > > +                                   &fops_x32);
> > > +}
> > > +
> > >  static void dw_mipi_dsi_debugfs_init(struct dw_mipi_dsi *dsi)
> > >  {
> > >         dsi->debugfs = debugfs_create_dir(dev_name(dsi->dev), NULL);
> > > @@ -969,14 +1052,13 @@ static void dw_mipi_dsi_debugfs_init(struct
> dw_mipi_dsi *dsi)
> > >                 return;
> > >         }
> > >
> > > -       debugfs_create_bool("vpg", 0660, dsi->debugfs, &dsi->vpg);
> > > -       debugfs_create_bool("vpg_horizontal", 0660, dsi->debugfs,
> > > -                           &dsi->vpg_horizontal);
> > > +       debugfs_create_files(dsi);
> > >  }
> > >
> > >  static void dw_mipi_dsi_debugfs_remove(struct dw_mipi_dsi *dsi)
> > >  {
> > >         debugfs_remove_recursive(dsi->debugfs);
> > > +       kfree(dsi->debugfs_vpg);
> > >  }
> > >
> > >  #else
> > > --
> > > 2.7.4
> > >


Thanks,
Angelo
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
