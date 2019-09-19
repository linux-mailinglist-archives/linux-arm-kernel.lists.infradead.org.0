Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA451B7152
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 03:55:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVHI2n1hJ/cINLOjMnon0kCNIQVTFkiEyF7rCkuKYIM=; b=RW9iRwHo/AewDs
	drtPr0ZHpTYzh0p/F9Lr/iBavPmpefSaDvAKy0O+kze+7GjfPyz4lQIAf3Ji47sBHVZSAxrhobJRS
	ulvMBrw1fseXfrG51y7s40miCH7n9oUmSUsH1E4LA0sTbGCL6ZgaZIPUFSjF5der94mNoiJWlLayF
	xPkqvc0IEQahpoOFmZz4797jolGg5fzVbkETAXJgPjylYyRUQOWSrmoSerZbD4cBOMvtOOcVyrR1F
	hQnbYRrRevvNZaiJFg3yX8k+27+ieXqHEoRtRo3aQbiOj0fJ+h04xCwhuhe0QhO7McLAoLw8FKz1F
	Cqxj7GSejlYYt4vdfexA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAlff-0000kG-7H; Thu, 19 Sep 2019 01:55:47 +0000
Received: from mail-eopbgr60045.outbound.protection.outlook.com ([40.107.6.45]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAlfP-0000jO-6Z
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 01:55:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KLl2dYUqqb+uWUSdCthuXUo4Y5KKkOAqXYoX7+1aDVQ=;
 b=AK0++a8RMSkJkBDpPjWv3Hhu2qkC6s9KQ8Wa1CZ92C08HMA+8t+LIJeqe+qTIHYNP+s/r3xa0EqW3Ow7D7CHdvNgr1N28oUJMVqA5faMKw+vgFQ0uyLjr+a3Yv6qVCYe14KzzYw9FT7ZAsa937ok5HwwdI7iRZAd9c6Ipo4ZO2c=
Received: from AM4PR08CA0050.eurprd08.prod.outlook.com (2603:10a6:205:2::21)
 by VE1PR08MB4751.eurprd08.prod.outlook.com (2603:10a6:802:a8::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.19; Thu, 19 Sep
 2019 01:55:25 +0000
Received: from AM5EUR03FT014.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::202) by AM4PR08CA0050.outlook.office365.com
 (2603:10a6:205:2::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.18 via Frontend
 Transport; Thu, 19 Sep 2019 01:55:25 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT014.mail.protection.outlook.com (10.152.16.130) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Thu, 19 Sep 2019 01:55:23 +0000
Received: ("Tessian outbound 0d576b67b9f5:v31");
 Thu, 19 Sep 2019 01:55:19 +0000
X-CR-MTA-TID: 64aa7808
Received: from a5b2040cd570.3 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.58]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C618FD25-8A4E-4880-9A49-26968ABAFBF9.1; 
 Thu, 19 Sep 2019 01:55:14 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2058.outbound.protection.outlook.com [104.47.1.58])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a5b2040cd570.3
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 19 Sep 2019 01:55:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oha41wjD9pJYayM8WePZPtL+c0OKwwmumCukYadOHJpJc/dJCemReatHNxzVWSoD7OtFpQV4h0W9wWkVR7Wiujz3za+SO+T89kuC3pSXIeDNScXx29ZucXgpcIMc9GrxP9fO3DjkRlzb+z6ZejWmLYds1pB1lkfS37O61fg8FzuOvIQduQylttwfXFc44RK32c51pixPxVKDv/RWkabfEz/Jy2mXG1uy9tqmuUjam0EadxBWoOSYeoPHxgUdWnfbPucNuRTte7HL0OSIAnJFLTSRZzBmcJddWx9sHFUMTCGiUBSqYlJsMnxqhyryOZ3btZhrPaMCnTJBf1HC+Zu/ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xVRNmnvXPvRsHb1RvbPlgt3JdDv8vsWkMWKyDH6t0Ps=;
 b=iwCi9vYL4/oZUjb/T3H0T8oYTSwx3M187denuL6nW9df6ROvkR4mhC55qnF8FK2O2051ZhQDo9K2MyELbZ/7Vwoo0d2sruNJfELQJqEwwJTUMfk42vnLpT1NQt04CPjJPb70ymZBSLUMtElpqUtZ0bl4B8h23auQBwOHEQb9MTdNX1b/RFLwMVtTsGBonRHxgTGD0iT1t88RHEk1TiHE/WD9BBQn3qse1nbXncW0wlXr1NJs5VV3PzddkvJ0wUPR1aYmEjrDAo/5abcuQRikkMibNgkhOHX7oW1S2ty9e0KVqN/oGix1A6SdRW/EKzKmCPcG+IGn/eEK/oNfGyEfJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xVRNmnvXPvRsHb1RvbPlgt3JdDv8vsWkMWKyDH6t0Ps=;
 b=EZEiZwXjh1I/5GIWeUKXXIVoBsYZpcazbRjPmt9uUYK47SlsD4laVu2NxiAhXp31xaFjRfmYA1jPAGLwQjjbrOEVfJXYyqii/CuEzZHkIITJ2PVR0FNoP0WtG7N3wTWGYTD7EvY4tSxAtra+Cjj0fBHWpOloY5cyTeQeF6p4WBI=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB2988.eurprd08.prod.outlook.com (52.134.107.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.21; Thu, 19 Sep 2019 01:55:10 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::2121:ca3a:3068:734]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::2121:ca3a:3068:734%3]) with mapi id 15.20.2263.023; Thu, 19 Sep 2019
 01:55:10 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>, Suzuki Poulose
 <Suzuki.Poulose@arm.com>
