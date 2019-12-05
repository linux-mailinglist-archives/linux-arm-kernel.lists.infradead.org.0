Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30B8113CCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 09:07:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VuXslB2GaNuTzTTHYU2CgNEPvlr48TyTGg9hwOKI1jU=; b=njGqg1nBSnucu2
	2mfV7t8iGmQyZLOWnkOM+vIcgToF1M2UZn+VgvSTWNCjrBC9zieYtnt+esBwQ+xQr0eeB2Io6YMeQ
	oV/Qdl5UjV5orEIaFZZNTNX++9lWbemBh6ARP4Yv64hgOJUUYYy9KgwQ+cmvmUy84P94P1lA9A5rN
	yZCfVwW/gYJEhk6N72blSFRwOa2uEGpeGXsfKig6lB2A3GuW/DUDo0jQOmiFgvyVJRwLokFpwaTM4
	tGlIeHft0xSMH//CSk8CcmfY4AQK8fh0kMRirU37F8Wl1XaT0YdX5mrNTH4hqX+ph6lfTo3HT/YQ4
	e3s56szHJ6SI2EA4sKMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icmAI-0004me-91; Thu, 05 Dec 2019 08:07:10 +0000
Received: from mail-eopbgr150083.outbound.protection.outlook.com
 ([40.107.15.83] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icm9f-000432-Mo
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 08:06:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FMQ18Fx7962GpCZZgm9oPuCkEU0JijoCaIe22mBYGHQz2YLAFOkjxlKlbJJdVvK8dlH+OQCbiW1A0YUYAcy6K/baIaUPPugZLq+X9dYGTjIWoD+VXNfZ5S/SuSEVfKA+HAOLAlcDBpp5LR8wA96htlhj+9Jiwa78jPNEL4hcBeJ5tCEI6OUmcKPHoJN9nK9hff3yXMAMaWuL803HT0Qcb1OhyHEAiv6yl6Vx+hL4PcQ5TTrrPQDbfC3Vzen0ajCnU6QX/3rIxtgXPNgqlGFkE8Rk5mw89lRV6JmTYUaKHYg2cNDfsFWwhbizUpR+4AuqfNITypd7rTFShOd6X/IG8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yAxxAPhDHJsXuy9J5wF2DMzGS8MhlBBh/Nb4LJhFPgk=;
 b=cdMjrm+RgyXsM+KgmSMMSq4kSALE5QpDXeVs0Etz76040oaROcLFtgmu5RiQcFGsGs5yoVcGA8NvJTFiBGUoWu6u8vTFAnRXhsiKeULkz1gfcJJ1SM+mRhnxITPVxKcMJ/E1xIdy04LpkRu6mBilS3/wzbE6RjleO1YzwArkHUlhxNYtAOLDAVAuTTwAFyQfj815UQukA3vjpnvrLHV2ViX/9sOVhaS2/EWbLbLrXf+XHXeQBxrBNhgR5ReJ+7VPwo6JlvvZ+zkSpu4pMqPX4joLT4CwEmuZ/jEPBRLi6YUOCXNWbjD83jAHm/rSdogXcvOGlcHNQ30Y23t+iXHaFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yAxxAPhDHJsXuy9J5wF2DMzGS8MhlBBh/Nb4LJhFPgk=;
 b=iLKiEE9E5xy7Lx3m17vyqthdud/0AwZ8wxtAaiERRLdsL9LdLSHRhSAvckjHhSIqz4m2b4/nJ+Xx/8hKkC/xRH550LxaKmxryNYsDtsewY9h/fbrEfbykXj6LAb2dItgwDVkmxJ0v7JXmisKuCfZDu5u/vT0INP+zksnQjPTlPo=
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (20.179.235.146) by
 VE1PR04MB6526.eurprd04.prod.outlook.com (20.179.233.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 5 Dec 2019 08:06:28 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::bd10:c4cb:c1ed:97df]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::bd10:c4cb:c1ed:97df%3]) with mapi id 15.20.2516.014; Thu, 5 Dec 2019
 08:06:28 +0000
From: Jun Li <jun.li@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>
Subject: [PATCH 3/3] arm64: dts: imx8mn-evk: enable usb1 and typec support
Thread-Topic: [PATCH 3/3] arm64: dts: imx8mn-evk: enable usb1 and typec support
Thread-Index: AQHVq0Llfh22AuNNeUK2q/2BWGfQhw==
Date: Thu, 5 Dec 2019 08:06:28 +0000
Message-ID: <1575533029-13049-3-git-send-email-jun.li@nxp.com>
References: <1575533029-13049-1-git-send-email-jun.li@nxp.com>
In-Reply-To: <1575533029-13049-1-git-send-email-jun.li@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0050.apcprd03.prod.outlook.com
 (2603:1096:202:17::20) To VE1PR04MB6528.eurprd04.prod.outlook.com
 (2603:10a6:803:127::18)
