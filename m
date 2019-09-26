Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106F7BEE5E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 11:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QgfLTk5SIFbaQxjEIdLcDmpUHf8LAS6aPizCzw6/Ok=; b=SeCXMRJBUR9W8t
	M2Yds2JE3qf3IwUcHR98TzIVbBKTmo4pSj5dUgCCKVSBWOVppj6Rssi3mYdGgbyzCIGYKlloh7Fd/
	YTCtR3imj5Ii81QDBzMb5C7uHSwVbr1v5rCBB9YnITzfCX7f9UwRGaWRG5QK1thIg2eXmAvnohLFP
	oRZxMtFfwHGTR48wSZfVYLOnMNmTGTmsTxON23uviCaigb1WCdpFIOpgDKSot4ME9uGVjge4pC+SF
	wlfVVA5+4jLl6g4FrWWr0D1ZGI6KbcNIl6Z4nQM82dn3TJ41Reg6oovk44MgvI/HDbmztWLFcrsDS
	x9w4k1cLbK0RbUax66JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDQ0M-0006Zv-BH; Thu, 26 Sep 2019 09:24:06 +0000
Received: from mail-eopbgr150040.outbound.protection.outlook.com
 ([40.107.15.40] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDPzs-0006JS-Lq
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 09:23:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37thVwE+S9rBO9lGoUGnIvDGOxLhXwTZEzmu7cwjd/s=;
 b=qkwp6KSUWilLcoYtLlzx13qEj6532Nhh79CGK22WnSDHAHS5+dH3Y9WT9GUg8NON0kA0+Ck/XAVbw64Sl9aX3j48YEW6jsRUZwLdixDnT9I1oDdaIk9CXZPEyywZIeOhSsXGzu4Xr0eB3XvtYQA4Da9mY1/wl+LkIM4FmeZ5CpQ=
Received: from VI1PR08CA0089.eurprd08.prod.outlook.com (2603:10a6:800:d3::15)
 by VI1PR08MB5408.eurprd08.prod.outlook.com (2603:10a6:803:13b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Thu, 26 Sep
 2019 09:23:31 +0000
Received: from DB5EUR03FT003.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::202) by VI1PR08CA0089.outlook.office365.com
 (2603:10a6:800:d3::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2305.17 via Frontend
 Transport; Thu, 26 Sep 2019 09:23:31 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT003.mail.protection.outlook.com (10.152.20.157) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2305.15 via Frontend Transport; Thu, 26 Sep 2019 09:23:29 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Thu, 26 Sep 2019 09:23:25 +0000
X-CR-MTA-TID: 64aa7808
Received: from 95f1e2348941.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.8.58]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A92B0CA7-4085-4806-AFFC-806754B1FEC9.1; 
 Thu, 26 Sep 2019 09:23:20 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
 (mail-am5eur03lp2058.outbound.protection.outlook.com [104.47.8.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 95f1e2348941.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 26 Sep 2019 09:23:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UyL3yg/rlHtLgGs/W3NBV9BA+sjzNell/TpyPIJs2WVrweHkNUAOahg+LpYswNWd6zVDxm2Xe5h7LXi8VTUNbAE6Zkq+qi/dvHgXsnV/N5xc4iLlXzyOuX2mQIFiCGMZvg42GR0DurSyF/GYCd5N4YXTCROPBGAs6bWaWbh805oRmCiLqTDJXFYwwNtssejDE8X3rPxZ9EyR0ZpWbEHAGwfWQcF1y/PQlURgm6nKqdPWniYUqGTJ168PxGVQ06t5RMAvzeGHqcdgpOztBzGbTUdgzfpYKa0AXucrL+6P2YkM0R+uNXp0JD+wTu1nhIlrXd38FV2Tk+bdZATS/2lJiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37thVwE+S9rBO9lGoUGnIvDGOxLhXwTZEzmu7cwjd/s=;
 b=GQIEph3SoXN7FKXftkdarzOGRPeShrjulSjH1USLkYHRsIWWcggj0oTskVlvd4sg95HGvpctJ6YIuerr3VRXQSbFo/uuB3ce72ykxGG0WnpaOPId66y+Iqvv4o+AuYX5YEBIhFFhXAy58TOTzVX+MMY1Q1ybkvsF4nBoEjSeotzummioRr3PWB6Or2JElVxNxw/aygWBwXXhCsO8nlRTuGPkxC3F2ooaAwB9hBkoS3BYbTtxK93W0e0JPTgSF8EZhptLW82WI/KCZFcAt0Ju7NX8zLRcmoX7PpkEQiaxE4045vRi3TKm0/wCHUdhexfemHUcL3kIQJHB4QRXF8tmMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=37thVwE+S9rBO9lGoUGnIvDGOxLhXwTZEzmu7cwjd/s=;
 b=qkwp6KSUWilLcoYtLlzx13qEj6532Nhh79CGK22WnSDHAHS5+dH3Y9WT9GUg8NON0kA0+Ck/XAVbw64Sl9aX3j48YEW6jsRUZwLdixDnT9I1oDdaIk9CXZPEyywZIeOhSsXGzu4Xr0eB3XvtYQA4Da9mY1/wl+LkIM4FmeZ5CpQ=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3675.eurprd08.prod.outlook.com (20.177.121.22) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Thu, 26 Sep 2019 09:23:19 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d%5]) with mapi id 15.20.2284.028; Thu, 26 Sep 2019
 09:23:18 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: RE: [PATCH v9 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Thread-Topic: [PATCH v9 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Index: AQHVc01PrCSsT6adAk60P24ivSFqeKc8dyUAgAE5C+A=
Date: Thu, 26 Sep 2019 09:23:18 +0000
Message-ID: <DB7PR08MB3082A688BDDD95F179EA388EF7860@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190925025922.176362-1-justin.he@arm.com>
 <20190925025922.176362-2-justin.he@arm.com>
 <20190925143820.GF7042@arrakis.emea.arm.com>
In-Reply-To: <20190925143820.GF7042@arrakis.emea.arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 250c9ef5-f7db-4bd0-8e3e-87b15ffc4664.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: cb15b023-4fc0-4037-541a-08d7426331c4
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB3675; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3675:|DB7PR08MB3675:|VI1PR08MB5408:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB540892DA6D126870A4C4C243F7860@VI1PR08MB5408.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6108;OLM:6108;
x-forefront-prvs: 0172F0EF77
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(366004)(39860400002)(396003)(199004)(189003)(13464003)(99286004)(52536014)(66446008)(6506007)(102836004)(305945005)(76116006)(55016002)(14454004)(186003)(26005)(33656002)(229853002)(7736002)(8936002)(8676002)(476003)(316002)(2906002)(53546011)(256004)(81166006)(74316002)(66066001)(55236004)(81156014)(478600001)(86362001)(7416002)(71200400001)(11346002)(6862004)(9686003)(446003)(4326008)(66946007)(966005)(6246003)(71190400001)(5660300002)(6116002)(3846002)(6636002)(6436002)(64756008)(7696005)(76176011)(25786009)(66476007)(66556008)(486006)(54906003)(6306002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3675;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: fJWFC/OPJJsInO8Yg4Xbw68MmO/d/KfLrlHPvjCqgLFQVMGiiNzGsm8hkdBs3z2yl2n+LnIsVybkHYKf2Fpb+uCQgfbNajE5koENq+1t5XaWYoN6HSu5pLX3+jR4A00wb5IU6GkEcxSpzx6MBJhqelIMjv13N7koUqJSNgt7Mpro2aT9q1fEjYHOY8RCC+Of8SWECqn5+NpQbWh9sIx4mgwBo38NRqv3sZ0nQtcqeDecVHn2c20Nxf9naIQZGzMeEKBWv4KtwRvMIIuulRiRsjFh7b4KbBr02cCpz5QsMdJfkF4i7PCQp/XmqoPpMocARDI10iGhYu82o2RIg5u6Y6jYPMxhd+nKfT2b71u7HD4lmpFd69qr43zGuCu4BCViqD5+eQR8wTB/xV7xB5pJASSisgPmvlO3WUYxGEgzJcdH2rA+mLerZWKHrnze6SzGbWrkof9uKJH6rCVbmLj5VA==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3675
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT003.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(136003)(346002)(13464003)(189003)(199004)(6306002)(76130400001)(6636002)(76176011)(446003)(74316002)(63350400001)(6506007)(14454004)(2486003)(7736002)(436003)(53546011)(2906002)(11346002)(8676002)(81166006)(102836004)(478600001)(186003)(8936002)(54906003)(476003)(486006)(26826003)(126002)(6116002)(305945005)(23676004)(52536014)(26005)(229853002)(3846002)(966005)(5660300002)(9686003)(70586007)(99286004)(25786009)(356004)(316002)(81156014)(6862004)(70206006)(4326008)(33656002)(55016002)(6246003)(47776003)(86362001)(50466002)(7696005)(22756006)(66066001)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB5408;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 75a32ba4-e885-4ad2-37de-08d742632b30
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR08MB5408; 
NoDisclaimer: True
X-Forefront-PRVS: 0172F0EF77
X-Microsoft-Antispam-Message-Info: 39ttUqoqOvm7yuJ/vdxSdQiHH/3AQ6is8zBDHhiUyS98wwhLlP080R0BBR45xFhRT0zUqyVQoOQ3CB3hTP2qiklcbGuIPVY3HxT96cUMxj+krmWnl0NvAbUM1AB0h3XClU+Z7ec747gVjcheIIuifCS6Rfa+gVYJDbmgwL5MEa5lqppG7MlsXPTQBm4BTPO16sARUBsvTsOfmPqpoADLQAapsks/xTpIH9ZTj+jLUqou6zO325QNfbjHFIcy6kuMWjbGTZU1UrY427bHX0Kt8vwzGrYP6OG41axDYhDFuZ0kcqUXZQ15LKn0Tev36naiCptqtQqTA2Jele9RTTuwhk7AkezngSIQh7uZdIbThMvdeELjTvcKCYI0jOulcUIGnEzy8q5kgafhtZVBf7z41A9VrvfRxKr9/EZSV/2OfrgIhT0882tINE+v5nIHx2Bf+U0D6SNLMoqA9CvbHpZJeQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 09:23:29.9849 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: cb15b023-4fc0-4037-541a-08d7426331c4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5408
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_022336_826122_C6916426 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, "Kaly Xin
 \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, nd <nd@arm.com>,
 Will Deacon <will@kernel.org>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2F0YWxpbg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IENhdGFs
aW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnlubQ55pyI
MjXml6UgMjI6MzgNCj4gVG86IEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxKdXN0
aW4uSGVAYXJtLmNvbT4NCj4gQ2M6IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+OyBNYXJr
IFJ1dGxhbmQNCj4gPE1hcmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UgPEphbWVzLk1v
cnNlQGFybS5jb20+OyBNYXJjDQo+IFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPjsgTWF0dGhldyBX
aWxjb3ggPHdpbGx5QGluZnJhZGVhZC5vcmc+OyBLaXJpbGwgQS4NCj4gU2h1dGVtb3YgPGtpcmls
bC5zaHV0ZW1vdkBsaW51eC5pbnRlbC5jb20+OyBsaW51eC1hcm0tDQo+IGtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnOyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBsaW51eC0NCj4gbW1A
a3ZhY2sub3JnOyBTdXp1a2kgUG91bG9zZSA8U3V6dWtpLlBvdWxvc2VAYXJtLmNvbT47IFB1bml0
DQo+IEFncmF3YWwgPHB1bml0YWdyYXdhbEBnbWFpbC5jb20+OyBBbnNodW1hbiBLaGFuZHVhbA0K
PiA8QW5zaHVtYW4uS2hhbmR1YWxAYXJtLmNvbT47IEFsZXggVmFuIEJydW50DQo+IDxhdmFuYnJ1
bnRAbnZpZGlhLmNvbT47IFJvYmluIE11cnBoeSA8Um9iaW4uTXVycGh5QGFybS5jb20+Ow0KPiBU
aG9tYXMgR2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT47IEFuZHJldyBNb3J0b24gPGFrcG1A
bGludXgtDQo+IGZvdW5kYXRpb24ub3JnPjsgSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhh
dC5jb20+OyBSYWxwaCBDYW1wYmVsbA0KPiA8cmNhbXBiZWxsQG52aWRpYS5jb20+OyBoZWppYW5l
dEBnbWFpbC5jb207IEthbHkgWGluIChBcm0gVGVjaG5vbG9neQ0KPiBDaGluYSkgPEthbHkuWGlu
QGFybS5jb20+OyBuZCA8bmRAYXJtLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2OSAxLzNd
IGFybTY0OiBjcHVmZWF0dXJlOiBpbnRyb2R1Y2UgaGVscGVyDQo+IGNwdV9oYXNfaHdfYWYoKQ0K
PiANCj4gT24gV2VkLCBTZXAgMjUsIDIwMTkgYXQgMTA6NTk6MjBBTSArMDgwMCwgSmlhIEhlIHdy
b3RlOg0KPiA+IFdlIHVuY29uZGl0aW9uYWxseSBzZXQgdGhlIEhXX0FGREJNIGNhcGFiaWxpdHkg
YW5kIG9ubHkgZW5hYmxlIGl0IG9uDQo+ID4gQ1BVcyB3aGljaCByZWFsbHkgaGF2ZSB0aGUgZmVh
dHVyZS4gQnV0IHNvbWV0aW1lcyB3ZSBuZWVkIHRvIGtub3cNCj4gPiB3aGV0aGVyIHRoaXMgY3B1
IGhhcyB0aGUgY2FwYWJpbGl0eSBvZiBIVyBBRi4gU28gZGVjb3VwbGUgQUYgZnJvbQ0KPiA+IERC
TSBieSBuZXcgaGVscGVyIGNwdV9oYXNfaHdfYWYoKS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6
IEppYSBIZSA8anVzdGluLmhlQGFybS5jb20+DQo+ID4gU3VnZ2VzdGVkLWJ5OiBTdXp1a2kgUG91
bG9zZSA8U3V6dWtpLlBvdWxvc2VAYXJtLmNvbT4NCj4gPiBSZXBvcnRlZC1ieToga2J1aWxkIHRl
c3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+DQo+IA0KPiBXaGljaCBidWcgZGlkIHRoZSBrYnVpbGQg
cm9ib3QgYWN0dWFsbHkgcmVwb3J0PyBJJ2QgZHJvcCB0aGlzIGxpbmUuDQo+IA0KVGhpcyBsaW5l
IGlzIGFkZGVkIGR1ZSB0byBbMV06DQoiSWYgeW91IGZpeCB0aGUgaXNzdWUsIGtpbmRseSBhZGQg
Zm9sbG93aW5nIHRhZw0KUmVwb3J0ZWQtYnk6IGtidWlsZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwu
Y29tPiINCg0KWWVzLCBJIGtub3cgeW91ciBjb25jZXJuLCBpdCBpcyBhIGxpdHRsZSBiaXQgY29u
ZnVzaW5nLiBCdXQgSSBkb24ndCBrbm93DQpob3cgdG8gZGlzdGluZ3Vpc2ggdGhlIGNhc2UgYnR3
IGEpIG9yaWdpbmFsIGJ1ZyByZXBvcnQgYikgYnVnIHJlcG9ydA0Kb2YgbXkgcGF0Y2ggaW1wbGVt
ZW50YXRpb24/IFRoYW5rcyBmb3IgYW55IHN1Z2dlc3Rpb24uDQoNClsxXSBodHRwczovL3d3dy5s
a21sLm9yZy9sa21sLzIwMTkvOS8xOC85NDANCg0KDQotLQ0KQ2hlZXJzLA0KSnVzdGluIChKaWEg
SGUpDQoNCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
