Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9FBFF1A35
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 16:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzZab+sBz0nI0LY6nw6OpxkcCGuY5YqIVdbYPDj3tew=; b=fLVhINppDRAK+x
	SC0tie/UxRExK33pi0j09Dq0kUpVjYwZxmvNBH9tbum/KAuzOLd2K4jFFnwxgPNf+10NJJnCD5L6L
	S9/9zJmXmPwXpa31X6XWf8mUL63R/IbX5WdUmAPoLK4RWnVSfWMNZ4HEXu4l5TuwObIZwhdkdFnTC
	cpTmRa6vtewN4mH+CkqrTD/FvGfo1WCScKXl2vA347DHhRgTpamYAXtb0nTha6pZ2HJ1+LTaAd0rS
	ZKq6xPuYDzD9SLCGcolZFzwUCx+hBBRLBctcM0Aby5eop5+lKl9GLZyPI0RdeSjROpB0Vl7/+XMLu
	FM7S83Z1bUZNnrhsmntA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSNQH-0000IN-SE; Wed, 06 Nov 2019 15:40:41 +0000
Received: from us03-smtprelay2.synopsys.com ([149.117.87.133]
 helo=smtprelay-out1.synopsys.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSNQA-0000Hd-0H
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 15:40:35 +0000
Received: from mailhost.synopsys.com (badc-mailhost1.synopsys.com
 [10.192.0.17])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by smtprelay-out1.synopsys.com (Postfix) with ESMTPS id 0B53EC0933;
 Wed,  6 Nov 2019 15:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synopsys.com; s=mail;
 t=1573054832; bh=BsVoHYh6rdbW3NNQ4JgATsOna64vlbGVGviU1V9Yjb0=;
 h=From:To:CC:Subject:Date:References:In-Reply-To:From;
 b=bi+piAkVf7FMl7WxCvthkMX/MuGwGL64WMUFjBTjNqq00EDhs3pv+xRVEYbV/59aZ
 GsD2Uq7fmP6R9W/ZrFzawUacrBM6rmmfUVLhOPgGABijrR5Yjzvp/OVJb2aXHyN5bJ
 XBmqy6JO8WaABOXWBU+pp9JEZ4LuFQXrCjfqWw47yBKAm0B5ui12vIrKgROQkkL7V5
 TYl0gdmXDs05Ej7r2hbdW9ctKePf9YvNXFyOlGLPCfo+q0pXOGIshzCmVyC2nG4XjM
 zAEv1211q64vxMf4iqUq1IAxw8K4//AfmZe26RQ5ieKn/94nBlxDm/6HYp+eHtKNL/
 cGFrrjBJ6SJbg==
Received: from US01WEHTC3.internal.synopsys.com
 (us01wehtc3.internal.synopsys.com [10.15.84.232])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mailhost.synopsys.com (Postfix) with ESMTPS id EC4C1A00E0;
 Wed,  6 Nov 2019 15:40:28 +0000 (UTC)
Received: from US01HYBRID2.internal.synopsys.com (10.15.246.24) by
 US01WEHTC3.internal.synopsys.com (10.15.84.232) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Wed, 6 Nov 2019 07:40:23 -0800
Received: from NAM02-CY1-obe.outbound.protection.outlook.com (10.13.134.195)
 by mrs.synopsys.com (10.15.246.24) with Microsoft SMTP Server (TLS) id
 14.3.408.0; Wed, 6 Nov 2019 07:40:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RSBYoOiVMuKg6Jp9FK/wHEiB7VRMtsYv7xv0f6jZW7NpSRZbBWLPkxaK2yL8QsoxtEeDar1C2G5Ptzma6vdddb3D41mdYKTpKg3b4XV9lsqddll0OpTOr42WoTKneahiEMKOWvteqj95UpRFUaoLKpkW69UVfXYTViQe1/XaM3XxXQ+EPkiwCs2UAedcLNrgC1MR2FQ5lPh+hPcXODbypC0lxOtWULkRbmPOrVRsv5l0SHVJ7t9tK5AShtiMybhngFYXqtx4K296KyIAER82XOhCjGxus1Xg83KCL+n+ElT9maEi0Jukm0ScoaFXsg3+5hmqPqQT4G4C2pirzZRyuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BsVoHYh6rdbW3NNQ4JgATsOna64vlbGVGviU1V9Yjb0=;
 b=gmS7PwYlsT+YZEIC91uLEez2SoAPPy82l4EOS/5x2GadC5/K7+xRKVa28vbkLvDZU8LYKETifyaSPEPnVgDdZopMlc+wZ3yQrBoD/JQgJ1ciI2l9P/nZ0Dq6PVhrBdw/REdmcpHaP1nv2pKMUmbjk0F+m+Hp/41Y/6MTeu+XVN3ABxljEVCbOJP0KgLcP+HqT9YABjAnmKVjFqTne+dTXfgqL7cYcsWXCXjIpYATPxWQlRYLIsqLAXxOlOfSgp7HgzIAdMpYw4uovaV9kH5KQQFteJtIW9DXDE9GxzhvK290HzW0DeUNQAKF8a8mWi1t8aUzlHoIiniYGumHDpktnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synopsys.com; dmarc=pass action=none header.from=synopsys.com;
 dkim=pass header.d=synopsys.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=synopsys.onmicrosoft.com; s=selector2-synopsys-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BsVoHYh6rdbW3NNQ4JgATsOna64vlbGVGviU1V9Yjb0=;
 b=oLTtAbGMjbwY6jGtPYoHjOlFoRvKlq0XzAsNmVFX2cUZdm5GTT33E4QR320J+eHr+fyIYWbUwxLRI789PTN9/34+TYU/pYipNxQ3cK3kiqpWQwJZ9RP2dmNwiD+be3PxEFaeU/viM1e+mtfo2q42rzVefhgtTcIiqrda+koDp8c=
Received: from DM6PR12MB4010.namprd12.prod.outlook.com (10.255.175.83) by
 DM6PR12MB2635.namprd12.prod.outlook.com (20.176.117.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Wed, 6 Nov 2019 15:40:21 +0000
Received: from DM6PR12MB4010.namprd12.prod.outlook.com
 ([fe80::89b8:dea4:cfcb:a241]) by DM6PR12MB4010.namprd12.prod.outlook.com
 ([fe80::89b8:dea4:cfcb:a241%7]) with mapi id 15.20.2430.020; Wed, 6 Nov 2019
 15:40:21 +0000
From: Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Gustavo Pimentel <Gustavo.Pimentel@synopsys.com>,
 Andrew Murray <andrew.murray@arm.com>, Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: RE: [PATCH v2 07/10] PCI: layerscape: Modify the MSIX to the doorbell
 way
Thread-Topic: [PATCH v2 07/10] PCI: layerscape: Modify the MSIX to the
 doorbell way
Thread-Index: AQHVWN1ueZMQ3jP9eUqIIf7Rzdza5KcIw+QAgACqiwCABZWDgIACm0IAgGy1riCAAEiAgIAAHAAA
Date: Wed, 6 Nov 2019 15:40:21 +0000
Message-ID: <DM6PR12MB401035203D8962DF4265EAB7DA790@DM6PR12MB4010.namprd12.prod.outlook.com>
References: <20190822112242.16309-1-xiaowei.bao@nxp.com>
 <20190822112242.16309-7-xiaowei.bao@nxp.com>
 <20190823135816.GH14582@e119886-lin.cambridge.arm.com>
 <AM5PR04MB3299E50BA5D7579D41B8B4F9F5A70@AM5PR04MB3299.eurprd04.prod.outlook.com>
 <20190827132504.GL14582@e119886-lin.cambridge.arm.com>
 <e64a484c-7cf5-5f65-400c-47128ab45e52@ti.com>
 <DM6PR12MB40107A9B97A8DAF32A4C651EDA790@DM6PR12MB4010.namprd12.prod.outlook.com>
 <e34708a1-1116-89f9-c3f8-7f21b63c9d9c@ti.com>
In-Reply-To: <e34708a1-1116-89f9-c3f8-7f21b63c9d9c@ti.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-dg-ref: =?utf-8?B?UEcxbGRHRStQR0YwSUc1dFBTSmliMlI1TG5SNGRDSWdjRDBpWXpwY2RYTmxj?=
 =?utf-8?B?bk5jWjNWemRHRjJiMXhoY0hCa1lYUmhYSEp2WVcxcGJtZGNNRGxrT0RRNVlq?=
 =?utf-8?B?WXRNekprTXkwMFlUUXdMVGcxWldVdE5tSTROR0poTWpsbE16VmlYRzF6WjNO?=
 =?utf-8?B?Y2JYTm5MV0poWkRnMVpqazRMVEF3WVdJdE1URmxZUzA1T0RrekxXRTBOR05q?=
 =?utf-8?B?T0dVNVkyWXdObHhoYldVdGRHVnpkRnhpWVdRNE5XWTVPUzB3TUdGaUxURXha?=
 =?utf-8?B?V0V0T1RnNU15MWhORFJqWXpobE9XTm1NRFppYjJSNUxuUjRkQ0lnYzNvOUlq?=
 =?utf-8?B?WTVOelVpSUhROUlqRXpNakUzTlRJNE5ERTROakUyT0RrNE1pSWdhRDBpVXpO?=
 =?utf-8?B?TlNYaHRXa3M1WkZvd1RXeGpNemRITHpsb2RIVlpWREZaUFNJZ2FXUTlJaUln?=
 =?utf-8?B?WW13OUlqQWlJR0p2UFNJeElpQmphVDBpWTBGQlFVRkZVa2hWTVZKVFVsVkdU?=
 =?utf-8?B?a05uVlVGQlFsRktRVUZEVjNablFpdDFTbFJXUVZSQ1RVRk9jM1F2V0VWSlRV?=
 =?utf-8?B?VjNRVEo1TXpsalVXZFBRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZCUVVG?=
 =?utf-8?B?QlFVaEJRVUZCUTJ0RFFVRkJRVUZCUVVGQlFVRkJRVUZCUVVGQlFVRkJRVUZC?=
 =?utf-8?B?UVVWQlFWRkJRa0ZCUVVGRlIwbFplbEZCUVVGQlFVRkJRVUZCUVVGQlFVRktO?=
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
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=gustavo@synopsys.com; 
x-originating-ip: [83.174.63.141]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86df0142-3588-47d7-f0b2-08d762cfa205
x-ms-traffictypediagnostic: DM6PR12MB2635:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR12MB2635C855D84742230F4A044ADA790@DM6PR12MB2635.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02135EB356
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(136003)(396003)(346002)(366004)(39860400002)(376002)(199004)(189003)(13464003)(6506007)(486006)(6436002)(66066001)(71200400001)(71190400001)(476003)(11346002)(9686003)(14444005)(66946007)(54906003)(55016002)(110136005)(446003)(66476007)(66556008)(64756008)(66446008)(6246003)(316002)(256004)(76116006)(2906002)(52536014)(26005)(229853002)(478600001)(86362001)(53546011)(99286004)(4326008)(186003)(25786009)(33656002)(102836004)(14454004)(8676002)(8936002)(7696005)(81156014)(81166006)(6116002)(3846002)(7416002)(76176011)(74316002)(305945005)(7736002)(5660300002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM6PR12MB2635;
 H:DM6PR12MB4010.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: synopsys.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mrnkjpASI/5Ut8U2AGGDIZuss4Hn1o9ool94Wiv2ySsGr4CTYeUTfkT1SY7zbfC3NUR1UvQQ55j4WrXihjocN/rGyNBOpzPoAMTE5nk3pXfG+bsghMns5Qqg14aL2aTIfojzYt+YdG1nvdrL7qoMNV8JsY4dlxmzavCp2deZ3wm1jGNc2Xu4GHvjSfozThZ2D/66B181Siwd0XvLs/jsiUS9HJ6KDuREziaIsPdG190YNU/D5Cbz5cjhzIrosa6s/LALc2AkclG4tb0ze3xVkS+yTdAIs6BoEClJ1SmUVy0h1WDhCQaXgRF4hJwzwPrHH/mVQvRU5EG42o0ytvi0+Xm9eORDXKCfgTgKORHuuwDjirVp296bcwfrp9uQmZXXY/uh2KwKQyau8PBVz5ceylWRBBDd2laWNxNyHV76mMp9HPcXF60Ria7dmpHV/7yS
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 86df0142-3588-47d7-f0b2-08d762cfa205
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2019 15:40:21.0706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c33c9f88-1eb7-4099-9700-16013fd9e8aa
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B5P/bjRC3D+/AfHmnpD7ufHhFyvQcH7DoTIR8prlSgCiyueaIDwKiU8VGT4aD3XRiA8bUXkrVNe7EXMwZ6r1oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB2635
X-OriginatorOrg: synopsys.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_074034_177070_76A873FB 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>, Roy
 Zang <roy.zang@nxp.com>, "lorenzo.pieralisi@arm.co" <lorenzo.pieralisi@arm.co>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "jingoohan1@gmail.com" <jingoohan1@gmail.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBOb3YgNiwgMjAxOSBhdCAxMzozOTo1LCBLaXNob24gVmlqYXkgQWJyYWhhbSBJIDxr
aXNob25AdGkuY29tPiANCndyb3RlOg0KDQpIaSBLaXNob24sDQoNCj4gR3VzdGF2bywNCj4gDQo+
IE9uIDA2LzExLzE5IDM6MTAgUE0sIEd1c3Rhdm8gUGltZW50ZWwgd3JvdGU6DQo+ID4gT24gVGh1
LCBBdWcgMjksIDIwMTkgYXQgNjoxMzoxOCwgS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8a2lzaG9u
QHRpLmNvbT4gDQo+ID4gd3JvdGU6DQo+ID4gDQo+ID4gSGksIHRoaXMgZW1haWwgc2xpcCBhd2F5
IGZyb20gbXkgYXR0ZW50aW9uLi4uDQo+ID4gDQo+ID4+IEd1c3Rhdm8sDQo+ID4+DQo+ID4+IE9u
IDI3LzA4LzE5IDY6NTUgUE0sIEFuZHJldyBNdXJyYXkgd3JvdGU6DQo+ID4+PiBPbiBTYXQsIEF1
ZyAyNCwgMjAxOSBhdCAxMjowODo0MEFNICswMDAwLCBYaWFvd2VpIEJhbyB3cm90ZToNCj4gPj4+
Pg0KPiA+Pj4+DQo+ID4+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+Pj4+IEZy
b206IEFuZHJldyBNdXJyYXkgPGFuZHJldy5tdXJyYXlAYXJtLmNvbT4NCj4gPj4+Pj4gU2VudDog
MjAxOeW5tDjmnIgyM+aXpSAyMTo1OA0KPiA+Pj4+PiBUbzogWGlhb3dlaSBCYW8gPHhpYW93ZWku
YmFvQG54cC5jb20+DQo+ID4+Pj4+IENjOiBiaGVsZ2Fhc0Bnb29nbGUuY29tOyByb2JoK2R0QGtl
cm5lbC5vcmc7IG1hcmsucnV0bGFuZEBhcm0uY29tOw0KPiA+Pj4+PiBzaGF3bmd1b0BrZXJuZWwu
b3JnOyBMZW8gTGkgPGxlb3lhbmcubGlAbnhwLmNvbT47IGtpc2hvbkB0aS5jb207DQo+ID4+Pj4+
IGxvcmVuem8ucGllcmFsaXNpQGFybS5jbzsgYXJuZEBhcm5kYi5kZTsgZ3JlZ2toQGxpbnV4Zm91
bmRhdGlvbi5vcmc7IE0uaC4NCj4gPj4+Pj4gTGlhbiA8bWluZ2h1YW4ubGlhbkBueHAuY29tPjsg
TWluZ2thaSBIdSA8bWluZ2thaS5odUBueHAuY29tPjsgUm95DQo+ID4+Pj4+IFphbmcgPHJveS56
YW5nQG54cC5jb20+OyBqaW5nb29oYW4xQGdtYWlsLmNvbTsNCj4gPj4+Pj4gZ3VzdGF2by5waW1l
bnRlbEBzeW5vcHN5cy5jb207IGxpbnV4LXBjaUB2Z2VyLmtlcm5lbC5vcmc7DQo+ID4+Pj4+IGRl
dmljZXRyZWVAdmdlci5rZXJuZWwub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOw0K
PiA+Pj4+PiBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7IGxpbnV4cHBjLWRl
dkBsaXN0cy5vemxhYnMub3JnDQo+ID4+Pj4+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIgMDcvMTBd
IFBDSTogbGF5ZXJzY2FwZTogTW9kaWZ5IHRoZSBNU0lYIHRvIHRoZQ0KPiA+Pj4+PiBkb29yYmVs
bCB3YXkNCj4gPj4+Pj4NCj4gPj4+Pj4gT24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDc6MjI6MzlQ
TSArMDgwMCwgWGlhb3dlaSBCYW8gd3JvdGU6DQo+ID4+Pj4+PiBUaGUgbGF5ZXJzY2FwZSBwbGF0
Zm9ybSB1c2UgdGhlIGRvb3JiZWxsIHdheSB0byB0cmlnZ2VyIE1TSVggaW50ZXJydXB0DQo+ID4+
Pj4+PiBpbiBFUCBtb2RlLg0KPiA+Pj4+Pj4NCj4gPj4+Pj4NCj4gPj4+Pj4gSSBoYXZlIG5vIHBy
b2JsZW1zIHdpdGggdGhpcyBwYXRjaCwgaG93ZXZlci4uLg0KPiA+Pj4+Pg0KPiA+Pj4+PiBBcmUg
eW91IGFibGUgdG8gYWRkIHRvIHRoaXMgbWVzc2FnZSBhIHJlYXNvbiBmb3Igd2h5IHlvdSBhcmUg
bWFraW5nIHRoaXMNCj4gPj4+Pj4gY2hhbmdlPyBEaWQgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2ly
cSBub3Qgd29yayB3aGVuIGZ1bmNfbm8gIT0gMD8gT3IgZGlkDQo+ID4+Pj4+IGl0IHdvcmsgeWV0
IGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnFfZG9vcmJlbGwgaXMgbW9yZSBlZmZpY2llbnQ/DQo+
ID4+Pj4NCj4gPj4+PiBUaGUgZmFjdCBpcyB0aGF0LCB0aGlzIGRyaXZlciBpcyB2ZXJpZmllZCBp
biBsczEwNDZhIHBsYXRmb3JtIG9mIE5YUCBiZWZvcmUsIGFuZCBsczEwNDZhIGRvbid0DQo+ID4+
Pj4gc3VwcG9ydCBNU0lYIGZlYXR1cmUsIHNvIEkgc2V0IHRoZSBtc2l4X2NhcGFibGUgb2YgcGNp
X2VwY19mZWF0dXJlcyBzdHJ1Y3QgaXMgZmFsc2UsDQo+ID4+Pj4gYnV0IGluIG90aGVyIHBsYXRm
b3JtLCBlLmcuIGxzMTA4OGEsIGl0IHN1cHBvcnQgdGhlIE1TSVggZmVhdHVyZSwgSSB2ZXJpZmll
ZCB0aGUgTVNJWA0KPiA+Pj4+IGZlYXR1cmUgaW4gbHMxMDg4YSwgaXQgaXMgbm90IE9LLCBzbyBJ
IGNoYW5nZWQgdG8gYW5vdGhlciB3YXkuIFRoYW5rcy4NCj4gPj4+DQo+ID4+PiBSaWdodCwgc28g
dGhlIGV4aXN0aW5nIHBjaS1sYXllcnNjYXBlLWVwLmMgZHJpdmVyIG5ldmVyIHN1cHBvcnRlZCBN
U0lYIHlldCBpdA0KPiA+Pj4gZXJyb25lb3VzbHkgaGFkIGEgc3dpdGNoIGNhc2Ugc3RhdGVtZW50
IHRvIGNhbGwgZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycSB3aGljaA0KPiA+Pj4gd291bGQgbmV2
ZXIgZ2V0IHVzZWQuDQo+ID4+Pg0KPiA+Pj4gTm93IHRoYXQgd2UncmUgYWRkaW5nIGEgcGxhdGZv
cm0gd2l0aCBNU0lYIHN1cHBvcnQgdGhlIGV4aXN0aW5nDQo+ID4+PiBkd19wY2llX2VwX3JhaXNl
X21zaXhfaXJxIGRvZXNuJ3Qgd29yayAoZm9yIHRoaXMgcGxhdGZvcm0pIHNvIHdlIGFyZSBhZGRp
bmcgYQ0KPiA+Pj4gZGlmZmVyZW50IG1ldGhvZC4NCj4gPj4NCj4gPj4gR3VzdGF2bywgY2FuIHlv
dSBjb25maXJtIGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnEoKSB3b3JrcyBmb3IgZGVzaWdud2Fy
ZSBhcyBpdA0KPiA+PiBkaWRuJ3Qgd29yayBmb3IgYm90aCBtZSBhbmQgWGlhb3dlaT8NCj4gPiAN
Cj4gPiBXaGVuIEkgaW1wbGVtZW50ZWQgdGhlIGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnEoKSwg
dGhlIGltcGxlbWVudGF0aW9uIA0KPiA+IHdhcyB3b3JraW5nIHF1aXRlIGZpbmUgb24gRGVzaWdu
V2FyZSBzb2x1dGlvbi4gT3RoZXJ3aXNlLCBJIHdvdWxkbid0IA0KPiA+IHN1Ym1pdCBpdCB0byB0
aGUga2VybmVsLg0KPiA+IEZyb20gd2hhdCBJIGhhdmUgc2VlbiBhbmQgaWYgSSByZWNhbGwgd2Vs
bCwgWGlhb3dlaSBpbXBsZW1lbnRhdGlvbiB3YXMgDQo+ID4gZG9uZSBoYXZpbmcgUEYncyBjb25m
aWd1cmF0ZWQgb24gaGlzIHNvbHV0aW9uLCB3aGljaCBpcyBhIGNvbmZpZ3VyYXRpb24gDQo+ID4g
dGhhdCBJIGRvbid0IGhhdmUgaW4gbXkgc29sdXRpb24sIEkgYmVsaWV2ZSB0aGlzIGNvdWxkIGJl
IHRoZSBtaXNzaW5nIA0KPiA+IHBpZWNlIHRoYXQgZGlmZmVycyBiZXR3ZWVuIG91ciAyIGltcGxl
bWVudGF0aW9ucy4NCj4gDQo+IEkgaGF2ZW4ndCBkZWJ1Z2dlZCB0aGUgaXNzdWUgeWV0IGJ1dCBp
biBteSB1bmRlcnN0YW5kaW5nIHRoZSBNU0ktWCB0YWJsZSBzaG91bGQNCj4gYmUgaW4gdGhlIG1l
bW9yeSAoRERSKSBvZiBFUCBzeXN0ZW0uIFRoaXMgdGFibGUgd2lsbCBiZSBwb3B1bGF0ZWQgYnkg
UkMgd2hpbGUNCj4gY29uZmlndXJpbmcgTVNJLVggKHdpdGggbXNnIGFkZHJlc3MgYW5kIG1zZyBk
YXRhKS4gVGhlIEVQIHdpbGwgdXNlIHRoZQ0KPiBwb3B1bGF0ZWQgbXNnIGFkZHJlc3MgYW5kIG1z
ZyBkYXRhIGZvciByYWlzaW5nIE1TSS1YIGludGVycnVwdC4NCg0KUmlnaHQuDQoNCj4gDQo+IEZy
b20gdGhlIGR3X3BjaWVfZXBfcmFpc2VfbXNpeF9pcnEoKSAoY29waWVkIGJlbG93KSwgbm93aGVy
ZSB0aGUgTVNJLVggdGFibGUgaXMNCj4gYmVpbmcgcmVhZCBmcm9tIHRoZSBtZW1vcnkgb2YgRVAg
c3lzdGVtLiBJJ3ZlIGdpdmVuIG15IGNvbW1lbnRzIGJlbG93Lg0KPiANCj4gaW50IGR3X3BjaWVf
ZXBfcmFpc2VfbXNpeF9pcnEoc3RydWN0IGR3X3BjaWVfZXAgKmVwLCB1OCBmdW5jX25vLA0KPiAJ
CQkgICAgIHUxNiBpbnRlcnJ1cHRfbnVtKQ0KPiB7DQo+IAkuDQo+IAkuDQo+IAlyZWcgPSBQQ0lf
QkFTRV9BRERSRVNTXzAgKyAoNCAqIGJpcik7DQo+IAliYXJfYWRkcl91cHBlciA9IDA7DQo+IAli
YXJfYWRkcl9sb3dlciA9IGR3X3BjaWVfcmVhZGxfZGJpKHBjaSwgcmVnKTsNCj4gDQo+IEJBUiBy
ZWdpc3RlciB3aWxsIGhvbGQgdGhlICJQQ0kgYWRkcmVzcyIgcHJvZ3JhbW1lZCBieSB0aGUgaG9z
dC4gU28NCj4gImJhcl9hZGRyX2xvd2VyIiB3aWxsIGhhdmUgUENJIGFkZHJlc3MuDQo+IA0KPiAJ
cmVnX3U2NCA9IChiYXJfYWRkcl9sb3dlciAmIFBDSV9CQVNFX0FERFJFU1NfTUVNX1RZUEVfTUFT
Syk7DQo+IAlpZiAocmVnX3U2NCA9PSBQQ0lfQkFTRV9BRERSRVNTX01FTV9UWVBFXzY0KQ0KPiAJ
CWJhcl9hZGRyX3VwcGVyID0gZHdfcGNpZV9yZWFkbF9kYmkocGNpLCByZWcgKyA0KTsNCj4gDQo+
IAl0YmxfYWRkciA9ICgodTY0KSBiYXJfYWRkcl91cHBlcikgPDwgMzIgfCBiYXJfYWRkcl9sb3dl
cjsNCj4gDQo+IFRoZSAidGJsX2FkZHIiIG5vdyBoYXMgdGhlIFBDSSBhZGRyZXNzIHByb2dyYW1t
ZWQgYnkgdGhlIGhvc3QuDQo+IA0KPiAJdGJsX2FkZHIgKz0gKHRibF9vZmZzZXQgKyAoKGludGVy
cnVwdF9udW0gLSAxKSAqIFBDSV9NU0lYX0VOVFJZX1NJWkUpKTsNCj4gCXRibF9hZGRyICY9IFBD
SV9CQVNFX0FERFJFU1NfTUVNX01BU0s7DQo+IA0KPiAJbXNpeF90YmwgPSBpb3JlbWFwX25vY2Fj
aGUoZXAtPnBoeXNfYmFzZSArIHRibF9hZGRyLA0KPiAJCQkJICAgUENJX01TSVhfRU5UUllfU0la
RSk7DQo+IA0KPiAiZXAtPnBoeXNfYmFzZSIgd2lsbCBoYXZlIEVQcyBvdXRib3VuZCBtZW1vcnkg
YWRkcmVzcyBhbmQgInRibF9hZGRyIiB3aWxsIGhhdmUNCj4gUENJIGFkZHJlc3MuIFNvIG1zaXhf
dGJsIHBvaW50cyB0byB0aGUgRVBzIG91dGJvdW5kIG1lbW9yeSByZWdpb24uDQo+IAlpZiAoIW1z
aXhfdGJsKQ0KPiAJCXJldHVybiAtRUlOVkFMOw0KPiANCj4gCW1zZ19hZGRyX2xvd2VyID0gcmVh
ZGwobXNpeF90YmwgKyBQQ0lfTVNJWF9FTlRSWV9MT1dFUl9BRERSKTsNCj4gCW1zZ19hZGRyX3Vw
cGVyID0gcmVhZGwobXNpeF90YmwgKyBQQ0lfTVNJWF9FTlRSWV9VUFBFUl9BRERSKTsNCj4gDQo+
IEhlcmUgYW4gYWNjZXNzIHRvIHRoZSBFUCBvdXRib3VuZCByZWdpb24gaXMgbWFkZSAoYW5kIHRo
ZSB0cmFuc2FjdGlvbiB3aWxsIGJlDQo+IGJhc2VkIG9uIEFUVSBjb25maWd1cmF0aW9uKS4NCj4g
VGhlIG1lc3NhZ2UgYWRkcmVzcyBzaG91bGQgaWRlYWxseSBiZSBvYnRhaW5lZCBmcm9tIHRoZSBN
U0ktWCB0YWJsZSBwcmVzZW50IGluDQo+IHRoZSBFUCBzeXN0ZW0uIFRoZXJlIG5lZWQgbm90IGJl
IGFueSBhY2Nlc3MgdG8gdGhlIE9CIHJlZ2lvbiBmb3IgZ2V0dGluZyBkYXRhDQo+IGZyb20gTVNJ
LVggdGFibGUuDQo+IA0KPiAJbXNnX2FkZHIgPSAoKHU2NCkgbXNnX2FkZHJfdXBwZXIpIDw8IDMy
IHwgbXNnX2FkZHJfbG93ZXI7DQo+IAltc2dfZGF0YSA9IHJlYWRsKG1zaXhfdGJsICsgUENJX01T
SVhfRU5UUllfREFUQSk7DQo+IAl2ZWNfY3RybCA9IHJlYWRsKG1zaXhfdGJsICsgUENJX01TSVhf
RU5UUllfVkVDVE9SX0NUUkwpOw0KPiANCj4gQWxsIHRoaXMgc2hvdWxkIGJlIG9idGFpbmVkIGZy
b20gdGhlIG1lbW9yeSBvZiBFUC4NCj4gCS4NCj4gCS4NCj4gfQ0KPiANCj4gSSdtIG5vdCBzdXJl
IGhvdyB0aGlzIHdvcmtlZCBmb3IgeW91Lg0KDQpIdW0sIGl0IHdhcyBhIHZlcnkgdGltZSBhZ28g
dGhhdCBJIGltcGxlbWVudGVkIHRoaXMuIEkndmUgdG8gZGVidWcgaXQgdG8gDQpnaXZlIHlvdSBh
biBhY2N1cmF0ZSBhbnN3ZXIuDQpIb3dldmVyLCBpdCB2ZXJ5IGxpa2VseSB0aGF0IG15IERlc2ln
bldhcmUgcHJvdG90eXBlIHNvbHV0aW9uIG1pZ2h0IGhhdmUgDQpzb21lIHBlY3VsaWFyaXRpZXMg
dGhhdCBjb3VsZCBhbGxvdyB0aGlzIHR5cGUgb2YgYWNjZXNzLiBBdCB0aGUgdGltZSwgDQpub2Jv
ZHkgaGFkIHRoZSBtc2l4IGZlYXR1cmUgZW5hYmxlZCB0aGF0IHdhcyB3b3JraW5nIHdpdGggcGNp
dGVzdCBFUCBpbiANCnRoZWlyIFNPQ3MgdGhhdCBjb3VsZCBiZSB1c2VkIHRvIHRlc3QgbXkgaW1w
bGVtZW50YXRpb24gYWdhaW5zdCwgYXQgbGVhc3QgDQp0aGF0IEkga25vdyBvZi4NCg0KQXMgc29v
biBhcyBJIGdldCBiYWNrIHRvIHdvcmsgb24gUENJLCBJIHdpbGwgcmV0ZXN0IHRoaXMgd2l0aCB0
aGUgb3RoZXIgDQpmdW5jdGlvbiwgaWYgaXQgd29ya3MgSSdsbCBtYWtlIGEgcGF0Y2ggdG8gdXNl
IHRoYXQgZnVuY3Rpb24gaW5zdGVhZCwgSSdtIA0KYXNzdW1pbmcgdGhhdCBmdW5jdGlvbiBpcyB3
b3JraW5nIGZvciBvdGhlciBTT0NzLCByaWdodD8gDQoNCkd1c3Rhdm8NCg0KPiANCj4gVGhhbmtz
DQo+IEtpc2hvbg0KPiANCj4gPiANCj4gPiBTaW5jZSBwYXRjaCBzdWJtaXNzaW9uIGludG8gdGhl
IGtlcm5lbCByZWxhdGVkIHRvIG1zaXggZmVhdHVyZSBvbiBwY2l0ZXN0IA0KPiA+IHRvb2wsIEkg
ZGlkbid0IHRvdWNoIG9yIHJlLXRlc3RlZCB0aGUgbXNpeCBmZWF0dXJlIGJ5IGxhY2sgb2YgdGlt
ZSAob3RoZXIgDQo+ID4gcHJvamVjdHMgcmVxdWlyZXMgbXkgZnVsbCBhdHRlbnRpb24gZm9yIG5v
dykuIEhvd2V2ZXIgaXMgb24gbXkgcm9hZG1hcCB0byANCj4gPiBjYW1lIGJhY2sgdG8gYWRkIHNv
bWUgb3RoZXIgZmVhdHVyZXMgb24gRGVzaWduV2FyZSBlRE1BIGRyaXZlciBhbmQgSSBjYW4gDQo+
ID4gZG8gYXQgdGhhdCB0aW1lIHNvbWUgdGVzdHMgdG8gc2VlIGlmIHRoZSANCj4gPiBkd19wY2ll
X2VwX3JhaXNlX21zaXhfaXJxX2Rvb3JiZWxsKCkgaXMgY29tcGF0aWJsZSBvciBub3Qgd2l0aCBt
eSANCj4gPiBzb2x1dGlvbi4gSWYgc28sIEkgY2FuIGRvIHNvbWUgcGF0Y2ggdG8gc2ltcGxpZnkg
YW5kIHVzZSB0aGUgDQo+ID4gZHdfcGNpZV9lcF9yYWlzZV9tc2l4X2lycV9kb29yYmVsbCgpIGlm
IGl0IHN0aWxsIHdvcmtzIGFzIGV4cGVjdGVkIGxpa2UgDQo+ID4gb24gZHdfcGNpZV9lcF9yYWlz
ZV9tc2l4X2lycSgpLiBBZ3JlZT8NCj4gPiANCj4gPiBHdXN0YXZvDQo+ID4gDQo+ID4+DQo+ID4+
IFRoYW5rcw0KPiA+PiBLaXNob24NCj4gPiANCj4gPiANCg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
