Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F4DCFAC5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 14:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAkNbz+6T+vJ5JhjVH4c6vp9lLnRkJdSoshxk+8iP4U=; b=CGe+edU2AOe2BK
	xpMNEg8tv0VHZ4dhcxoSz/3PiNf4eNMmHHiU0KphgXth+FxlZFvid6ENN+3VfJa70hQRCue9ceoKg
	Vz3Oku9lSDYIX3PYE4iScgaBIRLfIigG7ggTTkP6zDNkxuapnMKXBCj0tMUqoheo2pluYJPTb1/hy
	0bicj/+gQeMR+oq5fEplh/dUvoEdBwcVVY9gBNOcaHthiJ9MyWwEfmvlIzCsz5EaLx0HL9CYLamit
	V7aUDDAUi5foKVs5PYU4ZJZGKZawLElwDbUnMypNNEtXSdgZa1SqhGDuZm5uC4HW/f36emgbp0U9K
	MZHuyF2KbUF5sT8QOPFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHp5Y-0008WB-5q; Tue, 08 Oct 2019 12:59:40 +0000
Received: from mail-eopbgr40054.outbound.protection.outlook.com ([40.107.4.54]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHp5D-0008OR-7r
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 12:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6u4qKpggkPIyD2GA5mTsaigoVsNPCTLznM8Tb5AWQY=;
 b=xYfWyLRrHp0/YtzcWjgvmm71URnUEQF51qCBgJS8TutQ+2+Rdewt03zl+TpzWQBMGcgRXYDevsw0RcAcgS54z3IUBAbS94KXrNDHfMSExhfhrDG59OFe9MQqFKkQqUi7iTBWUSWr4Px+hoObiHGAwGVZHHgq+zEAK2Yi6yWXk0g=
Received: from VI1PR08CA0175.eurprd08.prod.outlook.com (2603:10a6:800:d1::29)
 by HE1PR08MB2668.eurprd08.prod.outlook.com (2603:10a6:7:2b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.26; Tue, 8 Oct
 2019 12:59:13 +0000
Received: from VE1EUR03FT063.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::201) by VI1PR08CA0175.outlook.office365.com
 (2603:10a6:800:d1::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2327.24 via Frontend
 Transport; Tue, 8 Oct 2019 12:59:12 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT063.mail.protection.outlook.com (10.152.18.236) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 8 Oct 2019 12:59:10 +0000
Received: ("Tessian outbound 851a1162fca7:v33");
 Tue, 08 Oct 2019 12:59:06 +0000
X-CR-MTA-TID: 64aa7808
Received: from 78f1fff96177.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.5.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 D58797FD-35D3-40AF-94B1-614273992599.1; 
 Tue, 08 Oct 2019 12:59:01 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2050.outbound.protection.outlook.com [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 78f1fff96177.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 08 Oct 2019 12:59:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gO97on5tdwriPoAYGoQfgwen3wn75gfleQ5FCu/I3rKlt6dod8yctHE+UJiRadRzJTAYci5TOAma63SrSPWp3KOLDWt0/RMks72ccaxvGTtMoKPM8PfOYHkyzkdn9vbMaU4qKMFVXKfEom9vJNwT+oWN0tkWzqhCBaJ5cJRlF5G/+vqO3EuGurklFfDXWvekJ8kySFBvTy2n0Qajouh5hXbhm0/iGyLZvuopc8CMxK1A1qZvcmemr0tz576K5PYZlGFm9QK8hrZ64Nr0Uz47iYLe+62ddIgjSmOjMNLEPyVgkznZJDerLqq89tnOns4LN4T5hz1QDCM+fYBl4gWFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6u4qKpggkPIyD2GA5mTsaigoVsNPCTLznM8Tb5AWQY=;
 b=ClQvwdflHSU8nzE72FFLk2duRZmEPnPMU6jIuqpYCgU6WxhYxsSegGnym5wmRxXaEaD+VH6IwGP1eBJ9VO5wz50YJg9w3SEc6MVXbGxiVTcu2VbVyMiOQD+a+ALLIajcpX3GF5wfcyyH+1Ff60KXo7m4vVXYm4OAOu6r44cS2nf0P35MSSAbr2fp2FvqETz9Ycu4S5ucGUXizVJDqFnM7sMP00By3tfvXz5Lgbtv91f1V8AkQTXHAEKatr9IqWqUFZVxJJLt5jVxoVlQu5FvBAiYsK5oK+rkYcp6V1Zb+jOXGVIFHtI3w7dY8orppq2JFhtV/XLWv3aF6g/KAkDNvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=z6u4qKpggkPIyD2GA5mTsaigoVsNPCTLznM8Tb5AWQY=;
 b=xYfWyLRrHp0/YtzcWjgvmm71URnUEQF51qCBgJS8TutQ+2+Rdewt03zl+TpzWQBMGcgRXYDevsw0RcAcgS54z3IUBAbS94KXrNDHfMSExhfhrDG59OFe9MQqFKkQqUi7iTBWUSWr4Px+hoObiHGAwGVZHHgq+zEAK2Yi6yWXk0g=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB2987.eurprd08.prod.outlook.com (52.134.109.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.25; Tue, 8 Oct 2019 12:58:57 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0%6]) with mapi id 15.20.2327.023; Tue, 8 Oct 2019
 12:58:57 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Will Deacon <will@kernel.org>, "Kirill A. Shutemov"
 <kirill.shutemov@linux.intel.com>
Subject: RE: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Topic: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Index: AQHVdzKJSZgAcCvyK02xG/xeDXFx5adFwEGAgApI6UCAALNdAIAAAKRQ
Date: Tue, 8 Oct 2019 12:58:57 +0000
Message-ID: <DB7PR08MB30828D5469EA39EA0825B809F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-4-justin.he@arm.com>
 <20191001125413.mhxa6qszwnuhglky@willie-the-truck>
 <DB7PR08MB3082563BD18482E5D541F019F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
 <20191008123943.j7q6dlu2qb2az6xa@willie-the-truck>
In-Reply-To: <20191008123943.j7q6dlu2qb2az6xa@willie-the-truck>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-Mentions: kirill.shutemov@linux.intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: a7ed52c1-c06d-41a3-8eff-11529d8e95c4.0
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 18400f76-37e1-4bb6-3d2d-08d74bef5022
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DB7PR08MB2987:|DB7PR08MB2987:|HE1PR08MB2668:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <HE1PR08MB2668E53FDFA3E7DBF21915EFF79A0@HE1PR08MB2668.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 01842C458A
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(39860400002)(366004)(396003)(376002)(346002)(13464003)(189003)(199004)(4326008)(3846002)(6116002)(66476007)(64756008)(6246003)(7416002)(55016002)(66446008)(66556008)(256004)(71200400001)(71190400001)(229853002)(66946007)(9686003)(14444005)(6436002)(14454004)(66066001)(2906002)(76116006)(74316002)(86362001)(476003)(8676002)(5660300002)(81166006)(8936002)(7736002)(486006)(33656002)(305945005)(478600001)(6506007)(53546011)(102836004)(55236004)(54906003)(110136005)(316002)(76176011)(7696005)(26005)(81156014)(99286004)(446003)(11346002)(186003)(25786009)(52536014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB2987;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: HJUPrm/SvtxLhExWz09IaNYaJWEBZyGvyHAAQzW4G1XzvYI03z40TrmMzotpiUekRSFQ8ybbJo8M4z/sP0dGCTRWwb56jeAuN19mIIDr8oWJstVDTaWt31mhsZRT1YXHRCu4InwItz+X6Y7g6+oYrw8v6WHF1MCt/pCv3U84oMtiuJ5aiQhDvN0e+b9y8oXPDysn6s5CfxWa6lYICbDQ96Y23Dv2I/70jyNaqjQFGtw3Kw9nvksuEqvHMiKaTmFs6m3uSxPL2Wk7S7wIxj9CGSVBLSbQh6fIEnJwLx0I6nEUEY7tJwsreALXNsBwCgPpMy69F1aLF9ZFuHjyBW3OH3oH6pU/k2OCM/J0pF/gCrXWNuVuKy0cUJWRrGW0sXwPS7atvoMYYzeCmbB3gH3GScFyFZnWgxYhC+b8R+/dL9E=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB2987
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT063.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(136003)(346002)(189003)(199004)(13464003)(7736002)(229853002)(4326008)(486006)(356004)(8676002)(81156014)(63350400001)(8936002)(81166006)(436003)(11346002)(126002)(476003)(86362001)(25786009)(9686003)(55016002)(6246003)(446003)(305945005)(74316002)(336012)(76130400001)(316002)(50466002)(478600001)(26826003)(22756006)(66066001)(14454004)(5660300002)(36906005)(186003)(70206006)(70586007)(2906002)(110136005)(14444005)(52536014)(26005)(54906003)(7696005)(76176011)(3846002)(6116002)(102836004)(53546011)(23676004)(2486003)(6506007)(99286004)(33656002)(47776003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:HE1PR08MB2668;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 05f76976-8d7a-4126-c054-08d74bef484a
NoDisclaimer: True
X-Forefront-PRVS: 01842C458A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BU97mL53kA+3c5OsINV7VzGuw3iQPNSpHjOWdZ4NgG2beEc/V8thPX92qH5hBNE8G/FI1nk7nIAvXW79bVzxfUtd8EhhQmKAJAVRviYELnqXdDRgdWgkok6tpiI9+jKhdh+FDK5e9jxkjwaQRq7OLROen1sj+V+4XmmL9fo9yh9+ndmW4YObAB1gAqkC86XW/CCQzB5hkQzOhpb+n9LwEZAmQICNYfcat3gCLa6jWa6jDWJOjYkAPkuVawy7AbvMwr3WRBAAaqX9zs81gZMXQcrY+jTuu+QTShuDYAR5Rbg83QjhnOw4PVIy8lMoH+agsz439PYTciYL136MQoEAp/QNJZuK/aqZNtD1VGs63pE0BMUHdPGuQbe5nIW8clepTvUVHCyMQ1y/44ridIZj+NrwhtnpH9wcxwVPp12JAjs=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2019 12:59:10.8861 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 18400f76-37e1-4bb6-3d2d-08d74bef5022
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR08MB2668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_055919_533840_883D7807 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.54 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2lsbA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVh
Y29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMTnlubQxMOaciDjml6UgMjA6NDANCj4g
VG86IEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxKdXN0aW4uSGVAYXJtLmNvbT4N
Cj4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Q2F0YWxpbi5NYXJpbmFzQGFybS5jb20+OyBNYXJrIFJ1
dGxhbmQNCj4gPE1hcmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UgPEphbWVzLk1vcnNl
QGFybS5jb20+OyBNYXJjDQo+IFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPjsgTWF0dGhldyBXaWxj
b3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+OyBLaXJpbGwgQS4NCj4gU2h1dGVtb3YgPGtpcmlsbC5z
aHV0ZW1vdkBsaW51eC5pbnRlbC5jb20+OyBsaW51eC1hcm0tDQo+IGtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4gbW1Aa3Zh
Y2sub3JnOyBQdW5pdCBBZ3Jhd2FsIDxwdW5pdGFncmF3YWxAZ21haWwuY29tPjsgVGhvbWFzDQo+
IEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+OyBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4
LQ0KPiBmb3VuZGF0aW9uLm9yZz47IGhlamlhbmV0QGdtYWlsLmNvbTsgS2FseSBYaW4gKEFybSBU
ZWNobm9sb2d5IENoaW5hKQ0KPiA8S2FseS5YaW5AYXJtLmNvbT47IG5kIDxuZEBhcm0uY29tPg0K
PiBTdWJqZWN0OiBSZTogW1BBVENIIHYxMCAzLzNdIG1tOiBmaXggZG91YmxlIHBhZ2UgZmF1bHQg
b24gYXJtNjQgaWYgUFRFX0FGDQo+IGlzIGNsZWFyZWQNCj4gDQo+IE9uIFR1ZSwgT2N0IDA4LCAy
MDE5IGF0IDAyOjE5OjA1QU0gKzAwMDAsIEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kNCj4gQ2hp
bmEpIHdyb3RlOg0KPiA+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206
IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+DQo+ID4gPiBTZW50OiAyMDE55bm0MTDmnIgx
5pelIDIwOjU0DQo+ID4gPiBUbzogSnVzdGluIEhlIChBcm0gVGVjaG5vbG9neSBDaGluYSkgPEp1
c3Rpbi5IZUBhcm0uY29tPg0KPiA+ID4gQ2M6IENhdGFsaW4gTWFyaW5hcyA8Q2F0YWxpbi5NYXJp
bmFzQGFybS5jb20+OyBNYXJrIFJ1dGxhbmQNCj4gPiA+IDxNYXJrLlJ1dGxhbmRAYXJtLmNvbT47
IEphbWVzIE1vcnNlIDxKYW1lcy5Nb3JzZUBhcm0uY29tPjsNCj4gTWFyYw0KPiA+ID4gWnluZ2ll
ciA8bWF6QGtlcm5lbC5vcmc+OyBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz47
DQo+IEtpcmlsbCBBLg0KPiA+ID4gU2h1dGVtb3YgPGtpcmlsbC5zaHV0ZW1vdkBsaW51eC5pbnRl
bC5jb20+OyBsaW51eC1hcm0tDQo+ID4gPiBrZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGlu
dXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtDQo+ID4gPiBtbUBrdmFjay5vcmc7IFB1
bml0IEFncmF3YWwgPHB1bml0YWdyYXdhbEBnbWFpbC5jb20+OyBUaG9tYXMNCj4gPiA+IEdsZWl4
bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+OyBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LQ0KPiA+
ID4gZm91bmRhdGlvbi5vcmc+OyBoZWppYW5ldEBnbWFpbC5jb207IEthbHkgWGluIChBcm0gVGVj
aG5vbG9neSBDaGluYSkNCj4gPiA+IDxLYWx5LlhpbkBhcm0uY29tPg0KPiA+ID4gU3ViamVjdDog
UmU6IFtQQVRDSCB2MTAgMy8zXSBtbTogZml4IGRvdWJsZSBwYWdlIGZhdWx0IG9uIGFybTY0IGlm
DQo+IFBURV9BRg0KPiA+ID4gaXMgY2xlYXJlZA0KPiA+ID4NCj4gPiA+IE9uIE1vbiwgU2VwIDMw
LCAyMDE5IGF0IDA5OjU3OjQwQU0gKzA4MDAsIEppYSBIZSB3cm90ZToNCj4gPiA+ID4gZGlmZiAt
LWdpdCBhL21tL21lbW9yeS5jIGIvbW0vbWVtb3J5LmMNCj4gPiA+ID4gaW5kZXggYjFjYTUxYTA3
OWYyLi4xZjU2YjAxMThlZjUgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL21tL21lbW9yeS5jDQo+ID4g
PiA+ICsrKyBiL21tL21lbW9yeS5jDQo+ID4gPiA+IEBAIC0xMTgsNiArMTE4LDEzIEBAIGludCBy
YW5kb21pemVfdmFfc3BhY2UgX19yZWFkX21vc3RseSA9DQo+ID4gPiA+ICAJCQkJCTI7DQo+ID4g
PiA+ICAjZW5kaWYNCj4gPiA+ID4NCj4gPiA+ID4gKyNpZm5kZWYgYXJjaF9mYXVsdHNfb25fb2xk
X3B0ZQ0KPiA+ID4gPiArc3RhdGljIGlubGluZSBib29sIGFyY2hfZmF1bHRzX29uX29sZF9wdGUo
dm9pZCkNCj4gPiA+ID4gK3sNCj4gPiA+ID4gKwlyZXR1cm4gZmFsc2U7DQo+ID4gPiA+ICt9DQo+
ID4gPiA+ICsjZW5kaWYNCj4gPiA+DQo+ID4gPiBLaXJpbGwgaGFzIGFja2VkIHRoaXMsIHNvIEkn
bSBoYXBweSB0byB0YWtlIHRoZSBwYXRjaCBhcy1pcywgaG93ZXZlciBpc24ndA0KPiA+ID4gaXQg
dGhlIGNhc2UgdGhhdCAvbW9zdC8gYXJjaGl0ZWN0dXJlcyB3aWxsIHdhbnQgdG8gcmV0dXJuIHRy
dWUgZm9yDQo+ID4gPiBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCk/IEluIHdoaWNoIGNhc2UsIHdv
dWxkbid0IGl0IG1ha2UgbW9yZSBzZW5zZQ0KPiBmb3INCj4gPiA+IHRoYXQgdG8gYmUgdGhlIGRl
ZmF1bHQsIGFuZCBoYXZlIHg4NiBhbmQgYXJtNjQgcHJvdmlkZSBhbiBvdmVycmlkZT8NCj4gRm9y
DQo+ID4gPiBleGFtcGxlLCBhcmVuJ3QgbW9zdCBhcmNoaXRlY3R1cmVzIHN0aWxsIGdvaW5nIHRv
IGhpdCB0aGUgZG91YmxlIGZhdWx0DQo+ID4gPiBzY2VuYXJpbyBldmVuIHdpdGggeW91ciBwYXRj
aCBhcHBsaWVkPw0KPiA+DQo+ID4gTm8sIGFmdGVyIGFwcGx5aW5nIG15IHBhdGNoIHNlcmllcywg
b25seSB0aG9zZSBhcmNoaXRlY3R1cmVzIHdoaWNoIGRvbid0DQo+IHByb3ZpZGUNCj4gPiBzZXR0
aW5nIGFjY2VzcyBmbGFnIGJ5IGhhcmR3YXJlIEFORCBkb24ndCBpbXBsZW1lbnQgdGhlaXINCj4g
YXJjaF9mYXVsdHNfb25fb2xkX3B0ZQ0KPiA+IHdpbGwgaGl0IHRoZSBkb3VibGUgcGFnZSBmYXVs
dC4NCj4gPg0KPiA+IFRoZSBtZWFuaW5nIG9mIHRydWUgZm9yIGFyY2hfZmF1bHRzX29uX29sZF9w
dGUoKSBpcyAidGhpcyBhcmNoIGRvZXNuJ3QNCj4gaGF2ZSB0aGUgaGFyZHdhcmUNCj4gPiBzZXR0
aW5nIGFjY2VzcyBmbGFnIHdheSwgaXQgbWlnaHQgY2F1c2UgcGFnZSBmYXVsdCBvbiBhbiBvbGQg
cHRlIg0KPiA+IEkgZG9uJ3Qgd2FudCB0byBjaGFuZ2Ugb3RoZXIgYXJjaGl0ZWN0dXJlcycgZGVm
YXVsdCBiZWhhdmlvciBoZXJlLiBTbyBieQ0KPiBkZWZhdWx0LA0KPiA+IGFyY2hfZmF1bHRzX29u
X29sZF9wdGUoKSBpcyBmYWxzZS4NCj4gDQo+IC4uLmFuZCBteSBjb21wbGFpbnQgaXMgdGhhdCB0
aGlzIGlzIHRoZSBtYWpvcml0eSBvZiBzdXBwb3J0ZWQgYXJjaGl0ZWN0dXJlcywNCj4gc28geW91
J3JlIGZpeGluZyBzb21ldGhpbmcgZm9yIGFybTY0IHdoaWNoIGFsc28gYWZmZWN0cyBhcm0sIHBv
d2VycGMsDQo+IGFscGhhLCBtaXBzLCByaXNjdiwgLi4uDQoNClNvLCBJSVVDLCB5b3Ugc3VnZ2Vz
dGVkIHRoYXQ6DQoxLiBieSBkZWZhdWx0LCBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgcmV0dXJu
IHRydWUNCjIuIG9uIFg4NiwgbGV0IGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBiZSBvdmVycmlk
ZWQgYXMgcmV0dXJuaW5nIGZhbHNlDQozLiBvbiBhcm02NCwgbGV0IGl0IGJlIGFzLWlzIG15IHBh
dGNoIHNldC4NCjQuIGxldCBvdGhlciBhcmNoaXRlY3R1cmVzIGRlY2lkZSB0aGUgYmVoYXZpb3Iu
IChCdXQgYnkgZGVmYXVsdCwgaXQgd2lsbCBzZXQNCnB0ZV95b3VuZykNCg0KSSBhbSBvayB3aXRo
IHRoYXQgaWYgbm8gb2JqZWN0aW9ucyBmcm9tIG90aGVycy4NCg0KQEtpcmlsbCBBLiBTaHV0ZW1v
diBEbyB5b3UgaGF2ZSBhbnkgY29tbWVudHM/IFRoYW5rcw0KPiANCj4gQ2hhbmNlcyBhcmUsIHRo
ZXkgd29uJ3QgZXZlbiByZWFsaXNlIHRoZXkgbmVlZCB0byBpbXBsZW1lbnQNCj4gYXJjaF9mYXVs
dHNfb25fb2xkX3B0ZSgpIHVudGlsIHNvbWVib2R5IHJ1bnMgaW50byB0aGUgZG91YmxlIGZhdWx0
IGFuZA0KPiB3YXN0ZXMgbG90cyBvZiB0aW1lIGRlYnVnZ2luZyBpdCBiZWZvcmUgdGhleSBzcG90
IHlvdXIgcGF0Y2guDQoNCkFzIHRvIHRoaXMgcG9pbnQsIEkgYWRkZWQgYSBXQVJOX09OIGluIHBh
dGNoIDAzIHRvIHNwZWVkIHVwIHRoZSBkZWJ1Z2dpbmcNCnByb2Nlc3MuDQoNCi0tDQpDaGVlcnMs
DQpKdXN0aW4gKEppYSBIZSkNCg0KDQoNCj4gDQo+ID4gQnR3LCBjdXJyZW50bHkgSSBvbmx5IG9i
c2VydmVkIHRoaXMgZG91YmxlIHBhZ2VmYXVsdCBvbiBhcm02NCdzIGd1ZXN0DQo+ID4gKGhvc3Qg
aXMgVGh1bmRlclgyKS4gIE9uIFg4NiBndWVzdCAoaG9zdCBpcyBJbnRlbChSKSBDb3JlKFRNKSBp
Ny00NzkwIENQVQ0KPiA+IEAgMy42MEdIeiApLCB0aGVyZSBpcyBubyBzdWNoIGRvdWJsZSBwYWdl
ZmF1bHQuIEl0IGhhcyB0aGUgc2ltaWxhciBzZXR0aW5nDQo+ID4gYWNjZXNzIGZsYWcgd2F5IGJ5
IGhhcmR3YXJlLg0KPiANCj4gUmlnaHQsIGFuZCB0aGF0J3Mgd2h5IEknbSBub3QgY29uY2VybmVk
IGFib3V0IHg4NiBmb3IgdGhpcyBwcm9ibGVtLg0KPiANCj4gV2lsbA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5n
IGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
