Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4C57A683
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:06:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfFRRn2P86kHIKAIFv/4Pu4ncgqYojbZBtjjLrs8nIU=; b=IhxkMWwtmiCMAn
	reE1saVFIx7IVEJNy8KFc9CA+dCffsycgqU3VfuL8dDKnVWqTFN9jGg7da/HS+JmTjbH/GrmV8Lqd
	HKAYn2KOMIwfwydYllxyAj9Hc5cKTLULAG2E9RI3ARY1NnRfwFKQdnHJ4NzUVKe5uLEaDYUFX0gZe
	2zXXSE1uXMq5EVRVxYaPzWu09f8mvcEVPdokWbDeZs6Xd3AuwLQA41u1K9PpwXQguhFe4NpF1qqHo
	DGfwgwjTrEmMaRE716J0O+I6QSkG8u9XE/NvH4oFHYBgLdlh3fwirQtnMjHaobkmjJayQ7eSs1w/y
	coF5zbeq8Sc0N9Sr6XJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPxk-00079d-NJ; Tue, 30 Jul 2019 11:06:36 +0000
Received: from mail-eopbgr60045.outbound.protection.outlook.com ([40.107.6.45]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPxT-0006pb-Hm
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:06:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lHAj6FK2zuwz4r5lJ5Oio7ZRvijhYti3D0Ofai8iA2zUXxuHTwdJnmyaWeK8sxJtM/DDRygNrFp1Yutn35GgE9+ZrKXQ6hNbTEJH/96LzWtzDEbskZRC6j4dcKqvIFdgMhY82/OqSUVkmLaciYdzz+TUHzxdMdYdDtu+K7vEMXYTO8u02DcYFWwOyJxbVBvZGMJychyEVs9zX/83eCXTDjIyLvtWl70PUbzmP1tyFH0CwtkRUg0ydNODpsom4Z24Mu2yoXug6aoKnpPU1gbSJ4zNFN9whaGEkNLgzSerJLDaXqSflEAqQ9v3U7mrVU2k1py3gW/XY7IT5vADU0oLoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m3aLFkFCwB5rVDd78R/T0BjxC2c537Xe5FWKOnA5YQY=;
 b=HUe2bmJ4wfwO0cGWdzjetOJh9sHtDNXVCdQJ2NLrPuLcjgvAgG1y4ZFGYJEXZ+zQyVWMUfZraYMZu9DEX3PhdwP3FQsIg/oNj+R/CmDoonwy/unLc/pMTBdHqBU/2Cbi3yPUU2oXU6Vaym2bKt7RZTnHYYYFOwnfwiDYB3pf5RtaLbF/TiFXA4ZMvB/VJb4ioIArT0PqfdWpxcZ+tEWhecDX77/6ZAqYZGDmJFyGBBEVTXfl0PBtdbCiKBAVof3AgkV8HQS9HNImKsUe4wIL/Mikc2Uf7ynIpbMS0J3aXBkF5OwG/WIpEr30906nF2pdl+I/wN6nRzlRRnbWeLV38g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=kococonnector.com;dmarc=pass action=none
 header.from=kococonnector.com;dkim=pass header.d=kococonnector.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m3aLFkFCwB5rVDd78R/T0BjxC2c537Xe5FWKOnA5YQY=;
 b=YFg1E4rZ0aQgE3Sgtr/bqIWV+Lmyhak10wruTnO2ldLozVd9c3BWEXNVig3SX+4VU1Wbq+LkAnjru+9tJaN7Sl7Ii7b3mGk66ycRGMuHMzRHmiVcp4rYHg4M5mx67QgfECx4arVGbxfUYu6ux0dVcbqY5bw1dd/tyxspM9+LxEA=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1989.eurprd09.prod.outlook.com (10.170.212.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.12; Tue, 30 Jul 2019 11:06:16 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::c169:d07:269b:2980]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::c169:d07:269b:2980%7]) with mapi id 15.20.2136.010; Tue, 30 Jul 2019
 11:06:16 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [PATCHv3 1/1] arm64: dts: add basic DTS for imx8qm-rom7720-a1 board
