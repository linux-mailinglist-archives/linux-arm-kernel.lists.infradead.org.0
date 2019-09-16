Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64DB9B3733
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 11:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoNe87mr7U5iVd6351BQ1r00X31HzPIkqEg9cu24Edg=; b=XC4S4IbaRvY1yo
	TiMUFf89iKN29pDzhaqbOeBLyLx0/BSnT1LddKgcd/DG3mU8MKJrpKutUHeN8GcqlBinUs23qfyH+
	JBo1oiwCR6hBNDN9hKW/CjemOboBSlmtn33UurZmiUpearrJ7xm4TSoFqqwIpkEqCK38dGO6wyvvA
	sWFstT6NFCtlABlQpSptF0EfO3o34R4LT5v+xW6i4Xp/HqRTF+fybJYYV3qlfmsoQCgpWc1zNiwD4
	naQh/0/mcu+6BVD2zHpelFUjL4nUu9ihq8HPDdnYgWw7B8DqlL+GtB3d5EoGASG/OS2fZFFUa87Vl
	cFC0iFFURe8VjO0kZxgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nQM-0000BJ-Ny; Mon, 16 Sep 2019 09:35:58 +0000
Received: from mail-eopbgr130077.outbound.protection.outlook.com
 ([40.107.13.77] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nQ7-0000AK-5O
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 09:35:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=I2ifp6qquXKQH2w1uuifkddXzceZUeNZk5MO+DHTeHI=;
 b=5msRRyMBnLBsGh6OJFATp5duUwuQ9QHJvU6qoRyOOTgNPncN7i7yc9ZNvyMEmKrSG6/r309WEFVYe0SzscxpyOPw61O6X11WrTuuQMT/1BeTSUDw5huRXKLb3g+socjy2OkhQcmRh1ZanB7UTxiop0RMo+FoSHEFuMKXX0tMaUY=
Received: from VI1PR08CA0221.eurprd08.prod.outlook.com (2603:10a6:802:15::30)
 by AM7PR08MB5461.eurprd08.prod.outlook.com (2603:10a6:20b:10e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.17; Mon, 16 Sep
 2019 09:35:36 +0000
Received: from DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::201) by VI1PR08CA0221.outlook.office365.com
 (2603:10a6:802:15::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2263.13 via Frontend
 Transport; Mon, 16 Sep 2019 09:35:36 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT034.mail.protection.outlook.com (10.152.20.87) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.14 via Frontend Transport; Mon, 16 Sep 2019 09:35:34 +0000
Received: ("Tessian outbound 55d20e99e8e2:v31");
 Mon, 16 Sep 2019 09:35:27 +0000
X-CR-MTA-TID: 64aa7808
Received: from cf2f8bfb4420.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.10.50]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 9F7BAF5C-831F-4AF1-85C3-B6ABD9F82A71.1; 
 Mon, 16 Sep 2019 09:35:22 +0000
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur03lp2050.outbound.protection.outlook.com [104.47.10.50])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id cf2f8bfb4420.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Mon, 16 Sep 2019 09:35:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjd/5C1JmGRarovY2ok//qIN5zoCLI6RgO4lrYoRsvKTPw5Vpb9tIDJzfeCbCiWP6Pl7+VCXgiz10KzuezgFtu2kz44FyZLsWkO2wzGMUkWgKFSCnxxCL//79xmU2pRVpPYGUkfL3woyFoBALhnTA+q7X9is5kd9iTrkUwj3G136iYNPWlL/aweLfT1zf4LcYCEp0Vqns/ABYKMZIoIq3aP/YPbcMwIw/vwO6pHlldhycvwIqtffZD2pQJwjDJ8dXb9iQnOKV81rTa+/e3kUjc3gwKN8qmtEVlqdX5v4m1lPc+XPfN/2bfo3X9OmmGJqbULGioPny8n6TVQPTi/pNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xnGT3LL/wB+97Vcfz2P/FHGvByzlhoWnaHPTS9fhgpA=;
 b=Jhty7Bb5/UkQ6o1zlBKd0c0oAq7TEyjUi153sC5QjwPbAkvWHFFqalRZAtD2dgsimZVgGs7EdLfb9t1X6PGjz/jO2D29ZDnhX0RHTt45jAPiU0QoBHBrdabXV30sg/GeZRUZvC8riKZOADcN6S2U2p/ubWrhezgznLt4g0uGrx2zAliPu62LlKVR80ehg0np8Shh13xINbLFwAob4keXE3SlceT0ieOw7H5PcpHnhFHsMOLP7axqlm3g4+Nf1uiSKDv5CzxRmyu98cE4PJpipNd8PD5rtPMY6ay9HKjFDy/1R5t/x9J9tJfxjRCGxCS4QkZLa/p04YVAnWZRu2DFcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xnGT3LL/wB+97Vcfz2P/FHGvByzlhoWnaHPTS9fhgpA=;
 b=Lb5bKsJgjI8vgTBR5SsluQ5WQ+cWTcSiaGLGpw6tkvgKKQfqrE/Z4H1xRUPdIiN65Dx6g9r9LUS2TJUhaqUiWkbkYAx0isLoa4XJ/hAOI3aRwCRpyD3M+Upmd8nHvKpOIU7HvnA834ZKXzEZBS2Kh5bHCaJNTW56jQSfEiglfoM=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3707.eurprd08.prod.outlook.com (20.178.45.154) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2263.23; Mon, 16 Sep 2019 09:35:21 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::2121:ca3a:3068:734]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::2121:ca3a:3068:734%3]) with mapi id 15.20.2263.023; Mon, 16 Sep 2019
 09:35:21 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: "Kirill A. Shutemov" <kirill@shutemov.name>
