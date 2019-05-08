Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B5316F4A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 04:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YqW5R1fan0UwGvRJwvL7jIGdVZJOogSRYYi+lEDUmV0=; b=Xl5crRItHswfb8
	8UUNTuFwsAKCY0XhakSnmCwJVk8LNTZEaFIqhR2wXRHz+q/VWmrNoFG6ZZgQ8vm0+Bdj3UA6Jjja9
	sKqxBb2TUWo6uNXClnEN1ZZ/m7yBmeOOf3Kf4lRTc/rO+6m/JVv17DGEhZFR8JIrEgnqZCw7Jjbka
	dJo/e2uPbM9ycGuw3WlBwYw3AtyLIS8eRVdS8jTBR1prlCviU8qquGZojUDZjz3i4XMGq9OxKrecG
	G9x9y8nGG1ZavSChuHUuohAx9dnSXS5ubUiGW2MwLKJWCk64hJr9Nd5JrV7dvT5Bo+QD/wFGyMkiZ
	2B0/Ir/D6/cmXJ29/39g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOCkj-0001oG-1C; Wed, 08 May 2019 02:56:17 +0000
Received: from mail-eopbgr10050.outbound.protection.outlook.com ([40.107.1.50]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOCkb-0001nC-90
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 02:56:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w2E1vSgiDUnsKxaunmF3/XtI9jYTGlfqdgySbAe8FCA=;
 b=GkQVp7kXFykkaanx2AbLheH7HD7x3m9KfkX4FopdQH9U4vLk8rPCQR2lqbQ1mW9FCBjR1el66GMSPljnp1mmM/6U2H2qOERz6ziXsvpwPhTuQOgWO/atfJeljuptx3xEIwJksapLwuChGvGnIW4uT5FdJqoUOAhLnGpp4F1mL1w=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5153.eurprd04.prod.outlook.com (20.177.40.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Wed, 8 May 2019 02:56:02 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::3173:24:d401:2378%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 02:56:02 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>
Subject: [PATCH V2 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Topic: [PATCH V2 1/4] dt-bindings: fsl: scu: add ocotp binding
Thread-Index: AQHVBUmS8YEY+TS9pUGxn5n6MqiHxQ==
Date: Wed, 8 May 2019 02:56:02 +0000
Message-ID: <20190508030927.16668-1-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.16.4
x-clientproxiedby: HK0P153CA0028.APCP153.PROD.OUTLOOK.COM
 (2603:1096:203:17::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a96015b6-f15e-4da2-65f1-08d6d360b4d5
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5153; 
x-ms-traffictypediagnostic: AM0PR04MB5153:
x-microsoft-antispam-prvs: <AM0PR04MB5153C8A635FF5AF175ED3A1588320@AM0PR04MB5153.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(376002)(366004)(136003)(346002)(39860400002)(189003)(199004)(26005)(1076003)(68736007)(66446008)(14454004)(2501003)(66946007)(186003)(52116002)(305945005)(102836004)(7736002)(316002)(66556008)(64756008)(66476007)(53936002)(73956011)(25786009)(7416002)(50226002)(8936002)(5660300002)(4326008)(71190400001)(71200400001)(6512007)(478600001)(54906003)(110136005)(6116002)(3846002)(2906002)(36756003)(81156014)(81166006)(8676002)(86362001)(2201001)(66066001)(6436002)(6486002)(2616005)(256004)(6506007)(486006)(44832011)(386003)(99286004)(476003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5153;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: I2ZBmrJh6WgINPX3iYI1h5/SvECPoppiB0UvFgB2/z+dLF8AhaB2i0Rbo5X1Ya4JE8u9juytjzy9u6r5UKsCqIjWaBMk6qJ5dP9jRERieFHPtUaiJoLGOwaD1AHUdbAC36rKzOa4+/WsO+hKV/X8RN1+sgWn367NmsLi7TOlq6/T+FhwkYfQ3xVuKn5HTIFGlKylWNZsXTRmvwNdRUaykEarGUHDAAW1Cb8dgXzT63WvnslQmqxI98uDZ0c0sHLqYNzy5ZQxyj31H11dFLuahRO5PxmEwx0paO6EJlpVYBnSHyj2Ci1snNxopD5APCxpysgBSYh6TeynC8ytD3mKX/Lw4Fu13i6QZLtDU9lBYvf9bh/YfEl8eDv5Tf0BabPEPfXgtWBoz9wBzi8nKbVR1JyUIraLP2VzKbY/lR0xsxo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a96015b6-f15e-4da2-65f1-08d6d360b4d5
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 02:56:02.7586 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_195609_321687_E5E0B003 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.50 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Aisheng Dong <aisheng.dong@nxp.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Anson Huang <anson.huang@nxp.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---

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
