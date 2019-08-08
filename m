Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD63E8671D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:30:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFyHmkaxA6q3sFmV3XIscg1qsSxFBLnffdCGFHF9MKw=; b=TqWyzeq0tHR8Qf
	bRrlsKtQOUUeAmVZasxBXgXIUzWtTRlGnKkVWXkENLOAitiXdBxzCzFkOIy/qTEx5VqoIMUYvzau4
	unkfgY38itIt5pvVmt4bn8w8YMF/ninRbKBZ8Gb+lKICSnGqJ8PkMLN6O6AFHyr6oiDfT+VMtvzHb
	7eBRFzEfUWneH1zIMR8G/9m4Wz4UNKhKAt32DOv1f5bjdku6blbYZL4cD7mrTCrWa0W8c4BPEnSe3
	R2jliX4J0nNaR7ehwYZOT4a/lDJct3pHTdofijKcK5Ax1xKBJcm61JLbgR5rUIgjsPGxxsDjtpIXr
	58k4W4pjcwvvF3cR6DGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlJ8-0005eg-Gn; Thu, 08 Aug 2019 16:30:30 +0000
Received: from mail-eopbgr20061.outbound.protection.outlook.com ([40.107.2.61]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlIx-0005e4-CZ
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DFNoaE82fbwF1pLpierq5ugKy9VddWwueDEfMzm07Qc=;
 b=7LUZFP4Z7EFFGreUlxmsqBzKd137RlC0g9WbCpKTxrn6MM2SGKCOYXqvQIUEGGKOKbRAA01DgKHBU2Wt9Q3iEvqYhaB5Xt5tobV3fPSiAgosyrL4iH6DTXB9VMtyTx/CnW7Xr2O9jUnqaJfIInLoHtsgi+vQA1e+t8VGL1/jAso=
Received: from DB7PR08CA0062.eurprd08.prod.outlook.com (2603:10a6:10:26::39)
 by HE1PR0802MB2602.eurprd08.prod.outlook.com (2603:10a6:3:e2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14; Thu, 8 Aug
 2019 16:30:15 +0000
Received: from DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e0a::203) by DB7PR08CA0062.outlook.office365.com
 (2603:10a6:10:26::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.16 via Frontend
 Transport; Thu, 8 Aug 2019 16:30:15 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5EUR03FT033.mail.protection.outlook.com (10.152.20.76) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 8 Aug 2019 16:30:14 +0000
Received: ("Tessian outbound 1e6e633a5b56:v26");
 Thu, 08 Aug 2019 16:30:09 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5dc4d4d36e4d8eae
X-CR-MTA-TID: 64aa7808
Received: from 4ec352b2b000.1 (cr-mta-lb-1.cr-mta-net [104.47.9.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 97789F70-CE43-4B58-9E3F-625BD6BD1D00.1; 
 Thu, 08 Aug 2019 16:30:04 +0000
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2057.outbound.protection.outlook.com [104.47.9.57])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4ec352b2b000.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Thu, 08 Aug 2019 16:30:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bixfryjyP5uhqQNBOQVJI8hHrvCuPbrLE+84f3MrCaN8ECiXUFc8wLrxjO1ZaYWOnUKMrwc1TXx4HiGPiGnfkVjPYHeES51KgucH2rLtg1U5xlgMdyCCn8Nudq6px8HQFCut09SHhkC1dUI4ckUAocnvjponY5mtps1M8EUVQnZxYMRhs1XCp9jyPSne0xdq/qTQ09u+NAgDDIJ6N6wwhS6yKPciI9sJYonLELvgK0YXdJbVK7dlVtDEC1BGUSsa6SFAsXRyJtG1iEstM/bXjHCByqpDN4q3P1LbXRQH2xKNDOkauwPblT0grpbvkQ2/jf4mjX2aEpt9yERMLXAZIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DFNoaE82fbwF1pLpierq5ugKy9VddWwueDEfMzm07Qc=;
 b=TVFbf1Y3uEHg5hNAKBVMULbZEgtn2/UHdSWBAZQg5WSaBMhpHprdMkNnY8RYcA6gKyOGPCqh+HKK/bVCkVE/HqG/2KpMmt2jMPZhdIyl2klY1HAzgl+0BDGEXgnwaW30X0r/8ywFgKfHTp0x2wlarh1AMJRbKmJoGWp/0+xElydjyYvkWzs34XGg32fS6+pswb7E2d73XzQpkQj6hyaLZyv7zoRfu6/VQCZENldsyuvcY4Me8sG5bpeht9ibRmICH+mtQSfKjrI7knI/sMraYYk4UCOM4eUkWTXHdxCkKYuu30798uCaK3FXfHNK6i7yKf3/gqYecUTAnVLUI4p2/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DFNoaE82fbwF1pLpierq5ugKy9VddWwueDEfMzm07Qc=;
 b=7LUZFP4Z7EFFGreUlxmsqBzKd137RlC0g9WbCpKTxrn6MM2SGKCOYXqvQIUEGGKOKbRAA01DgKHBU2Wt9Q3iEvqYhaB5Xt5tobV3fPSiAgosyrL4iH6DTXB9VMtyTx/CnW7Xr2O9jUnqaJfIInLoHtsgi+vQA1e+t8VGL1/jAso=
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com (10.172.219.8) by
 AM4PR0802MB2226.eurprd08.prod.outlook.com (10.172.215.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.15; Thu, 8 Aug 2019 16:30:02 +0000
Received: from AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a]) by AM4PR0802MB2307.eurprd08.prod.outlook.com
 ([fe80::e854:32de:1cad:f93a%9]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 16:30:01 +0000
From: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
To: Catalin Marinas <Catalin.Marinas@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Thread-Topic: [PATCH v7 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.rst
Thread-Index: AQHVTThJtBlc8zHC8EmoKLcy3EHPqqbxcpmA
Date: Thu, 8 Aug 2019 16:30:01 +0000
Message-ID: <c73e76dd-de90-f5de-7809-5118270471c8@arm.com>
References: <20190807155321.9648-1-catalin.marinas@arm.com>
 <20190807155321.9648-2-catalin.marinas@arm.com>
In-Reply-To: <20190807155321.9648-2-catalin.marinas@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
x-originating-ip: [217.140.106.55]
x-clientproxiedby: LO2P265CA0151.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9::19) To AM4PR0802MB2307.eurprd08.prod.outlook.com
 (2603:10a6:200:61::8)
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 631cd8e4-1bb3-47a8-47ea-08d71c1db0cc
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM4PR0802MB2226; 
X-MS-TrafficTypeDiagnostic: AM4PR0802MB2226:|HE1PR0802MB2602:
X-Microsoft-Antispam-PRVS: <HE1PR0802MB2602CA5D3879DA035C16088DEDD70@HE1PR0802MB2602.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:8882;OLM:8882;
x-forefront-prvs: 012349AD1C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(979002)(4636009)(396003)(136003)(346002)(366004)(39860400002)(376002)(51444003)(199004)(189003)(31696002)(86362001)(66946007)(2616005)(486006)(476003)(76176011)(66476007)(4326008)(64126003)(81156014)(8936002)(66556008)(81166006)(64756008)(6486002)(8676002)(66446008)(44832011)(256004)(7736002)(71200400001)(305945005)(6436002)(71190400001)(229853002)(53936002)(6512007)(14454004)(2501003)(3846002)(6116002)(65826007)(99286004)(5660300002)(6246003)(25786009)(54906003)(316002)(58126008)(110136005)(446003)(2906002)(186003)(36756003)(26005)(53546011)(102836004)(478600001)(386003)(66066001)(65806001)(31686004)(6506007)(65956001)(11346002)(52116002)(969003)(989001)(999001)(1009001)(1019001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM4PR0802MB2226;
 H:AM4PR0802MB2307.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: vHduti/4snOd9pz4x3iZLF0uY8tXP+GK0Vt+kjPorCd7n2gnQgGc9ZmDxgRejwcKBCoFpzNaJEPgSddy+R/D8lDeoZdmLvoPJk5sXI7vcB4mJ5f57h+czM98hZTiHd9ZpWvp9qyOFeeDJvn2JWgh8WwUKdIGFy8Rw+Z1taHHMmYb7LPSnvQy4GF0B7cscAUym9kpuOktqm3cdYkqMhVI5KSqW67XlRMM/Z6vuT648xazc21TDMLCnuL44ShDwbHPp6TF1yt4jvWw526CyCcZBCt8oe3GPKY71aVi1h2yTfhaVL/pClmcdPUGv8udPxgZx8TqEQgKSEbM9O20gvQ3hTvnuci4eF9kSiJ8+EKuMGcTfI2hiJ7NqRQfHrpFr7OG1qaWY59eoXOF/BZWIS1pD8iGXFtzU0TE/rvtrrSJJIY=
Content-ID: <2416489F113EC049B7C1E80E7213516F@eurprd08.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0802MB2226
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Szabolcs.Nagy@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: DB5EUR03FT033.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: =?utf-8?B?Q0lQOjYzLjM1LjM1LjEyMztJUFY6Q0FMO1NDTDotMTtDVFJZOklFO0VGVjpO?=
 =?utf-8?B?TEk7U0ZWOk5TUE07U0ZTOigxMDAwOTAyMCkoOTc5MDAyKSg0NjM2MDA5KSgz?=
 =?utf-8?B?NzYwMDIpKDM0NjAwMikoMzk4NjA0MDAwMDIpKDEzNjAwMykoMzk2MDAzKSgy?=
 =?utf-8?B?OTgwMzAwMDAyKSgxODkwMDMpKDE5OTAwNCkoNTE0NDQwMDMpKDUzNTQ2MDEx?=
 =?utf-8?B?KSg2NTA2MDA3KSg0MzYwMDMpKDUwNDY2MDAyKSg2MjQ2MDAzKSg4OTM2MDAy?=
 =?utf-8?B?KSgzNTYwMDQpKDY1MTIwMDcpKDIyOTg1MzAwMikoMjU3ODYwMDkpKDEwNzg4?=
 =?utf-8?B?NjAwMykoNDMyNjAwOCkoNjQxMjYwMDMpKDMxNjAwMikoODYzNjIwMDEpKDEx?=
 =?utf-8?B?MDEzNjAwNSkoNTQ5MDYwMDMpKDI2ODI2MDAzKSg0Nzg2MDAwMDEpKDQ4NjAw?=
 =?utf-8?B?NikoODExNjYwMDYpKDQ0NjAwMykoMTEzNDYwMDIpKDY0ODYwMDIpKDQ3NjAw?=
 =?utf-8?B?MykoODExNTYwMTQpKDU4MTI2MDA4KSgxMjYwMDIpKDI2MTYwMDUpKDMxNjk2?=
 =?utf-8?B?MDAyKSgzNjc1NjAwMykoMjkwNjAwMikoNzYxNzYwMTEpKDYzMzcwNDAwMDAx?=
 =?utf-8?B?KSg0Nzc3NjAwMykoMjUwMTAwMykoNjMzNTA0MDAwMDEpKDMzNjAxMikoNjU4?=
 =?utf-8?B?MjYwMDcpKDYxMTYwMDIpKDIyNzU2MDA2KSgyNjAwNSkoMTQ0NTQwMDQpKDg2?=
 =?utf-8?B?NzYwMDIpKDU2NjAzMDAwMDIpKDE4NjAwMykoMzg2MDAzKSgxMDI4MzYwMDQp?=
 =?utf-8?B?KDI0ODYwMDMpKDIzNjc2MDA0KSg5OTI4NjAwNCkoMzg0NjAwMikoNjU4MDYw?=
 =?utf-8?B?MDEpKDY1OTU2MDAxKSg2NjA2NjAwMSkoMzE2ODYwMDQpKDc2MTMwNDAwMDAx?=
 =?utf-8?B?KSg3MDIwNjAwNikoNzA1ODYwMDcpKDc3MzYwMDIpKDMwNTk0NTAwNSkoOTY5?=
 =?utf-8?B?MDAzKSg5ODkwMDEpKDk5OTAwMSkoMTAwOTAwMSkoMTAxOTAwMSk7RElSOk9V?=
 =?utf-8?B?VDtTRlA6MTEwMTtTQ0w6MTtTUlZSOkhFMVBSMDgwMk1CMjYwMjtIOjY0YWE3?=
 =?utf-8?B?ODA4LW91dGJvdW5kLTEubXRhLmdldGNoZWNrcmVjaXBpZW50LmNvbTtGUFI6?=
 =?utf-8?B?O1NQRjpUZW1wRXJyb3I7TEFORzplbjtQVFI6ZWMyLTYzLTM1LTM1LTEyMy5l?=
 =?utf-8?Q?u-west-1.compute.amazonaws.com;MX:1;A:1;?=
X-MS-Office365-Filtering-Correlation-Id-Prvs: bd58a293-aa05-4b53-ddea-08d71c1da909
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:HE1PR0802MB2602; 
NoDisclaimer: True
X-Forefront-PRVS: 012349AD1C
X-Microsoft-Antispam-Message-Info: jVlJulB3PECAJcWwm8SbhL/jj72r+YBYmMWjyIADH4qG4mTKE/tYNwJSaru2YpGj8DdzCltVgBxKhz4ppYO3yu+moOfaBsWFrfJ+8EKyJNjB3fuBCkWh10f8otgFSWZwLFTxOlcuratJvGp8Vz9wxzOpaV6hvnswvEvS772BGRlIlmWi916nlpeSJrMGLnUgM/ugeaj0Z7uGUQLT1SIWsweatoKGbtg4hoFnzNg6VYbFl4owu22Fwae+SJ7rIdKz73frCI1oYq+B1UwSgPndpdLmXMrMtRnAPWHOC3sL4MuFWLFjQH149MXuibbOTcEiLZ3E+jhdvftM5TUiNZl6zten1ReAtaBGxCHG8aG6RiMb1uII/sfqcdS1gDypPW2RecRx1NVTdknjvQkM4GWSyxhN7sw26RLctG61HRC0WUU=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2019 16:30:14.1461 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 631cd8e4-1bb3-47a8-47ea-08d71c1db0cc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2602
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_093019_435486_A5A62D08 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.61 listed in list.dnswl.org]
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
Cc: "linux-arch@vger.kernel.org" <linux-arch@vger.kernel.org>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Will
 Deacon <Will.Deacon@arm.com>, Dave Hansen <dave.hansen@intel.com>,
 nd <nd@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/08/2019 16:53, Catalin Marinas wrote:
> From: Vincenzo Frascino <vincenzo.frascino@arm.com>
> 
> On arm64 the TCR_EL1.TBI0 bit has been always enabled hence
> the userspace (EL0) is allowed to set a non-zero value in the
> top byte but the resulting pointers are not allowed at the
> user-kernel syscall ABI boundary.
> 
> With the relaxed ABI proposed through this document, it is now possible
> to pass tagged pointers to the syscalls, when these pointers are in
> memory ranges obtained by an anonymous (MAP_ANONYMOUS) mmap().

description needs to be updated not to restrict tags
to anon mmap.

> +3. AArch64 Tagged Address ABI Exceptions
> +-----------------------------------------
> +
> +The behaviour described in section 2, with particular reference to the
> +acceptance by the syscalls of any valid tagged pointer, is not applicable
> +to the following cases:
> +
> +- mmap() addr parameter.
> +
> +- mremap() new_address parameter.
> +
> +- prctl(PR_SET_MM, ``*``, ...) other than arg2 PR_SET_MM_MAP and
> +  PR_SET_MM_MAP_SIZE.
> +
> +- prctl(PR_SET_MM, PR_SET_MM_MAP{,_SIZE}, ...) struct prctl_mm_map fields.
> +
> +Any attempt to use non-zero tagged pointers will lead to undefined
> +behaviour.

i think that brk may be affected too by whatever that's
causing problems in mmap.

otherwise the text looks good to me.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
