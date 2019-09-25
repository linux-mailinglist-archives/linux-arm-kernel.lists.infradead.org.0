Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A40B6BD68D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 05:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfcVpyDg7gkK1vg0guoiynvjQxEfTJwcH0QWqUIdesU=; b=Kcz/q8g3QDjr8U
	TjXJPIbzaz5WuUb2UcDXc+5yVBErIxS1BGNspQE+fy8BiMdmaWb6EPfX4Fy3EWD4Wv9DkWP14cFVY
	RyrnnJdswFr/WcYw75uNnC/mh40e6++LZgyGDdTGgPxROJwutO2XUXm3wHUgHYxZ7YdgNpiWdQKZ5
	pVDNRK1aKTN6kpt16PT5sSTe2M5d3b84BG4AqwDrA+on0ek6LqLWtc8m6VfKNKNhp3hqu9YCIwCnJ
	1aljjYsTYr2igQ5m+3BQZJTOCWmPJ+OnACGMwJxJxYtrvrVFzRWyGs3QviWmPojCcFH8U+5Rmb2FT
	JuxXIh3TyFSvBL5dNErw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCxar-0002IZ-RH; Wed, 25 Sep 2019 03:03:54 +0000
Received: from mail-db5eur03on0612.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::612]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCxaf-0002I9-1H
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 03:03:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IwNOlzLoBUQlSQ/s9l9BB43SdszpRMpsgjBIdRgdpm8=;
 b=kRFLvdi1peoIu1d7xtU9rcM4IS99OJbOPz0O3WhDyPMw2x4pPCSPdpLR1B7CsVZAqhQPfH64B1qEfNl3/2napwIab4TrzI7YUWXdY453irmG/Q+wg5ZhW7/CWujuAamoRplikPWT/9QLAwzlDM6Heuw/wTnB9smwRva51aDgCno=
Received: from VI1PR08CA0138.eurprd08.prod.outlook.com (2603:10a6:800:d5::16)
 by AM6PR08MB3014.eurprd08.prod.outlook.com (2603:10a6:209:47::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20; Wed, 25 Sep
 2019 03:03:33 +0000
Received: from VE1EUR03FT005.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e09::206) by VI1PR08CA0138.outlook.office365.com
 (2603:10a6:800:d5::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.20 via Frontend
 Transport; Wed, 25 Sep 2019 03:03:33 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT005.mail.protection.outlook.com (10.152.18.172) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20 via Frontend Transport; Wed, 25 Sep 2019 03:03:31 +0000
Received: ("Tessian outbound 3fba803f6da3:v33");
 Wed, 25 Sep 2019 03:03:23 +0000
X-CR-MTA-TID: 64aa7808
Received: from 7c663bfb9b6d.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.12.53]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 EBA6CD36-6663-4423-8154-DA0258EC524D.1; 
 Wed, 25 Sep 2019 03:03:18 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2053.outbound.protection.outlook.com [104.47.12.53])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 7c663bfb9b6d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Wed, 25 Sep 2019 03:03:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d7IEwfFqFeLneXtEhPo27HoOXF+feHn2O08bX6VNx3ydZ8yyTH6lmiZ6B5KmYhRcpyeGkAc3YU50Fa6V2juFF4Q+yUwXP5uMvE+PHikoQMDKSfqDwFdchYK7oTXRZRuzA0/ojFghVIXLXOvuxE0dfBsXjVicnoez6gO0/4kCsDywVlfejAYZ1czZVTh9KdD2O933UZNUu/20v/ViBc68PCCvGt61ZvY21/TZRnenUpMqb2oXPSOg47dTge5yhVWRGp1cgOsyzBJSvfEpQZgRl9rGJx4NLiZR+NA50Hj2m8qsAkCziPedJUz7mlfelody6RRwklF1eDgOBFRBkU/qrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IwNOlzLoBUQlSQ/s9l9BB43SdszpRMpsgjBIdRgdpm8=;
 b=hDxpcMf3J55wk3XBpr6a6lHZC67eZp043V+8JrOMtWPfAujAUVomi3tGoy3sKDYfF5WXSS3srvtIwzMPSd/HpdzXnTdOuU4OXMQ1pkL7i4fkt749QTXjVEq230dVoCwfg+1qXAkX2GE1JL05mtvWC+mvszn0rV4pwVAVz0l24gvU6k1WFNfWqXqx+CDyhhx0OjbixcRLMWiwYmyXdkXzEnm2ZMQmoLlACCI+JenjdnLyN7dAoM7V5tBtAH8yuPqDv7TK6TfoUgk/7jAMp8Zygqe96Ci11xbmOeXJC41t5ob48n0zWsvFKNpI82S/5IzRqAL9SF4Fc8oUx/Vh5SNefA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IwNOlzLoBUQlSQ/s9l9BB43SdszpRMpsgjBIdRgdpm8=;
 b=kRFLvdi1peoIu1d7xtU9rcM4IS99OJbOPz0O3WhDyPMw2x4pPCSPdpLR1B7CsVZAqhQPfH64B1qEfNl3/2napwIab4TrzI7YUWXdY453irmG/Q+wg5ZhW7/CWujuAamoRplikPWT/9QLAwzlDM6Heuw/wTnB9smwRva51aDgCno=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3834.eurprd08.prod.outlook.com (20.178.46.24) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 03:03:17 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::3dcd:d5e4:c17:489d%5]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 03:03:16 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Matthew Wilcox <willy@infradead.org>, "Kirill A. Shutemov"
 <kirill.shutemov@linux.intel.com>
