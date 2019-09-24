Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC37BC1EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 08:43:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRlLTfILVVzbluQhHJ5qAyqk+mGIxdEHJtpTPA8RUFk=; b=r1mgz00VRPeKrb
	nB7nQeSfHrPvsINMuiPSN0+nkz8x/wNPx+xjEcudvdu8sTysGkn96tjeX3KZzbVIXODWCbW0ItRJA
	qX6WCXxVEg7XowmxbKQKyuUWjCHEQhsRXOSeCHBmGaAmXq2G7bZwf04CdhYtrzM3bxKWQeMIVXgb4
	haTECg9MCbA0qK5xiHgCOoApEHVHRrpU7pqCdL/BTzmSP0bhSV9evyC5A7RnUQohiJfUkFRlASMKK
	SSbLNdJQzBpzwQupfChOgh3bXiFWfiPX/QDjexsHI5722XDdLnJ0gTVIDNZltBFiCXBkMVCrOA3W4
	4ClDTIIuAFr++JaRaqYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCeY1-0001eZ-JA; Tue, 24 Sep 2019 06:43:41 +0000
Received: from mail-eopbgr10080.outbound.protection.outlook.com ([40.107.1.80]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCeXs-0001cv-8L
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 06:43:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nmXfkKGPqzkrPM3r75eFIbvyYOx/1r6a6VcBt20azU=;
 b=tBz3ijgTmlmUOxgI2pArZOlk3kFmZ2kCsTAkZBzbjIGdcXVF6cX9/LUHS4XQ7rEs5stHwDNQoSupOgpULGeeFiXND7MLUWBlMhKc3BgTrveNuxgPilnDcqcgxeNa574gFYMpTg8/+CHHyUWeaF12gkOWr8qySJ5du3d8dP+N/6Q=
Received: from AM4PR08CA0049.eurprd08.prod.outlook.com (2603:10a6:205:2::20)
 by VI1PR08MB3789.eurprd08.prod.outlook.com (2603:10a6:803:be::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.23; Tue, 24 Sep
 2019 06:43:21 +0000
Received: from DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::207) by AM4PR08CA0049.outlook.office365.com
 (2603:10a6:205:2::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18 via Frontend
 Transport; Tue, 24 Sep 2019 06:43:21 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT062.mail.protection.outlook.com (10.152.20.197) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Tue, 24 Sep 2019 06:43:20 +0000
Received: ("Tessian outbound d5a1f2820a4f:v31");
 Tue, 24 Sep 2019 06:43:16 +0000
X-CR-MTA-TID: 64aa7808
Received: from fd047ad28d33.3 (cr-mta-lb-1.cr-mta-net [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 3752C817-0037-4B55-9613-DF5D7AE54426.1; 
 Tue, 24 Sep 2019 06:43:11 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur02lp2050.outbound.protection.outlook.com [104.47.5.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id fd047ad28d33.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Tue, 24 Sep 2019 06:43:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y6CqOM55OS1YXJ0JZ5/mDCSt9FNEFVsyiiHxN1lSDCOVJAZM0hy8uGBRlFy/grQxr5uepISAgqfA+bXb3CoD+SVYcyF0iuqdiHDVvlQG2sRUDdYfsjZ4uFSHClCItZfX75BosLEMRs8hx+aT53t3sdu4OA+vfve+JO1WS8WmmY/auN7Gaot8H6ZEvHQgBvp0ey8+IyEj7ROUygeuxFdZW9a95p8mlRFU8jgRDVjWXNkz4fMy8bxV4XEHJmU0IPJPU27Jk9++MbWcSytaKlVVRHOrv8Bz5duhP9d74GFRaI7VWIOWJy6LHfZDpt77cdV4YVy3aNPsR9M3gN5HvlMo1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nmXfkKGPqzkrPM3r75eFIbvyYOx/1r6a6VcBt20azU=;
 b=njlWYpP6JxR8Pv6xWBA+amD9lde5km5tJfGIxEe0xcRJ3QaW0nwcrFVZaQbv9zv8U5LuszHN5N8ogRvH8rl9xOSZYwdw7pfYxXTRECyvyTKkboTuAmpKFpnAphMTOnTUwiygTxp8b1O7XW8h0lLmzi60wZ44TPUZ0dIGZYMjf+VMLHjh2LOXH9hBlgQFdFaAejJX1n48XLy7YKCwlNxUN+qGhh5BP1+xeJ07jgtSxzPwAX18ILXMyk4o4Veq2u8BjLFkmbDDe97o1KGMNpBme4yzRKTUr4PdvQcakAhsX/APlsgOhMsPExelTfZLCv9qGAv94htYMUxA331XMr6rQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0nmXfkKGPqzkrPM3r75eFIbvyYOx/1r6a6VcBt20azU=;
 b=tBz3ijgTmlmUOxgI2pArZOlk3kFmZ2kCsTAkZBzbjIGdcXVF6cX9/LUHS4XQ7rEs5stHwDNQoSupOgpULGeeFiXND7MLUWBlMhKc3BgTrveNuxgPilnDcqcgxeNa574gFYMpTg8/+CHHyUWeaF12gkOWr8qySJ5du3d8dP+N/6Q=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB2985.eurprd08.prod.outlook.com (52.134.111.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.25; Tue, 24 Sep 2019 06:43:07 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d%5]) with mapi id 15.20.2284.023; Tue, 24 Sep 2019
 06:43:07 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>
Subject: RE: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Topic: [PATCH v8 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Index: AQHVcIOw3L75rYJgH0mXRXYBOBIp/qc5gOoAgACfjkA=
Date: Tue, 24 Sep 2019 06:43:06 +0000
Message-ID: <DB7PR08MB3082BC38536AE16B056AEA05F7840@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190921135054.142360-1-justin.he@arm.com>
 <20190921135054.142360-4-justin.he@arm.com>
 <20190923170433.GE10192@arrakis.emea.arm.com>
In-Reply-To: <20190923170433.GE10192@arrakis.emea.arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: e18b5369-d082-468d-bc6a-a985d5a40bf6.0
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: c9d421b2-6a81-4920-0722-08d740ba7cfc
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB2985; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB2985:|DB7PR08MB2985:|VI1PR08MB3789:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VI1PR08MB3789DDF30E8AD4CC7E4E0247F7840@VI1PR08MB3789.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 0170DAF08C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(366004)(346002)(13464003)(55674003)(199004)(189003)(6436002)(81166006)(55236004)(186003)(25786009)(7416002)(229853002)(9686003)(6246003)(14444005)(7696005)(256004)(52536014)(55016002)(4326008)(8936002)(5660300002)(81156014)(8676002)(54906003)(6862004)(33656002)(6636002)(2906002)(66574012)(316002)(99286004)(86362001)(6116002)(476003)(3846002)(66066001)(74316002)(478600001)(14454004)(66556008)(66946007)(66446008)(102836004)(26005)(71200400001)(64756008)(446003)(71190400001)(6506007)(305945005)(486006)(76176011)(66476007)(11346002)(53546011)(76116006)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB2985;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: rfJY2sipMA9rGqRpDl3Ry60DzQlHoHttAdOKGD/kiTdVwTdVNlCL+itsQocR8ZRwdyGKNEN6lLdXa5ZaUq5w8bCOK2oSa/CPb9dhPJMM7DMEw2mCSmipKLemOkMeFYw7LcOJaND4/b0mXQ8+q7Chv1+E8YIMkNIa+kzkx+3YFxy6XtoPqEQ/fSsybqmorObqcWM2v0pd9oUG8OTlq5AQndmHaBk+ZjAK2Lgc8rHIdkUFqhvEL9jmrXSmyC2oQhwwoAZfmNe5I0EHarXVmY9ObnisSwCT7M13MrXn19PPAwGjkQVf4OMNVMm/s/zMHCcuABI1uNX0dOjJlGWoN/95w1ym2CcBdqq8g2vXChFveRyNKXBHAruvXJGiZnWlJYeZDnSw3iNLsQUBBa9HSZZLe3kKr9mt0S/OYGDM06WqXZg=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB2985
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(55674003)(189003)(199004)(13464003)(6506007)(99286004)(14444005)(3846002)(66574012)(54906003)(6116002)(26826003)(486006)(7736002)(70206006)(126002)(476003)(305945005)(55016002)(5660300002)(8936002)(316002)(25786009)(9686003)(52536014)(6636002)(50466002)(229853002)(86362001)(76130400001)(33656002)(47776003)(478600001)(66066001)(6862004)(70586007)(22756006)(81166006)(436003)(446003)(74316002)(2906002)(6246003)(81156014)(356004)(26005)(76176011)(4326008)(336012)(53546011)(2486003)(102836004)(63350400001)(23676004)(11346002)(186003)(8676002)(7696005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR08MB3789;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 9badfe3b-0ec0-4121-00e2-08d740ba755a
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR08MB3789; 
NoDisclaimer: True
X-Forefront-PRVS: 0170DAF08C
X-Microsoft-Antispam-Message-Info: 1QabyIw/f/JrsYg6k4nbs7cPHEXB+yzIfSIwnum9w+Q2Xm+qoPa3rsgbhkoDWRc/0DkjWD2+h5s3nsOyMC4JDYxuQ7y5k/4LEsCxqkSMMPaCoL+e2cBjA9XYiUt/qyQubrSuFYDw2kTHYk4Wzwq2QfcQ2q0P5tLcBiZ9nibsYFAmDLr8CXEx6MPOjv+NxVxjjWVKqE63sFdO/v6u5RQl/1o0OaU8XZouWX5Jz/ecDiZUpGuUcDkPCF1vPCxJAVnW8ff08hqLGHod3MewIOWF9nNjiUBygS/veG+7cFX5nUcysj7qwMXhPzB3amVc7RAx889fKCuMk4yKPa4UkJELJjwM+juGxj3ctSJU4+Uq15DZhXcaknM1AhukE9mX+vgCDghHp4VjgHMVjYLZnGj4xCtjm77RBa2pyTdvSvk19KM=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2019 06:43:20.0571 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c9d421b2-6a81-4920-0722-08d740ba7cfc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB3789
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_234332_473616_BA2646FC 
X-CRM114-Status: GOOD (  17.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.80 listed in list.dnswl.org]
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

SGkgQ2F0YWxpbg0KUGxlYXNlIHNlZSBhbiBpbXBvcnRhbnQgY29tbWVudCBpbmxpbmUsIHRoYW5r
cw0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IENhdGFsaW4gTWFyaW5h
cyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnlubQ55pyIMjTml6UgMTow
NQ0KPiBUbzogSnVzdGluIEhlIChBcm0gVGVjaG5vbG9neSBDaGluYSkgPEp1c3Rpbi5IZUBhcm0u
Y29tPg0KPiBDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz47IE1hcmsgUnV0bGFuZA0K
PiA8TWFyay5SdXRsYW5kQGFybS5jb20+OyBKYW1lcyBNb3JzZSA8SmFtZXMuTW9yc2VAYXJtLmNv
bT47IE1hcmMNCj4gWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+OyBNYXR0aGV3IFdpbGNveCA8d2ls
bHlAaW5mcmFkZWFkLm9yZz47IEtpcmlsbCBBLg0KPiBTaHV0ZW1vdiA8a2lyaWxsLnNodXRlbW92
QGxpbnV4LmludGVsLmNvbT47IGxpbnV4LWFybS0NCj4ga2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmc7IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LQ0KPiBtbUBrdmFjay5vcmc7
IFN1enVraSBQb3Vsb3NlIDxTdXp1a2kuUG91bG9zZUBhcm0uY29tPjsgUHVuaXQNCj4gQWdyYXdh
bCA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IEFuc2h1bWFuIEtoYW5kdWFsDQo+IDxBbnNodW1h
bi5LaGFuZHVhbEBhcm0uY29tPjsgQWxleCBWYW4gQnJ1bnQNCj4gPGF2YW5icnVudEBudmlkaWEu
Y29tPjsgUm9iaW4gTXVycGh5IDxSb2Jpbi5NdXJwaHlAYXJtLmNvbT47DQo+IFRob21hcyBHbGVp
eG5lciA8dGdseEBsaW51dHJvbml4LmRlPjsgQW5kcmV3IE1vcnRvbiA8YWtwbUBsaW51eC0NCj4g
Zm91bmRhdGlvbi5vcmc+OyBKw6lyw7RtZSBHbGlzc2UgPGpnbGlzc2VAcmVkaGF0LmNvbT47IFJh
bHBoIENhbXBiZWxsDQo+IDxyY2FtcGJlbGxAbnZpZGlhLmNvbT47IGhlamlhbmV0QGdtYWlsLmNv
bTsgS2FseSBYaW4gKEFybSBUZWNobm9sb2d5DQo+IENoaW5hKSA8S2FseS5YaW5AYXJtLmNvbT47
IG5kIDxuZEBhcm0uY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIHY4IDMvM10gbW06IGZpeCBk
b3VibGUgcGFnZSBmYXVsdCBvbiBhcm02NCBpZiBQVEVfQUYNCj4gaXMgY2xlYXJlZA0KPiANCj4g
T24gU2F0LCBTZXAgMjEsIDIwMTkgYXQgMDk6NTA6NTRQTSArMDgwMCwgSmlhIEhlIHdyb3RlOg0K
PiA+IEBAIC0yMTUxLDIxICsyMTYzLDUzIEBAIHN0YXRpYyBpbmxpbmUgdm9pZCBjb3dfdXNlcl9w
YWdlKHN0cnVjdCBwYWdlDQo+ICpkc3QsIHN0cnVjdCBwYWdlICpzcmMsIHVuc2lnbmVkIGxvDQo+
ID4gIAkgKiBmYWlscywgd2UganVzdCB6ZXJvLWZpbGwgaXQuIExpdmUgd2l0aCBpdC4NCj4gPiAg
CSAqLw0KPiA+ICAJaWYgKHVubGlrZWx5KCFzcmMpKSB7DQo+ID4gLQkJdm9pZCAqa2FkZHIgPSBr
bWFwX2F0b21pYyhkc3QpOw0KPiA+IC0JCXZvaWQgX191c2VyICp1YWRkciA9ICh2b2lkIF9fdXNl
ciAqKSh2YSAmIFBBR0VfTUFTSyk7DQo+ID4gKwkJdm9pZCAqa2FkZHI7DQo+ID4gKwkJcHRlX3Qg
ZW50cnk7DQo+ID4gKwkJdm9pZCBfX3VzZXIgKnVhZGRyID0gKHZvaWQgX191c2VyICopKGFkZHIg
JiBQQUdFX01BU0spOw0KPiA+DQo+ID4gKwkJLyogT24gYXJjaGl0ZWN0dXJlcyB3aXRoIHNvZnR3
YXJlICJhY2Nlc3NlZCIgYml0cywgd2Ugd291bGQNCj4gPiArCQkgKiB0YWtlIGEgZG91YmxlIHBh
Z2UgZmF1bHQsIHNvIG1hcmsgaXQgYWNjZXNzZWQgaGVyZS4NCj4gPiArCQkgKi8NCj4gDQo+IE5p
dHBpY2s6IHBsZWFzZSBmb2xsb3cgdGhlIGtlcm5lbCBjb2Rpbmcgc3R5bGUgZm9yIG11bHRpLWxp
bmUgY29tbWVudHMNCj4gKGFib3ZlIGFuZCB0aGUgZm9yIHRoZSByZXN0IG9mIHRoZSBwYXRjaCk6
DQo+IA0KPiAJCS8qDQo+IAkJICogWW91ciBtdWx0aS1saW5lIGNvbW1lbnQuDQo+IAkJICovDQo+
IA0KPiA+ICsJCWlmIChhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgJiYgIXB0ZV95b3VuZyh2bWYt
Pm9yaWdfcHRlKSkNCj4gew0KPiA+ICsJCQl2bWYtPnB0ZSA9IHB0ZV9vZmZzZXRfbWFwX2xvY2so
bW0sIHZtZi0+cG1kLA0KPiBhZGRyLA0KPiA+ICsJCQkJCQkgICAgICAgJnZtZi0+cHRsKTsNCj4g
PiArCQkJaWYgKGxpa2VseShwdGVfc2FtZSgqdm1mLT5wdGUsIHZtZi0+b3JpZ19wdGUpKSkgew0K
PiA+ICsJCQkJZW50cnkgPSBwdGVfbWt5b3VuZyh2bWYtPm9yaWdfcHRlKTsNCj4gPiArCQkJCWlm
IChwdGVwX3NldF9hY2Nlc3NfZmxhZ3Modm1hLCBhZGRyLA0KPiA+ICsJCQkJCQkJICB2bWYtPnB0
ZSwgZW50cnksIDApKQ0KPiA+ICsJCQkJCXVwZGF0ZV9tbXVfY2FjaGUodm1hLCBhZGRyLCB2bWYt
DQo+ID5wdGUpOw0KPiA+ICsJCQl9IGVsc2Ugew0KPiA+ICsJCQkJLyogT3RoZXIgdGhyZWFkIGhh
cyBhbHJlYWR5IGhhbmRsZWQgdGhlDQo+IGZhdWx0DQo+ID4gKwkJCQkgKiBhbmQgd2UgZG9uJ3Qg
bmVlZCB0byBkbyBhbnl0aGluZy4gSWYgaXQncw0KPiA+ICsJCQkJICogbm90IHRoZSBjYXNlLCB0
aGUgZmF1bHQgd2lsbCBiZSB0cmlnZ2VyZWQNCj4gPiArCQkJCSAqIGFnYWluIG9uIHRoZSBzYW1l
IGFkZHJlc3MuDQo+ID4gKwkJCQkgKi8NCj4gPiArCQkJCXB0ZV91bm1hcF91bmxvY2sodm1mLT5w
dGUsIHZtZi0+cHRsKTsNCj4gPiArCQkJCXJldHVybiBmYWxzZTsNCj4gPiArCQkJfQ0KPiA+ICsJ
CQlwdGVfdW5tYXBfdW5sb2NrKHZtZi0+cHRlLCB2bWYtPnB0bCk7DQo+ID4gKwkJfQ0KPiANCj4g
QW5vdGhlciBuaXQsIHlvdSBjb3VsZCByZXdyaXRlIHRoaXMgYmxvY2sgc2xpZ2h0bHkgdG8gYXZv
aWQgdG9vIG11Y2gNCj4gaW5kZW50YXRpb24uIFNvbWV0aGluZyBsaWtlICh1bnRlc3RlZCk6DQo+
IA0KPiAJCWlmIChhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgJiYgIXB0ZV95b3VuZyh2bWYtPm9y
aWdfcHRlKSkNCj4gew0KPiAJCQl2bWYtPnB0ZSA9IHB0ZV9vZmZzZXRfbWFwX2xvY2sobW0sIHZt
Zi0+cG1kLA0KPiBhZGRyLA0KPiAJCQkJCQkgICAgICAgJnZtZi0+cHRsKTsNCj4gCQkJaWYgKHVu
bGlrZWx5KCFwdGVfc2FtZSgqdm1mLT5wdGUsIHZtZi0+b3JpZ19wdGUpKSkgew0KPiAJCQkJLyoN
Cj4gCQkJCSAqIE90aGVyIHRocmVhZCBoYXMgYWxyZWFkeSBoYW5kbGVkIHRoZSBmYXVsdA0KPiAJ
CQkJICogYW5kIHdlIGRvbid0IG5lZWQgdG8gZG8gYW55dGhpbmcuIElmIGl0J3MNCj4gCQkJCSAq
IG5vdCB0aGUgY2FzZSwgdGhlIGZhdWx0IHdpbGwgYmUgdHJpZ2dlcmVkDQo+IAkJCQkgKiBhZ2Fp
biBvbiB0aGUgc2FtZSBhZGRyZXNzLg0KPiAJCQkJICovDQo+IAkJCQlwdGVfdW5tYXBfdW5sb2Nr
KHZtZi0+cHRlLCB2bWYtPnB0bCk7DQo+IAkJCQlyZXR1cm4gZmFsc2U7DQo+IAkJCX0NCj4gCQkJ
ZW50cnkgPSBwdGVfbWt5b3VuZyh2bWYtPm9yaWdfcHRlKTsNCj4gCQkJaWYgKHB0ZXBfc2V0X2Fj
Y2Vzc19mbGFncyh2bWEsIGFkZHIsDQo+IAkJCQkJCSAgdm1mLT5wdGUsIGVudHJ5LCAwKSkNCj4g
CQkJCXVwZGF0ZV9tbXVfY2FjaGUodm1hLCBhZGRyLCB2bWYtPnB0ZSk7DQo+IAkJCXB0ZV91bm1h
cF91bmxvY2sodm1mLT5wdGUsIHZtZi0+cHRsKTsNCj4gCQl9DQo+IA0KPiA+ICsNCj4gPiArCQlr
YWRkciA9IGttYXBfYXRvbWljKGRzdCk7DQo+IA0KPiBTaW5jZSB5b3UgbW92ZWQgdGhlIGttYXBf
YXRvbWljKCkgaGVyZSwgY291bGQgdGhlIGFib3ZlDQo+IGFyY2hfZmF1bHRzX29uX29sZF9wdGUo
KSBydW4gaW4gYSBwcmVlbXB0aWJsZSBjb250ZXh0PyBJIHN1Z2dlc3RlZCB0bw0KPiBhZGQgYSBX
QVJOX09OIGluIHBhdGNoIDIgdG8gYmUgc3VyZS4NCg0KU2hvdWxkIEkgbW92ZSBrbWFwX2F0b21p
YyBiYWNrIHRvIHRoZSBvcmlnaW5hbCBsaW5lPyBUaHVzLCB3ZSBjYW4gbWFrZSBzdXJlDQp0aGF0
IGFyY2hfZmF1bHRzX29uX29sZF9wdGUoKSBpcyBpbiB0aGUgY29udGV4dCBvZiBwcmVlbXB0X2Rp
c2FibGVkPw0KT3RoZXJ3aXNlLCBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgbWF5IGNhdXNlIHBs
ZW50eSBvZiB3YXJuaW5nIGlmIEkgYWRkDQphIFdBUk5fT04gaW4gYXJjaF9mYXVsdHNfb25fb2xk
X3B0ZS4gIEkgdGVzdGVkIGl0IHdoZW4gSSBlbmFibGUgdGhlIFBSRUVNUFQ9eQ0Kb24gYSBUaHVu
ZGVyWDIgcWVtdSBndWVzdC4NCg0KDQotLQ0KQ2hlZXJzLA0KSnVzdGluIChKaWEgSGUpDQoNCg0K
PiANCj4gPiAgCQkvKg0KPiA+ICAJCSAqIFRoaXMgcmVhbGx5IHNob3VsZG4ndCBmYWlsLCBiZWNh
dXNlIHRoZSBwYWdlIGlzIHRoZXJlDQo+ID4gIAkJICogaW4gdGhlIHBhZ2UgdGFibGVzLiBCdXQg
aXQgbWlnaHQganVzdCBiZSB1bnJlYWRhYmxlLA0KPiA+ICAJCSAqIGluIHdoaWNoIGNhc2Ugd2Ug
anVzdCBnaXZlIHVwIGFuZCBmaWxsIHRoZSByZXN1bHQgd2l0aA0KPiA+ICAJCSAqIHplcm9lcy4N
Cj4gPiAgCQkgKi8NCj4gPiAtCQlpZiAoX19jb3B5X2Zyb21fdXNlcl9pbmF0b21pYyhrYWRkciwg
dWFkZHIsIFBBR0VfU0laRSkpDQo+ID4gKwkJaWYgKF9fY29weV9mcm9tX3VzZXJfaW5hdG9taWMo
a2FkZHIsIHVhZGRyLCBQQUdFX1NJWkUpKSB7DQo+ID4gKwkJCS8qIEdpdmUgYSB3YXJuIGluIGNh
c2UgdGhlcmUgY2FuIGJlIHNvbWUgb2JzY3VyZQ0KPiA+ICsJCQkgKiB1c2UtY2FzZQ0KPiA+ICsJ
CQkgKi8NCj4gPiArCQkJV0FSTl9PTl9PTkNFKDEpOw0KPiANCj4gVGhhdCdzIG1vcmUgb2YgYSBx
dWVzdGlvbiBmb3IgdGhlIG1tIGd1eXM6IGF0IHRoaXMgcG9pbnQgd2UgZG8gdGhlDQo+IGNvcHlp
bmcgd2l0aCB0aGUgcHRsIHJlbGVhc2VkOyBpcyB0aGVyZSBhbnl0aGluZyBlbHNlIHRoYXQgY291
bGQgaGF2ZQ0KPiBtYWRlIHRoZSBwdGUgb2xkIGluIHRoZSBtZWFudGltZT8gSSB0aGluayB1bnVz
ZV9wdGUoKSBpcyBvbmx5IGNhbGxlZCBvbg0KPiBhbm9ueW1vdXMgdm1hcywgc28gaXQgc2hvdWxk
bid0IGJlIHRoZSBjYXNlIGhlcmUuDQo+IA0KPiA+ICAJCQljbGVhcl9wYWdlKGthZGRyKTsNCj4g
PiArCQl9DQo+ID4gIAkJa3VubWFwX2F0b21pYyhrYWRkcik7DQo+ID4gIAkJZmx1c2hfZGNhY2hl
X3BhZ2UoZHN0KTsNCj4gPiAgCX0gZWxzZQ0KPiA+IC0JCWNvcHlfdXNlcl9oaWdocGFnZShkc3Qs
IHNyYywgdmEsIHZtYSk7DQo+ID4gKwkJY29weV91c2VyX2hpZ2hwYWdlKGRzdCwgc3JjLCBhZGRy
LCB2bWEpOw0KPiA+ICsNCj4gPiArCXJldHVybiB0cnVlOw0KPiA+ICB9DQo+IA0KPiAtLQ0KPiBD
YXRhbGluDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
