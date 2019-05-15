Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884E11E6AB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 03:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=97pm+sSlJYC9KCGSNmlfXckbQBGvs63oESTXFYi+1dg=; b=aFh7wzbnLm4qxC
	HKbI7ZbeAop4ebAf9R5Vqg/BBJqxiKaBDndcrVnfSwfBEhVZH7TDL0rxFW61y3lE39vQdD1Kf6PxZ
	vtSFnMTAmnUnTyLwSLArtqLUvSHEZy2qHsnMkCZrVS+IC/UcZmzRZwyM6lrGUwzHpu8oXuaOJquIn
	s1IAETCf79ozu9+iZmNbc+EcZHWlug9P3GogRwMZvdr5zewkdzklT+ntTescdYMuBoxJFdVgs2WN0
	Cwo2JP34KccRDBMuh+u4TqJmW25pjIkaGM4DtKLJ75WooLsy4EMoSednLLAQRPu8JWXAF3kQXuueO
	GuWuK1RwdCIH31SlWEZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQikI-0006uj-30; Wed, 15 May 2019 01:30:14 +0000
Received: from mail-db5eur01on0613.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::613]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQik3-0005hl-Pe
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 01:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4diZ8hrGb10riGKPDuQbxvNoJYPZSCRXCYI/nNHoRAE=;
 b=azqV/TpWFUqbx4qEu9e9mZskusB2O+xAS+hMhMBmqLrjWRWpCOWdZmzEUe8lxmBK2meK57lt88ODofxVQaQyNtrLKLIZZj1DgQFjIQPxUv3ITP72fg2Ti0fOD3E7pJFb00JcnAUnIEz2XLJJOwo0UE2ccf1B0Z/H3Rr62+iS7tc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3724.eurprd04.prod.outlook.com (52.134.66.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Wed, 15 May 2019 01:29:53 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 01:29:53 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai
 <ping.bai@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: [PATCH 1/3] dt-bindings: clock: imx8mm: Add SNVS clock
Thread-Topic: [PATCH 1/3] dt-bindings: clock: imx8mm: Add SNVS clock
Thread-Index: AQHVCr2yrHCSJQGcuE+Cdq63vYctyw==
Date: Wed, 15 May 2019 01:29:53 +0000
Message-ID: <1557883490-22360-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0056.apcprd03.prod.outlook.com
 (2603:1096:202:17::26) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c1b78dd3-d84c-4fc3-5974-08d6d8d4d449
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3724; 
x-ms-traffictypediagnostic: DB3PR0402MB3724:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <DB3PR0402MB37243CEFA96016C41131A691F5090@DB3PR0402MB3724.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(346002)(396003)(376002)(199004)(189003)(316002)(256004)(50226002)(81166006)(14444005)(4326008)(6512007)(8936002)(71190400001)(6306002)(5660300002)(110136005)(71200400001)(52116002)(2906002)(86362001)(6506007)(386003)(68736007)(81156014)(25786009)(99286004)(102836004)(4744005)(36756003)(186003)(6116002)(3846002)(476003)(486006)(26005)(2201001)(2616005)(53936002)(64756008)(73956011)(66446008)(66476007)(66556008)(66946007)(2501003)(478600001)(966005)(14454004)(6436002)(305945005)(66066001)(7736002)(6486002)(8676002)(7416002)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3724;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: pseOtm2w+0z5Ld0IrG/QGQqRFJk54VNDvOki4f15d8VC6Cz2bXiCRntJjM9Iq4BjMG9CyKvfcfkhnxom1RXNHiTqfnAJuWPTDp7YNUSpABRqWtoYPNLOd7NpkmQPf0daVVtk1RM77EiH1/0YjugCdMr36PHx36vv3M+GQ/OmMagpruJYpd3C0RGAh5TMe+Qo8hqRRCidM8X1GDiEbEcTc7OpYMuIyqxKXfDJ4f+z3Oaps+XPUr7lWecMMesO/OMBGWEWMQOcmJ3B2RhG4XbsFJbhj1eQSAMTLRZ4bQetIzlwSVqNglnPlDIguP7HaA54m4e8ebCtkr4fEU71GDuzAvlPN4TgWjFmwXvAd3dde1Jc7BMejKC47k7GasiBL+IeMPB6d2vPXUq0jNpo4OJcQmCWAgtbDM7NJHC42976KNw=
Content-ID: <0B56FF142FDB6246A7385E3330CB0D7A@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c1b78dd3-d84c-4fc3-5974-08d6d8d4d449
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 01:29:53.0370 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3724
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_182959_838725_D801BFCA 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:613 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add macro for the SNVS clock of the i.MX8MM.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
This patch is based on patch: https://patchwork.kernel.org/patch/10939997/
---
 include/dt-bindings/clock/imx8mm-clock.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/dt-bindings/clock/imx8mm-clock.h b/include/dt-bindings/clock/imx8mm-clock.h
index fe47798..83f6673 100644
--- a/include/dt-bindings/clock/imx8mm-clock.h
+++ b/include/dt-bindings/clock/imx8mm-clock.h
@@ -245,6 +245,8 @@
 #define IMX8MM_CLK_GPIO4_ROOT			226
 #define IMX8MM_CLK_GPIO5_ROOT			227
 
-#define IMX8MM_CLK_END				228
+#define IMX8MM_CLK_SNVS_ROOT			228
+
+#define IMX8MM_CLK_END				229
 
 #endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