Subject: RE: [PATCH v3 2/2] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Topic: [PATCH v3 2/2] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Index: AQHValDxzQ2H3fUPY0iuAtQTMeuRL6cuCjUAgAAFC4A=
Date: Mon, 16 Sep 2019 09:35:21 +0000
Message-ID: <DB7PR08MB30825C23ABB0962CC8826CBAF78C0@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190913163239.125108-1-justin.he@arm.com>
 <20190913163239.125108-3-justin.he@arm.com>
 <20190916091628.bkuvd3g3ie3x6qav@box.shutemov.name>
In-Reply-To: <20190916091628.bkuvd3g3ie3x6qav@box.shutemov.name>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 86659871-5b5b-4a18-bc25-baf6fd402980.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: eea67cf4-8e88-41f5-1356-08d73a89397f
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB3707; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3707:|DB7PR08MB3707:|AM7PR08MB5461:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM7PR08MB546139C688560E6F069AD756F78C0@AM7PR08MB5461.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:6790;OLM:6790;
x-forefront-prvs: 0162ACCC24
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(136003)(396003)(346002)(13464003)(199004)(189003)(6246003)(55016002)(9686003)(6306002)(66574012)(54906003)(966005)(11346002)(446003)(86362001)(478600001)(316002)(476003)(99286004)(76116006)(14444005)(256004)(66066001)(25786009)(66476007)(66556008)(64756008)(8936002)(14454004)(71200400001)(2906002)(71190400001)(66946007)(66446008)(5660300002)(7416002)(6916009)(53546011)(76176011)(6506007)(52536014)(33656002)(53936002)(229853002)(26005)(186003)(6436002)(7736002)(6116002)(305945005)(3846002)(81166006)(74316002)(4326008)(81156014)(8676002)(486006)(102836004)(7696005)(55236004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3707;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: hnl7yek65lSnWAxmpHYstElSvfPKaoeGQwS5Jf72HeaZ/+23Pl7/1sA+46rBcktYM7jwud1BCrzPs+DEIoSDZH7pYaIW+HDD7+2W1VyL8glwNpb8XytZPDQXaez0KEcp7g9/7/wJ3lGOwnGatPjJKgQpI7IC8UWa2HoZ+VyNTNRMJACkF4kaVn5WDcf7qtu0dzH6VyMOfL4/dpIS65glfV8TJUrP9Xt7yzjt66k2CKn2K26JnvxBZ1KYCnx7Cs59RsiS6BD0HpYArDUPoduz+o4KN2JGw3DNBF2DLlpm7ZLBpff/aikm4/FmBY8HpSqWFBvbzJQ/1uXWL9rwzUYqK40k6Yk452ls3npv8aQLpNODNgwlB04sY13cHk5I9b1EGAK4PjboczH65pt8JZ0UvLkQDY4+b4Nm282avSBNjhY=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3707
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(39860400002)(346002)(376002)(13464003)(199004)(40434004)(189003)(336012)(126002)(54906003)(229853002)(486006)(6246003)(9686003)(74316002)(107886003)(6116002)(3846002)(2486003)(76176011)(7736002)(102836004)(26005)(6506007)(81166006)(8676002)(81156014)(356004)(99286004)(6306002)(6862004)(7696005)(2906002)(22756006)(23676004)(55016002)(186003)(66574012)(11346002)(5660300002)(76130400001)(316002)(70206006)(33656002)(70586007)(4326008)(14444005)(5024004)(8936002)(305945005)(53546011)(63350400001)(50466002)(476003)(436003)(966005)(446003)(478600001)(66066001)(47776003)(25786009)(26826003)(14454004)(52536014)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM7PR08MB5461;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 02e87f9f-ea6f-4dc6-2f68-08d73a893186
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM7PR08MB5461; 
X-Forefront-PRVS: 0162ACCC24
X-Microsoft-Antispam-Message-Info: k+qQgaIgThhlTLhhTTSbNe0cicoGW3y7hgUtRAtMCM8Lsxs912uEsrPg7GokQ+Vg4K1o+xrCs/+lwEJXOVXtF7HT483+i4gj9gU/MXRUwHcHj6YaggHDzSsM2LhEjZPnJX9+9LwFBs1bn397w/WW9h0PJCtMhx2KunKUx6mfrvUt6Y7iRneWU6l9qWU9/zNfTeqIXS4w7QiugjHah8pq4LtD2wmVOmxa6ymgJaPOxRXrw6ZDxV06a8QQKUwPcnKpSfM86GquTXwadcoOtU8ciRG3nREpz0uiNRoZB9sLdRtjBdu61Sw0DZRZF7Fu5GeQqRV/vqWj9TnCtev2LfQxUVldzBRGKSPYvWdnUHii2bWsDCnto04ZVTRBEAaGC1W4KZJF2Mh/W4OeENBLbexo74kT43qFxxCpiEuhTCtT4D8=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2019 09:35:34.5173 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eea67cf4-8e88-41f5-1356-08d73a89397f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5461
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_023543_442735_4426EAD7 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.77 listed in list.dnswl.org]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Ralph Campbell <rcampbell@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Jun Yao <yaojun8558363@gmail.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Punit Agrawal <punitagrawal@gmail.com>, Marc Zyngier <maz@kernel.org>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>, "Kirill A.
 Shutemov" <kirill.shutemov@linux.intel.com>,
 Robin Murphy <Robin.Murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpIaSBLaXJpbGwNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2lyaWxs
