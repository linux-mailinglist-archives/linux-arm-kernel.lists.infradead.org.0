Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36E4D84750
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zhqBeUP+XrrglY3exEu6T/nRk9RZG1xeHPttdVKk3JE=; b=HzwV5P/wzGqsRo
	pdvsE6MP/gV4GMqodl9i9AqF5VKmGDLbACg2AcnvM4csH6o0Op2XJrEnwsaOLfvpffEYTdjXwFRrd
	2JTHaPeRWDol6LPrMt6lrQRBOBX7PSMLEoHTiUB3Ikl/xmdhJEb54GNXaOFU6i0fkGiOaIzcHNVel
	hQrfwWeQQlxF+XJzSdHZHPfemJ6ON/nmi4tbWCXeh06cDlqR4IlQAFYsBa7enDLpfZ6C586K4R8NO
	a80vBVvQfaJZbTjXdqsvnpScUXvC7OzKRXQX7v9UuIcLjr/71cmu4awdC0aB8wC7/7By8vg1nXcuR
	JI/VxsJBySieQA6uMsqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHIR-0003mU-Q4; Wed, 07 Aug 2019 08:27:47 +0000
Received: from mail-eopbgr130133.outbound.protection.outlook.com
 ([40.107.13.133] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHH0-0002et-Lt
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JnDloEVYaLBOb3b8caNPeILflphr0d6TWlfXh4A5pUABIpjGkPbf8m1QBuWfrhMbB933C9rtugacMt58jaUjKoYmU0HQgQ/aGHaFa8Ypct1iFzaS2rYGIpLrGI+tkLH4w6YcG3dKLG3ssUR748kaJvAvfMWmtCcPBlEO7WkWL+GQFtKEUF2F5vHTsFj3UmMdXLaGURinUWnID7xUZZZxKV+n6ScAyGRtPufeHEmKIjQ91TixrO9n/CMxl9lVIbEP5kOQLlKHlYTXj7luRDEFfYLgZRuHvMtSmx7DDzVl9ZY5QzmAI7MEAk4te0OZ/j48EdqP5Kth8epwDo/jzKWmuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=II2x/d3X1OgCBvMXJpQl6iOL2YZnBL1UMNd083xtKa8=;
 b=Dkaf5Vqa/favQq8DyeNn93OwudSNLW0V2FV/CNw7y6CTvbAmg/J/Wz690h16izf0G5EEx3Ga1oL+9rQox5AqyLWWYCCUBQ00lv75CCGLWHG5Fy2QY/06l4IgF04Ot7m8BIAGsDlGLHgvWJ7P/zQbI38zKTXTi9mja4LCwv3GaRZ8+7jfVPYxxKT8O/mYftcpUYFmqA0z31Z/FHLeH3aKgBQuJBDkqHVZZbP9R6Wb96z85Y6UocvNPaOuUEobrM0JLivFDkDWHQ1VWguS/lbQ4X+zah2dmVe0X3dss4qyas87f4Rm1GtgX5xyZqmP9TKJZZBoEATmGNo78C58B9uY1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=toradex.com;dmarc=pass action=none
 header.from=toradex.com;dkim=pass header.d=toradex.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=II2x/d3X1OgCBvMXJpQl6iOL2YZnBL1UMNd083xtKa8=;
 b=o/JvX343YNt+al6jK7DYba1+XYdVc5CAshYlh2nDMkqT4ik8Jo601AMfiv164W0x8826SotNE6qiIo2fx1jmBjSa4CrQv3k603iHCzY3/FDrblhyfoTECHc5dIMdAe/8TlwhQPqSdb/FRC8npcXzJb6bYcnNbLY4p4k8hFoIpCU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB3614.eurprd05.prod.outlook.com (52.134.7.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.16; Wed, 7 Aug 2019 08:26:12 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:12 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 03/21] ARM: dts: imx7-colibri: prepare module device tree
 for FlexCAN
Thread-Topic: [PATCH v3 03/21] ARM: dts: imx7-colibri: prepare module device
 tree for FlexCAN
Thread-Index: AQHVTPnFye4S12f/ck6VNd11DuJmzQ==
Date: Wed, 7 Aug 2019 08:26:11 +0000
Message-ID: <20190807082556.5013-4-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7346dd3a-28a0-43ae-df09-08d71b10e7b8
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB3614; 
x-ms-traffictypediagnostic: VI1PR0502MB3614:
x-microsoft-antispam-prvs: <VI1PR0502MB361442DDD1E486917387244AF4D40@VI1PR0502MB3614.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2399;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(199004)(189003)(305945005)(14444005)(6116002)(26005)(81156014)(76176011)(36756003)(3846002)(6486002)(86362001)(6512007)(478600001)(25786009)(71190400001)(2906002)(7416002)(81166006)(256004)(316002)(71200400001)(2201001)(44832011)(53936002)(7736002)(110136005)(8936002)(54906003)(52116002)(66446008)(64756008)(14454004)(99286004)(476003)(102836004)(8676002)(6436002)(1076003)(66556008)(5660300002)(6506007)(2501003)(4326008)(66946007)(486006)(446003)(11346002)(66066001)(68736007)(50226002)(186003)(66476007)(2616005)(386003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3614;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: COSM2YpBFg5xwpnSl+8YbzUyBLES/pifJIe7NAKAp5vt4a3+z/iTlLFrA/p7SxdyRk1dm8QqRWBK9RTKpqQjagPX+9keUNxpeDATqqwGkYF3YaXPJFjA5l+b6dZ/KNQAbY6b25MEBtfqJg3A+r6scq99yOJ4S2n7pZ9+lcUvGVZqnB8/c+G08DaefUsgSy9ewgrhOs2aPDwCeBysssGmRAgJsSMDrj/J3D4tb5nHjt/lng3kEHzx47IhQVDx6YvG4YqV/kaP9ZHs/DaysVZBDZZo9g1E/hC3bhfUc6/fl74xsVYaThLccVjKVyec1kDt4qVm4RdQF7pDL2uzROmJK388nYB+80wgmkkFVFLxlZHHQTgN6z4mjTjxWnNc7NDialQ6Fn8ofLR9ZM0KVnDI/6oM/STIQG3+7chJKqDp+es=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7346dd3a-28a0-43ae-df09-08d71b10e7b8
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:11.9852 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sCYPCtGDFFOzJiomIOX/Q6ufGaK8rYtEuZGorDG6lgo94ezn7+3Q2/7pMFieU54a80fVk898lSmsnMf/PrHuAuZIO7PT+k3FaRywJ7+ijiY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3614
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012618_723181_BF86FDC5 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
---

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
