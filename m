Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFBE025E5A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YRz1Gmwq2O6heQXDiGBNKEI3fei/UWGYlFLJ4tDpLbk=; b=gpRGIZFG/Gw9rx
	2f0tH9tEzi3MazOi0xWTZ1cgPt0KOJ4lduIyZ6tVbsgSNIyRCZH3DyqzQfn+KVE4Pgl9nBw+XXd0m
	aDgEKej2X6ZwWX2A/kD0AoBIVZBawgU0tl2/qQwJHcLlyMem8sF/Glyksv5tyUaM3hm51COv6lQby
	deqYhP8CS25k5G5dBMRBPlpjoszDgQmicd31o8tRkQaMuSzNqHe2QHOXu2pbMJyhU6d0WTbX6HBMU
	NlkbYUd3cVESjH05ixzqfXkr1D9OY2dj0n9ef+phwry4dFgxwKKoPwgeWUI255RV5ya3JfZIJ0sI2
	v+v754HoFB/Ue8jI6QnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLEz-0006Ap-El; Wed, 22 May 2019 07:00:45 +0000
Received: from mail-eopbgr150070.outbound.protection.outlook.com
 ([40.107.15.70] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLEr-00069o-SL; Wed, 22 May 2019 07:00:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eioh5KkNw/Y6GFwbL/XF3ZcBYT50iQghQlBw8YeFZyM=;
 b=kEoWkOJYP7b0muK8bLkcgmw+QiWA7z+20N3F6iDHZfa82O5n35etF0P1arpu/c1OrTMv9uCUGJ9uJHSkcB7sTCDso4qiQ2tSYwcOOlJsPeTMKS9yAWTal5mo3qOHECN347hXO5EN7DFazLHP2wWGUFkZXNiklFCXnh8tV+J8BCU=
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com (52.133.43.147) by
 AM0PR0402MB3668.eurprd04.prod.outlook.com (52.133.39.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.17; Wed, 22 May 2019 07:00:32 +0000
Received: from AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd]) by AM0PR0402MB3556.eurprd04.prod.outlook.com
 ([fe80::f891:76d:8a6a:3dfd%2]) with mapi id 15.20.1922.016; Wed, 22 May 2019
 07:00:32 +0000
From: Kuldeep Singh <kuldeep.singh@nxp.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Thread-Topic: [PATCH v2 1/2] dt-bindings: spi: spi-fsl-qspi: Add bindings of
 ls1088a and ls1012a
Thread-Index: AQHVEGwMx2ngmFWMGEWadgoFBtUlAQ==
Date: Wed, 22 May 2019 07:00:32 +0000
Message-ID: <20190522070133.24953-1-kuldeep.singh@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BM1PR01CA0107.INDPRD01.PROD.OUTLOOK.COM (2603:1096:b00::23)
 To AM0PR0402MB3556.eurprd04.prod.outlook.com
 (2603:10a6:208:17::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=kuldeep.singh@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [92.120.1.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0a3775db-2ef5-4ac0-bc6c-08d6de832e44
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR0402MB3668; 
x-ms-traffictypediagnostic: AM0PR0402MB3668:
x-microsoft-antispam-prvs: <AM0PR0402MB366847D9EECCA8670E69B8D0E0000@AM0PR0402MB3668.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0045236D47
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(189003)(199004)(6506007)(8936002)(7736002)(305945005)(99286004)(68736007)(386003)(2501003)(2351001)(186003)(81166006)(102836004)(498600001)(6116002)(36756003)(54906003)(86362001)(81156014)(8676002)(14454004)(52116002)(5660300002)(50226002)(3846002)(4744005)(1730700003)(6486002)(2906002)(5640700003)(64756008)(66556008)(6512007)(14444005)(256004)(66446008)(73956011)(66476007)(66946007)(6436002)(71200400001)(71190400001)(476003)(1076003)(53936002)(25786009)(486006)(26005)(6916009)(44832011)(4326008)(2616005)(66066001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR0402MB3668;
 H:AM0PR0402MB3556.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: FdrzQC8ViHVkbaH1dHm13esu28mawSUss6U49ruurej1zd02acZhtGTXW8sKlDsJApUKNfztjfW8H8kGqwzar8asamlTM46YF4m8OloVPnEoi+tpL2Xu1UIdjUKukTn3ez+2dc7GV6cxCJ5o4JrDA8K5MPWaXCqwpBkAWvFaRQOjO/70rJ7FPBiutT0m2jpmo9+XrZntjQkeMrktUr6VuaXRe1CkcecDokMWurIValmY8gQNnV8gGZX3Ifc114W4Mkm8OxR1/WjGemaAnLSRayLsz8Ue0yA6EMs9Xcuso2xVKyxgSDxAW0cLU9u2a7wlb8JTFjPwatd2L0X2pMTueo0VG+/XQLUjeMX6x+6wL0WKjhg6sIOA4rcPlp9Eq8WlsN35SKmp1tks+nkPvMZft6Y7CqoIZwx2tWX8Z/DLqzo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a3775db-2ef5-4ac0-bc6c-08d6de832e44
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2019 07:00:32.1690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR0402MB3668
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_000037_918848_3E1A6FEE 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Kuldeep Singh <kuldeep.singh@nxp.com>, Ashish Kumar <ashish.kumar@nxp.com>,
 "broonie@kernel.org" <broonie@kernel.org>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
---
Update v2:
	Convert to patch series and rebasing done on top of tree

 Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt b/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
index e8f1d627d288..a72616a1ad2d 100644
--- a/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-fsl-qspi.txt
@@ -7,6 +7,8 @@ Required properties:
 		 or
 		 "fsl,ls2080a-qspi" followed by "fsl,ls1021a-qspi",
 		 "fsl,ls1043a-qspi" followed by "fsl,ls1021a-qspi"
+		 "fsl,ls1012a-qspi" followed by "fsl,ls1021a-qspi"
+		 "fsl,ls1088a-qspi" followed by "fsl,ls2080a-qspi"
   - reg : the first contains the register location and length,
           the second contains the memory mapping address and length
   - reg-names: Should contain the reg names "QuadSPI" and "QuadSPI-memory"
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
