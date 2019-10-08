Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B29CF033
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 03:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v1chWNRJuJ1pYBjm80OkwmKKSrEMMlH8mg0igmX0yjI=; b=mFQVTzpXZEfjHw
	w23ce5wQ28RdL3VxwwDnBtOREK/zaWHBj8t6QzTBtMtrm/0QvlI8W/Pu6SIflUxFUanokQGwcNyWt
	4OmiTlCRfNe6vc1Z30gYJ1/x2rSM/mYsbUclwaB2cull4688/8spaq2z0LXuIvGFPg+i4AaUipFtv
	z0PhP7zO6tFCRQwUyQaGSf8neUHvQAH9kxRHbHvgYazvWoeS6IFlgEekuUaA6HSi5Ri7WYuCfRHfI
	qjTga7rvYXlgANl2XjU57mEqBE1CxPk06Yf++Hw0O4lERK9VyEpYsM80Q+NEiYuHQFL7oupXXEfRk
	A/B0M1mCto8g5ZavWciA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHe3M-0002NC-3L; Tue, 08 Oct 2019 01:12:40 +0000
Received: from mail-eopbgr130050.outbound.protection.outlook.com
 ([40.107.13.50] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHe3A-0002MU-J1
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 01:12:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B1KtVEPnAF8CPcSIEqZyMNBK0j289yLKVGvVBXMEJdI=;
 b=4OI8xI+CE/cCAW6CKLB+ocmyhk5EAW7AZySyjiaN+UBjBpCaDCmW/PovppkXOjQFGb4ixR7ZDDmALXjLeai8hQA63TAfxzZOluLV/8no4QSmo+nJYc5u60rmasnDGLUcoRSjMHIqm08Yl1a8unl3dDtJMJK2vvZ8IQKRVmC9DcM=
Received: from VI1PR08CA0189.eurprd08.prod.outlook.com (2603:10a6:800:d2::19)
 by DB8PR08MB5209.eurprd08.prod.outlook.com (2603:10a6:10:e5::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Tue, 8 Oct
 2019 01:12:22 +0000
Received: from AM5EUR03FT060.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::206) by VI1PR08CA0189.outlook.office365.com
 (2603:10a6:800:d2::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24 via Frontend
 Transport; Tue, 8 Oct 2019 01:12:21 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=none
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT060.mail.protection.outlook.com (10.152.16.160) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.15 via Frontend Transport; Tue, 8 Oct 2019 01:12:20 +0000
Received: ("Tessian outbound 927f2cdd66cc:v33");
 Tue, 08 Oct 2019 01:12:14 +0000
X-CR-MTA-TID: 64aa7808
Received: from 3540e2e27d1d.2 (ip-172-16-0-2.eu-west-1.compute.internal
 [104.47.1.56]) by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 C98FBF4A-DF32-4533-A4CA-FDB2DB63A7ED.1; 
 Tue, 08 Oct 2019 01:12:09 +0000
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur01lp2056.outbound.protection.outlook.com [104.47.1.56])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3540e2e27d1d.2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384);
 Tue, 08 Oct 2019 01:12:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GWa2KhhqBYoI5BwXEFugH5b330ekeXNWOXxUXFFxpnsgFHfRi+l46DfdPdB70CYNQnLZGX7Vo/9WfJ6aPPMRzUlnpZBDpAae+OdXVn8eCyRJS1KS/x0fxVqPQEX/XETo0UtZeMwfwhkyaQMbq1gwzgh3hJxxQ68h9vdcCMI27xZOyRWEwp4hXFYV46/gk9/tzrcobEG2c3a5uQCgVHOquK5xzRs31ecDpGbc1tYlsXI6vQP809npLyv8xbKxf8qF0eMC+zYM3+f6b6f8cXytcuPK0fu9yzBd1JUEwM8yWXi6nVR1B2HwHL93HwbzYlxgSDQKvyIXHa3NGCEQsZEnzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcV5EiDK+zcTCtnFogim9/sz9OF/vUUGmE+ZfS9484A=;
 b=B2kIEcNaXilyGlQC/yEcE3dEGMgZXii+V/mLa2jIB8O1/uafirKgTsFi4SGCQIl2PS8XdOLZ1r1Y2TaBhP/QTk9YzGWGaPhlDaHnSZ3p41HesnSnWTBzLR2D+zl0j/a8/jLbAa4HFtU+UnO3n561puCvCU0bGRKPmrNszfzrVrCBPu/5maZfQ1m9qUcyhCHGmC5urBv5z4MHV2l3wHC/NSUb934zogUlEfwzTIMhC/Xz10ca//moSEnkXakTvPEBgO15b2xnN5LQkm0cprMypjOKOFC5VS/DUNoWZCtTzuVkI+TdZ6Ku7oUFElLBQZAW+jV4KGkNVfkkv8UB3qz6Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BcV5EiDK+zcTCtnFogim9/sz9OF/vUUGmE+ZfS9484A=;
 b=5y16yN4/GbgqRiLKZVEqgoogx/XvFh5s4HZ4OXu+tII041PoJJGx2ggD6xLOZLb1f73n812eT0ujydhsIObqHiLdIN/JjGsAbOUavipNf+XCrpMGj3t5Ri600zTjFSV/mlSf3ub3o+0J1QVyU0lavwuA3P9+aB2q0AueDlx5BZE=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3833.eurprd08.prod.outlook.com (20.178.46.81) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2327.24; Tue, 8 Oct 2019 01:12:05 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::f9f9:ad51:6636:42f0%6]) with mapi id 15.20.2327.023; Tue, 8 Oct 2019
 01:12:05 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>
