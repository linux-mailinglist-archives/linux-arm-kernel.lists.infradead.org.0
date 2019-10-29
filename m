Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CD6E8801
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:23:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tYj6OjWC64lUuKH682u1vPWn84CBJe3hoKj+o5RuA+I=; b=aRtH/PfFv+El8+
	jwJO0MyVGpvv8yLYayZWBQUIU3pcCl//Qe6hfPTLA6JnGSFnGzj5QtWQJT11BCGzHHaXsu6tztJMX
	J3cvuelXsDIxH5C+/r7P0ARrKc+Nu+okLiZtvxspl496QdVEvcNV/SEwwRm5lbfxLqBl04K5EFiWK
	fGS8UdxKHjS7lgUQqWaKFvAfh1SAm+CiJDoOrxvwg2jmZJ2Cv8nci0o8nhC/wOj/YSQml7X/ulux9
	h5gJaR8TMC/4FCeLEUOpPGc3Ehtc+EhWVri/hiaD7jfaa6p1e09a310IfejJ30pxh5iGgMQWYzN8d
	NV06Wo0duw2P4zhH0tNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQX0-0001La-7O; Tue, 29 Oct 2019 12:23:26 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQWo-0001Jd-No
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:23:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a6QYEgm7BFEGNTZEm2wJ603IOEdi2BQKN4Hyaxr3wZk2nn4oTuez4kBw49QoU4UUu0ZExVNYuxGXNMVt4QtLGa5OemobaLNpaezoV5+X6DAOW5PxuWpaF6OB59KiJy1WSfYnRtWeiyc7CBccRzQ33vrDwRg50sQy2QlCL/AZ+3L3bRp187X0POR57zj/IRrH/lxSA86I/7gLD1yUYH3SmGZhBB4+izHNiR4I8MUOhEsxStdQwEY9WmpCSshuP7ckGCA7vDXY6qIJGbWj55u9UmK+aKwCu8rCp45r70TOEueQ0LoUBdgCD6QqFYcI1/SZxzazIlC/PAN5S+7R/iKwrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LwvwHf2J3piXSf2Q8PhGbanqGIHbah8KHV2R62rDMig=;
 b=HUaSfF5joZtnGxASZAbIg0+eiw2s6n6azoi4XwnsmOz9RaEU2cp083X/Cf7215sa/+qbzHgc5VlDoh5xHgZ0l8s5mHPsFZ4iXLjoWUC7LfgThVXD8OxGebxCdIEmGLmko4OSKjXQOEDqyIABAKzPCf+xKUncg1+9RKDYYUvI4aqHd3uTe9OnDkIoTqS64tjgiNtoxDm0PjzNM9y+6AGZCgJ2Pz4ZEzh4yPzCdzV9v2AWew4xLeadCzYGIWiAuZEaqQePTKiKG5oi4DKH059gfxyA6RqCxJQBOSBCi6eoUmdKEHr0wIPsbQSQhLGigwB65bTLaJYwlJzVVdGn9lHw1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kococonnector.com; dmarc=pass action=none
 header.from=kococonnector.com; dkim=pass header.d=kococonnector.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=KoCoConnector.onmicrosoft.com; s=selector2-KoCoConnector-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LwvwHf2J3piXSf2Q8PhGbanqGIHbah8KHV2R62rDMig=;
 b=gLnlXTwFL17ZfEjGCIDQQ/g793BsihYaFdTlKpn4icBuVKu1LMCL/ITlN971Yyn8ui2BPQufiAScNj3/0nrA2qmLpIO8X677JkiUtNlAE0ZTKl5o45WFUJyH4GuZS90KBAUdDY/EMgycCxhqLbKYt/xuMT7P3SsaiQG1J0E++/U=
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com (10.170.212.23) by
 DB6PR0902MB1799.eurprd09.prod.outlook.com (10.171.74.9) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2408.17; Tue, 29 Oct 2019 12:23:11 +0000
Received: from DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::b1b2:ecb1:9c98:6b74]) by DB6PR0902MB2072.eurprd09.prod.outlook.com
 ([fe80::b1b2:ecb1:9c98:6b74%6]) with mapi id 15.20.2387.027; Tue, 29 Oct 2019
 12:23:11 +0000
From: Oliver Graute <oliver.graute@kococonnector.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec board
Thread-Topic: [RFC PATCH 1/1] arm64: dts: added basic DTS for qmx8 congatec
 board
