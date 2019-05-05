Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945E913FBA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 15:28:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FbVWk+ZwIcoS7qaR4GzifnUi1dd3jcez2Dbzu6YQowo=; b=BdzbBpUmmbOzpL
	jtVI/M0G1c/YxUOGXyNeeG7yZ8jdQT251acmsX6oh7Fwn75LBrKCb6CzGsyR3RFGk+E2MxBfyB0ls
	EvvSSSGzZVx+8D+KswND+lcg3W68yc+OKRzDMRqCqqCIsX6iY/CS0xdfs58e0GxJKBDh9v5qQhgHA
	skV61vLWdmD0gqA1biZCH9q9klZkAAIMtYO/sqB6lq6+d+r4m/2hzXwJtrhjsew62ZlfNutL2BhEq
	aghujlQ4yltaeaq/qdIva8ZLxIqTWCdLSRZMYsPaghSB/ubRc4jPKPP0R2rFFexPYJR3M/putkTEe
	xoL5YAsl7F53xo7wvQjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNHBs-0007W8-7c; Sun, 05 May 2019 13:28:28 +0000
Received: from mail-eopbgr60048.outbound.protection.outlook.com ([40.107.6.48]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNHBk-0007V3-SC
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 13:28:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxEm8J29UxXfpDXr9UMREWdvUBJfBSp6Off20hvufwY=;
 b=JBb/iIZCiUj/DZAudklgfQrG4GlUHvuWeCziw0U4aqboNzyMpeig6ccH3rINKjuhi//DHUpqBu9i2RG28wbmOW/FiAgEcsBZub7/2KcTa9b/FJIIxk0aSHgZBa1l8QuehBK2QaKIvkFazzCjI/Is7U18pG4nOp42rZRRZoFvzYw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4259.eurprd04.prod.outlook.com (52.134.126.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Sun, 5 May 2019 13:28:13 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Sun, 5 May 2019
 13:28:13 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "srinivas.kandagatla@linaro.org"
 <srinivas.kandagatla@linaro.org>
Subject: [PATCH 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Topic: [PATCH 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Index: AQHVA0ZjnXjmGbRNIUCIpXt7yxOkeg==
Date: Sun, 5 May 2019 13:28:13 +0000
Message-ID: <20190505134130.28071-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR03CA0099.apcprd03.prod.outlook.com
 (2603:1096:203:b0::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 23060414-4bb9-4771-fb72-08d6d15d860c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB4259; 
x-ms-traffictypediagnostic: AM0PR04MB4259:
x-microsoft-antispam-prvs: <AM0PR04MB425900E9B81EF98DDC3A1CAD88370@AM0PR04MB4259.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 00286C0CA6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(39860400002)(396003)(136003)(366004)(346002)(189003)(199004)(486006)(54906003)(110136005)(68736007)(2906002)(476003)(2616005)(8936002)(8676002)(66066001)(81166006)(7416002)(7736002)(305945005)(44832011)(53936002)(36756003)(50226002)(4326008)(25786009)(86362001)(2201001)(1076003)(5660300002)(81156014)(52116002)(99286004)(102836004)(316002)(6506007)(3846002)(6116002)(386003)(478600001)(256004)(6512007)(71200400001)(14454004)(6486002)(6436002)(2501003)(66946007)(73956011)(186003)(71190400001)(66446008)(26005)(66476007)(66556008)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4259;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GTBQ1hQBdPk5hc+m2fjhSGkq5w/Wau0EfXw1SVNc0lHonYPzGtQV1hAv29eCfuu5YLF3y7NXkuTwMUN1uMP+WN468aWIeaNI+sDmkXV1Er7PVt1Sr5mnhgGlNdodB9wY5s1oXN1tb8PgJkhpz81d8wToFO7X7pZfD45jWJyYHoj2t2sPQcN7lTVG40RhDodZVXHUWlQsspWz4FSATSoXSAxKhAqMgb1NWuCRL96jJ7J9QUx+7EKFYgsfg61m2fiTzb2dv6Yk/Wuw36uZrojka1nnFPG8vlwdTYgYqZJ7LTnvSbwJr+WwiVoaH96/gHacuDzk1MYYxgOfdHfEivTpjzlBLVibMwWb50YD6F5nmronujuPTHLzy7JEgwe3+xBqcOjB/Zk6/msEknn9e7Phaz1dHa8EZX0Olw898z6JnaE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 23060414-4bb9-4771-fb72-08d6d15d860c
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2019 13:28:13.3263 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_062821_014300_8E3000AD 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
system controller(SCU), the ocotp controller is being controlled
by the SCU, so Linux need use RPC to SCU for ocotp handling. This
patch adds binding doc for i.MX8 SCU OCOTP driver.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Aisheng Dong <aisheng.dong@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Anson Huang <anson.huang@nxp.com>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 5d7dbabbb784..9cb7d52bdf26 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -100,6 +100,13 @@ ID in its "clocks" phandle cell.
 See the full list of clock IDs from:
 include/dt-bindings/clock/imx8qxp-clock.h
 
+OCOTP bindings based on SCU Message Protocol
+------------------------------------------------------------
+Required properties:
+- compatible:		Should be "fsl,imx8qxp-ocotp"
+- #address-cells:	Must be 1. Contains byte index
+- #size-cells:		Must be 1. Contains byte length
+
 Pinctrl bindings based on SCU Message Protocol
 ------------------------------------------------------------
 
@@ -177,6 +184,12 @@ firmware {
 			...
 		};
 
+		ocotp: imx8qx-ocotp {
+			#address-cells = <1>;
+			#size-cells = <1>;
+			compatible = "fsl,imx8qxp-ocotp";
+		};
+
 		pd: imx8qx-pd {
 			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
 			#power-domain-cells = <1>;
-- 
2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