IEEuIFNodXRlbW92IDxraXJpbGxAc2h1dGVtb3YubmFtZT4NCj4gU2VudDogMjAxOeW5tDnmnIgx
NuaXpSAxNzoxNg0KPiBUbzogSnVzdGluIEhlIChBcm0gVGVjaG5vbG9neSBDaGluYSkgPEp1c3Rp
bi5IZUBhcm0uY29tPg0KPiBDYzogQ2F0YWxpbiBNYXJpbmFzIDxDYXRhbGluLk1hcmluYXNAYXJt
LmNvbT47IFdpbGwgRGVhY29uDQo+IDx3aWxsQGtlcm5lbC5vcmc+OyBNYXJrIFJ1dGxhbmQgPE1h
cmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UNCj4gPEphbWVzLk1vcnNlQGFybS5jb20+
OyBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPjsgTWF0dGhldw0KPiBXaWxjb3ggPHdpbGx5
QGluZnJhZGVhZC5vcmc+OyBLaXJpbGwgQS4gU2h1dGVtb3YNCj4gPGtpcmlsbC5zaHV0ZW1vdkBs
aW51eC5pbnRlbC5jb20+OyBsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc7DQo+
IGxpbnV4LWtlcm5lbEB2Z2VyLmtlcm5lbC5vcmc7IGxpbnV4LW1tQGt2YWNrLm9yZzsgUHVuaXQg
QWdyYXdhbA0KPiA8cHVuaXRhZ3Jhd2FsQGdtYWlsLmNvbT47IEFuc2h1bWFuIEtoYW5kdWFsDQo+
IDxBbnNodW1hbi5LaGFuZHVhbEBhcm0uY29tPjsgSnVuIFlhbyA8eWFvanVuODU1ODM2M0BnbWFp
bC5jb20+Ow0KPiBBbGV4IFZhbiBCcnVudCA8YXZhbmJydW50QG52aWRpYS5jb20+OyBSb2JpbiBN
dXJwaHkNCj4gPFJvYmluLk11cnBoeUBhcm0uY29tPjsgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxp
bnV0cm9uaXguZGU+Ow0KPiBBbmRyZXcgTW9ydG9uIDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3Jn
PjsgSsOpcsO0bWUgR2xpc3NlDQo+IDxqZ2xpc3NlQHJlZGhhdC5jb20+OyBSYWxwaCBDYW1wYmVs
bCA8cmNhbXBiZWxsQG52aWRpYS5jb20+Ow0KPiBoZWppYW5ldEBnbWFpbC5jb20NCj4gU3ViamVj
dDogUmU6IFtQQVRDSCB2MyAyLzJdIG1tOiBmaXggZG91YmxlIHBhZ2UgZmF1bHQgb24gYXJtNjQg
aWYgUFRFX0FGDQo+IGlzIGNsZWFyZWQNCj4NCj4gT24gU2F0LCBTZXAgMTQsIDIwMTkgYXQgMTI6
MzI6MzlBTSArMDgwMCwgSmlhIEhlIHdyb3RlOg0KPiA+IFdoZW4gd2UgdGVzdGVkIHBtZGsgdW5p
dCB0ZXN0IFsxXSB2bW1hbGxvY19mb3JrIFRFU1QxIGluIGFybTY0IGd1ZXN0LA0KPiB0aGVyZQ0K
PiA+IHdpbGwgYmUgYSBkb3VibGUgcGFnZSBmYXVsdCBpbiBfX2NvcHlfZnJvbV91c2VyX2luYXRv
bWljIG9mDQo+IGNvd191c2VyX3BhZ2UuDQo+ID4NCj4gPiBCZWxvdyBjYWxsIHRyYWNlIGlzIGZy
b20gYXJtNjQgZG9fcGFnZV9mYXVsdCBmb3IgZGVidWdnaW5nIHB1cnBvc2UNCj4gPiBbICAxMTAu
MDE2MTk1XSBDYWxsIHRyYWNlOg0KPiA+IFsgIDExMC4wMTY4MjZdICBkb19wYWdlX2ZhdWx0KzB4
NWE0LzB4NjkwDQo+ID4gWyAgMTEwLjAxNzgxMl0gIGRvX21lbV9hYm9ydCsweDUwLzB4YjANCj4g
PiBbICAxMTAuMDE4NzI2XSAgZWwxX2RhKzB4MjAvMHhjNA0KPiA+IFsgIDExMC4wMTk0OTJdICBf
X2FyY2hfY29weV9mcm9tX3VzZXIrMHgxODAvMHgyODANCj4gPiBbICAxMTAuMDIwNjQ2XSAgZG9f
d3BfcGFnZSsweGIwLzB4ODYwDQo+ID4gWyAgMTEwLjAyMTUxN10gIF9faGFuZGxlX21tX2ZhdWx0
KzB4OTk0LzB4MTMzOA0KPiA+IFsgIDExMC4wMjI2MDZdICBoYW5kbGVfbW1fZmF1bHQrMHhlOC8w
eDE4MA0KPiA+IFsgIDExMC4wMjM1ODRdICBkb19wYWdlX2ZhdWx0KzB4MjQwLzB4NjkwDQo+ID4g
WyAgMTEwLjAyNDUzNV0gIGRvX21lbV9hYm9ydCsweDUwLzB4YjANCj4gPiBbICAxMTAuMDI1NDIz
XSAgZWwwX2RhKzB4MjAvMHgyNA0KPiA+DQo+ID4gVGhlIHB0ZSBpbmZvIGJlZm9yZSBfX2NvcHlf
ZnJvbV91c2VyX2luYXRvbWljIGlzIChQVEVfQUYgaXMgY2xlYXJlZCk6DQo+ID4gW2ZmZmY5YjAw
NzAwMF0gcGdkPTAwMDAwMDAyM2Q0ZjgwMDMsIHB1ZD0wMDAwMDAwMjNkYTliMDAzLA0KPiBwbWQ9
MDAwMDAwMDIzZDRiMzAwMywgcHRlPTM2MDAwMDI5ODYwN2JkMw0KPiA+DQo+ID4gQXMgdG9sZCBi
eSBDYXRhbGluOiAiT24gYXJtNjQgd2l0aG91dCBoYXJkd2FyZSBBY2Nlc3MgRmxhZywgY29weWlu
Zw0KPiBmcm9tDQo+ID4gdXNlciB3aWxsIGZhaWwgYmVjYXVzZSB0aGUgcHRlIGlzIG9sZCBhbmQg
Y2Fubm90IGJlIG1hcmtlZCB5b3VuZy4gU28gd2UNCj4gPiBhbHdheXMgZW5kIHVwIHdpdGggemVy
b2VkIHBhZ2UgYWZ0ZXIgZm9yaygpICsgQ29XIGZvciBwZm4gbWFwcGluZ3MuIHdlDQo+ID4gZG9u
J3QgYWx3YXlzIGhhdmUgYSBoYXJkd2FyZS1tYW5hZ2VkIGFjY2VzcyBmbGFnIG9uIGFybTY0LiIN
Cj4gPg0KPiA+IFRoaXMgcGF0Y2ggZml4IGl0IGJ5IGNhbGxpbmcgcHRlX21reW91bmcuIEFsc28s
IHRoZSBwYXJhbWV0ZXIgaXMNCj4gPiBjaGFuZ2VkIGJlY2F1c2Ugdm1mIHNob3VsZCBiZSBwYXNz
ZWQgdG8gY293X3VzZXJfcGFnZSgpDQo+ID4NCj4gPiBbMV0NCj4gaHR0cHM6Ly9naXRodWIuY29t
L3BtZW0vcG1kay90cmVlL21hc3Rlci9zcmMvdGVzdC92bW1hbGxvY19mb3JrDQo+ID4NCj4gPiBS
ZXBvcnRlZC1ieTogWWlibyBDYWkgPFlpYm8uQ2FpQGFybS5jb20+DQo+ID4gU2lnbmVkLW9mZi1i
eTogSmlhIEhlIDxqdXN0aW4uaGVAYXJtLmNvbT4NCj4gPiAtLS0NCj4gPiAgbW0vbWVtb3J5LmMg
fCAzMCArKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0NCj4gPiAgMSBmaWxlIGNoYW5nZWQs
IDI1IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEv
bW0vbWVtb3J5LmMgYi9tbS9tZW1vcnkuYw0KPiA+IGluZGV4IGUyYmI1MWI2MjQyZS4uYTY0YWY2
NDk1ZjcxIDEwMDY0NA0KPiA+IC0tLSBhL21tL21lbW9yeS5jDQo+ID4gKysrIGIvbW0vbWVtb3J5
LmMNCj4gPiBAQCAtMTE4LDYgKzExOCwxMyBAQCBpbnQgcmFuZG9taXplX3ZhX3NwYWNlIF9fcmVh
ZF9tb3N0bHkgPQ0KPiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDI7DQo+
ID4gICNlbmRpZg0KPiA+DQo+ID4gKyNpZm5kZWYgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZQ0KPiA+
ICtzdGF0aWMgaW5saW5lIGJvb2wgYXJjaF9mYXVsdHNfb25fb2xkX3B0ZSh2b2lkKQ0KPiA+ICt7
DQo+ID4gKyAgIHJldHVybiBmYWxzZTsNCj4gPiArfQ0KPiA+ICsjZW5kaWYNCj4gPiArDQo+ID4g
IHN0YXRpYyBpbnQgX19pbml0IGRpc2FibGVfcmFuZG1hcHMoY2hhciAqcykNCj4gPiAgew0KPiA+
ICAgICByYW5kb21pemVfdmFfc3BhY2UgPSAwOw0KPiA+IEBAIC0yMTQwLDcgKzIxNDcsOCBAQCBz
dGF0aWMgaW5saW5lIGludCBwdGVfdW5tYXBfc2FtZShzdHJ1Y3QNCj4gbW1fc3RydWN0ICptbSwg
cG1kX3QgKnBtZCwNCj4gPiAgICAgcmV0dXJuIHNhbWU7DQo+ID4gIH0NCj4gPg0KPiA+IC1zdGF0
aWMgaW5saW5lIHZvaWQgY293X3VzZXJfcGFnZShzdHJ1Y3QgcGFnZSAqZHN0LCBzdHJ1Y3QgcGFn
ZSAqc3JjLA0KPiB1bnNpZ25lZCBsb25nIHZhLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkN
Cj4gPiArc3RhdGljIGlubGluZSB2b2lkIGNvd191c2VyX3BhZ2Uoc3RydWN0IHBhZ2UgKmRzdCwg
c3RydWN0IHBhZ2UgKnNyYywNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IHZtX2ZhdWx0ICp2bWYpDQo+ID4gIHsNCj4gPiAgICAgZGVidWdfZG1hX2Fzc2VydF9pZGxlKHNy
Yyk7DQo+ID4NCj4gPiBAQCAtMjE1MiwyMCArMjE2MCwzMiBAQCBzdGF0aWMgaW5saW5lIHZvaWQg
Y293X3VzZXJfcGFnZShzdHJ1Y3QgcGFnZQ0KPiAqZHN0LCBzdHJ1Y3QgcGFnZSAqc3JjLCB1bnNp
Z25lZCBsbw0KPiA+ICAgICAgKi8NCj4gPiAgICAgaWYgKHVubGlrZWx5KCFzcmMpKSB7DQo+ID4g
ICAgICAgICAgICAgdm9pZCAqa2FkZHIgPSBrbWFwX2F0b21pYyhkc3QpOw0KPiA+IC0gICAgICAg
ICAgIHZvaWQgX191c2VyICp1YWRkciA9ICh2b2lkIF9fdXNlciAqKSh2YSAmIFBBR0VfTUFTSyk7
DQo+ID4gKyAgICAgICAgICAgdm9pZCBfX3VzZXIgKnVhZGRyID0gKHZvaWQgX191c2VyICopKHZt
Zi0+YWRkcmVzcyAmDQo+IFBBR0VfTUFTSyk7DQo+ID4gKyAgICAgICAgICAgcHRlX3QgZW50cnk7
DQo+ID4NCj4gPiAgICAgICAgICAgICAvKg0KPiA+ICAgICAgICAgICAgICAqIFRoaXMgcmVhbGx5
IHNob3VsZG4ndCBmYWlsLCBiZWNhdXNlIHRoZSBwYWdlIGlzIHRoZXJlDQo+ID4gICAgICAgICAg
ICAgICogaW4gdGhlIHBhZ2UgdGFibGVzLiBCdXQgaXQgbWlnaHQganVzdCBiZSB1bnJlYWRhYmxl
LA0KPiA+ICAgICAgICAgICAgICAqIGluIHdoaWNoIGNhc2Ugd2UganVzdCBnaXZlIHVwIGFuZCBm
aWxsIHRoZSByZXN1bHQgd2l0aA0KPiA+IC0gICAgICAgICAgICAqIHplcm9lcy4NCj4gPiArICAg
ICAgICAgICAgKiB6ZXJvZXMuIElmIFBURV9BRiBpcyBjbGVhcmVkIG9uIGFybTY0LCBpdCBtaWdo
dA0KPiA+ICsgICAgICAgICAgICAqIGNhdXNlIGRvdWJsZSBwYWdlIGZhdWx0LiBTbyBtYWtlcyBw
dGUgeW91bmcgaGVyZQ0KPiA+ICAgICAgICAgICAgICAqLw0KPiA+ICsgICAgICAgICAgIGlmIChh
cmNoX2ZhdWx0c19vbl9vbGRfcHRlKCkgJiYgIXB0ZV95b3VuZyh2bWYtPm9yaWdfcHRlKSkNCj4g
ew0KPiA+ICsgICAgICAgICAgICAgICAgICAgc3Bpbl9sb2NrKHZtZi0+cHRsKTsNCj4gPiArICAg
ICAgICAgICAgICAgICAgIGVudHJ5ID0gcHRlX21reW91bmcodm1mLT5vcmlnX3B0ZSk7DQo+DQo+
IFNob3VsZCd0IHlvdSByZS12YWxpZGF0ZSB0aGF0IG9yaWdfcHRlIGFmdGVyIHJlLXRha2luZyBw
dGw/IEl0IGNhbiBiZQ0KPiBzdGFsZSBieSBub3cuDQpUaGFua3MsIGRvIHlvdSBtZWFuIGZsdXNo
X2NhY2hlX3BhZ2Uodm1hLCB2bWYtPmFkZHJlc3MsIHB0ZV9wZm4odm1mLT5vcmlnX3B0ZSkpDQpi
ZWZvcmUgcHRlX21reW91bmc/DQoNCi0tDQpDaGVlcnMsDQpKdXN0aW4gKEppYSBIZSkNCg0KDQo+
DQo+ID4gKyAgICAgICAgICAgICAgICAgICBpZiAocHRlcF9zZXRfYWNjZXNzX2ZsYWdzKHZtZi0+
dm1hLCB2bWYtPmFkZHJlc3MsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHZtZi0+cHRlLCBlbnRyeSwgMCkpDQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHVwZGF0ZV9tbXVfY2FjaGUodm1mLT52bWEsIHZtZi0NCj4gPmFkZHJlc3MsDQo+
ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdm1mLT5wdGUp
Ow0KPiA+ICsgICAgICAgICAgICAgICAgICAgc3Bpbl91bmxvY2sodm1mLT5wdGwpOw0KPiA+ICsg
ICAgICAgICAgIH0NCj4gPiArDQo+ID4gICAgICAgICAgICAgaWYgKF9fY29weV9mcm9tX3VzZXJf
aW5hdG9taWMoa2FkZHIsIHVhZGRyLCBQQUdFX1NJWkUpKQ0KPiA+ICAgICAgICAgICAgICAgICAg
ICAgY2xlYXJfcGFnZShrYWRkcik7DQo+ID4gICAgICAgICAgICAga3VubWFwX2F0b21pYyhrYWRk
cik7DQo+ID4gICAgICAgICAgICAgZmx1c2hfZGNhY2hlX3BhZ2UoZHN0KTsNCj4gPiAgICAgfSBl
bHNlDQo+ID4gLSAgICAgICAgICAgY29weV91c2VyX2hpZ2hwYWdlKGRzdCwgc3JjLCB2YSwgdm1h
KTsNCj4gPiArICAgICAgICAgICBjb3B5X3VzZXJfaGlnaHBhZ2UoZHN0LCBzcmMsIHZtZi0+YWRk
cmVzcywgdm1mLT52bWEpOw0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIGdmcF90IF9fZ2V0X2Zh
dWx0X2dmcF9tYXNrKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQ0KPiA+IEBAIC0yMzE4LDcg
KzIzMzgsNyBAQCBzdGF0aWMgdm1fZmF1bHRfdCB3cF9wYWdlX2NvcHkoc3RydWN0DQo+IHZtX2Zh
dWx0ICp2bWYpDQo+ID4gICAgICAgICAgICAgICAgICAgICAgICAgICAgIHZtZi0+YWRkcmVzcyk7
DQo+ID4gICAgICAgICAgICAgaWYgKCFuZXdfcGFnZSkNCj4gPiAgICAgICAgICAgICAgICAgICAg
IGdvdG8gb29tOw0KPiA+IC0gICAgICAgICAgIGNvd191c2VyX3BhZ2UobmV3X3BhZ2UsIG9sZF9w
YWdlLCB2bWYtPmFkZHJlc3MsIHZtYSk7DQo+ID4gKyAgICAgICAgICAgY293X3VzZXJfcGFnZShu
ZXdfcGFnZSwgb2xkX3BhZ2UsIHZtZik7DQo+ID4gICAgIH0NCj4gPg0KPiA+ICAgICBpZiAobWVt
X2Nncm91cF90cnlfY2hhcmdlX2RlbGF5KG5ld19wYWdlLCBtbSwgR0ZQX0tFUk5FTCwNCj4gJm1l
bWNnLCBmYWxzZSkpDQo+ID4gLS0NCj4gPiAyLjE3LjENCj4gPg0KPiA+DQo+DQo+IC0tDQo+ICBL
aXJpbGwgQS4gU2h1dGVtb3YNCklNUE9SVEFOVCBOT1RJQ0U6IFRoZSBjb250ZW50cyBvZiB0aGlz
IGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGNvbmZpZGVudGlhbCBhbmQgbWF5IGFsc28g
YmUgcHJpdmlsZWdlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxl
YXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkbyBub3QgZGlzY2xvc2UgdGhl
IGNvbnRlbnRzIHRvIGFueSBvdGhlciBwZXJzb24sIHVzZSBpdCBmb3IgYW55IHB1cnBvc2UsIG9y
IHN0b3JlIG9yIGNvcHkgdGhlIGluZm9ybWF0aW9uIGluIGFueSBtZWRpdW0uIFRoYW5rIHlvdS4N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
