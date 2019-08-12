Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF53D8A0AC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:22:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7gDZR3qfbXP1fZ3ZLkGOEEQs5rPo2ZGXz5/wUq0HAQ=; b=O9aev3cTtXmgt+
	bIMiy1x+N8R34o17T+ahZjCtU+Z0yPiXJJcJRbyM2XRlxG5cbW3IlorkCuIJ7mIsAI0iuGZukQx1Z
	IUdhEdge+x7eCIrF3NxRGmw79YUaGCVeTicll+R1HyUP7g9k2DW/yuZG9oPG7G+j2lwN66pFyi+I/
	XvEUbLfIv1dLst94h7rF5DGC+9Jc28UhMls3VLEG1rWDGWNPNM3Z5+lJ2+GJbkEn6jZMoLBE+03bU
	5HH05VRk6ayhKapfoWBrSCOR3ZL5rWDBGg7R6+vylZ16czAWq0jRxtoklIOakeu/PERC0Q6Vb+L1v
	sDfBMOAxSXpIi9xf3wkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBDK-0001zW-Jd; Mon, 12 Aug 2019 14:22:22 +0000
Received: from mail-eopbgr70122.outbound.protection.outlook.com
 ([40.107.7.122] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBCN-0001en-DY
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:21:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ebTRz4M3Kaw05LsVn/QV7oh3D4fZc6JfwrtA77E/GjkeoZZ1PKelW3DxWReaobzfXwZxabLA6f7vkZLIU5LpLPPk85TeOGZZi1dSys+w/Vz6IrV9wjmXq//BPUido10djTlB50sxLiASUiHKQD+890II+RJSUID2u3EOyIdQ7bpOovsllp7GQrzNL5bO2vF96FDOwZI1YkRTZArfiGE1tTa/VAX7a5D0Ww4Sr4yYUfcbfK13pbW7G8KK4isff+0rNqUQ+zhAZ6HoY9L18WWbiLwrBXWNBcpDXpatgKfufPfcQUlRfm9c45dV5l4zN08/BeI57RR6Zc4JtS13tWkrzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6WhBnZxB+3Hn6umCyMsJDKrRJrre26Pve5F9n5SsD8U=;
 b=NkvMwaxxP8/T1EgcQfGmYdlGCw4LxAyXISThTjbwJfJOodTLmATejK+3nvAizKJuqzudsQcYPy3HPn9Wu5xsU8E29dLCpejygHPVSrZTi9sF7ZqyRDjwpnmewgvx8qTzEUXl5/gT1Hvc8lTGleV6tHcXtKD18AgQCRDw8qNCFxx7HYovjL18JI74Ux8sK8eqv/qFJmPWWYKQWqVwriaZtFd1ciBBbbo6MGQ6bKeitL9IXQbEBCR/8g/kPFdHyx0rq+48mAhAAHfrrtCLTc6ndeIX5MxWTj7ElDHvwPnh09CZ//O1OQVvAIezkLpWB/I81Jp5jxkLPcNJ3fCEzMgzXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6WhBnZxB+3Hn6umCyMsJDKrRJrre26Pve5F9n5SsD8U=;
 b=NgUcDmnIX7AJmjKr1OhhS7btysS1PBaTjkvdllzU/I8j9cEdlDGZW9deCA5AbBodUYBXWOAIirjTRyvq+vonkmG/PbRcrUZPQIsOKY0LnMNe/vAx7T2a/MPa4rocHFIRMvtausmQaNtrzvr6hPMZ5/qp7C6zdG3dg963GRHjkfY=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3998.eurprd05.prod.outlook.com (52.134.18.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.20; Mon, 12 Aug 2019 14:21:18 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.022; Mon, 12 Aug 2019
 14:21:18 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v4 03/21] ARM: dts: imx7-colibri: prepare module device tree
 for FlexCAN
Thread-Topic: [PATCH v4 03/21] ARM: dts: imx7-colibri: prepare module device
 tree for FlexCAN
Thread-Index: AQHVURk1RFYhwM5lNEGqu2Ft+OOp9g==
Date: Mon, 12 Aug 2019 14:21:18 +0000
Message-ID: <20190812142105.1995-4-philippe.schenker@toradex.com>
References: <20190812142105.1995-1-philippe.schenker@toradex.com>
In-Reply-To: <20190812142105.1995-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P194CA0055.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::44) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4d843c7c-5cba-4e3d-4b8c-08d71f305792
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3998; 
x-ms-traffictypediagnostic: VI1PR0502MB3998:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3998DF0A2ABC35FC8E76E7FCF4D30@VI1PR0502MB3998.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 012792EC17
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(39840400004)(136003)(396003)(376002)(366004)(189003)(199004)(2501003)(6436002)(6512007)(478600001)(52116002)(71200400001)(71190400001)(53936002)(4326008)(486006)(81166006)(81156014)(36756003)(14444005)(256004)(2201001)(2906002)(66476007)(66556008)(64756008)(446003)(66446008)(386003)(6486002)(76176011)(66946007)(6506007)(1076003)(476003)(2616005)(86362001)(14454004)(11346002)(8676002)(7416002)(5660300002)(50226002)(316002)(66066001)(7736002)(186003)(102836004)(8936002)(26005)(54906003)(110136005)(25786009)(6116002)(305945005)(3846002)(99286004)(44832011);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3998;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: TOTGy7oFu/EySy9MNetWO1ph1fon5jodT3jsddfNqEPMV5sTXxtbUXUGBY8XZpKOqxxMhbwhFeqhLMbGAP5M7GoMO/ARInIRoMiFqnFzAHHGPdxW+73H2+c9Gmxwql22EebF+z4hxRQKAH1Qtd8De+X/NeV+vRbdvn/bpW1DJ04nEbFFGkBzUzOs0jkNZOlKLbwBgBL47KqJeHX1C/EPJRcfiZGZeVQLdIxmQmyMIimydPNYJqhlavn2eLYdp82WK2diK8U3jHc9DdM2XMORFdKl9JQjd7bRxROb2w6VOuDw1WJSjX8uq2Z3R4PXTmV7eyrP5+d8NE2UZkfF+6S03Rcd1d3xx6NDUQ+pIIiCsO3YD/8Kmr0ahPYcLes17jplYzGsXcPpTfhvFGlormHmFmGObtiZp0fxecs3JfQarkI=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d843c7c-5cba-4e3d-4b8c-08d71f305792
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2019 14:21:18.6389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cShbNHJkULFUdiv1FXEJmc4sp3bSHtHFVrH7vTkGoBw242kG4MminWNTzuM50Vbniyavi1O1+WKIBseryE/3/Clc1ntkAW9ApcoxjTHdRgM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_072123_457949_6EC3EDED 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.122 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Prepare FlexCAN use on SODIMM 55/63 178/188. Those SODIMM pins are
compatible for CAN bus use with several modules from the Colibri
family.
Add Better drivestrength and also add flexcan2.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
Acked-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>

