Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9AF1E971
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 09:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ahr8CMA03Dh7XXgkdbHDvkJAvDzWOFOFjkCBrzslOKs=; b=JrE+0iRumUWyTs
	QV/Pw9/puCA5xM3t03B0X74VxIb2qyLh2phNGKN+DYibbo8hChnc1xzJfrkRNU5+H7uxWYsYZhUu0
	yQ3s01K9ud8ctsdQlsm6++7jkDE3WFeVW9Pq1652zE7i4afVYcLvxDHZpukx82YQ8SYrszvapbto5
	WMmHDOvvTruO+7cjR2uMWTDnKKfjCU8FEpi+ea4P+nEMQX0tO/w30TshvKx8U6yjb/hVvGvrnOmYc
	Mk2gj8JDubzeLfrHDzEVqxBhGpSUTvDPedM0Ou+GdFfG8aBqekfP7RYKwytNNy20tdZt5Py2TgJbo
	oNSiO4SHMJAXkXsOu3XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQojI-0005A1-Lw; Wed, 15 May 2019 07:53:36 +0000
Received: from mail-he1eur02on061a.outbound.protection.outlook.com
 ([2a01:111:f400:fe05::61a]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQojB-00058Z-Mh
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 07:53:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3RHNfrQxWyqSDLZR872gbfoJOD0gu1pFD9KgCEZ4/ms=;
 b=W+pee1OOh76b55NJhFiC1HG3vCDzKIT2GiEIyeiYhs0ZVVJkKys0Z9wek8e7/FG5FkDrF3V9eX6cDyyM1AB5qbHgMIz/dAtR/Wwz7v8a6jZaGwlohKZWXLXMGKtqLAWZzNqKqx61UnvrRJyiBkT31DwVX5XEHoYupotppHeHIP0=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6067.eurprd04.prod.outlook.com (20.179.32.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.22; Wed, 15 May 2019 07:53:23 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1878.024; Wed, 15 May 2019
 07:53:23 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Aisheng Dong
 <aisheng.dong@nxp.com>
Subject: [PATCH V3 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Topic: [PATCH V3 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Index: AQHVCvNFnuiFecqWJ06/DpqJTtk4vg==
Date: Wed, 15 May 2019 07:53:23 +0000
Message-ID: <20190515080703.19147-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0PR01CA0044.apcprd01.prod.exchangelabs.com
 (2603:1096:203:3e::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: aa01d7c9-d6e8-4a8e-a117-08d6d90a67bd
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB6067; 
x-ms-traffictypediagnostic: AM0PR04MB6067:
x-microsoft-antispam-prvs: <AM0PR04MB606775AF19028758DF9DB7BA88090@AM0PR04MB6067.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(346002)(396003)(376002)(189003)(199004)(66946007)(73956011)(71190400001)(71200400001)(2501003)(66476007)(64756008)(81166006)(66556008)(256004)(2906002)(66446008)(53936002)(305945005)(186003)(102836004)(26005)(6512007)(7416002)(4326008)(7736002)(6116002)(3846002)(36756003)(66066001)(81156014)(8676002)(8936002)(44832011)(110136005)(316002)(50226002)(6636002)(25786009)(2616005)(478600001)(486006)(476003)(6436002)(6486002)(54906003)(1076003)(99286004)(52116002)(86362001)(386003)(6506007)(68736007)(14454004)(2201001)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6067;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: w6bKufeR6+K0D6i2I1oAKqmSy/xLyy8FMRHcnyTLIU4nuBKf25/Mo1hmr1+NgXppJRuMd6p7TABpqpVHRHPovOe11PgRCZMgTNjsKQCTqmSIXWPsmKcvhtHyfpkiF4IcqZwQp6RiMH+NB9ZuzWhS2jjaPciKMk5+OodkhHnVprwVgs4NEl9BpVPPALg3+Vylh2e7N+4aUOfU71qshwjvKuUM33Z1fVMUCg5aSAlZr3zff8rM9EtSJX7+ul5/3fpRO9g3G1wmkQIPXqngIaJIMIW0JYUm8mmBUk6m4Rwmvo5ChffKgDNannyqeoWbvUAni7iaw4woYS5BhAwayULs7PcV8UxeIhKQquCAcvtOHbDZlUd6/x270ogcrivxKRIWlRHt19i2Xhqsw4Q0ozuUO9c9+MpS2gKnqzkK+yNKJss=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa01d7c9-d6e8-4a8e-a117-08d6d90a67bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 07:53:23.6213 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_005329_850508_7DAF4CF5 
X-CRM114-Status: GOOD (  11.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe05:0:0:0:61a listed in]
 [list.dnswl.org]
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
 "van.freenix@gmail.com" <van.freenix@gmail.com>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as
system controller(SCU), the ocotp controller is being controlled
by the SCU, so Linux need use RPC to SCU for ocotp handling. This
patch adds binding doc for i.MX8 SCU OCOTP driver.

Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Anson Huang <anson.huang@nxp.com>
Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

V3:
 Add R-b tag
V2:
 Move OCOTP to end, add example, add "scu"

 .../devicetree/bindings/arm/freescale/fsl,scu.txt  | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 5d7dbabbb784..f378922906f6 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -133,6 +133,18 @@ RTC bindings based on SCU Message Protocol
 Required properties:
 - compatible: should be "fsl,imx8qxp-sc-rtc";
 
+OCOTP bindings based on SCU Message Protocol
+------------------------------------------------------------
+Required properties:
+- compatible:		Should be "fsl,imx8qxp-scu-ocotp"
+- #address-cells:	Must be 1. Contains byte index
+- #size-cells:		Must be 1. Contains byte length
+
+Optional Child nodes:
+
+- Data cells of ocotp:
+  Detailed bindings are described in bindings/nvmem/nvmem.txt
+
 Example (imx8qxp):
 -------------
 aliases {
@@ -177,6 +189,16 @@ firmware {
 			...
 		};
 
+		ocotp: imx8qx-ocotp {
+			compatible = "fsl,imx8qxp-scu-ocotp";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			fec_mac0: mac@2c4 {
+				reg = <0x2c4 8>;
+			};
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
