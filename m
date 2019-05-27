Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BBAE2B559
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 14:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4qLRqrbr8w36ze270hGlqcqLBTsJXgQnQ4su4yjBbs=; b=ZrwXHqNiZ7SB2f
	QMRO/XL3URofMIUf6rslQVfptqdq2MLkeydV2YPLZ1nQMMMs55DygGjdOpoKK+gJG/9oiiTXisacC
	PX1o7GnfpVGPvGMmh1c4au14w1bUM/1ShVM2gAfEa8pEP9s35PHZCrX+6TDdCweKGiuIA/WRX7+lW
	FB9KpRbIpbPiUvDcTuWDxnRl/qwhC9sEut8cB7MkVM/NH5AoNUmj55nJ4XfuJFMX2XbgbkqTWM+GI
	g8s1EPQm1GrS6TTUSDyzKFIiC7ExYCB4Xdy4ElNuUBensCkNAT2qEnUHUgdM9n57yMNC8Gr+obP7w
	fxPSEOSGa55MF4ZIES0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVEoG-00036i-Di; Mon, 27 May 2019 12:33:00 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVEnZ-00021V-LS
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 12:32:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HryAjwtS3fGdPKnlD3QUhuUDCYaY88h6fcqIGmFPPl4=;
 b=VHxG/IQKWu50zuFPVnMF/TaPZ73yzD2GBBrnIg9XGNdX95ODCo2lmfwSZ9FcBc//v4fVZBPh3cMLZ9IFDFKIHJ4P2X0ZRMTBnwb5WFvEPMk+L5nIggYt2HuhsXSk/+zggqHEgdheV7QheV/Dgj8Ad3bz8xStwOcZZ0VuLwRy+Aw=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB5094.eurprd04.prod.outlook.com (20.177.34.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.20; Mon, 27 May 2019 12:32:12 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::55a3:c244:9ba:6d21%4]) with mapi id 15.20.1922.021; Mon, 27 May 2019
 12:32:12 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v3 2/3] arm64: dts: nxp: add ls1046a-frwy board support
