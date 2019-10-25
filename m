Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A00E44A9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 09:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DEyJp0IrJhGwMB1JOFXDjb2d5pKTdbOqbJMJn09c1E=; b=EG036l+dkqg4NA
	HRRdRbJmXf7IBVKU0kF/u7yu1VZfOJJWij6hbHggbd+xWv5DGbcD0ig+ddcQvMkzL8GUB2moFiZxm
	v/IBddStkoOz4W6C8iWfbFs/FgEZY3QOTKximj/bUG9R0NVVW8XNMeSAZMMhmTqvR4mOj55mzjcwN
	XAwO38gDyB2KOji1ThV+kGcFc/PQFCrdcv6wFq9yCJkAOe6fy0OM00BiZ7+J/1208V87ZFy1VkJtO
	dZkuXsOcbgCjZ6sEiBFusPvTmWFr6VaJceBIaQhmdTgEpxqfQatDdnL6CAq+NvMFnhFQlI7mtFUbR
	KzFFihgv5XVMciFLayWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNuAh-0001Od-C4; Fri, 25 Oct 2019 07:38:07 +0000
Received: from mail-eopbgr30054.outbound.protection.outlook.com ([40.107.3.54]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNuAP-0001HF-Ju
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 07:37:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=caNvxC6gIV75Jwj+jaFxozM2FzN6cdFzmtiCpao3+GVa79KLaV7xXzCQaJJ5xRBx/LkJYgkUc7LD2ZdKsnBesmHdpHG8gfuS6cHMc56J8Pk9CMEuEr8D3FTUIjbJPvObiQSKN126EF7pd2kY/GeK9O5f1i4P3UNgk2/aXD8Vxi2ECLUNP+UhrDFawf7ULV/hiqVr4F7fL99vpJVk3kXnbRQLAxWFcriUbGXt9fFFo803bHYMudek3O0MtPZgxWtW0vYEgVmxUtL84tkCy6OowDhYIuyiFi7BmHiuIKgQnSTJWEHSlIc4ddlPZ/7Fu9vtkGlZZmjwr39jaj5AeJbj0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4S0amo45yNDqg9PFWspA9xID2dvWio6rWr0opWEEuek=;
 b=jmnhf5KzTVhSr4xdD6/r8EhVXGZYrrbPuShB1NN6BlQMyFWz9aO8HxafS1447xW3qsqPevdEbY5+UqiE8nggbKTr597lMlbGMVgecLr7mWw0ChsauQwx8FTmZpEEdsQOme71aAu1oK4Q6cxMixeZix9TKJJ2B+sbvuEtCiRSAd3jNf9tXWQ1ga6Cxom14GcpGL0JbBlUrPQEdgs2j6ABJa6BQW8egL3edB9w7viPebZ1mzZlwYXdZkDRlWYUpwIJvO0BJX8KduDJvD0i+WhpPP4cOuiZzsxWrpih6j8ODpoc4viQYHjmik6Pm1+GCUAdkiicnG06CaIciY3UutSleg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4S0amo45yNDqg9PFWspA9xID2dvWio6rWr0opWEEuek=;
 b=O0LSMRfvrSebbNu6QWBPizrMEvkA+pj1G0w6AU4CF2plYN6iVYgKrR8aXRHsgVOBtjlQhOuM+X7Jif3WOjy2YmdmIm3CbmVkDPj2C5TDjqtBKY7v4OIRPXcfac0bFx3sjchzA6U2ej9iFITyjakOT6BfvNz1DExkBa1avGRGSoE=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1671.eurprd09.prod.outlook.com (10.171.75.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.18; Fri, 25 Oct 2019 07:37:46 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::b1b2:ecb1:9c98:6b74]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::b1b2:ecb1:9c98:6b74%6]) with mapi id 15.20.2367.025; Fri, 25 Oct 2019
 07:37:46 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCHv4 1/1] arm64: dts: add basic DTS for imx8qm-rom7720-a1 board
Thread-Topic: [PATCHv4 1/1] arm64: dts: add basic DTS for imx8qm-rom7720-a1
 board