Thread-Topic: [PATCHv3 1/1] arm64: dts: add basic DTS for imx8qm-rom7720-a1
 board
Thread-Index: AQHVRsbOMBT562mEM06cxWTryDydXA==
Date: Tue, 30 Jul 2019 11:06:16 +0000
Message-ID: <20190730110140.17247-2-oliver.graute@kococonnector.com>
References: <20190730110140.17247-1-oliver.graute@kococonnector.com>
In-Reply-To: <20190730110140.17247-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR06CA0007.eurprd06.prod.outlook.com
 (2603:10a6:208:ab::20) To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 47c2380f-c94b-484e-9d99-08d714ddf141
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:DB6PR0902MB1989; 
x-ms-traffictypediagnostic: DB6PR0902MB1989:
x-microsoft-antispam-prvs: <DB6PR0902MB19891EDD6C16D4539C59D498EBDC0@DB6PR0902MB1989.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0114FF88F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(376002)(39840400004)(366004)(396003)(346002)(199004)(189003)(66556008)(4326008)(81166006)(8676002)(316002)(1730700003)(81156014)(14454004)(14444005)(36756003)(52116002)(53936002)(2501003)(256004)(54906003)(86362001)(68736007)(6916009)(508600001)(305945005)(7736002)(476003)(25786009)(50226002)(2906002)(64756008)(7416002)(6486002)(6506007)(71190400001)(6436002)(44832011)(76176011)(102836004)(8936002)(5640700003)(66066001)(6512007)(486006)(71200400001)(66946007)(11346002)(186003)(446003)(26005)(3846002)(99286004)(66446008)(2616005)(1076003)(5660300002)(6116002)(386003)(66476007)(2351001)(32563001)(473944003)(414714003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1989;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: K45Qfm3RpZIv42X2Ak8P3zXs5ZTpms6NNDCElggv3dqaZ9OhqyLzuPkjrCtAUHKpxVYlafhtDTtyvJsgxz31JZrS2DxB87E/Kq7vInbkftwWPtrf/FHJ/EDp8bXlR/MhhQJF6IsCzoeuKpe5WaKwpTCm9C6cSXoftloEnElldd4HN99d8Qza4n5RO1iKNRDLtK3VonpSmWm9B4GknBe5bS2j2VceP+dgHV60Pij2xq7em+X9+nflQnBsUKpLA04mz6EcjSZp1ReQdfltw48gcE/LDOsEJfvygopJZQ1DLBaxNThjReBeMVWt1ELEl1mp9ksmxb439shC4denuNJxbX+v0FWdGHWYDhPwHd+LCCv/SuyQgONrPq9/VRISjIkFcQrwJyHbs8AiWyvUg1+xE2K4WeCY1/70k5zh2f0/WjA=
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47c2380f-c94b-484e-9d99-08d714ddf141
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jul 2019 11:06:16.5860 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oliver.graute@kococonnector.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1989
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_040619_758334_5E920822 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.45 listed in list.dnswl.org]
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
 Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Pankaj Bansal <pankaj.bansal@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add basic dts support for a Advantech iMX8QM Qseven Board

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-rom7720-a1.dts  | 228 ++++++++++++++++++
 2 files changed, 229 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index c5e39cd4fdaf..68dd30ade6df 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -26,4 +26,5 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-librem5-devkit.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qm-mek.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8qm-rom7720-a1.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
new file mode 100644
index 000000000000..f79c2c7a7cda
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-rom7720-a1.dts
@@ -0,0 +1,228 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
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
+&iomuxc {
+	pinctrl_hog_1: hoggrp-1 {
+		fsl,pins = <
+			IMX8QM_USB_SS3_TC0_LSIO_GPIO4_IO03	  0x06000048
+		>;
+	};
+
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
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
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
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