Thread-Index: AQHVjlOhmUO+GQPCiUm3JhXNjuywwQ==
Date: Tue, 29 Oct 2019 12:23:11 +0000
Message-ID: <20191029122026.14208-2-oliver.graute@kococonnector.com>
References: <20191029122026.14208-1-oliver.graute@kococonnector.com>
In-Reply-To: <20191029122026.14208-1-oliver.graute@kococonnector.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0023.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100::35)
 To DB6PR0902MB2072.eurprd09.prod.outlook.com
 (2603:10a6:6:8::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oliver.graute@kococonnector.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [193.47.161.132]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5fb5f1b5-ce34-44cb-6d2f-08d75c6ac230
x-ms-traffictypediagnostic: DB6PR0902MB1799:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0902MB1799D9D51BA135B48A54DF73EB610@DB6PR0902MB1799.eurprd09.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1227;
x-forefront-prvs: 0205EDCD76
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(366004)(39830400003)(346002)(136003)(396003)(199004)(189003)(36756003)(6306002)(86362001)(386003)(966005)(6506007)(6916009)(6116002)(316002)(14444005)(256004)(5640700003)(1076003)(99286004)(11346002)(486006)(476003)(2906002)(6512007)(2616005)(26005)(2501003)(54906003)(44832011)(4326008)(186003)(66946007)(14454004)(446003)(66476007)(7736002)(8936002)(102836004)(305945005)(7416002)(508600001)(50226002)(8676002)(81156014)(1730700003)(2351001)(64756008)(66446008)(6436002)(81166006)(71200400001)(71190400001)(66556008)(25786009)(5660300002)(76176011)(52116002)(6486002)(3846002)(66066001)(30864003)(414714003)(473944003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0902MB1799;
 H:DB6PR0902MB2072.eurprd09.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: kococonnector.com does not
 designate permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZBYfRbRMTiDzUYNMFl9MhS/0YmUdMhTRpNOvs6Y97GKteYWlXQTZSDNO2iOgfG9eIpMb75QTHOk31LSfMzShS+joag19rodqbxKHSamoNZlm6KspoBmAWyPAW38rxC56wCQ9+PWRId9tCapZAN47LVrGA/5N7WvM/nBIeKIHAOMlQtBfDgNHBsK9OkR4CI8Cg10C58F/vaUeHahtpHeaFHS/u77L87OAyKMaKt7dysXjkQorBcwaXjsBMgSdl+Fd4yeIss2TP0hRL8bbciZeIlzUcszy2iJjSINTXUKKlj3Bt7G2NCGuyykFfB+d4xlKQQPbtx9dD63PgktUOogX0esJeeB7GXy0t/7EisXTdpTSw8pqZrmKX1xorXbC6+vlDDQvYNcB2QRxv1kFQ4N2xf3tavimCilGcQ3gR3HpbmhA/8tIQkifqqCGf4N1pjN02Bntg26i6Nkuylc1rIiDkxbpB0Jw7GYVj2hKhS6RNkw=
MIME-Version: 1.0
X-OriginatorOrg: kococonnector.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fb5f1b5-ce34-44cb-6d2f-08d75c6ac230
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2019 12:23:11.4163 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 59845429-0644-4099-bd7e-17fba65a2f2b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A8LkQlnQnojIutiR+zwIZlE7H5cx44HAV7hXKyZIlAWiHTVYdmlB7rFsDZb0DYiOYWfQICAVUX6OcDxbA/bNFBtDbmE8UBahZ6zg7pPfEv8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0902MB1799
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_052314_938932_91E3E4E6 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.54 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "aisheng.dong@nxp.com" <aisheng.dong@nxp.com>,
 Mark Rutland <mark.rutland@arm.com>, "peng.fan@nxp.com" <peng.fan@nxp.com>,
 Pramod Kumar <pramod.kumar_1@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Stoica Cosmin-Stefan <cosmin.stoica@nxp.com>,
 Oliver Graute <oliver.graute@kococonnector.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>,
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

Add basic dts support for a Congatec iMX8QM Qseven Board

Product Page: https://www.congatec.com/de/produkte/qseven/conga-qmx8x.html

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/imx8qm-cgt-qmx8.dts    | 391 ++++++++++++++++++
 2 files changed, 392 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8qm-cgt-qmx8.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 5f7e4aa0da60..a3639654c567 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -31,6 +31,7 @@ dtb-$(CONFIG_ARCH_MXC) += imx8mq-nitrogen.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-pico-pi.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-rmb3.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-zii-ultra-zest.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8qm-cgt-qmx8.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-ai_ml.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8qxp-mek.dtb
 
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-cgt-qmx8.dts b/arch/arm64/boot/dts/freescale/imx8qm-cgt-qmx8.dts
new file mode 100644
index 000000000000..e1597bbfe0f5
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8qm-cgt-qmx8.dts
@@ -0,0 +1,391 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017 NXP
+ * Copyright (C) 2019 Oliver Graute <oliver.graute@kococonnector.com>
+ */
+/dts-v1/;
+
+#include "imx8qm.dtsi"
+
+/ {
+	model = "Congatec QMX8 Qseven series";
+	compatible = "fsl,imx8qm-qmx8", "fsl,imx8qm";
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
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		/* global autoconfigured region for contiguous allocations */
+		linux,cma {
+			compatible = "shared-dma-pool";
+			reusable;
+			size = <0 0x28000000>;
+			alloc-ranges = <0 0x80000000 0 0x80000000>;
+			linux,cma-default;
+		};
+	};
+
+	regulators {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		reg_audio: regulator@0 {
+			compatible = "regulator-fixed";
+			reg = <2>;
+			regulator-name = "cs42888_supply";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			regulator-always-on;
+		};
+
+		reg_usdhc2_vmmc: usdhc2_vmmc {
+			compatible = "regulator-fixed";
+			regulator-name = "sw-3p3-sd1";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&lsio_gpio4 7 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+			off-on-delay = <3000>;
+		};
+
+		reg_usdhc3_vmmc: usdhc3_vmmc {
+			compatible = "regulator-fixed";
+			regulator-name = "sw-3p3-sd2";
+			regulator-min-microvolt = <3300000>;
+			regulator-max-microvolt = <3300000>;
+			gpio = <&lsio_gpio4 9 GPIO_ACTIVE_HIGH>;
+			enable-active-high;
+			off-on-delay = <3000>;
+		};
+	};
+};
+
+&fec1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_fec1>;
+	phy-mode = "rgmii";
+	phy-handle = <&ethphy0>;
+	fsl,magic-packet;
+	fsl,rgmii_txc_dly;
+	fsl,rgmii_rxc_dly;
+	status = "okay";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			reg = <6>;
+			at803x,eee-disabled;
+			at803x,vddio-1p8v;
+		};
+	};
+};
+
+&i2c0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpi2c0>;
+	clock-frequency = <100000>;
+	status = "okay";
+
+	rtc_ext: m41t62@68 {
+		compatible = "st,m41t62";
+		reg = <0x68>;
+	};
+};
+
+&lpuart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart0>;
+	status = "okay";
+};
+
+&lpuart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_lpuart1>;
+	status = "okay";
+};
+
+&lsio_gpio2 {
+	status = "okay";
+};
+
+&lsio_gpio5 {
+	status = "okay";
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
+	fsl,tuning-start-tap = <20>;
+	fsl,tuning-step= <2>;
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
+	vmmc-supply = <&reg_usdhc3_vmmc>;
+	fsl,tuning-start-tap = <20>;
+	fsl,tuning-step= <2>;
+	no-1-8-v;
+	status = "okay";
+};
+
+&iomuxc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_hog>;
+
+	imx8qm-qmx8 {
+
+		pinctrl_hog: hoggrp{
+			fsl,pins = <
+				IMX8QM_M40_GPIO0_01_LSIO_GPIO0_IO09		0x00000021
+				IMX8QM_USB_SS3_TC1_LSIO_GPIO4_IO04		0x00000021
+				IMX8QM_M40_GPIO0_00_LSIO_GPIO0_IO08		0x00000021
+				IMX8QM_ESAI1_SCKT_LSIO_GPIO2_IO07		0x00000021
+				IMX8QM_SPDIF0_TX_LSIO_GPIO2_IO15		0x00000021
+				IMX8QM_FLEXCAN1_RX_LSIO_GPIO3_IO31		0x00000021
+				IMX8QM_ESAI1_TX0_LSIO_GPIO2_IO08		0x00000021
+				IMX8QM_FLEXCAN1_TX_LSIO_GPIO4_IO00		0x00000021
+				IMX8QM_ESAI1_TX1_LSIO_GPIO2_IO09		0x00000021
+			>;
+		};
+
+		pinctrl_fec1: fec1grp {
+			fsl,pins = <
+				IMX8QM_ENET0_MDC_CONN_ENET0_MDC			0x06000020
+				IMX8QM_ENET0_MDIO_CONN_ENET0_MDIO		0x06000020
+				IMX8QM_ENET0_RGMII_TX_CTL_CONN_ENET0_RGMII_TX_CTL	0x06000020
+				IMX8QM_ENET0_RGMII_TXC_CONN_ENET0_RGMII_TXC	0x06000020
+				IMX8QM_ENET0_RGMII_TXD0_CONN_ENET0_RGMII_TXD0	0x06000020
+				IMX8QM_ENET0_RGMII_TXD1_CONN_ENET0_RGMII_TXD1	0x06000020
+				IMX8QM_ENET0_RGMII_TXD2_CONN_ENET0_RGMII_TXD2	0x06000020
+				IMX8QM_ENET0_RGMII_TXD3_CONN_ENET0_RGMII_TXD3	0x06000020
+				IMX8QM_ENET0_RGMII_RXC_CONN_ENET0_RGMII_RXC	0x06000020
+				IMX8QM_ENET0_RGMII_RX_CTL_CONN_ENET0_RGMII_RX_CTL	0x06000020
+				IMX8QM_ENET0_RGMII_RXD0_CONN_ENET0_RGMII_RXD0	0x06000020
+				IMX8QM_ENET0_RGMII_RXD1_CONN_ENET0_RGMII_RXD1	0x06000020
+				IMX8QM_ENET0_RGMII_RXD2_CONN_ENET0_RGMII_RXD2	0x06000020
+				IMX8QM_ENET0_RGMII_RXD3_CONN_ENET0_RGMII_RXD3	0x06000020
+			>;
+		};
+
+		pinctrl_lpi2c0: lpi2c0grp {
+			fsl,pins = <
+				IMX8QM_HDMI_TX0_TS_SCL_DMA_I2C0_SCL	0xc600004c
+				IMX8QM_HDMI_TX0_TS_SDA_DMA_I2C0_SDA	0xc600004c
+			>;
+		};
+
+		pinctrl_lpi2c1: lpi2c1grp {
+			fsl,pins = <
+				IMX8QM_GPT0_CLK_DMA_I2C1_SCL		0xc600004c
+				IMX8QM_GPT0_CAPTURE_DMA_I2C1_SDA	0xc600004c
+			>;
+		};
+
+		pinctrl_lpuart0: lpuart0grp {
+			fsl,pins = <
+				IMX8QM_UART0_RX_DMA_UART0_RX		0x06000020
+				IMX8QM_UART0_TX_DMA_UART0_TX		0x06000020
+			>;
+		};
+
+		pinctrl_lpuart1: lpuart1grp {
+			fsl,pins = <
+				IMX8QM_UART1_RX_DMA_UART1_RX		0x06000020
+				IMX8QM_UART1_TX_DMA_UART1_TX		0x06000020
+				IMX8QM_UART1_CTS_B_DMA_UART1_CTS_B	0x06000020
+				IMX8QM_UART1_RTS_B_DMA_UART1_RTS_B	0x06000020
+			>;
+		};
+
+		pinctrl_lpuart3: lpuart3grp {
+			fsl,pins = <
+				IMX8QM_M41_GPIO0_00_DMA_UART3_RX	0x06000020
+				IMX8QM_M41_GPIO0_01_DMA_UART3_TX	0x06000020
+			>;
+		};
+
+		pinctrl_usdhc1: usdhc1grp {
+			fsl,pins = <
+				IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000041
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000021
+				IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000021
+				IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000021
+				IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000021
+				IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000021
+				IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000021
+				IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000021
+				IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000021
+				IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000021
+				IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000041
+				IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc1_100mhz: usdhc1grp100mhz {
+			fsl,pins = <
+				IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+				IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+				IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+				IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+				IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+				IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+				IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+				IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+				IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+				IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+				IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc1_200mhz: usdhc1grp200mhz {
+			fsl,pins = <
+				IMX8QM_EMMC0_CLK_CONN_EMMC0_CLK		0x06000040
+				IMX8QM_EMMC0_CMD_CONN_EMMC0_CMD		0x00000020
+				IMX8QM_EMMC0_DATA0_CONN_EMMC0_DATA0	0x00000020
+				IMX8QM_EMMC0_DATA1_CONN_EMMC0_DATA1	0x00000020
+				IMX8QM_EMMC0_DATA2_CONN_EMMC0_DATA2	0x00000020
+				IMX8QM_EMMC0_DATA3_CONN_EMMC0_DATA3	0x00000020
+				IMX8QM_EMMC0_DATA4_CONN_EMMC0_DATA4	0x00000020
+				IMX8QM_EMMC0_DATA5_CONN_EMMC0_DATA5	0x00000020
+				IMX8QM_EMMC0_DATA6_CONN_EMMC0_DATA6	0x00000020
+				IMX8QM_EMMC0_DATA7_CONN_EMMC0_DATA7	0x00000020
+				IMX8QM_EMMC0_STROBE_CONN_EMMC0_STROBE	0x00000040
+				IMX8QM_EMMC0_RESET_B_CONN_EMMC0_RESET_B	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc2_gpio: usdhc2grpgpio {
+			fsl,pins = <
+				IMX8QM_USDHC1_DATA6_LSIO_GPIO5_IO21	0x00000021
+				IMX8QM_USDHC1_DATA7_LSIO_GPIO5_IO22	0x00000021
+				IMX8QM_USDHC1_RESET_B_LSIO_GPIO4_IO07	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc2: usdhc2grp {
+			fsl,pins = <
+				IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000041
+				IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000021
+				IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000021
+				IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000021
+				IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000021
+				IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000021
+				IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc2_100mhz: usdhc2grp100mhz {
+			fsl,pins = <
+				IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+				IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+				IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+				IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+				IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+				IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+				IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc2_200mhz: usdhc2grp200mhz {
+			fsl,pins = <
+				IMX8QM_USDHC1_CLK_CONN_USDHC1_CLK	0x06000040
+				IMX8QM_USDHC1_CMD_CONN_USDHC1_CMD	0x00000020
+				IMX8QM_USDHC1_DATA0_CONN_USDHC1_DATA0	0x00000020
+				IMX8QM_USDHC1_DATA1_CONN_USDHC1_DATA1	0x00000020
+				IMX8QM_USDHC1_DATA2_CONN_USDHC1_DATA2	0x00000020
+				IMX8QM_USDHC1_DATA3_CONN_USDHC1_DATA3	0x00000020
+				IMX8QM_USDHC1_VSELECT_CONN_USDHC1_VSELECT	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc3_gpio: usdhc3grpgpio {
+			fsl,pins = <
+				IMX8QM_USDHC2_RESET_B_LSIO_GPIO4_IO09	0x00000021
+				IMX8QM_USDHC2_CD_B_LSIO_GPIO4_IO12	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc3: usdhc3grp {
+			fsl,pins = <
+				IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK	0x06000041
+				IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD	0x00000021
+				IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0	0x00000021
+				IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1	0x00000021
+				IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2	0x00000021
+				IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3	0x00000021
+				IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT	0x00000021
+			>;
+		};
+
+		pinctrl_usdhc3_100mhz: usdhc3grp100mhz {
+			fsl,pins = <
+				IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK	0x06000040
+				IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD	0x00000020
+				IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0	0x00000020
+				IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1	0x00000020
+				IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2	0x00000020
+				IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3	0x00000020
+				IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT	0x00000020
+			>;
+		};
+
+		pinctrl_usdhc3_200mhz: usdhc3grp200mhz {
+			fsl,pins = <
+				IMX8QM_USDHC2_CLK_CONN_USDHC2_CLK	0x06000040
+				IMX8QM_USDHC2_CMD_CONN_USDHC2_CMD	0x00000020
+				IMX8QM_USDHC2_DATA0_CONN_USDHC2_DATA0	0x00000020
+				IMX8QM_USDHC2_DATA1_CONN_USDHC2_DATA1	0x00000020
+				IMX8QM_USDHC2_DATA2_CONN_USDHC2_DATA2	0x00000020
+				IMX8QM_USDHC2_DATA3_CONN_USDHC2_DATA3	0x00000020
+				IMX8QM_USDHC2_VSELECT_CONN_USDHC2_VSELECT	0x00000020
+			>;
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