authentication-results: spf=none (sender IP is ) smtp.mailfrom=jun.li@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c76a1300-ee16-4e8b-9c32-08d7795a07e4
x-ms-traffictypediagnostic: VE1PR04MB6526:|VE1PR04MB6526:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB65266344F9EB3FD460BC50C5895C0@VE1PR04MB6526.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 02426D11FE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(136003)(396003)(376002)(39860400002)(189003)(199004)(6506007)(186003)(25786009)(26005)(71200400001)(71190400001)(4326008)(86362001)(6486002)(6116002)(7416002)(102836004)(36756003)(76176011)(305945005)(52116002)(66476007)(99286004)(2201001)(66946007)(66556008)(64756008)(66446008)(7736002)(44832011)(11346002)(81166006)(8676002)(81156014)(14454004)(316002)(2616005)(478600001)(3846002)(5660300002)(8936002)(50226002)(54906003)(2906002)(6436002)(6512007)(2501003)(110136005)(32563001)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6526;
 H:VE1PR04MB6528.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sK6ONeIUPH8NbMX4p+OsK742QsNdKGrfncdHMm/d4p1KW8Z/nos7dZiqNxF6Kj7LtjgeY1a4l1jYhumgIz75l8GU54O/Y/CfQT2YPB/q6WGhoRRLZ4hT9eKV8i+qFHHLIVR+LvNeoCJyPFy0+z1BWbK+3f3FIhtCJkJOjN5v5ccVoraYkZCQFY7ZDzO5kFO5/GbIQDbZ06AvjrrYUsR9A2uu1ZLLHL31VY5ZpTUPGpspINZfxIybpF6Deuuazz2RPxhbfvDbZWZgiw7SVtMSrZtvCocqY6ur58jZCq8eIUHGjD40ZtarMxNGShbOG3nhKNf37TdCs5QS06uujSJdCsYOvU/WVPGWA0/duTX4e5u2YtiwkHGC/FNAgKwmFDwvI0DoVtqG+334aW0HkFAxTdTbqFP7s9z7TaJozycMeo9MtSt+MHqyBK10m5DZJwgSLjsAVA9rnbR8ukxhhk4f2LuGFPE4q7Zt8G/8okQilgsWv0ykSZeK+S9pAL33Aww2AyXMjAfTPK1TqAgDcf2BaA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c76a1300-ee16-4e8b-9c32-08d7795a07e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2019 08:06:28.6292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xFdKoY/RNRwmCfk8py7Puf/ZnNVmRcjuwtAgDBxqQw4xI0KQSobQGwMLg/6PYiR3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6526
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_000631_931985_E9936832 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Jun Li <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Jun <jun.li@nxp.com>

USB1 port has typec connector with power delivery support:
- Dual data role: host and device.
- Dual power role: source and sink, prefer power sink.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi | 65 +++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index 2a74330..61511e9 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -3,6 +3,7 @@
  * Copyright 2019 NXP
  */
 
+#include <dt-bindings/usb/pd.h>
 #include "imx8mn.dtsi"
 
 / {
@@ -60,6 +61,42 @@
 	status = "okay";
 };
 
+&i2c2 {
+	clock-frequency = <400000>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c2>;
+	status = "okay";
+
+	ptn5110: tcpc@50 {
+		compatible = "nxp,ptn5110";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_typec1>;
+		reg = <0x50>;
+		interrupt-parent = <&gpio2>;
+		interrupts = <11 8>;
+		status = "okay";
+
+		port {
+			typec1_dr_sw: endpoint {
+				remote-endpoint = <&usb1_drd_sw>;
+			};
+		};
+
+		typec1_con: connector {
+			compatible = "usb-c-connector";
+			label = "USB-C";
+			power-role = "dual";
+			data-role = "dual";
+			try-power-role = "sink";
+			source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
+			sink-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)
+				     PDO_VAR(5000, 20000, 3000)>;
+			op-sink-microwatt = <15000000>;
+			self-powered;
+		};
+	};
+};
+
 &snvs_pwrkey {
 	status = "okay";
 };
@@ -70,6 +107,21 @@
 	status = "okay";
 };
 
+&usbotg1 {
+	dr_mode = "otg";
+	hnp-disable;
+	srp-disable;
+	adp-disable;
+	usb-role-switch;
+	status = "okay";
+
+	port {
+		usb1_drd_sw: endpoint {
+			remote-endpoint = <&typec1_dr_sw>;
+		};
+	};
+};
+
 &usdhc2 {
 	assigned-clocks = <&clk IMX8MN_CLK_USDHC2>;
 	assigned-clock-rates = <200000000>;
@@ -138,12 +190,25 @@
 		>;
 	};
 
+	pinctrl_i2c2: i2c2grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_I2C2_SCL_I2C2_SCL		0x400001c3
+			MX8MN_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
+		>;
+	};
+
 	pinctrl_reg_usdhc2_vmmc: regusdhc2vmmc {
 		fsl,pins = <
 			MX8MN_IOMUXC_SD2_RESET_B_GPIO2_IO19	0x41
 		>;
 	};
 
+	pinctrl_typec1: typec1grp {
+		fsl,pins = <
+			MX8MN_IOMUXC_SD1_STROBE_GPIO2_IO11	0x159
+		>;
+	};
+
 	pinctrl_uart2: uart2grp {
 		fsl,pins = <
 			MX8MN_IOMUXC_UART2_RXD_UART2_DCE_RX	0x140
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
