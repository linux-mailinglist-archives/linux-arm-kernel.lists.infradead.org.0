Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B74E85A89
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 08:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywdvGHIpvus9WD7uIz6VV66Um5qiDr+xE9i6eAsIkzg=; b=a2Ed9r6dLZMn0d
	akOXkpqwKISKyO89bPIRkJggZPLPBGSjGEXnQRDiMwUdz3pDKsyEZVaKR69EV19HcZBZf4byS4u8X
	tfviKOaAbGPfS/tjeSPbLM3S01xMLToLKcmfXx8MmU6D4p6C8I3knnnyJSReJrDwT2Hy9fhksu3KG
	VjNjm9IYIT0EmwBxpzk1eQmkpbzoaKcaJYZjnYQ9/hDSR9lY19ESI/yxeJMs+nQpAMARMNTWJITYC
	oUMwMQURmEjmU2ez0lwt5fp/KmAtIhcGjAh1qOLyyRHsndNF5/C/ghA4VJtbZW4+9XL3Rvl48kfJL
	4BeKblCLLYxpzBPzfnfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvbo4-0005Zb-9y; Thu, 08 Aug 2019 06:21:48 +0000
Received: from mail-eopbgr80040.outbound.protection.outlook.com ([40.107.8.40]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvbnh-0005X1-OL
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 06:21:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vcOf9Ty3BZ2RLoj/QIn9K4d5e8uJQl1EGUpZdgTQgEg=;
 b=JNMMUxyRHMZB+s3rAIaMh/xXslyPP8QXm1Bna0cvC5kfMpQ/CyP5VdKfVXJSzvx7my11sqqgnWB/5EJMc8tsclRY2MW+U6M4/Vgiptt5lnnJXmLZ7l1h5ykby9NJ+MN67pLlHI+C+dKLW6Y7KF8E9DGt2zPUqDVzuo9q9tgG71M=
Received: from VI1PR08CA0200.eurprd08.prod.outlook.com (2603:10a6:800:d2::30)
 by VI1PR0802MB2608.eurprd08.prod.outlook.com (2603:10a6:800:ae::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Thu, 8 Aug
 2019 06:21:18 +0000
Received: from AM5EUR03FT049.eop-EUR03.prod.protection.outlook.com
 (2a01:111:f400:7e08::209) by VI1PR08CA0200.outlook.office365.com
 (2603:10a6:800:d2::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.16 via Frontend
 Transport; Thu, 8 Aug 2019 06:21:18 +0000
Authentication-Results: spf=temperror (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; lists.infradead.org; dkim=pass (signature was
 verified) header.d=armh.onmicrosoft.com;lists.infradead.org; dmarc=temperror
 action=none header.from=arm.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of arm.com: DNS Timeout)
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT049.mail.protection.outlook.com (10.152.17.130) with
 Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18 via Frontend Transport; Thu, 8 Aug 2019 06:21:16 +0000
Received: ("Tessian outbound 6d016ca6b65d:v26");
 Thu, 08 Aug 2019 06:21:10 +0000
X-CR-MTA-TID: 64aa7808
Received: from 89f7c294953b.1 (cr-mta-lb-1.cr-mta-net [104.47.12.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 F41BB035-B700-4D88-9F39-67305AEFED2B.1; 
 Thu, 08 Aug 2019 06:21:05 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (mail-db3eur04lp2051.outbound.protection.outlook.com [104.47.12.51])
 by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 89f7c294953b.1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
 Thu, 08 Aug 2019 06:21:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g4UI63qjV2uLwzGpeUoYIJc/Epi260qUA2vPDPlGKtn+GmtLr2V/4WNf8+Debgu/hjBOVHhO8bT1v7ntsRx3TeOGK5ig0fYxDvINBdn/7E+MSY36yNKbQW7X/mbhbXCgZsjahZEirLN2ZOAf2NThLGwcVSOqy0X36W4posxTG16K5vSrCt942cXUyhYpmqVkpvIOGM9zN1vqF1dxMP2NMn3/LRgLQERR1xAZtfpVYSYVoRsBSijnp0Irv3hUgmtvgu0XJE0Nj7VAgyQG3YMd7PFChwoD1KMl3tS9EGjGxVgB2NYmL7UQIufsknQWDRuL84KlwTW9Ifbo6akFAGzttw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3T1C3O5XdwCImTjkZ8/j4FLOSx8Xrae5dvXLtrI09M0=;
 b=MT6yrmjYqcRfwbiEU18pMx5wQ9Ubl8R+xE6wowlbuaxF/selEKnTWgI4GjKR5lY3v7ofhpqs0qRds2T1C39IALFff8P/nBeSZX+FKMNRtXkDeNIG26jrtxi9VmklWimJ80bXba3gxR3IFnkLquyDcrRLA51wlAl33Evur7FaPyTpTWTav5f5Bpe30KUrQprKQHXhc953KIxIRsq6PEwnCIV/I2ysS5CigQteAVBizveFcHybC1r3tGnkW5tnsVXC1Ftu1OLOr+P7MTnrYEKFy/uhYrqAvGYa8y0P28i1YzdZsO0Jf3Ld7+khzvsCxtOrmAHhx3/1pbKPGVNXp0mMqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=arm.com;dmarc=pass action=none header.from=arm.com;dkim=pass
 header.d=arm.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com; 
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3T1C3O5XdwCImTjkZ8/j4FLOSx8Xrae5dvXLtrI09M0=;
 b=FuoCDVVhBhAmR+z3zIJKs85owLu6pW1a4Zcak5dqzPNCEBJW5a7HxVUXtdunMu1Z922ynBn3kHFOiOnI/s5aE8h83bkeTQ2RxunAhSP8q/SJs+qbOBOjgF77sbWKln26O4k9HUiHjscYWIEJHSLci+G/9dhpWAFN8LW2U0Yu/cw=
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com (52.134.110.24) by
 DB7PR08MB3563.eurprd08.prod.outlook.com (20.177.120.89) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.13; Thu, 8 Aug 2019 06:20:57 +0000
Received: from DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::a13f:5848:5d6d:beef]) by DB7PR08MB3082.eurprd08.prod.outlook.com
 ([fe80::a13f:5848:5d6d:beef%5]) with mapi id 15.20.2157.015; Thu, 8 Aug 2019
 06:20:56 +0000
From: "Justin He (Arm Technology China)" <Justin.He@arm.com>
To: Anshuman Khandual <Anshuman.Khandual@arm.com>, Catalin Marinas
 <Catalin.Marinas@arm.com>, Will Deacon <will@kernel.org>, Mark Rutland
 <Mark.Rutland@arm.com>, James Morse <James.Morse@arm.com>
Subject: RE: [PATCH] arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on
 arm64
Thread-Topic: [PATCH] arm64: mm: add missing PTE_SPECIAL in pte_mkdevmap on
 arm64
Thread-Index: AQHVTNzgFzj2oPN2PEG9bf5641PhWqbwt8+AgAAOLeA=
Date: Thu, 8 Aug 2019 06:20:56 +0000
Message-ID: <DB7PR08MB30823791749E5B083AF167B5F7D70@DB7PR08MB3082.eurprd08.prod.outlook.com>
References: <20190807045851.10772-1-justin.he@arm.com>
 <ce0be561-117c-ef94-6a26-f88c3ba21096@arm.com>
In-Reply-To: <ce0be561-117c-ef94-6a26-f88c3ba21096@arm.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: ca0af0bb-42c9-4549-8b97-cbb29de1d487.0
x-checkrecipientchecked: true
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
x-originating-ip: [113.29.88.7]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 8dced463-aeda-4c9c-72dc-08d71bc89ed2
X-MS-Office365-Filtering-HT: Tenant
X-Microsoft-Antispam-Untrusted: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(7168020)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB7PR08MB3563; 
X-MS-TrafficTypeDiagnostic: DB7PR08MB3563:|VI1PR0802MB2608:
X-Microsoft-Antispam-PRVS: <VI1PR0802MB2608E8DD9480F4069446E775F7D70@VI1PR0802MB2608.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
x-forefront-prvs: 012349AD1C
X-Forefront-Antispam-Report-Untrusted: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(376002)(136003)(39860400002)(346002)(51914003)(13464003)(199004)(189003)(55236004)(66476007)(66556008)(64756008)(9686003)(66446008)(66946007)(6506007)(102836004)(53546011)(71190400001)(71200400001)(14454004)(76116006)(76176011)(55016002)(5660300002)(8936002)(305945005)(8676002)(229853002)(26005)(81156014)(81166006)(6436002)(186003)(66066001)(7736002)(52536014)(316002)(74316002)(33656002)(4326008)(25786009)(110136005)(54906003)(6636002)(3846002)(6116002)(2906002)(53936002)(486006)(446003)(99286004)(11346002)(476003)(7696005)(478600001)(86362001)(256004)(6246003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR08MB3563;
 H:DB7PR08MB3082.eurprd08.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: arm.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info-Original: rFrMcQ1UC+gKsIyLRu0kSJrxaSv0mGsRo0Ugyseay4lwVMsS9raqI8xKETalLvodbGoIP+2eVZj0PedpGeg9EnfJpA8HlTD2MFPud+bMO0inoahx737URVhjNIt5NCOXwETe+Wf/pioMzAn727Rg3DsfzA6A7Kfq2IfhN38ATJuuqoxEkJjm9mICfFWZFejpKpfJoWR+lBXeuQEw5HDBAkjJfGPuV/Cx9ks0qSRGl1LDiW+PG/xPz3GH12CjnMpSASVoO8C++Xx0+fltpU0nqJy3PYlqxCFy6ZqNhsHFE8XuVxzZa3/grCYeZbJgJImitHgCKblSaBUaqvYLI9a1Ffw2i3A5JIKdIfc7AlBi5cEt/W33pv834OtPENLkPKfwzgBPziuM0fhJmM/fG2/qvZY+l/nprXRZI2nmaCsPQw0=
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3563
Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Justin.He@arm.com; 
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM5EUR03FT049.eop-EUR03.prod.protection.outlook.com
X-Forefront-Antispam-Report: CIP:63.35.35.123; IPV:CAL; SCL:-1; CTRY:IE;
 EFV:NLI; SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(136003)(376002)(2980300002)(51914003)(189003)(199004)(13464003)(40434004)(14444005)(86362001)(74316002)(7736002)(55016002)(107886003)(9686003)(356004)(305945005)(6116002)(6246003)(3846002)(22756006)(2906002)(6636002)(229853002)(70206006)(76130400001)(5660300002)(70586007)(52536014)(33656002)(8676002)(81156014)(186003)(81166006)(8936002)(50466002)(14454004)(26005)(99286004)(11346002)(476003)(436003)(446003)(63370400001)(63350400001)(316002)(36906005)(336012)(126002)(486006)(54906003)(110136005)(26826003)(25786009)(23676004)(478600001)(66066001)(2486003)(7696005)(76176011)(47776003)(102836004)(4326008)(6506007)(53546011)(5024004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0802MB2608;
 H:64aa7808-outbound-1.mta.getcheckrecipient.com; FPR:; SPF:TempError; LANG:en;
 PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com; MX:1; A:1; 
X-MS-Office365-Filtering-Correlation-Id-Prvs: 3e3795ec-460c-46bd-d635-08d71bc89300
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(710020)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0802MB2608; 
X-Forefront-PRVS: 012349AD1C
X-Microsoft-Antispam-Message-Info: 2ucKT5QkSdpWRazyvLmHF1Cc1yu5xRESPD9qf5CLfHQ5KgbJLKxLvBQHRonYILf5bRrJrYs6BNqJyNnwkTlgN3/AQBQHNa+SnBJtcHdE7mMX3TWGhF3G+2gSxrXIIEeckkC38NtDpcld2NPc/Z29JBLhHL4dZ2aWS56PtcMWcApslILnKBS3akseKJdadIfIBArGY3eN+V5glC8EogL+FNTpF1t18Mb8eQ1cUvtgWWQ+dbDBx1cq10CyIKV6AF3Iu9qfuACV4WAy8yvR5eYXegz5XULXJ5q4nyMmVNyjqeBMMkyD6r/5K2/+8WLZP1IUvFPNaph7c0AYqvD9Z5XIm56nGcy9Jn2ju5aPyZo/wCLkdSlSLSNO8Ug7C5LP1Goi0j1/bBfX9r5pks9Tazb0TvULIflFtdR/aZKGDRdbeLQ=
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2019 06:21:16.7465 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dced463-aeda-4c9c-72dc-08d71bc89ed2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d; Ip=[63.35.35.123];
 Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0802MB2608
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_232125_950477_24FA877F 
X-CRM114-Status: GOOD (  17.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.40 listed in list.dnswl.org]
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
Cc: Christoffer Dall <Christoffer.Dall@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jun Yao <yaojun8558363@gmail.com>, Qian Cai <cai@lca.pw>,
 Punit Agrawal <punitagrawal@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 Robin Murphy <Robin.Murphy@arm.com>, Alex Van Brunt <avanbrunt@nvidia.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQW5zaHVtYW4NClRoYW5rcyBmb3IgdGhlIGNvbW1lbnRzLCBwbGVhc2Ugc2VlIG15IGNvbW1l
bnRzIGJlbG93DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQW5zaHVt
YW4gS2hhbmR1YWwgPGFuc2h1bWFuLmtoYW5kdWFsQGFybS5jb20+DQo+IFNlbnQ6IDIwMTnlubQ4
5pyIOOaXpSAxMzoxOQ0KPiBUbzogSnVzdGluIEhlIChBcm0gVGVjaG5vbG9neSBDaGluYSkgPEp1
c3Rpbi5IZUBhcm0uY29tPjsgQ2F0YWxpbg0KPiBNYXJpbmFzIDxDYXRhbGluLk1hcmluYXNAYXJt
LmNvbT47IFdpbGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+Ow0KPiBNYXJrIFJ1dGxhbmQgPE1h
cmsuUnV0bGFuZEBhcm0uY29tPjsgSmFtZXMgTW9yc2UNCj4gPEphbWVzLk1vcnNlQGFybS5jb20+
DQo+IENjOiBDaHJpc3RvZmZlciBEYWxsIDxDaHJpc3RvZmZlci5EYWxsQGFybS5jb20+OyBQdW5p
dCBBZ3Jhd2FsDQo+IDxwdW5pdGFncmF3YWxAZ21haWwuY29tPjsgUWlhbiBDYWkgPGNhaUBsY2Eu
cHc+OyBKdW4gWWFvDQo+IDx5YW9qdW44NTU4MzYzQGdtYWlsLmNvbT47IEFsZXggVmFuIEJydW50
IDxhdmFuYnJ1bnRAbnZpZGlhLmNvbT47DQo+IFJvYmluIE11cnBoeSA8Um9iaW4uTXVycGh5QGFy
bS5jb20+OyBUaG9tYXMgR2xlaXhuZXINCj4gPHRnbHhAbGludXRyb25peC5kZT47IGxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgtDQo+IGtlcm5lbEB2Z2VyLmtlcm5l
bC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSF0gYXJtNjQ6IG1tOiBhZGQgbWlzc2luZyBQVEVf
U1BFQ0lBTCBpbg0KPiBwdGVfbWtkZXZtYXAgb24gYXJtNjQNCj4NClsuLi5dDQo+ID4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oDQo+IGIvYXJjaC9hcm02NC9p
bmNsdWRlL2FzbS9wZ3RhYmxlLmgNCj4gPiBpbmRleCA1ZmRjZmUyMzczMzguLmUwOTc2MGVjZTg0
NCAxMDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybTY0L2luY2x1ZGUvYXNtL3BndGFibGUuaA0KPiA+
ICsrKyBiL2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vcGd0YWJsZS5oDQo+ID4gQEAgLTIwOSw3ICsy
MDksNyBAQCBzdGF0aWMgaW5saW5lIHBtZF90IHBtZF9ta2NvbnQocG1kX3QgcG1kKQ0KPiA+DQo+
ID4gIHN0YXRpYyBpbmxpbmUgcHRlX3QgcHRlX21rZGV2bWFwKHB0ZV90IHB0ZSkNCj4gPiAgew0K
PiA+IC0gICByZXR1cm4gc2V0X3B0ZV9iaXQocHRlLCBfX3BncHJvdChQVEVfREVWTUFQKSk7DQo+
ID4gKyAgIHJldHVybiBzZXRfcHRlX2JpdChwdGUsIF9fcGdwcm90KFBURV9ERVZNQVAgfCBQVEVf
U1BFQ0lBTCkpOw0KPiA+ICB9DQo+ID4NCj4gPiAgc3RhdGljIGlubGluZSB2b2lkIHNldF9wdGUo
cHRlX3QgKnB0ZXAsIHB0ZV90IHB0ZSkNCj4gPiBAQCAtMzk2LDcgKzM5NiwxMCBAQCBzdGF0aWMg
aW5saW5lIGludCBwbWRfcHJvdG5vbmUocG1kX3QgcG1kKQ0KPiA+ICAjaWZkZWYgQ09ORklHX1RS
QU5TUEFSRU5UX0hVR0VQQUdFDQo+ID4gICNkZWZpbmUgcG1kX2Rldm1hcChwbWQpICAgICAgICAg
ICAgcHRlX2Rldm1hcChwbWRfcHRlKHBtZCkpDQo+ID4gICNlbmRpZg0KPiA+IC0jZGVmaW5lIHBt
ZF9ta2Rldm1hcChwbWQpDQo+ICAgICAgIHB0ZV9wbWQocHRlX21rZGV2bWFwKHBtZF9wdGUocG1k
KSkpDQo+ID4gK3N0YXRpYyBpbmxpbmUgcG1kX3QgcG1kX21rZGV2bWFwKHBtZF90IHBtZCkNCj4g
PiArew0KPiA+ICsgICByZXR1cm4gcHRlX3BtZChzZXRfcHRlX2JpdChwbWRfcHRlKHBtZCksDQo+
IF9fcGdwcm90KFBURV9ERVZNQVApKSk7DQo+ID4gK30NCj4NCj4gVGhvdWdoIEkgY291bGQgc2Vl
IG90aGVyIHBsYXRmb3JtcyBsaWtlIHBvd2VycGMgYW5kIHg4NiBmb2xsb3dpbmcgc2FtZQ0KPiBh
cHByb2FjaCAoREVWTUFQICsgU1BFQ0lBTCkgZm9yIHB0ZSBzbyB0aGF0IGl0IGNoZWNrcyBwb3Np
dGl2ZSBmb3INCj4gcHRlX3NwZWNpYWwoKSBidXQgdGhlbiBqdXN0IERFVk1BUCBmb3IgcG1kIHdo
aWNoIGNvdWxkIG5ldmVyIGhhdmUgYQ0KPiBwbWRfc3BlY2lhbCgpLiBCdXQgYSBtb3JlIGZ1bmRh
bWVudGFsIHF1ZXN0aW9uIGlzIC0gd2h5IHNob3VsZCBhIGRldm1hcA0KPiBiZSBhIHNwZWNpYWwg
cHRlIGFzIHdlbGwgPw0KDQpJSVVDLCBzcGVjaWFsIHB0ZSBiaXQgbWFrZSB0aGluZ3MgaGFuZGxp
bmcgZWFzaWVyIGNvbXBhcmUgd2l0aCB0aG9zZSBhcmNoZXMgd2hpY2gNCmhhdmUgbm8gc3BlY2lh
bCBiaXQuIFRoZSBtZW1vcnkgY29kZXMgd2lsbCByZWdhcmQgZGV2bWFwIHBhZ2UgYXMgYSBzcGVj
aWFsIG9uZQ0KY29tcGFyZWQgd2l0aCBub3JtYWwgcGFnZS4NCkRldm1hcCBwYWdlIHN0cnVjdHVy
ZSBjYW4gYmUgc3RvcmVkIGluIHJhbS9wbWVtL25vbmUuDQoNCj4NCj4gQWxzbyBpbiB2bV9ub3Jt
YWxfcGFnZSgpIHdoeSBjYW5ub3QgaXQgdGVzdHMgZm9yIHB0ZV9kZXZtYXAoKSBiZWZvcmUgaXQN
Cj4gc3RhcnRzIGxvb2tpbmcgZm9yIENPTkZJR19BUkNIX0hBU19QVEVfU1BFQ0lBTC4gSXMgdGhp
cyB0aGUgb25seSBwYXRoDQo+IGZvcg0KDQpBRkFJQ1QsIHllcywgYnV0IGl0IGNoYW5nZXMgdG8g
bXVjaCBiZXNpZGVzIGFybSBjb2Rlcy4g8J+Yig0KDQo+IHdoaWNoIHdlIG5lZWQgdG8gc2V0IFNQ
RUNJQUwgYml0IG9uIGEgZGV2bWFwIHB0ZSBvciB0aGVyZSBhcmUgb3RoZXIgcGF0aHMNCj4gd2hl
cmUgdGhpcyBzZW1hbnRpY3MgaXMgYXNzdW1lZCA/DQoNCk5vIGlkZWENCg0KDQotLQ0KQ2hlZXJz
LA0KSnVzdGluIChKaWEgSGUpDQoNCg0KSU1QT1JUQU5UIE5PVElDRTogVGhlIGNvbnRlbnRzIG9m
IHRoaXMgZW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBhcmUgY29uZmlkZW50aWFsIGFuZCBtYXkg
YWxzbyBiZSBwcml2aWxlZ2VkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50
LCBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgaW1tZWRpYXRlbHkgYW5kIGRvIG5vdCBkaXNjbG9z
ZSB0aGUgY29udGVudHMgdG8gYW55IG90aGVyIHBlcnNvbiwgdXNlIGl0IGZvciBhbnkgcHVycG9z
ZSwgb3Igc3RvcmUgb3IgY29weSB0aGUgaW5mb3JtYXRpb24gaW4gYW55IG1lZGl1bS4gVGhhbmsg
eW91Lg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGlu
dXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
YXJtLWtlcm5lbAo=