Subject: RE: [PATCH v10 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Topic: [PATCH v10 1/3] arm64: cpufeature: introduce helper
 cpu_has_hw_af()
Thread-Index: AQHVdzKEwsCE/iaM30SJQYun0G7iCadFwGmAgAAGtgCACjS0wA==
Date: Tue, 8 Oct 2019 01:12:05 +0000
Message-ID: <DB7PR08MB30824EFD975EE9BACAC7FD52F79A0@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190930015740.84362-1-justin.he@arm.com>
 <20190930015740.84362-2-justin.he@arm.com>
 <20191001125446.gknoofnm7az4wqf5@willie-the-truck>
 <20191001141848.762296bd@why>
In-Reply-To: <20191001141848.762296bd@why>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 55fdb1af-cf51-4ea9-b52d-4913c455a40e.1
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: c0325614-3f1b-4069-26be-08d74b8c915e
X-MS-Office365-Filtering-HT: Tenant
X-MS-TrafficTypeDiagnostic: DB7PR08MB3833:|DB7PR08MB3833:|DB8PR08MB5209:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB520924FE3681D237CAD875AFF79A0@DB8PR08MB5209.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:9508;OLM:9508;
x-forefront-prvs: 01842C458A
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(366004)(39860400002)(13464003)(199004)(189003)(3846002)(476003)(229853002)(486006)(5660300002)(7736002)(74316002)(7416002)(6506007)(6246003)(53546011)(2906002)(305945005)(52536014)(14444005)(256004)(446003)(25786009)(4326008)(11346002)(6116002)(66066001)(66446008)(26005)(64756008)(66556008)(66476007)(76116006)(186003)(6436002)(99286004)(33656002)(76176011)(8676002)(54906003)(81166006)(316002)(7696005)(9686003)(8936002)(66946007)(86362001)(71190400001)(81156014)(71200400001)(14454004)(102836004)(110136005)(55236004)(55016002)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3833;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: BZJu/lwb0M0cstfVvr678UfGJ3Die4b5k+58dKoPCy6/+J7MgIrCKoUEsg9C9HChyxswVhK1CE3Q476jLK/XzSSkogMhhm6uCpPjq94OYVebNRLlIrdzsj1BywK83IXUXc8dD1EBreuVSFRlG0nVO+ue8ouVSGFBsNluaJau+xSl07C0PEjQOn/ewx+HcGFcDF27VZGxhnT2/O1ihI9daJKV6XdbE7qtq5nq9uf+8n4NVAT5WKviaCCJ9GYSUOYE8TgJFH6FXeIgLGV8zrygInAiHUFPxVSpp4kGq7WQtU0NxxBIjXTioYVRYTVhLscBls3BllTSDgCPQNCPw9xQwiyvIEwGOgObXr/2zhqYdSBHAx8ZRufF1mKVXDtyPi6kSs+7zll2SCKZSjd7NSUTdzrxwfRHt6SsEqjkiQWoEhE=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3833
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(39860400002)(136003)(396003)(199004)(189003)(40434004)(13464003)(25786009)(7736002)(23696002)(305945005)(8936002)(14454004)(5024004)(6116002)(81166006)(3846002)(47136003)(86362001)(76130400001)(81156014)(33656002)(478600001)(26826003)(6246003)(14444005)(47776003)(229853002)(8676002)(36906005)(2906002)(356004)(48336001)(9686003)(66066001)(316002)(4326008)(55016002)(53546011)(6506007)(5660300002)(70586007)(7696005)(26005)(102836004)(110136005)(54906003)(74316002)(446003)(63350400001)(70206006)(22756006)(11346002)(126002)(436003)(336012)(486006)(52536014)(76176011)(186003)(50466002)(476003)(99286004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB8PR08MB5209;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; A:1; MX:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 7d94ae5e-259f-400c-d4b4-08d74b8c885e
X-Forefront-PRVS: 01842C458A
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dy/je9S6rIB+6Y4/P1I/MU+mxpK4II2r4caBdia8gn8UjK9UeoZW/irlXOekvyyV4KzhXRE/JlWoUm+XapnqT9kLwpZRHtVrdOrXC6oT/YZ00oESqnhL+62k59oEEGRRFWNr2xotF/ukDFGlPOXgOhNX4LCsuuoCeTxLNllA0fEw3vUVNKB8hPW0UOuoLQ1TBqo+8ES7U9HWujSxwAFF6HRz6SdAwQrzNSif9rVjBXrTuQexguagnoYXiiP13zgdHBF0jKlww/sU2UbmGtkVKte3sxAIZarPOo5G2un/MEGEo5NbJNCnO5/cE0eMhjjohJ0z04JNpOeif+yjQT2RHnF6+YHSNBQnFuUs2llI+Rv51XIvfKJR9gq9Lff7wLfNMFzqS1FR+fm/HrJszbzzD4oMN8tlzgx1ALVGEh9Pn3A=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2019 01:12:20.2055 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c0325614-3f1b-4069-26be-08d74b8c915e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB5209
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_181228_695330_DCE13787 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.50 listed in list.dnswl.org]
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
 Punit Agrawal <punitagrawal@gmail.com>,
 "hejianet@gmail.com" <hejianet@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andrew Morton <akpm@linux-foundation.org>,
 "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgV2lsbCBhbmQgTWFyYw0KU29ycnkgZm9yIHRoZSBsYXRlIHJlc3BvbnNlLCBqdXN0IGNhbWUg
YmFjayBmcm9tIGEgdmFjYXRpb24uDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4g
RnJvbTogTWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4NCj4gU2VudDogMjAxOcTqMTDUwjHI
1SAyMToxOQ0KPiBUbzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4NCj4gQ2M6IEp1c3Rp
biBIZSAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxKdXN0aW4uSGVAYXJtLmNvbT47IENhdGFsaW4N
Cj4gTWFyaW5hcyA8Q2F0YWxpbi5NYXJpbmFzQGFybS5jb20+OyBNYXJrIFJ1dGxhbmQNCj4gPE1h
cmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UgPEphbWVzLk1vcnNlQGFybS5jb20+Ow0K
PiBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFkLm9yZz47IEtpcmlsbCBBLiBTaHV0ZW1v
dg0KPiA8a2lyaWxsLnNodXRlbW92QGxpbnV4LmludGVsLmNvbT47IGxpbnV4LWFybS1rZXJuZWxA
bGlzdHMuaW5mcmFkZWFkLm9yZzsNCj4gbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZzsgbGlu
dXgtbW1Aa3ZhY2sub3JnOyBQdW5pdCBBZ3Jhd2FsDQo+IDxwdW5pdGFncmF3YWxAZ21haWwuY29t
PjsgVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+Ow0KPiBBbmRyZXcgTW9ydG9u
IDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPjsgaGVqaWFuZXRAZ21haWwuY29tOyBLYWx5DQo+
IFhpbiAoQXJtIFRlY2hub2xvZ3kgQ2hpbmEpIDxLYWx5LlhpbkBhcm0uY29tPg0KPiBTdWJqZWN0
OiBSZTogW1BBVENIIHYxMCAxLzNdIGFybTY0OiBjcHVmZWF0dXJlOiBpbnRyb2R1Y2UgaGVscGVy
DQo+IGNwdV9oYXNfaHdfYWYoKQ0KPg0KPiBPbiBUdWUsIDEgT2N0IDIwMTkgMTM6NTQ6NDcgKzAx
MDANCj4gV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+ID4gT24gTW9u
LCBTZXAgMzAsIDIwMTkgYXQgMDk6NTc6MzhBTSArMDgwMCwgSmlhIEhlIHdyb3RlOg0KPiA+ID4g
V2UgdW5jb25kaXRpb25hbGx5IHNldCB0aGUgSFdfQUZEQk0gY2FwYWJpbGl0eSBhbmQgb25seSBl
bmFibGUgaXQgb24NCj4gPiA+IENQVXMgd2hpY2ggcmVhbGx5IGhhdmUgdGhlIGZlYXR1cmUuIEJ1
dCBzb21ldGltZXMgd2UgbmVlZCB0byBrbm93DQo+ID4gPiB3aGV0aGVyIHRoaXMgY3B1IGhhcyB0
aGUgY2FwYWJpbGl0eSBvZiBIVyBBRi4gU28gZGVjb3VwbGUgQUYgZnJvbQ0KPiA+ID4gREJNIGJ5
IG5ldyBoZWxwZXIgY3B1X2hhc19od19hZigpLg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IEppYSBIZSA8anVzdGluLmhlQGFybS5jb20+DQo+ID4gPiBTdWdnZXN0ZWQtYnk6IFN1enVraSBQ
b3Vsb3NlIDxTdXp1a2kuUG91bG9zZUBhcm0uY29tPg0KPiA+ID4gUmV2aWV3ZWQtYnk6IENhdGFs
aW4gTWFyaW5hcyA8Y2F0YWxpbi5tYXJpbmFzQGFybS5jb20+DQo+ID4gPiAtLS0NCj4gPiA+ICBh
cmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaCB8IDEwICsrKysrKysrKysNCj4gPiA+
ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaA0KPiBiL2FyY2gvYXJtNjQv
aW5jbHVkZS9hc20vY3B1ZmVhdHVyZS5oDQo+ID4gPiBpbmRleCA5Y2RlNWQyZTc2OGYuLjk0OWJj
N2M4NTAzMCAxMDA2NDQNCj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vY3B1ZmVh
dHVyZS5oDQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL2NwdWZlYXR1cmUuaA0K
PiA+ID4gQEAgLTY1OSw2ICs2NTksMTYgQEAgc3RhdGljIGlubGluZSB1MzINCj4gaWRfYWE2NG1t
ZnIwX3BhcmFuZ2VfdG9fcGh5c19zaGlmdChpbnQgcGFyYW5nZSkNCj4gPiA+ICAgZGVmYXVsdDog
cmV0dXJuIENPTkZJR19BUk02NF9QQV9CSVRTOw0KPiA+ID4gICB9DQo+ID4gPiAgfQ0KPiA+ID4g
Kw0KPiA+ID4gKy8qIENoZWNrIHdoZXRoZXIgaGFyZHdhcmUgdXBkYXRlIG9mIHRoZSBBY2Nlc3Mg
ZmxhZyBpcyBzdXBwb3J0ZWQgKi8NCj4gPiA+ICtzdGF0aWMgaW5saW5lIGJvb2wgY3B1X2hhc19o
d19hZih2b2lkKQ0KPiA+ID4gK3sNCj4gPiA+ICsgaWYgKElTX0VOQUJMRUQoQ09ORklHX0FSTTY0
X0hXX0FGREJNKSkNCj4gPiA+ICsgICAgICAgICByZXR1cm4gcmVhZF9jcHVpZChJRF9BQTY0TU1G
UjFfRUwxKSAmIDB4ZjsNCj4gPg0KPiA+IDB4Zj8gSSB0aGluayB3ZSBzaG91bGQgaGF2ZSBhIG1h
c2sgaW4gc3lzcmVnLmggZm9yIHRoaXMgY29uc3RhbnQuDQo+DQo+IFdlIGRvbid0IGhhdmUgdGhl
IG1hc2ssIGJ1dCB3ZSBjZXJ0YWlubHkgaGF2ZSB0aGUgc2hpZnQuDQo+DQo+IEdFTk1BU0soSURf
QUE2NE1NRlIxX0hBREJTX1NISUZUICsgMywNCj4gSURfQUE2NE1NRlIxX0hBREJTX1NISUZUKSBp
cyBhIGJpdA0KPiBvZiBhIG1vdXRoZnVsIHRob3VnaC4gSWRlYWxseSwgd2UnZCBoYXZlIGEgaGVs
cGVyIGZvciB0aGF0Lg0KPg0KT2ssIEkgd2lsbCBpbXBsZW1lbnQgdGhlIGhlbHBlciBpZiB0aGVy
ZSBpc24ndCBzbyBmYXIuDQpBbmQgdGhlbiByZXBsYWNlIHRoZSAweGYgd2l0aCBpdC4NCg0KDQot
LQ0KQ2hlZXJzLA0KSnVzdGluIChKaWEgSGUpDQoNCg0KPiAgICAgICBNLg0KPiAtLQ0KPiBXaXRo
b3V0IGRldmlhdGlvbiBmcm9tIHRoZSBub3JtLCBwcm9ncmVzcyBpcyBub3QgcG9zc2libGUuDQpJ
TVBPUlRBTlQgTk9USUNFOiBUaGUgY29udGVudHMgb2YgdGhpcyBlbWFpbCBhbmQgYW55IGF0dGFj
aG1lbnRzIGFyZSBjb25maWRlbnRpYWwgYW5kIG1heSBhbHNvIGJlIHByaXZpbGVnZWQuIElmIHlv
dSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFzZSBub3RpZnkgdGhlIHNlbmRl
ciBpbW1lZGlhdGVseSBhbmQgZG8gbm90IGRpc2Nsb3NlIHRoZSBjb250ZW50cyB0byBhbnkgb3Ro
ZXIgcGVyc29uLCB1c2UgaXQgZm9yIGFueSBwdXJwb3NlLCBvciBzdG9yZSBvciBjb3B5IHRoZSBp
bmZvcm1hdGlvbiBpbiBhbnkgbWVkaXVtLiBUaGFuayB5b3UuDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