Thread-Index: AQHViwcYXrZQgZ5EqUymCwPt7Nh/2Q==
Date: Fri, 25 Oct 2019 07:37:46 +0000
Message-ID: <20191025073657.17593-2-oliver.graute@kococonnector.com>
References: <20191025073657.17593-1-oliver.graute@kococonnector.com>
In-Reply-To: <20191025073657.17593-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MRXP264CA0031.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:500:14::19) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-patchwork-bot: notify
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71d7f22c-1e18-4b13-db1f-08d7591e3a9a
x-ms-traffictypediagnostic: DB6PR0902MB1671:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB16719DCED5649D9BA7182B7FEB650@DB6PR0902MB1671.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 02015246A9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(39830400003)(346002)(376002)(136003)(366004)(189003)(199004)(54534003)(50226002)(7416002)(2501003)(102836004)(14454004)(316002)(86362001)(54906003)(71190400001)(6116002)(446003)(4326008)(6512007)(6916009)(71200400001)(3846002)(52116002)(76176011)(2616005)(386003)(476003)(5660300002)(5640700003)(6506007)(2906002)(486006)(25786009)(11346002)(66066001)(508600001)(7736002)(44832011)(6486002)(36756003)(99286004)(305945005)(186003)(256004)(81166006)(8676002)(81156014)(26005)(1730700003)(66946007)(1076003)(66476007)(6436002)(66556008)(64756008)(8936002)(66446008)(2351001)(14444005)(32563001)(473944003)(414714003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1671;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jFB5nSBE45QUJbabBO+r8v0jqdYhqzzE0S+RaG1YmbCuBO28Xmwxl//SGalCLI3wql7mVjiYSDu+dTU7Ze+WKu+c1h/pOgXy/6sTTqABTIz9CeZxBcGs5Xlm2jUyeovQMFCN9YwRr6NbtYx8/mhHrOrt2Z9Hq/HeKNfykOX6Ekbqa32xS4FHCjjk1Sygp+VlFrQ2vyKHUOkzaA6Fxhgp2mH2hjKLnsmkqYJQBO1CprUhkzWrmTjRwCqU0fH7rD7az59vRfkP2WyCxCkS1YnlbSxms/myIXdGc5/QeAdjbtsXK2mkk7S9JzpQsfAaPdZ8C7o0u52GtdMzJF518apxo9dD9CvsTMua8g2CQW3CRTF+rwnYMog0+4bTt+eoSaR3tQWFd4+F+iquFbQH31DmUukarICupIGtwv4gJaoLf1g4k6XNl0KaWhs2xMT48nDK
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71d7f22c-1e18-4b13-db1f-08d7591e3a9a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2019 07:37:46.4501 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EE1nsc6+Vtaa+FGXLEfUtCl7c+42HhuKRTV1m8XX3mF+jqDv22RbXAVmmt+697/PxRnoqyZuJPhCE5osSdC/evCWgQJimbO+PxQF0Cv2v88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1671
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_003749_924293_D7BC3509 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Mark Rutland <mark.rutland@arm.com>, Pramod Kumar <pramod.kumar_1@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Richard Hu <richard.hu@technexion.com>,
 "oliver.graute@gmail.com" <oliver.graute@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add basic dts support for a Advantech iMX8QM Qseven Board

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
Changelog:
v4:
- added reg_usdhc3_vmmc node
- added usdhc3 node

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-rom7720-a1.dts  | 299 ++++++++++++++++++
 2 files changed, 300 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 93fce8f0c66d..0de6d384b5ea 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -30,5 +30,6 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8qm-rom7720-a1.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
new file mode 100644
index 000000000000..b7b6f96f224c
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
@@ -0,0 +1,299 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+* Copyright 2017-2018 NXP
+* Copyright (C) 2019 Oliver Graute <oliver.graute@kococonnector.com>
+*/
+/dts-v1/;
+
+#include "imx8qm.dtsi"
+
+/ {
+	model = "Advantech iMX8QM Qseven series";
+	compatible = "fsl,imx8qm";
+
+	board {
+		compatible = "proc-board";
+		board-type = "ROM-7720_A1";
+		board-cpu  = "iMX8QM";
+	};
+
+	chosen {
+		bootargs = "console=ttyLP0,115200 earlycon=lpuart32,0x5a060000,115200";
+		stdout-path = &lpuart0;
+	};
+
+	cpus {
+		/delete-node/ cpu-map;
+		/delete-node/ cpu@100;
+		/delete-node/ cpu@101;
+	};
+
+	memory@80000000 {
+		device_type = "memory";
+		reg = <0x00000000 0x80000000 0 0x40000000>;
+	};
+
+	reg_usdhc2_vmmc: usdhc2_vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "sw-3p3-sd1";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&lsio_gpio4 7 GPIO_ACTIVE_HIGH>;
+		off-on-delay = <3000>;
+		enable-active-high;
+	};
+
+	reg_usdhc3_vmmc: usdhc3_vmmc {
+		compatible = "regulator-fixed";
+		regulator-name = "sw-3p3-sd2";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&lsio_gpio4 9 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+		regulator-always-on;
+	};
+};
+
+&lpuart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart0>;
+	status = "okay";
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii-txid";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	fsl,rgmii_rxc_dly;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <4>;
+			at803x,eee-disabled;
+			at803x,vddio-1p8v;
+		};
+	};
+};
+
+&lsio_gpio4 {
+        status = "okay";
+};
+
+&lsio_gpio5 {
+        status = "okay";
+};
+
+&usdhc1 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc1>;
+	pinctrl-1 = <&pinctrl_usdhc1_100mhz>;
+	pinctrl-2 = <&pinctrl_usdhc1_200mhz>;
+	bus-width = <8>;
+	non-removable;
+	status = "okay";
+};
+
+&usdhc2 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc2>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc2_100mhz>, <&pinctrl_usdhc2_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc2_200mhz>, <&pinctrl_usdhc2_gpio>;
+	bus-width = <4>;
+	cd-gpios = <&lsio_gpio5 22 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&lsio_gpio5 21 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&reg_usdhc2_vmmc>;
+	status = "okay";
+};
+
+&usdhc3 {
+	pinctrl-names = "default", "state_100mhz", "state_200mhz";
+	pinctrl-0 = <&pinctrl_usdhc3>, <&pinctrl_usdhc3_gpio>;
+	pinctrl-1 = <&pinctrl_usdhc3_100mhz>, <&pinctrl_usdhc3_gpio>;
+	pinctrl-2 = <&pinctrl_usdhc3_200mhz>, <&pinctrl_usdhc3_gpio>;
+	bus-width = <4>;
+	cd-gpios = <&lsio_gpio4 12 GPIO_ACTIVE_LOW>;
+	wp-gpios = <&lsio_gpio4 11 GPIO_ACTIVE_HIGH>;
+	vmmc-supply = <&reg_usdhc3_vmmc>;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl_fec1: fec1grp {
+		fsl,pins = <
+			IMX8QM_COMP_CTL_GPIO_1V8_3V3_ENET_ENETB_PAD	0x000014a0
+			IMX8QM_ENET0_MDC_CONN_ENET0_MDC			0x06000020
+			IMX8QM_ENET0_MDIO_CONN_ENET0_MDIO		0x06000020
+			IMX8QM_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x00000060
+			IMX8QM_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC	0x00000060
+			IMX8QM_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0	0x00000060
+			IMX8QM_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1	0x00000060
+			IMX8QM_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2	0x00000060
+			IMX8QM_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3	0x00000060
+			IMX8QM_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC	0x00000060
+			IMX8QM_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x00000060
+			IMX8QM_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0	0x00000060
+			IMX8QM_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1	0x00000060
+			IMX8QM_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2	0x00000060
+			IMX8QM_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3	0x00000060
+		>;
+	};
+
+	pinctrl_hog: hoggrp {
+		fsl,pins = <
+			IMX8QM_USB_SS3_TC0_LSIO_GPIO4_IO03	0x06000048
+		>;
+	};
+
+	pinctrl_lpuart0: lpuart0grp {
+		fsl,pins = <
+			IMX8QM_UART0_RX_DMA_UART0_RX		0x06000020
+			IMX8QM_UART0_TX_DMA_UART0_TX		0x06000020
+		>;
+	};
+
+	pinctrl_usdhc1: usdhc1grp {
+		fsl,pins = <
+			IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000041
+			IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000021
+			IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000021
+			IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000021
+			IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000021
+			IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000021
+			IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000021
+			IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000021
+			IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000021
+			IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000021
+			IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000041
+			IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000021
+		>;
+	};
+
+	pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+		fsl,pins = <
+			IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+			IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+			IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+			IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+			IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+			IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+			IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+			IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+			IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+			IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+			IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+			IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+		>;
+	};
+
+	pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+		fsl,pins = <
+			IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+			IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+			IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+			IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+			IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+			IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+			IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+			IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+			IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+			IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+			IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+			IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+		>;
+	};
+
+	pinctrl_usdhc2_gpio: usdhc2grpgpio {
+		fsl,pins = <
+			IMX8QM_USDHC1_DATA6_LSIO_GPIO5_IO21	0x00000021
+			IMX8QM_USDHC1_DATA7_LSIO_GPIO5_IO22	0x00000021
+			IMX8QM_USDHC1_RESET_B_LSIO_GPIO4_IO07	0x00000021
+		>;
+	};
+
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000041
+			IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000021
+			IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000021
+			IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000021
+			IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000021
+			IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000021
+			IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000021
+		>;
+	};
+
+	pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+		fsl,pins = <
+			IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+			IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+			IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+			IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+			IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+			IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+			IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+		>;
+	};
+
+	pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+		fsl,pins = <
+			IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+			IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+			IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+			IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+			IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+			IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+			IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+		>;
+	};
+
+	pinctrl_usdhc3: usdhc3grp {
+		fsl,pins = <
+			IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK         0x06000041
+			IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD         0x00000021
+			IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0     0x00000021
+			IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1     0x00000021
+			IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2     0x00000021
+			IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3     0x00000021
+			IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT 0x00000021
+		>;
+	};
+
+	pinctrl_usdhc3_gpio: usdhc3grpgpio {
+		fsl,pins = <
+			IMX8QM_USDHC2_WP_LSIO_GPIO4_IO11  0x00000021
+			IMX8QM_USDHC2_CD_B_LSIO_GPIO4_IO12        0x00000021
+			IMX8QM_USDHC2_RESET_B_LSIO_GPIO4_IO09     0x00000021
+		>;
+	};
+
+	pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+		fsl,pins = <
+			IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK         0x06000040
+			IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD         0x00000020
+			IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0     0x00000020
+			IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1     0x00000020
+			IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2     0x00000020
+			IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3     0x00000020
+			IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT 0x00000020
+		>;
+	};
+
+	pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+		fsl,pins = <
+			IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK         0x06000040
+			IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD         0x00000020
+			IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0     0x00000020
+			IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1     0x00000020
+			IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2     0x00000020
+			IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3     0x00000020
+			IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT 0x00000020
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