---

Changes in v4:
- Added Marcel Ziswiler's Ack

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx7-colibri.dtsi | 35 ++++++++++++++++++++++++-----
 1 file changed, 30 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index f7c9ce5bed47..52046085ce6f 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -117,6 +117,18 @@
 	fsl,magic-packet;
 };
 
+&flexcan1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan1>;
+	status = "disabled";
+};
+
+&flexcan2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexcan2>;
+	status = "disabled";
+};
+
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
@@ -330,12 +342,11 @@
 
 &iomuxc {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3 &pinctrl_gpio4>;
+	pinctrl-0 = <&pinctrl_gpio1 &pinctrl_gpio2 &pinctrl_gpio3 &pinctrl_gpio4
+		     &pinctrl_gpio7>;
 
 	pinctrl_gpio1: gpio1-grp {
 		fsl,pins = <
-			MX7D_PAD_ENET1_RGMII_RD3__GPIO7_IO3	0x74 /* SODIMM 55 */
-			MX7D_PAD_ENET1_RGMII_RD2__GPIO7_IO2	0x74 /* SODIMM 63 */
 			MX7D_PAD_SAI1_RX_SYNC__GPIO6_IO16	0x14 /* SODIMM 77 */
 			MX7D_PAD_EPDC_DATA09__GPIO2_IO9		0x14 /* SODIMM 89 */
 			MX7D_PAD_EPDC_DATA08__GPIO2_IO8		0x74 /* SODIMM 91 */
@@ -416,6 +427,13 @@
 		>;
 	};
 
+	pinctrl_gpio7: gpio7-grp { /* Alternatively CAN1 */
+		fsl,pins = <
+			MX7D_PAD_ENET1_RGMII_RD3__GPIO7_IO3	0x14 /* SODIMM 55 */
+			MX7D_PAD_ENET1_RGMII_RD2__GPIO7_IO2	0x14 /* SODIMM 63 */
+		>;
+	};
+
 	pinctrl_i2c1_int: i2c1-int-grp { /* PMIC / TOUCH */
 		fsl,pins = <
 			MX7D_PAD_GPIO1_IO13__GPIO1_IO13	0x79
@@ -459,10 +477,17 @@
 		>;
 	};
 
+	pinctrl_flexcan1: flexcan1-grp {
+		fsl,pins = <
+			MX7D_PAD_ENET1_RGMII_RD3__FLEXCAN1_TX	0x79 /* SODIMM 55 */
+			MX7D_PAD_ENET1_RGMII_RD2__FLEXCAN1_RX	0x79 /* SODIMM 63 */
+		>;
+	};
+
 	pinctrl_flexcan2: flexcan2-grp {
 		fsl,pins = <
-			MX7D_PAD_GPIO1_IO14__FLEXCAN2_RX	0x59
-			MX7D_PAD_GPIO1_IO15__FLEXCAN2_TX	0x59
+			MX7D_PAD_GPIO1_IO14__FLEXCAN2_RX	0x79 /* SODIMM 188 */
+			MX7D_PAD_GPIO1_IO15__FLEXCAN2_TX	0x79 /* SODIMM 178 */
 		>;
 	};
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