Subject: RE: [PATCH v4 1/3] arm64: cpufeature: introduce helper cpu_has_hw_af()
Thread-Topic: [PATCH v4 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Index: AQHVbiPCArKkzco6w0S1SPIowJk4TacxfDiAgAAoi4CAAJkFsA==
Date: Thu, 19 Sep 2019 01:55:10 +0000
Message-ID: <DB7PR08MB30827C81CD6CDB03B17A1BDEF7890@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190918131914.38081-1-justin.he@arm.com>
 <20190918131914.38081-2-justin.he@arm.com>
 <78881acb-5871-9534-c8cc-6f54937be3fd@arm.com>
 <20190918164546.GA41588@arrakis.emea.arm.com>
In-Reply-To: <20190918164546.GA41588@arrakis.emea.arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: f2a493a6-b947-4e32-9238-6e92fbabfcea.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: ce40f096-d339-4afa-f091-08d73ca46f56
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB2988; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB2988:|DB7PR08MB2988:|VE1PR08MB4751:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <VE1PR08MB4751056A962A72DD7CF737F2F7890@VE1PR08MB4751.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:7691;OLM:7691;
x-forefront-prvs: 016572D96D
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(366004)(376002)(346002)(13464003)(189003)(199004)(86362001)(99286004)(76176011)(7696005)(476003)(446003)(11346002)(102836004)(6246003)(6506007)(26005)(186003)(53546011)(55236004)(3846002)(6116002)(33656002)(2906002)(7416002)(81166006)(81156014)(8676002)(8936002)(7736002)(305945005)(4326008)(74316002)(110136005)(25786009)(66556008)(66476007)(66446008)(64756008)(52536014)(14454004)(66946007)(6436002)(229853002)(54906003)(66066001)(5660300002)(55016002)(9686003)(76116006)(486006)(256004)(6636002)(478600001)(71190400001)(71200400001)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB2988;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: jgAO8dUFyWirEHW0+6y7hMqkAi0npZz4i5E5cC7zoWeMJX0rt7rVZTE9raOPZ3L/0aRHV/Tq36J0Ii9NH9sS4rbYCWP4TEP39WvjSZTuRX660p8g9AayNptgQzyOoRPcl2WThcys7cqCzrLQpGT05hnLRayJX14HPRCDFNhrtFeCx4RfcGNwuUTSh34MF/hFDYZwUH4Xr7PSel9qlcSSlldvUuUbGySzAliHNyLBBj239sUpSDREtYkQ/qDTrep/j054u30VikW+wRKbzs9S4qcZjo+N/FNMiTcdVy4XObhfOaydTjbleZGbsRfBsUZ2Oq/hhgOZmqi/zL/6JsQBBUmIXfPNrEJA/xzTFLAoimzi3rCrdH69qiD0kfuccq/zDuBLrj4pMZ/Rf5eqGJxAoTGOEAhISZ1czFZpDA84XbY=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB2988
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT014.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(346002)(396003)(136003)(13464003)(40434004)(189003)(199004)(102836004)(86362001)(66066001)(53546011)(7736002)(74316002)(6506007)(50466002)(25786009)(6246003)(486006)(26826003)(55016002)(22756006)(9686003)(14454004)(26005)(476003)(47776003)(70206006)(52536014)(356004)(4326008)(316002)(8676002)(8936002)(81156014)(14444005)(436003)(5024004)(63350400001)(11346002)(76176011)(446003)(2486003)(305945005)(5660300002)(36906005)(81166006)(2906002)(54906003)(110136005)(7696005)(66574012)(33656002)(76130400001)(336012)(3846002)(229853002)(6116002)(70586007)(23676004)(6636002)(478600001)(126002)(99286004)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR08MB4751;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 50ad4b83-9f1e-441c-5519-08d73ca467b0
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VE1PR08MB4751; 
X-Forefront-PRVS: 016572D96D
X-Microsoft-Antispam-Message-Info: 3MxPQth4mBHC8S8RJSNplgXGEKW4oco4hJIFySnR0qp3JMZfqGMJABiSUkNjB0siYzAXy39TpJa0UOmsf8s7v0hG8DVoC6Sf6m5rYb6dvaUjM1ME5Lrjm2Y609IB/HwmjGdtUSZmExdf5z22x71Ll5pkJ9lTFuYCN6wcn2EGflw9Ng4T5c6fqucAws93y6BphcwZDJOsKZztclpkYrNyOy5BAafQfrNEKB0gtAS5NywKgEh8l5m5C08U7VR0FNu0ldhHCQQZgEdv0wp2Rtb5H5Xb1uRhpS1tZWX5MGuwvo1mNkCMfTscjeuMNzoyn+FSEKEuDMi4Dl+GUe5h7xCfP4q0g0JhYI7t3PpYvYz6gLid0Syg1sLawBvuvQIVm/wYOY1e3GYjXWmfr0NMJ74NRJH7VzmN9dniJYltKjfsapI=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2019 01:55:23.5935 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ce40f096-d339-4afa-f091-08d73ca46f56
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4751
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_185531_378673_13A9E8D2 
X-CRM114-Status: GOOD (  15.56  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.45 listed in list.dnswl.org]
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
 Anshuman Khandual <Anshuman.Khandual@arm.com>, Marc Zyngier <maz@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU3V6dWtpDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQ2F0YWxp
biBNYXJpbmFzIDxjYXRhbGluLm1hcmluYXNAYXJtLmNvbT4NCj4gU2VudDogMjAxOeW5tDnmnIgx
OeaXpSAwOjQ2DQo+IFRvOiBTdXp1a2kgUG91bG9zZSA8U3V6dWtpLlBvdWxvc2VAYXJtLmNvbT4N
Cj4gQ2M6IEp1c3RpbiBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxKdXN0aW4uSGVAYXJtLmNv
bT47IFdpbGwgRGVhY29uDQo+IDx3aWxsQGtlcm5lbC5vcmc+OyBNYXJrIFJ1dGxhbmQgPE1hcmsu
UnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UNCj4gPEphbWVzLk1vcnNlQGFybS5jb20+OyBN
YXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPjsgTWF0dGhldw0KPiBXaWxjb3ggPHdpbGx5QGlu
ZnJhZGVhZC5vcmc+OyBLaXJpbGwgQS4gU2h1dGVtb3YNCj4gPGtpcmlsbC5zaHV0ZW1vdkBsaW51
eC5pbnRlbC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+IGxp
bnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LW1tQGt2YWNrLm9yZzsgUHVuaXQgQWdy
YXdhbA0KPiA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IEFuc2h1bWFuIEtoYW5kdWFsDQo+IDxB
bnNodW1hbi5LaGFuZHVhbEBhcm0uY29tPjsgSnVuIFlhbyA8eWFvanVuODU1ODM2M0BnbWFpbC5j
b20+Ow0KPiBBbGV4IFZhbiBCcnVudCA8YXZhbmJydW50QG52aWRpYS5jb20+OyBSb2JpbiBNdXJw
aHkNCj4gPFJvYmluLk11cnBoeUBhcm0uY29tPjsgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0
cm9uaXguZGU+Ow0KPiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPjsg
SsOpcsO0bWUgR2xpc3NlDQo+IDxqZ2xpc3NlQHJlZGhhdC5jb20+OyBSYWxwaCBDYW1wYmVsbCA8
cmNhbXBiZWxsQG52aWRpYS5jb20+Ow0KPiBoZWppYW5ldEBnbWFpbC5jb207IEthbHkgWGluIChB
cm0gVGVjaG5vbG9neSBDaGluYSkgPEthbHkuWGluQGFybS5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0ggdjQgMS8zXSBhcm02NDogY3B1ZmVhdHVyZTogaW50cm9kdWNlIGhlbHBlcg0KPiBjcHVf
aGFzX2h3X2FmKCkNCj4NCj4gT24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgMDM6MjA6NDFQTSArMDEw
MCwgU3V6dWtpIEsgUG91bG9zZSB3cm90ZToNCj4gPiBPbiAxOC8wOS8yMDE5IDE0OjE5LCBKaWEg
SGUgd3JvdGU6DQo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9pbmNsdWRlL2FzbS9jcHVm
ZWF0dXJlLmgNCj4gYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaA0KPiA+ID4g
aW5kZXggYzk2ZmZhNDcyMmQzLi4yMDZiNmUzOTU0Y2YgMTAwNjQ0DQo+ID4gPiAtLS0gYS9hcmNo
L2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaA0KPiA+ID4gKysrIGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9jcHVmZWF0dXJlLmgNCj4gPiA+IEBAIC0zOTAsNiArMzkwLDcgQEAgZXh0ZXJu
IERFQ0xBUkVfQklUTUFQKGJvb3RfY2FwYWJpbGl0aWVzLA0KPiBBUk02NF9OUEFUQ0hBQkxFKTsN
Cj4gPiA+ICAgICAgICAgICBmb3JfZWFjaF9zZXRfYml0KGNhcCwgY3B1X2h3Y2FwcywgQVJNNjRf
TkNBUFMpDQo+ID4gPiAgIGJvb2wgdGhpc19jcHVfaGFzX2NhcCh1bnNpZ25lZCBpbnQgY2FwKTsN
Cj4gPiA+ICtib29sIGNwdV9oYXNfaHdfYWYodm9pZCk7DQo+ID4gPiAgIHZvaWQgY3B1X3NldF9m
ZWF0dXJlKHVuc2lnbmVkIGludCBudW0pOw0KPiA+ID4gICBib29sIGNwdV9oYXZlX2ZlYXR1cmUo
dW5zaWduZWQgaW50IG51bSk7DQo+ID4gPiAgIHVuc2lnbmVkIGxvbmcgY3B1X2dldF9lbGZfaHdj
YXAodm9pZCk7DQo+ID4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVy
ZS5jDQo+IGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVyZS5jDQo+ID4gPiBpbmRleCBiMWZk
YzQ4NmFlZDguLmM1MDk3ZjU4NjQ5ZCAxMDA2NDQNCj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQva2Vy
bmVsL2NwdWZlYXR1cmUuYw0KPiA+ID4gKysrIGIvYXJjaC9hcm02NC9rZXJuZWwvY3B1ZmVhdHVy
ZS5jDQo+ID4gPiBAQCAtMTE0MSw2ICsxMTQxLDEyIEBAIHN0YXRpYyBib29sIGhhc19od19kYm0o
Y29uc3Qgc3RydWN0DQo+IGFybTY0X2NwdV9jYXBhYmlsaXRpZXMgKmNhcCwNCj4gPiA+ICAgICAg
ICAgICByZXR1cm4gdHJ1ZTsNCj4gPiA+ICAgfQ0KPiA+ID4gKy8qIERlY291cGxlIEFGIGZyb20g
QUZEQk0uICovDQo+ID4gPiArYm9vbCBjcHVfaGFzX2h3X2FmKHZvaWQpDQo+ID4gPiArew0KPiA+
IFNvcnJ5IGZvciBub3QgaGF2aW5nIGFza2VkIHRoaXMgZWFybGllci4gQXJlIHdlIGludGVyZXN0
ZWQgaW4sDQo+ID4NCj4gPiAid2hldGhlciAqdGhpcyogQ1BVIGhhcyBBRiBzdXBwb3J0ID8iIG9y
ICJ3aGV0aGVyICphdCBsZWFzdCBvbmUqDQo+ID4gQ1BVIGhhcyB0aGUgQUYgc3VwcG9ydCIgPyBU
aGUgZm9sbG93aW5nIGNvZGUgZG9lcyB0aGUgZm9ybWVyLg0KPiA+DQo+ID4gPiArIHJldHVybiAo
cmVhZF9jcHVpZChJRF9BQTY0TU1GUjFfRUwxKSAmIDB4Zik7DQo+DQo+IEluIGEgbm9uLXByZWVt
cHRpYmxlIGNvbnRleHQsIHRoZSBmb3JtZXIgaXMgb2sgKHBlci1DUFUpLg0KDQpZZXMsIGp1c3Qg
YXMgd2hhdCBDYXRhbGluIGV4cGxhaW5lZCwgd2UgbmVlZCB0aGUgZm9ybWVyIGJlY2F1c2UgdGhl
DQpwYWdlZmF1bHQgb2NjdXJyZWQgaW4gZXZlcnkgY3B1cw0KDQotLQ0KQ2hlZXJzLA0KSnVzdGlu
IChKaWEgSGUpDQoNCg0KPg0KPiAtLQ0KPiBDYXRhbGluDQpJTVBPUlRBTlQgTk9USUNFOiBUaGUg
Y29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBjb25maWRlbnRp
YWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRl
ZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRlciBpbW1lZGlhdGVseSBhbmQgZG8g
bm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkgb3RoZXIgcGVyc29uLCB1c2UgaXQgZm9y
IGFueSBwdXJwb3NlLCBvciBzdG9yZSBvciBjb3B5IHRoZSBpbmZvcm1hdGlvbiBpbiBhbnkgbWVk
aXVtLiBUaGFuayB5b3UuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
