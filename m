Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7811CF0C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 04:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZK9yxKSUzfiNLClc9hb+2mC7h7BPBq8d8rxgOqL5Gr8=; b=gYHqFmimc9+CLu
	Pxhq6ilJHM41fA4nlnldVL19kuDRkT962ySo0LtQmgwQ9kuJpfypTFETVzACnhsBeavBVD+vZB+Sw
	CIKyaaa5X6i4UjrFBOA6CHkq8JMqQWWm9OM+GdUuX1U3FqAd6rBR1NYExRrZ6KCw1InK2+qsRDkoP
	qPRaB3vOoJSHM5cVL4DEmLp6n2DrpBlXRW0RxQzIW5y2/QuAy5LAkX9XfSHNUv5c27+zG+QAWBDiY
	7U4crHYRJmXaDEtbWyn1VoUOnGtCmtoKU+igLmN7sjlbCjMf5Z9QFwPGmiaYaDuKi9d+ZhhlIPBVe
	q3HkODay+cAAg3mBAgtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHf67-0000uG-TD; Tue, 08 Oct 2019 02:19:35 +0000
Received: from mail-am5eur03on0619.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::619]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHf5z-0000tQ-FY
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 02:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KoZ+7sopzl5x7WeIOGdFzpdy4viYFpgnC3NgnmiQHWM=;
 b=zpGquJUPuTywPBRau4FUFG2wc6Eym+qQkwnrTU1ad9rhKjAQouxbyCvyaqQ98eIjig/MNr7g+wk8ReUjs9ueZ6MfdXReb0KYkySWem/2uMDsXtfZTQtVRc2oa6b7SsYkveB2sPnWyKF4aLskF9lHnYYxYRR/+LWHcB19ka/1+qI=
Received: from DB7PR08CA0069.eurprd08.prod.outlook.com (2603:10a6:10:26::46)
 by HE1PR0801MB1867.eurprd08.prod.outlook.com (2603:10a6:3:53::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Tue, 8 Oct
 2019 02:19:20 +0000
Received: from VE1EUR03FT013.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::209) by DB7PR08CA0069.outlook.office365.com
 (2603:10a6:10:26::46) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.24 via Frontend
 Transport; Tue, 8 Oct 2019 02:19:20 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT013.mail.protection.outlook.com (10.152.19.37) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 8 Oct 2019 02:19:18 +0000
Received: ("Tessian outbound 851a1162fca7:v33");
 Tue, 08 Oct 2019 02:19:13 +0000
X-CR-MTA-TID: 64aa7808
Received: from 76e330ab29e3.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.6.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 066C2FF0-2165-474E-BDFD-AB86B97C5EA2.1; 
 Tue, 08 Oct 2019 02:19:08 +0000
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur02lp2056.outbound.protection.outlook.com [104.47.6.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 76e330ab29e3.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 08 Oct 2019 02:19:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I7BUMH3Jq9oNNvVB5kjLH1zuW+d9EIK3Jjowl6zzzKaXKhwLssUNrZdHVv4OV/veCzrISvupspd+MDWzVMnJFRjxoR+xf5rByx2Drcth4BndEV9o6mXv3qJiJScG2PVku+SFTxAinZp2cgykXYUBxXMK2DtMm+OO2y36LaCrqdXhOvB8XKhA4h/Fc4qAapTUtPOqyojXE+mzDGhNrf1qux8VNzFzAz5tyZ+xRHpaxAQ4BANaQ3rZP7LaswrjkbIQNvNdVoCvLFihG1lDski+w/islQp8WOSFrn1pDnb0ThyuyPtydIOMvHbWd5EHK6BqQraeJpti4n9HoHY/PwYqMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KoZ+7sopzl5x7WeIOGdFzpdy4viYFpgnC3NgnmiQHWM=;
 b=T6Bs2MyQHGneV85JmIcg7ySJ6fkBe6RTKz0pv9QwzCXuISq7LOcgSRsv3CFRIqlDqZGkEsxkPLUo/8MqGMxAFJ/v0h3jyCDb+Z2f3/gbDLkNsuSU155l7p3hBDcznOyb5+1z6LNnxhFeNoW6UQqVCTM+rHV8UBv6fFAluPtvLJAVw2+QSmjAOfOuhjUSrS1QR+ZxLwJ6wgWWxicyHqifUEflhZJ+cAz3jVJ6aEYDZem3KLQhV8vZeSFO5byn94XgYuuz7FP401ecqZmXIIQV+eHthYwX/K1gptQfGQWN2p+f+8kCi5T2ZY4a5/nzKk20Z8uHzEHtGoe94lodhbP4gQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KoZ+7sopzl5x7WeIOGdFzpdy4viYFpgnC3NgnmiQHWM=;
 b=zpGquJUPuTywPBRau4FUFG2wc6Eym+qQkwnrTU1ad9rhKjAQouxbyCvyaqQ98eIjig/MNr7g+wk8ReUjs9ueZ6MfdXReb0KYkySWem/2uMDsXtfZTQtVRc2oa6b7SsYkveB2sPnWyKF4aLskF9lHnYYxYRR/+LWHcB19ka/1+qI=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3034.eurprd08.prod.outlook.com (52.135.129.142) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 02:19:05 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0%6]) with mapi id 15.20.2327.023; Tue, 8 Oct 2019
 02:19:05 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Topic: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Index: AQHVdzKJSZgAcCvyK02xG/xeDXFx5adFwEGAgApI6UA=