Thread-Topic: [PATCH v3 2/3] arm64: dts: nxp: add ls1046a-frwy board support
Thread-Index: AQHVFIg1KphfAm+PLUyg+kEKWGKSBQ==
Date: Mon, 27 May 2019 12:32:12 +0000
Message-ID: <20190527123404.30858-3-pramod.kumar_1@nxp.com>
References: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
In-Reply-To: <20190527123404.30858-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: PN1PR0101CA0055.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c00:d::17) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7569f732-8e59-4c4b-95cd-08d6e29f57f4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB5094; 
x-ms-traffictypediagnostic: AM6PR04MB5094:
x-microsoft-antispam-prvs: <AM6PR04MB5094AEE71EC89939F44ED10AF61D0@AM6PR04MB5094.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 0050CEFE70
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(346002)(136003)(376002)(39860400002)(199004)(189003)(68736007)(476003)(2616005)(4326008)(2906002)(86362001)(2201001)(486006)(6512007)(102836004)(6506007)(386003)(76176011)(186003)(52116002)(110136005)(54906003)(26005)(11346002)(446003)(66446008)(53936002)(66946007)(73956011)(64756008)(66556008)(316002)(6486002)(7736002)(6116002)(36756003)(256004)(99286004)(25786009)(478600001)(1076003)(14454004)(6636002)(8936002)(8676002)(66066001)(5660300002)(50226002)(6436002)(81166006)(81156014)(71200400001)(71190400001)(3846002)(66476007)(305945005)(2501003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5094;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: POTyf70nABFLnE6NdGdzIpOkYEu8exZq8VyOaid0abp+5quSkwxvtgDTvvnL/Kx7ZqvjYPkIP9EXkNqcxn+T6K90rrgujU4QjhUKDNTeFC5Xdfak6V8uXNOBIz+QLgOSXNxRivjxgzB37oVZX06H0wrz0HkO+0UP+RpGR12HlX68ThLcpaAhq+vhhZ9hk8EN1t01cQcdHmNBI8KUFknXhiG/Q3p7DabkKh3Wdg4nWobGDW/6mUH4/5LfN73a0C4HEcR39gNWB3H/r3xSswxivlv/tgqEykYebBwQwi3FVh6tFpSk/9yonOXcabPA6Ekg1DPs4upBZxOOJRNvAtwa3PwmvmXWr7VU65K1RuA6g8RxlHOYSIof/UcCfzKpN76TmEoDZK01vW1BOBYLmuH0/q/FHwJHmh4r18KNANSuxFI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7569f732-8e59-4c4b-95cd-08d6e29f57f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 May 2019 12:32:12.5906 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pramod.kumar_1@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5094
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_053218_479376_45D5A68C 
X-CRM114-Status: GOOD (  15.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.47 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Vabhav Sharma <vabhav.sharma@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ls1046afrwy board is based on nxp ls1046a SoC.
Board support's 4GB ddr memory, i2c, microSD card,
serial console,qspi nor flash,ifc nand flash,qsgmii network interface,
usb 3.0 and serdes interface to support two x1gen3 pcie interface.

Signed-off-by: Vabhav Sharma <vabhav.sharma@nxp.com>
Signed-off-by: Pramod Kumar <pramod.kumar_1@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/fsl-ls1046a-frwy.dts   | 156 ++++++++++++++++++
 2 files changed, 157 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 0bd122f60549..1211531f417c 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-rdb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-rdb.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-frwy.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1046a-rdb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1088a-qds.dtb
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
new file mode 100644
index 000000000000..cda49988d8b8
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts
@@ -0,0 +1,156 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree Include file for Freescale Layerscape-1046A family SoC.
+ *
+ * Copyright 2019 NXP.
+ *
+ */
+
+/dts-v1/;
+
+#include "fsl-ls1046a.dtsi"
+
+/ {
+	model = "LS1046A FRWY Board";
+	compatible = "fsl,ls1046a-frwy", "fsl,ls1046a";
+
+	aliases {
+		serial0 = &duart0;
+		serial1 = &duart1;
+		serial2 = &duart2;
+		serial3 = &duart3;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	sb_3v3: regulator-sb3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "LT8642SEV-3.3V";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+};
+
+&duart0 {
+	status = "okay";
+};
+
+&duart1 {
+	status = "okay";
+};
+
+&duart2 {
+	status = "okay";
+};
+
+&duart3 {
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	i2c-mux@77 {
+		compatible = "nxp,pca9546";
+		reg = <0x77>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		i2c@0 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0>;
+
+			power-monitor@40 {
+				compatible = "ti,ina220";
+				reg = <0x40>;
+				shunt-resistor = <1000>;
+			};
+
+
+			temperature-sensor@4c {
+				compatible = "nxp,sa56004";
+				reg = <0x4c>;
+				vcc-supply = <&sb_3v3>;
+			};
+
+			rtc@51 {
+				compatible = "nxp,pcf2129";
+				reg = <0x51>;
+			};
+
+			eeprom@52 {
+				compatible = "atmel,24c512";
+				reg = <0x52>;
+			};
+
+			eeprom@53 {
+				compatible = "atmel,24c512";
+				reg = <0x53>;
+			};
+
+		};
+	};
+};
+
+&ifc {
+	#address-cells = <2>;
+	#size-cells = <1>;
+	/* NAND Flash */
+	ranges = <0x0 0x0 0x0 0x7e800000 0x00010000>;
+	status = "okay";
+
+	nand@0,0 {
+		compatible = "fsl,ifc-nand";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0x0 0x0 0x10000>;
+	};
+
+};
+
+#include "fsl-ls1046-post.dtsi"
+
+&fman0 {
+	ethernet@e0000 {
+		phy-handle = <&qsgmii_phy4>;
+		phy-connection-type = "qsgmii";
+	};
+
+	ethernet@e8000 {
+		phy-handle = <&qsgmii_phy2>;
+		phy-connection-type = "qsgmii";
+	};
+
+	ethernet@ea000 {
+		phy-handle = <&qsgmii_phy1>;
+		phy-connection-type = "qsgmii";
+	};
+
+	ethernet@f2000 {
+		phy-handle = <&qsgmii_phy3>;
+		phy-connection-type = "qsgmii";
+	};
+
+	mdio@fd000 {
+		qsgmii_phy1: ethernet-phy@1c {
+			reg = <0x1c>;
+		};
+
+		qsgmii_phy2: ethernet-phy@1d {
+			reg = <0x1d>;
+		};
+
+		qsgmii_phy3: ethernet-phy@1e {
+			reg = <0x1e>;
+		};
+
+		qsgmii_phy4: ethernet-phy@1f {
+			reg = <0x1f>;
+		};
+	};
+};
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