Subject: RE: [PATCH v9 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Topic: [PATCH v9 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Thread-Index: AQHVc01XfNpYwJVc7E2IJu3QViFbM6c7tDHg
Date: Wed, 25 Sep 2019 03:03:16 +0000
Message-ID: <DB7PR08MB30824684CB357CBCB5FC3ACAF7870@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190925025922.176362-1-justin.he@arm.com>
 <20190925025922.176362-4-justin.he@arm.com>
In-Reply-To: <20190925025922.176362-4-justin.he@arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 44b9979f-effc-41e2-ab01-9c015d92f0db.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: ce950f11-ab76-489a-2f0c-08d74164f276
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB3834; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3834:|DB7PR08MB3834:|AM6PR08MB3014:
X-MS-Exchange-PUrlCount: 1
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <AM6PR08MB3014699C14134767540D54D5F7870@AM6PR08MB3014.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01713B2841
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(396003)(376002)(136003)(346002)(189003)(199004)(13464003)(966005)(186003)(9686003)(66066001)(6306002)(14444005)(54906003)(7736002)(4326008)(6246003)(2906002)(7696005)(66446008)(76176011)(64756008)(66574012)(74316002)(55236004)(5660300002)(66946007)(66556008)(53546011)(102836004)(6506007)(26005)(256004)(33656002)(76116006)(71190400001)(478600001)(8936002)(486006)(11346002)(66476007)(99286004)(476003)(81166006)(52536014)(7416002)(305945005)(86362001)(8676002)(81156014)(71200400001)(25786009)(14454004)(110136005)(6116002)(55016002)(3846002)(6436002)(229853002)(316002)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3834;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: eszsnrHuiXRfwdreiPFzfWBLcNXvFF22LQAg80DmWNwvQaiiEo0bYO4K7rTmIK01FtjYfzsgmBIMpVWvlINueMT5iP4Hs3yJR0aTvaMYblUreHjF6U0cNC1gV8zAv1pZDar84sCbVnhtfB6c8/xUKDUrHkaeW7nGlqeyGus9GHbwF+GTWbVHgHwNjjs+B6ogyb61JOBu6dUN2Qb85L+WzCIG4Xzl319XDYLspJwzSTi7ol+dH9HSf1UAlv/kXE62OAijkXGSB4VhH6UJ+jzs5d04VXyniCiaNOv4WMhrKXTTYe61+aJtUkf+JWeqkFqBkO1qNOLxnRekaWSBu1OpkJL50i2c914B404x1fFg43olLYx8aT+s1e0Q0phxjLXFafh2AyhJ7S1ggzrAQ79zLMtodTJPmxy6aL4XwkySK+giKmFa8n1w7Kh0gTF2PccV9B37IPLAAmspnig/8O36cA==
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3834
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: VE1EUR03FT005.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(39860400002)(136003)(13464003)(189003)(199004)(76176011)(3846002)(6116002)(53546011)(6506007)(102836004)(7696005)(23676004)(2486003)(5660300002)(66574012)(76130400001)(52536014)(86362001)(26005)(476003)(126002)(486006)(336012)(25786009)(74316002)(186003)(11346002)(2906002)(50466002)(446003)(99286004)(7736002)(47776003)(305945005)(436003)(63350400001)(107886003)(6246003)(54906003)(33656002)(6306002)(110136005)(229853002)(55016002)(316002)(22756006)(66066001)(9686003)(36906005)(70586007)(478600001)(70206006)(8676002)(26826003)(81166006)(8936002)(14444005)(81156014)(4326008)(356004)(966005)(14454004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR08MB3014;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 91d73f40-8c3c-4041-05de-08d74164e999
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(710020)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR08MB3014; 
NoDisclaimer: True
X-Forefront-PRVS: 01713B2841
X-Microsoft-Antispam-Message-Info: 8kTEv7yS9i1tavak+yYzgJ5yCaQpXzyv0IURyXG7CNkB5XvSEW7b8WxhtbUJO9Nxkvybmo5BZmVE9/SpY6brIkBATxxUD8DePadNoBrsV3WJ0FJcdU+RW7Cs573FRkhOTTLyoUdZAeEMmgasszsJIDkHkYXOoa/KIQiey9Ve3RID/fTGzPrscJVAzpAJnYyeDWe/KJp3YDVl9caMs3XnpEl6dxkT4vTdngNp/dtmgcpWf25TOG1mZHbcf2vcfRW3k3+FcQ0a26SK9bs2BBFro6/jEcRoRMRomSnaDOHDNl3n75UEouR1oSoPu0omil6vcvWbCxqJhPARrLN9+Nk6gVtC5/szjxhFNlFpz9/rUj/mmlpTv/7EPa5KYthKtyrGY9teAmWm2ZCHnxplTxmL3XigNlm9fiPFOMF/CqNgrju2WslODwcppTTzVGpb62hVV2w4uaqUYIfb5bYeeX84LQ==
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2019 03:03:31.5150 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ce950f11-ab76-489a-2f0c-08d74164f276
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_200341_220116_524A5066 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:612 listed in]
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
Cc: Mark Rutland <Mark.Rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
 Ralph Campbell <rcampbell@nvidia.com>,
 Anshuman Khandual <Anshuman.Khandual@arm.com>, Will Deacon <will@kernel.org>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alex Van Brunt <avanbrunt@nvidia.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "Kaly Xin \(Arm Technology China\)" <Kaly.Xin@arm.com>,
 =?utf-8?B?SsOpcsO0bWUgR2xpc3Nl?= <jglisse@redhat.com>,
 James Morse <James.Morse@arm.com>, Punit Agrawal <punitagrawal@gmail.com>,
 Catalin Marinas <Catalin.Marinas@arm.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, nd <nd@arm.com>,
 Robin Murphy <Robin.Murphy@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgTWF0dGhldyBhbmQgS2lyaWxsDQpJIGRpZG4ndCBhZGQgeW91ciBwcmV2aW91cyByLWIgYW5k
IGEtYiB0YWcgc2luY2UgSSByZWZhY3RvcmVkIHRoZSBjb3dfdXNlcl9wYWdlDQphbmQgY2hhbmdl
ZCB0aGUgcHRsIHJhbmdlIGluIHY5LiBQbGVhc2UgaGF2ZSBhIHJldmlldywgdGhhbmtzDQoNCg0K
LS0NCkNoZWVycywNCkp1c3RpbiAoSmlhIEhlKQ0KDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KPiBGcm9tOiBKaWEgSGUgPGp1c3Rpbi5oZUBhcm0uY29tPg0KPiBTZW50OiAyMDE5
5bm0OeaciDI15pelIDEwOjU5DQo+IFRvOiBDYXRhbGluIE1hcmluYXMgPENhdGFsaW4uTWFyaW5h
c0Bhcm0uY29tPjsgV2lsbCBEZWFjb24NCj4gPHdpbGxAa2VybmVsLm9yZz47IE1hcmsgUnV0bGFu
ZCA8TWFyay5SdXRsYW5kQGFybS5jb20+OyBKYW1lcyBNb3JzZQ0KPiA8SmFtZXMuTW9yc2VAYXJt
LmNvbT47IE1hcmMgWnluZ2llciA8bWF6QGtlcm5lbC5vcmc+OyBNYXR0aGV3DQo+IFdpbGNveCA8
d2lsbHlAaW5mcmFkZWFkLm9yZz47IEtpcmlsbCBBLiBTaHV0ZW1vdg0KPiA8a2lyaWxsLnNodXRl
bW92QGxpbnV4LmludGVsLmNvbT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZzsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGludXgtbW1Aa3ZhY2sub3JnOyBT
dXp1a2kgUG91bG9zZQ0KPiA8U3V6dWtpLlBvdWxvc2VAYXJtLmNvbT4NCj4gQ2M6IFB1bml0IEFn
cmF3YWwgPHB1bml0YWdyYXdhbEBnbWFpbC5jb20+OyBBbnNodW1hbiBLaGFuZHVhbA0KPiA8QW5z
aHVtYW4uS2hhbmR1YWxAYXJtLmNvbT47IEFsZXggVmFuIEJydW50DQo+IDxhdmFuYnJ1bnRAbnZp
ZGlhLmNvbT47IFJvYmluIE11cnBoeSA8Um9iaW4uTXVycGh5QGFybS5jb20+Ow0KPiBUaG9tYXMg
R2xlaXhuZXIgPHRnbHhAbGludXRyb25peC5kZT47IEFuZHJldyBNb3J0b24gPGFrcG1AbGludXgt
DQo+IGZvdW5kYXRpb24ub3JnPjsgSsOpcsO0bWUgR2xpc3NlIDxqZ2xpc3NlQHJlZGhhdC5jb20+
OyBSYWxwaCBDYW1wYmVsbA0KPiA8cmNhbXBiZWxsQG52aWRpYS5jb20+OyBoZWppYW5ldEBnbWFp
bC5jb207IEthbHkgWGluIChBcm0gVGVjaG5vbG9neQ0KPiBDaGluYSkgPEthbHkuWGluQGFybS5j
b20+OyBuZCA8bmRAYXJtLmNvbT47IEp1c3RpbiBIZSAoQXJtDQo+IFRlY2hub2xvZ3kgQ2hpbmEp
IDxKdXN0aW4uSGVAYXJtLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHY5IDMvM10gbW06IGZpeCBk
b3VibGUgcGFnZSBmYXVsdCBvbiBhcm02NCBpZiBQVEVfQUYgaXMNCj4gY2xlYXJlZA0KPiANCj4g
V2hlbiB3ZSB0ZXN0ZWQgcG1kayB1bml0IHRlc3QgWzFdIHZtbWFsbG9jX2ZvcmsgVEVTVDEgaW4g
YXJtNjQgZ3Vlc3QsDQo+IHRoZXJlDQo+IHdpbGwgYmUgYSBkb3VibGUgcGFnZSBmYXVsdCBpbiBf
X2NvcHlfZnJvbV91c2VyX2luYXRvbWljIG9mDQo+IGNvd191c2VyX3BhZ2UuDQo+IA0KPiBCZWxv
dyBjYWxsIHRyYWNlIGlzIGZyb20gYXJtNjQgZG9fcGFnZV9mYXVsdCBmb3IgZGVidWdnaW5nIHB1
cnBvc2UNCj4gWyAgMTEwLjAxNjE5NV0gQ2FsbCB0cmFjZToNCj4gWyAgMTEwLjAxNjgyNl0gIGRv
X3BhZ2VfZmF1bHQrMHg1YTQvMHg2OTANCj4gWyAgMTEwLjAxNzgxMl0gIGRvX21lbV9hYm9ydCsw
eDUwLzB4YjANCj4gWyAgMTEwLjAxODcyNl0gIGVsMV9kYSsweDIwLzB4YzQNCj4gWyAgMTEwLjAx
OTQ5Ml0gIF9fYXJjaF9jb3B5X2Zyb21fdXNlcisweDE4MC8weDI4MA0KPiBbICAxMTAuMDIwNjQ2
XSAgZG9fd3BfcGFnZSsweGIwLzB4ODYwDQo+IFsgIDExMC4wMjE1MTddICBfX2hhbmRsZV9tbV9m
YXVsdCsweDk5NC8weDEzMzgNCj4gWyAgMTEwLjAyMjYwNl0gIGhhbmRsZV9tbV9mYXVsdCsweGU4
LzB4MTgwDQo+IFsgIDExMC4wMjM1ODRdICBkb19wYWdlX2ZhdWx0KzB4MjQwLzB4NjkwDQo+IFsg
IDExMC4wMjQ1MzVdICBkb19tZW1fYWJvcnQrMHg1MC8weGIwDQo+IFsgIDExMC4wMjU0MjNdICBl
bDBfZGErMHgyMC8weDI0DQo+IA0KPiBUaGUgcHRlIGluZm8gYmVmb3JlIF9fY29weV9mcm9tX3Vz
ZXJfaW5hdG9taWMgaXMgKFBURV9BRiBpcyBjbGVhcmVkKToNCj4gW2ZmZmY5YjAwNzAwMF0gcGdk
PTAwMDAwMDAyM2Q0ZjgwMDMsIHB1ZD0wMDAwMDAwMjNkYTliMDAzLA0KPiBwbWQ9MDAwMDAwMDIz
ZDRiMzAwMywgcHRlPTM2MDAwMDI5ODYwN2JkMw0KPiANCj4gQXMgdG9sZCBieSBDYXRhbGluOiAi
T24gYXJtNjQgd2l0aG91dCBoYXJkd2FyZSBBY2Nlc3MgRmxhZywgY29weWluZyBmcm9tDQo+IHVz
ZXIgd2lsbCBmYWlsIGJlY2F1c2UgdGhlIHB0ZSBpcyBvbGQgYW5kIGNhbm5vdCBiZSBtYXJrZWQg
eW91bmcuIFNvIHdlDQo+IGFsd2F5cyBlbmQgdXAgd2l0aCB6ZXJvZWQgcGFnZSBhZnRlciBmb3Jr
KCkgKyBDb1cgZm9yIHBmbiBtYXBwaW5ncy4gd2UNCj4gZG9uJ3QgYWx3YXlzIGhhdmUgYSBoYXJk
d2FyZS1tYW5hZ2VkIGFjY2VzcyBmbGFnIG9uIGFybTY0LiINCj4gDQo+IFRoaXMgcGF0Y2ggZml4
IGl0IGJ5IGNhbGxpbmcgcHRlX21reW91bmcuIEFsc28sIHRoZSBwYXJhbWV0ZXIgaXMNCj4gY2hh
bmdlZCBiZWNhdXNlIHZtZiBzaG91bGQgYmUgcGFzc2VkIHRvIGNvd191c2VyX3BhZ2UoKQ0KPiAN
Cj4gQWRkIGEgV0FSTl9PTl9PTkNFIHdoZW4gX19jb3B5X2Zyb21fdXNlcl9pbmF0b21pYygpIHJl
dHVybnMgZXJyb3INCj4gaW4gY2FzZSB0aGVyZSBjYW4gYmUgc29tZSBvYnNjdXJlIHVzZS1jYXNl
LihieSBLaXJpbGwpDQo+IA0KPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL3BtZW0vcG1kay90cmVl
L21hc3Rlci9zcmMvdGVzdC92bW1hbGxvY19mb3JrDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKaWEg
SGUgPGp1c3Rpbi5oZUBhcm0uY29tPg0KPiBSZXBvcnRlZC1ieTogWWlibyBDYWkgPFlpYm8uQ2Fp
QGFybS5jb20+DQo+IC0tLQ0KPiAgbW0vbWVtb3J5LmMgfCA5OQ0KPiArKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDg0IGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL21t
L21lbW9yeS5jIGIvbW0vbWVtb3J5LmMNCj4gaW5kZXggZTJiYjUxYjYyNDJlLi5hMGEzODFiMzZm
ZjIgMTAwNjQ0DQo+IC0tLSBhL21tL21lbW9yeS5jDQo+ICsrKyBiL21tL21lbW9yeS5jDQo+IEBA
IC0xMTgsNiArMTE4LDEzIEBAIGludCByYW5kb21pemVfdmFfc3BhY2UgX19yZWFkX21vc3RseSA9
DQo+ICAJCQkJCTI7DQo+ICAjZW5kaWYNCj4gDQo+ICsjaWZuZGVmIGFyY2hfZmF1bHRzX29uX29s
ZF9wdGUNCj4gK3N0YXRpYyBpbmxpbmUgYm9vbCBhcmNoX2ZhdWx0c19vbl9vbGRfcHRlKHZvaWQp
DQo+ICt7DQo+ICsJcmV0dXJuIGZhbHNlOw0KPiArfQ0KPiArI2VuZGlmDQo+ICsNCj4gIHN0YXRp
YyBpbnQgX19pbml0IGRpc2FibGVfcmFuZG1hcHMoY2hhciAqcykNCj4gIHsNCj4gIAlyYW5kb21p
emVfdmFfc3BhY2UgPSAwOw0KPiBAQCAtMjE0MCwzMiArMjE0Nyw4MiBAQCBzdGF0aWMgaW5saW5l
IGludCBwdGVfdW5tYXBfc2FtZShzdHJ1Y3QNCj4gbW1fc3RydWN0ICptbSwgcG1kX3QgKnBtZCwN
Cj4gIAlyZXR1cm4gc2FtZTsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgaW5saW5lIHZvaWQgY293X3Vz
ZXJfcGFnZShzdHJ1Y3QgcGFnZSAqZHN0LCBzdHJ1Y3QgcGFnZSAqc3JjLA0KPiB1bnNpZ25lZCBs
b25nIHZhLCBzdHJ1Y3Qgdm1fYXJlYV9zdHJ1Y3QgKnZtYSkNCj4gK3N0YXRpYyBpbmxpbmUgYm9v
bCBjb3dfdXNlcl9wYWdlKHN0cnVjdCBwYWdlICpkc3QsIHN0cnVjdCBwYWdlICpzcmMsDQo+ICsJ
CQkJIHN0cnVjdCB2bV9mYXVsdCAqdm1mKQ0KPiAgew0KPiArCWJvb2wgcmV0Ow0KPiArCXZvaWQg
KmthZGRyOw0KPiArCXZvaWQgX191c2VyICp1YWRkcjsNCj4gKwlib29sIGZvcmNlX21reW91bmc7
DQo+ICsJc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEgPSB2bWYtPnZtYTsNCj4gKwlzdHJ1Y3Qg
bW1fc3RydWN0ICptbSA9IHZtYS0+dm1fbW07DQo+ICsJdW5zaWduZWQgbG9uZyBhZGRyID0gdm1m
LT5hZGRyZXNzOw0KPiArDQo+ICAJZGVidWdfZG1hX2Fzc2VydF9pZGxlKHNyYyk7DQo+IA0KPiAr
CWlmIChsaWtlbHkoc3JjKSkgew0KPiArCQljb3B5X3VzZXJfaGlnaHBhZ2UoZHN0LCBzcmMsIGFk
ZHIsIHZtYSk7DQo+ICsJCXJldHVybiB0cnVlOw0KPiArCX0NCj4gKw0KPiAgCS8qDQo+ICAJICog
SWYgdGhlIHNvdXJjZSBwYWdlIHdhcyBhIFBGTiBtYXBwaW5nLCB3ZSBkb24ndCBoYXZlDQo+ICAJ
ICogYSAic3RydWN0IHBhZ2UiIGZvciBpdC4gV2UgZG8gYSBiZXN0LWVmZm9ydCBjb3B5IGJ5DQo+
ICAJICoganVzdCBjb3B5aW5nIGZyb20gdGhlIG9yaWdpbmFsIHVzZXIgYWRkcmVzcy4gSWYgdGhh
dA0KPiAgCSAqIGZhaWxzLCB3ZSBqdXN0IHplcm8tZmlsbCBpdC4gTGl2ZSB3aXRoIGl0Lg0KPiAg
CSAqLw0KPiAtCWlmICh1bmxpa2VseSghc3JjKSkgew0KPiAtCQl2b2lkICprYWRkciA9IGttYXBf
YXRvbWljKGRzdCk7DQo+IC0JCXZvaWQgX191c2VyICp1YWRkciA9ICh2b2lkIF9fdXNlciAqKSh2
YSAmIFBBR0VfTUFTSyk7DQo+ICsJa2FkZHIgPSBrbWFwX2F0b21pYyhkc3QpOw0KPiArCXVhZGRy
ID0gKHZvaWQgX191c2VyICopKGFkZHIgJiBQQUdFX01BU0spOw0KPiArDQo+ICsJLyoNCj4gKwkg
KiBPbiBhcmNoaXRlY3R1cmVzIHdpdGggc29mdHdhcmUgImFjY2Vzc2VkIiBiaXRzLCB3ZSB3b3Vs
ZA0KPiArCSAqIHRha2UgYSBkb3VibGUgcGFnZSBmYXVsdCwgc28gbWFyayBpdCBhY2Nlc3NlZCBo
ZXJlLg0KPiArCSAqLw0KPiArCWZvcmNlX21reW91bmcgPSBhcmNoX2ZhdWx0c19vbl9vbGRfcHRl
KCkgJiYgIXB0ZV95b3VuZyh2bWYtDQo+ID5vcmlnX3B0ZSk7DQo+ICsJaWYgKGZvcmNlX21reW91
bmcpIHsNCj4gKwkJcHRlX3QgZW50cnk7DQo+ICsNCj4gKwkJdm1mLT5wdGUgPSBwdGVfb2Zmc2V0
X21hcF9sb2NrKG1tLCB2bWYtPnBtZCwgYWRkciwNCj4gJnZtZi0+cHRsKTsNCj4gKwkJaWYgKCFs
aWtlbHkocHRlX3NhbWUoKnZtZi0+cHRlLCB2bWYtPm9yaWdfcHRlKSkpIHsNCj4gKwkJCS8qDQo+
ICsJCQkgKiBPdGhlciB0aHJlYWQgaGFzIGFscmVhZHkgaGFuZGxlZCB0aGUgZmF1bHQNCj4gKwkJ
CSAqIGFuZCB3ZSBkb24ndCBuZWVkIHRvIGRvIGFueXRoaW5nLiBJZiBpdCdzDQo+ICsJCQkgKiBu
b3QgdGhlIGNhc2UsIHRoZSBmYXVsdCB3aWxsIGJlIHRyaWdnZXJlZA0KPiArCQkJICogYWdhaW4g
b24gdGhlIHNhbWUgYWRkcmVzcy4NCj4gKwkJCSAqLw0KPiArCQkJcmV0ID0gZmFsc2U7DQo+ICsJ
CQlnb3RvIHB0ZV91bmxvY2s7DQo+ICsJCX0NCj4gKw0KPiArCQllbnRyeSA9IHB0ZV9ta3lvdW5n
KHZtZi0+b3JpZ19wdGUpOw0KPiArCQlpZiAocHRlcF9zZXRfYWNjZXNzX2ZsYWdzKHZtYSwgYWRk
ciwgdm1mLT5wdGUsIGVudHJ5LCAwKSkNCj4gKwkJCXVwZGF0ZV9tbXVfY2FjaGUodm1hLCBhZGRy
LCB2bWYtPnB0ZSk7DQo+ICsJfQ0KPiANCj4gKwkvKg0KPiArCSAqIFRoaXMgcmVhbGx5IHNob3Vs
ZG4ndCBmYWlsLCBiZWNhdXNlIHRoZSBwYWdlIGlzIHRoZXJlDQo+ICsJICogaW4gdGhlIHBhZ2Ug
dGFibGVzLiBCdXQgaXQgbWlnaHQganVzdCBiZSB1bnJlYWRhYmxlLA0KPiArCSAqIGluIHdoaWNo
IGNhc2Ugd2UganVzdCBnaXZlIHVwIGFuZCBmaWxsIHRoZSByZXN1bHQgd2l0aA0KPiArCSAqIHpl
cm9lcy4NCj4gKwkgKi8NCj4gKwlpZiAoX19jb3B5X2Zyb21fdXNlcl9pbmF0b21pYyhrYWRkciwg
dWFkZHIsIFBBR0VfU0laRSkpIHsNCj4gIAkJLyoNCj4gLQkJICogVGhpcyByZWFsbHkgc2hvdWxk
bid0IGZhaWwsIGJlY2F1c2UgdGhlIHBhZ2UgaXMgdGhlcmUNCj4gLQkJICogaW4gdGhlIHBhZ2Ug
dGFibGVzLiBCdXQgaXQgbWlnaHQganVzdCBiZSB1bnJlYWRhYmxlLA0KPiAtCQkgKiBpbiB3aGlj
aCBjYXNlIHdlIGp1c3QgZ2l2ZSB1cCBhbmQgZmlsbCB0aGUgcmVzdWx0IHdpdGgNCj4gLQkJICog
emVyb2VzLg0KPiArCQkgKiBHaXZlIGEgd2FybiBpbiBjYXNlIHRoZXJlIGNhbiBiZSBzb21lIG9i
c2N1cmUNCj4gKwkJICogdXNlLWNhc2UNCj4gIAkJICovDQo+IC0JCWlmIChfX2NvcHlfZnJvbV91
c2VyX2luYXRvbWljKGthZGRyLCB1YWRkciwgUEFHRV9TSVpFKSkNCj4gLQkJCWNsZWFyX3BhZ2Uo
a2FkZHIpOw0KPiAtCQlrdW5tYXBfYXRvbWljKGthZGRyKTsNCj4gLQkJZmx1c2hfZGNhY2hlX3Bh
Z2UoZHN0KTsNCj4gLQl9IGVsc2UNCj4gLQkJY29weV91c2VyX2hpZ2hwYWdlKGRzdCwgc3JjLCB2
YSwgdm1hKTsNCj4gKwkJV0FSTl9PTl9PTkNFKDEpOw0KPiArCQljbGVhcl9wYWdlKGthZGRyKTsN
Cj4gKwl9DQo+ICsNCj4gKwlyZXQgPSB0cnVlOw0KPiArDQo+ICtwdGVfdW5sb2NrOg0KPiArCWlm
IChmb3JjZV9ta3lvdW5nKQ0KPiArCQlwdGVfdW5tYXBfdW5sb2NrKHZtZi0+cHRlLCB2bWYtPnB0
bCk7DQo+ICsJa3VubWFwX2F0b21pYyhrYWRkcik7DQo+ICsJZmx1c2hfZGNhY2hlX3BhZ2UoZHN0
KTsNCj4gKw0KPiArCXJldHVybiByZXQ7DQo+ICB9DQo+IA0KPiAgc3RhdGljIGdmcF90IF9fZ2V0
X2ZhdWx0X2dmcF9tYXNrKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQ0KPiBAQCAtMjMxOCw3
ICsyMzc1LDE5IEBAIHN0YXRpYyB2bV9mYXVsdF90IHdwX3BhZ2VfY29weShzdHJ1Y3QNCj4gdm1f
ZmF1bHQgKnZtZikNCj4gIAkJCQl2bWYtPmFkZHJlc3MpOw0KPiAgCQlpZiAoIW5ld19wYWdlKQ0K
PiAgCQkJZ290byBvb207DQo+IC0JCWNvd191c2VyX3BhZ2UobmV3X3BhZ2UsIG9sZF9wYWdlLCB2
bWYtPmFkZHJlc3MsIHZtYSk7DQo+ICsNCj4gKwkJaWYgKCFjb3dfdXNlcl9wYWdlKG5ld19wYWdl
LCBvbGRfcGFnZSwgdm1mKSkgew0KPiArCQkJLyoNCj4gKwkJCSAqIENPVyBmYWlsZWQsIGlmIHRo
ZSBmYXVsdCB3YXMgc29sdmVkIGJ5IG90aGVyLA0KPiArCQkJICogaXQncyBmaW5lLiBJZiBub3Qs
IHVzZXJzcGFjZSB3b3VsZCByZS1mYXVsdCBvbg0KPiArCQkJICogdGhlIHNhbWUgYWRkcmVzcyBh
bmQgd2Ugd2lsbCBoYW5kbGUgdGhlIGZhdWx0DQo+ICsJCQkgKiBmcm9tIHRoZSBzZWNvbmQgYXR0
ZW1wdC4NCj4gKwkJCSAqLw0KPiArCQkJcHV0X3BhZ2UobmV3X3BhZ2UpOw0KPiArCQkJaWYgKG9s
ZF9wYWdlKQ0KPiArCQkJCXB1dF9wYWdlKG9sZF9wYWdlKTsNCj4gKwkJCXJldHVybiAwOw0KPiAr
CQl9DQo+ICAJfQ0KPiANCj4gIAlpZiAobWVtX2Nncm91cF90cnlfY2hhcmdlX2RlbGF5KG5ld19w
YWdlLCBtbSwgR0ZQX0tFUk5FTCwNCj4gJm1lbWNnLCBmYWxzZSkpDQo+IC0tDQo+IDIuMTcuMQ0K
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