Date: Tue, 8 Oct 2019 02:19:05 +0000
Message-ID: <DB7PR08MB3082563BD18482E5D541F019F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-4-justin.he@arm.com>
 <20191001125413.mhxa6qszwnuhglky@willie-the-truck>
In-Reply-To: <20191001125413.mhxa6qszwnuhglky@willie-the-truck>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 8f2399a5-5679-4cf1-905d-7150f598784f.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: c1091fa7-49b9-4777-bf70-08d74b95ec71
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DB7PR08MB3034:|DB7PR08MB3034:|HE1PR0801MB1867:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0801MB1867E0FBD396BF858752157BF79A0@HE1PR0801MB1867.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 01842C458A
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(366004)(396003)(136003)(39860400002)(13464003)(199004)(189003)(5660300002)(81156014)(8676002)(478600001)(26005)(81166006)(446003)(11346002)(8936002)(6246003)(76116006)(4326008)(64756008)(66556008)(966005)(66476007)(66446008)(229853002)(66066001)(102836004)(14454004)(55236004)(186003)(66946007)(52536014)(6506007)(53546011)(71190400001)(7736002)(25786009)(76176011)(7696005)(71200400001)(3846002)(9686003)(7416002)(6116002)(55016002)(476003)(99286004)(74316002)(305945005)(6306002)(486006)(33656002)(2906002)(316002)(54906003)(14444005)(256004)(6916009)(6436002)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3034;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: TBbgfGlYsriswIKwIHznOhiqLpOme2OZ2DqMw/seJSaLL9/gZLxne/GCk0S5LvuwFm0YST3buCMCaX7d/vI8cOYznCrHePsB1BprlWaeJjXGQjXk21aQVIA6hw6um3MmzxiyBWIeSZsiYK36ehX8Icoi64cgKpBhfhyW8B6sfnJUTwqED93CvUGepgeNg6hkEcCaBUctzPi4xmJQRGvmBI13LM0Qxi9UXksAzrvVusuwA3ytxu9zOADaNZ+4o3WUWT1mUe0ZXYA3M/dTrjKCZ9KM57VfTsXl3GYyDXUTuL6VzRd+J9XXs2jD6wuIt0nlCn0lRcAvgY47pc/T1N51nDI9yPg0JWlP2TaFxgnQMxeWhGZyk9uAfNd6MRapU+3VgLixQWGF5nP/JnMounYE9+gdGW4io2+8cPiUztKEJl3rIERwGiGYkZsv/lRN1d6Ns0WF++whVj4OHdt7fg8C9A==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3034
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT013.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(396003)(376002)(136003)(13464003)(189003)(199004)(7736002)(6246003)(8936002)(25786009)(54906003)(52536014)(6862004)(6306002)(4326008)(9686003)(47776003)(8676002)(55016002)(5660300002)(356004)(50466002)(486006)(86362001)(229853002)(81166006)(305945005)(74316002)(126002)(14444005)(81156014)(2906002)(6116002)(3846002)(446003)(336012)(47136003)(66066001)(22756006)(11346002)(76130400001)(316002)(26826003)(102836004)(70206006)(99286004)(36906005)(53546011)(436003)(6506007)(476003)(478600001)(7696005)(76176011)(14454004)(23696002)(33656002)(966005)(26005)(186003)(70586007)(63350400001)(48336001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR0801MB1867;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: f255c1f5-6e53-4235-be34-08d74b95e488
NoDisclaimer: True
X-Forefront-PRVS: 01842C458A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jUihTJOGojUrQiyTfrYusP8ZW1g45mmYfG9nXaT+vnzTPsfKvBNsI1s+7mIpZv75HF2vAoTJ/oFC8eStIMEJ50KED9Nik2+xDdQBLup9MXbmksTzHkdfWcDvs0UpJMULG9YELVUh4WD3Ha/ysdSX5c4Ow/JJapd4CaR3NaND5Gpt67B9M7hQ9o+Gs0NRa216tqOBK2qZmyq/2csvF+9yr6V6blx0VPAgBa6SRozYmZ8cwVBItFgj9TBKzdxA1qBafRqk7tiy9izMNgIJTJEegRsgNVpBUbtVZimnllEV0TSQSGIDidoVgrIi6JbgzeBO6Is2ZyPw8pbE5TrhpIjLf9+09AFB6SOX4NM5vcO+eALv2UkSxdiROzhiQkhkiLxA2nYfENdYThSi7x0Au3RaJZoRdYtoqRZ0bfR/rY9OCCNOmSnbnGFhgTaOBSdJI3U0OdqNFZIY032Y6zio8DPF4Q==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2019 02:19:18.4211 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c1091fa7-49b9-4777-bf70-08d74b95ec71
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_191927_664374_538399EC 
X-CRM114-Status: GOOD (  20.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:619 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>, James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2lsbA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnE6jEw1MIxyNUgMjA6NTQNCj4gVG86
IEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxKdXN0aW4uSGVAYXJtLmNvbT4NCj4g
Q2M6IENhdGFsaW4gTWFyaW5hcyA8Q2F0YWxpbi5NYXJpbmFzQGFybS5jb20+OyBNYXJrIFJ1dGxh
bmQNCj4gPE1hcmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UgPEphbWVzLk1vcnNlQGFy
bS5jb20+OyBNYXJjDQo+IFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPjsgTWF0dGhldyBXaWxjb3gg
PHdpbGx5QGluZnJhZGVhZC5vcmc+OyBLaXJpbGwgQS4NCj4gU2h1dGVtb3YgPGtpcmlsbC5zaHV0
ZW1vdkBsaW51eC5pbnRlbC5jb20+OyBsaW51eC1hcm0tDQo+IGtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4gbW1Aa3ZhY2su
b3JnOyBQdW5pdCBBZ3Jhd2FsIDxwdW5pdGFncmF3YWxAZ21haWwuY29tPjsgVGhvbWFzDQo+IEds
ZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+OyBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LQ0K
PiBmb3VuZGF0aW9uLm9yZz47IGhlamlhbmV0QGdtYWlsLmNvbTsgS2FseSBYaW4gKEFybSBUZWNo
bm9sb2d5IENoaW5hKQ0KPiA8S2FseS5YaW5AYXJtLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRD
SCB2MTAgMy8zXSBtbTogZml4IGRvdWJsZSBwYWdlIGZhdWx0IG9uIGFybTY0IGlmIFBURV9BRg0K
PiBpcyBjbGVhcmVkDQo+IA0KPiBPbiBNb24sIFNlcCAzMCwgMjAxOSBhdCAwOTo1Nzo0MEFNICsw
ODAwLCBKaWEgSGUgd3JvdGU6DQo+ID4gV2hlbiB3ZSB0ZXN0ZWQgcG1kayB1bml0IHRlc3QgWzFd
IHZtbWFsbG9jX2ZvcmsgVEVTVDEgaW4gYXJtNjQgZ3Vlc3QsDQo+IHRoZXJlDQo+ID4gd2lsbCBi
ZSBhIGRvdWJsZSBwYWdlIGZhdWx0IGluIF9fY29weV9mcm9tX3VzZXJfaW5hdG9taWMgb2YNCj4g
Y293X3VzZXJfcGFnZS4NCj4gPg0KPiA+IEJlbG93IGNhbGwgdHJhY2UgaXMgZnJvbSBhcm02NCBk
b19wYWdlX2ZhdWx0IGZvciBkZWJ1Z2dpbmcgcHVycG9zZQ0KPiA+IFsgIDExMC4wMTYxOTVdIENh
bGwgdHJhY2U6DQo+ID4gWyAgMTEwLjAxNjgyNl0gIGRvX3BhZ2VfZmF1bHQrMHg1YTQvMHg2OTAN
Cj4gPiBbICAxMTAuMDE3ODEyXSAgZG9fbWVtX2Fib3J0KzB4NTAvMHhiMA0KPiA+IFsgIDExMC4w
MTg3MjZdICBlbDFfZGErMHgyMC8weGM0DQo+ID4gWyAgMTEwLjAxOTQ5Ml0gIF9fYXJjaF9jb3B5
X2Zyb21fdXNlcisweDE4MC8weDI4MA0KPiA+IFsgIDExMC4wMjA2NDZdICBkb193cF9wYWdlKzB4
YjAvMHg4NjANCj4gPiBbICAxMTAuMDIxNTE3XSAgX19oYW5kbGVfbW1fZmF1bHQrMHg5OTQvMHgx
MzM4DQo+ID4gWyAgMTEwLjAyMjYwNl0gIGhhbmRsZV9tbV9mYXVsdCsweGU4LzB4MTgwDQo+ID4g
WyAgMTEwLjAyMzU4NF0gIGRvX3BhZ2VfZmF1bHQrMHgyNDAvMHg2OTANCj4gPiBbICAxMTAuMDI0
NTM1XSAgZG9fbWVtX2Fib3J0KzB4NTAvMHhiMA0KPiA+IFsgIDExMC4wMjU0MjNdICBlbDBfZGEr
MHgyMC8weDI0DQo+ID4NCj4gPiBUaGUgcHRlIGluZm8gYmVmb3JlIF9fY29weV9mcm9tX3VzZXJf
aW5hdG9taWMgaXMgKFBURV9BRiBpcyBjbGVhcmVkKToNCj4gPiBbZmZmZjliMDA3MDAwXSBwZ2Q9
MDAwMDAwMDIzZDRmODAwMywgcHVkPTAwMDAwMDAyM2RhOWIwMDMsDQo+IHBtZD0wMDAwMDAwMjNk
NGIzMDAzLCBwdGU9MzYwMDAwMjk4NjA3YmQzDQo+ID4NCj4gPiBBcyB0b2xkIGJ5IENhdGFsaW46
ICJPbiBhcm02NCB3aXRob3V0IGhhcmR3YXJlIEFjY2VzcyBGbGFnLCBjb3B5aW5nDQo+IGZyb20N
Cj4gPiB1c2VyIHdpbGwgZmFpbCBiZWNhdXNlIHRoZSBwdGUgaXMgb2xkIGFuZCBjYW5ub3QgYmUg
bWFya2VkIHlvdW5nLiBTbyB3ZQ0KPiA+IGFsd2F5cyBlbmQgdXAgd2l0aCB6ZXJvZWQgcGFnZSBh
ZnRlciBmb3JrKCkgKyBDb1cgZm9yIHBmbiBtYXBwaW5ncy4gd2UNCj4gPiBkb24ndCBhbHdheXMg
aGF2ZSBhIGhhcmR3YXJlLW1hbmFnZWQgYWNjZXNzIGZsYWcgb24gYXJtNjQuIg0KPiA+DQo+ID4g
VGhpcyBwYXRjaCBmaXggaXQgYnkgY2FsbGluZyBwdGVfbWt5b3VuZy4gQWxzbywgdGhlIHBhcmFt
ZXRlciBpcw0KPiA+IGNoYW5nZWQgYmVjYXVzZSB2bWYgc2hvdWxkIGJlIHBhc3NlZCB0byBjb3df
dXNlcl9wYWdlKCkNCj4gPg0KPiA+IEFkZCBhIFdBUk5fT05fT05DRSB3aGVuIF9fY29weV9mcm9t
X3VzZXJfaW5hdG9taWMoKSByZXR1cm5zDQo+IGVycm9yDQo+ID4gaW4gY2FzZSB0aGVyZSBjYW4g
YmUgc29tZSBvYnNjdXJlIHVzZS1jYXNlLihieSBLaXJpbGwpDQo+ID4NCj4gPiBbMV0NCj4gaHR0
cHM6Ly9naXRodWIuY29tL3BtZW0vcG1kay90cmVlL21hc3Rlci9zcmMvdGVzdC92bW1hbGxvY19m
b3JrDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBKaWEgSGUgPGp1c3Rpbi5oZUBhcm0uY29tPg0K
PiA+IFJlcG9ydGVkLWJ5OiBZaWJvIENhaSA8WWliby5DYWlAYXJtLmNvbT4NCj4gPiBSZXZpZXdl
ZC1ieTogQ2F0YWxpbiBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4NCj4gPiBBY2tl
ZC1ieTogS2lyaWxsIEEuIFNodXRlbW92IDxraXJpbGwuc2h1dGVtb3ZAbGludXguaW50ZWwuY29t
Pg0KPiA+IC0tLQ0KPiA+ICBtbS9tZW1vcnkuYyB8IDk5DQo+ICsrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4
NCBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9t
bS9tZW1vcnkuYyBiL21tL21lbW9yeS5jDQo+ID4gaW5kZXggYjFjYTUxYTA3OWYyLi4xZjU2YjAx
MThlZjUgMTAwNjQ0DQo+ID4gLS0tIGEvbW0vbWVtb3J5LmMNCj4gPiArKysgYi9tbS9tZW1vcnku
Yw0KPiA+IEBAIC0xMTgsNiArMTE4LDEzIEBAIGludCByYW5kb21pemVfdmFfc3BhY2UgX19yZWFk
X21vc3RseSA9DQo+ID4gIAkJCQkJMjsNCj4gPiAgI2VuZGlmDQo+ID4NCj4gPiArI2lmbmRlZiBh
cmNoX2ZhdWx0c19vbl9vbGRfcHRlDQo+ID4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNoX2ZhdWx0
c19vbl9vbGRfcHRlKHZvaWQpDQo+ID4gK3sNCj4gPiArCXJldHVybiBmYWxzZTsNCj4gPiArfQ0K
PiA+ICsjZW5kaWYNCj4gDQo+IEtpcmlsbCBoYXMgYWNrZWQgdGhpcywgc28gSSdtIGhhcHB5IHRv
IHRha2UgdGhlIHBhdGNoIGFzLWlzLCBob3dldmVyIGlzbid0DQo+IGl0IHRoZSBjYXNlIHRoYXQg
L21vc3QvIGFyY2hpdGVjdHVyZXMgd2lsbCB3YW50IHRvIHJldHVybiB0cnVlIGZvcg0KPiBhcmNo
X2ZhdWx0c19vbl9vbGRfcHRlKCk/IEluIHdoaWNoIGNhc2UsIHdvdWxkbid0IGl0IG1ha2UgbW9y
ZSBzZW5zZSBmb3INCj4gdGhhdCB0byBiZSB0aGUgZGVmYXVsdCwgYW5kIGhhdmUgeDg2IGFuZCBh
cm02NCBwcm92aWRlIGFuIG92ZXJyaWRlPyBGb3INCj4gZXhhbXBsZSwgYXJlbid0IG1vc3QgYXJj
aGl0ZWN0dXJlcyBzdGlsbCBnb2luZyB0byBoaXQgdGhlIGRvdWJsZSBmYXVsdA0KPiBzY2VuYXJp
byBldmVuIHdpdGggeW91ciBwYXRjaCBhcHBsaWVkPw0KDQpObywgYWZ0ZXIgYXBwbHlpbmcgbXkg
cGF0Y2ggc2VyaWVzLCBvbmx5IHRob3NlIGFyY2hpdGVjdHVyZXMgd2hpY2ggZG9uJ3QgcHJvdmlk
ZQ0Kc2V0dGluZyBhY2Nlc3MgZmxhZyBieSBoYXJkd2FyZSBBTkQgZG9uJ3QgaW1wbGVtZW50IHRo
ZWlyIGFyY2hfZmF1bHRzX29uX29sZF9wdGUNCndpbGwgaGl0IHRoZSBkb3VibGUgcGFnZSBmYXVs
dC4NCg0KVGhlIG1lYW5pbmcgb2YgdHJ1ZSBmb3IgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSgpIGlz
ICJ0aGlzIGFyY2ggZG9lc24ndCBoYXZlIHRoZSBoYXJkd2FyZQ0Kc2V0dGluZyBhY2Nlc3MgZmxh
ZyB3YXksIGl0IG1pZ2h0IGNhdXNlIHBhZ2UgZmF1bHQgb24gYW4gb2xkIHB0ZSINCkkgZG9uJ3Qg
d2FudCB0byBjaGFuZ2Ugb3RoZXIgYXJjaGl0ZWN0dXJlcycgZGVmYXVsdCBiZWhhdmlvciBoZXJl
LiBTbyBieSBkZWZhdWx0LCANCmFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBpcyBmYWxzZS4NCg0K
QnR3LCBjdXJyZW50bHkgSSBvbmx5IG9ic2VydmVkIHRoaXMgZG91YmxlIHBhZ2VmYXVsdCBvbiBh
cm02NCdzIGd1ZXN0IChob3N0IGlzIFRodW5kZXJYMikuDQpPbiBYODYgZ3Vlc3QgKGhvc3QgaXMg
SW50ZWwoUikgQ29yZShUTSkgaTctNDc5MCBDUFUgQCAzLjYwR0h6ICksIHRoZXJlIGlzIG5vIHN1
Y2ggZG91YmxlDQpwYWdlZmF1bHQuIEl0IGhhcyB0aGUgc2ltaWxhciBzZXR0aW5nIGFjY2VzcyBm
bGFnIHdheSBieSBoYXJkd2FyZS4NCg0KDQotLQ0KQ2hlZXJzLA0KSnVzdGluIChKaWEgSGUpDQoN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
