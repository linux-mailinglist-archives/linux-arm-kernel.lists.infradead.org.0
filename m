Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64656F8995
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 08:21:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqQyG3JpHvTHZW3JcbLThBV8vXCw2wDda/gppMVPGYA=; b=P4HyaghVv8chAR
	2jP8vNzFmoiDhlT3Wv6GGHocJDCKanOGFMgw4FjxSP5kVBjOp8AqorW/gGvs1Ep/a+09FPc6Kf9E4
	VJvncu++M28RcHgN+wY/kMf+INp3VFUfbQppE/1vsd5PUkf19RGSP//tUF+e6+KOw158g+JUbyows
	wYVf3e04YTJBSgQLpA5JD8dx16x3LhZSfnARBn/Cje85AY6NvMZERBXgQsbOZmDraUaHVdCZP9gBI
	exAcDLnWtwBtIKMMHIrP2VnGBylnMxzv1M2JhckAF8tTkxKDO/Dk7k4hGfWYoO18YHl7HUSjFZ6Ht
	2NlVLevQGyh0vAKLKB0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQU2-0003ZR-Iy; Tue, 12 Nov 2019 07:21:02 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQT4-0001iv-Ox
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 07:20:06 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: +MnSm9BKqlFLKbE1vZVZ5RosDS9Y5Mp3bE1qyq4JxSQLmhs7D2SZh3iwLxCT2YEufrYiq0ekAP
 x+kwr8XgfeTbst5P0REQLg3Ix/SsOzVDcGCcMz15Xp+NuVpz3EKaI0xgUNC3lTl3i7lf6RRSdj
 K0MwyeKkRLFTnS4ISjiMCtqNgTkzGDA0XCazpCFnD+KsrkPNGoL+pt+qqiO8FbuEMD3Y09ufGz
 sh4RzbE2/odFNUPE7LWOqEnG4f9/l1SWqLGUJ6uFpp6eVe+PYa+jWiTGGDwh4Ymmpa1FeK0KVH
 wYk=
X-IronPort-AV: E=Sophos;i="5.68,295,1569308400"; d="scan'208";a="54997992"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 12 Nov 2019 00:20:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 12 Nov 2019 00:19:58 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 12 Nov 2019 00:19:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oExzsAyoLri81bqs/rxIbsB8uXROu5ZJjWJbkdICQrHVqYkFkHRqmnufoEezFRyYh+iKPgufe/QTG3mU3acsVdbDmd5E4/l2awQtrKJ9RojzJRE9FUUwPxf3OaExkH4wdWZLZnQQBnzuKoxbvk+7GTwdbLOq/A9ssJl81WAqYAJfUn1R1h6ezDz1aWUBMBMTmDV5/K4vVfkZdzQjkR+2RCG34ARjvR2mwvnqz3JLU0ameKv4HoC9jJ+O8OaMWwVJKskbw/3oB3tzHKb2BvxPJhgWJf3RFXuWQ/tNUEWq2f9X2c/Q5EQh+RU0tiBexLGqrPAxK6xBFDVLac1kFTmXjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=am8Vi0yxlknLRFiusMlTiG0RhwlsGVkGVyuDDprD3TA=;
 b=WcrTR+ZbuHWT9Oy5iESsRRGZSd6kjp/Xuj12pjR1j1wRrn/b1r3/6cBYhj5qN3kVA7JWVDkiL6d+7yPR0cB+PLqS93CsrSqod9h4NibzwujMfYBqy6UkfXwUZU92L+vQsygXpWP94lSysYH6HcENcsCtkMZ1Lu3jLGxTvvjKJVKx8v1f/P+Z9ECN1Rh/4ekupoMNyHj8qziST1KxF4sJyStK51bB6X8enKt3QGQSvfq2yjrACwW7UzJVLMagcE2F+YttAfJf6X2r5RoJsq9eFyVnrO3Hc+cLC7O00sQVLq9+1FkwnJFntSuecE0PxyMv+EFuFwcqyyTDW+YXBx+Obw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=am8Vi0yxlknLRFiusMlTiG0RhwlsGVkGVyuDDprD3TA=;
 b=VPFlLkkBqkdPjD/eslNsW1cLP3WOQhV0qssEyr06yzSj1lXxFRwVHp3c4Na53uP1aYccAG3Gr5BbfRxT2aEQwV7JGnPCA2tk+I/5MCOwdrnwetz/TYbV4VcESFJANg18ddl5rUIG/vXictJRKiQMJ7YpRL00tE//INZ9ylq1+wc=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1323.namprd11.prod.outlook.com (10.168.108.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Tue, 12 Nov 2019 07:19:56 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::d594:bcd0:98a9:d2c8%4]) with mapi id 15.20.2430.027; Tue, 12 Nov 2019
 07:19:56 +0000
From: <Eugen.Hristev@microchip.com>
To: <robh+dt@kernel.org>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>
Subject: [PATCH 4/4] ARM: dts: at91: sama5d27_wlsom1: add SAMA5D27 wlsom1 and
 wlsom1-ek
Thread-Topic: [PATCH 4/4] ARM: dts: at91: sama5d27_wlsom1: add SAMA5D27 wlsom1
 and wlsom1-ek
Thread-Index: AQHVmSmVZPTswPTROkGYb6lRMpcPIA==
Date: Tue, 12 Nov 2019 07:19:56 +0000
Message-ID: <1573543139-8533-4-git-send-email-eugen.hristev@microchip.com>
References: <1573543139-8533-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1573543139-8533-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0402CA0013.eurprd04.prod.outlook.com
 (2603:10a6:208:15::26) To DM5PR11MB1242.namprd11.prod.outlook.com
 (2603:10b6:3:14::8)
x-mailer: git-send-email 2.7.4
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: caa48345-061d-4e9b-3048-08d76740b824
x-ms-traffictypediagnostic: DM5PR11MB1323:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB1323F1349E0C46783628BCABE8770@DM5PR11MB1323.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(396003)(136003)(366004)(199004)(189003)(30864003)(186003)(81156014)(8676002)(8936002)(81166006)(50226002)(6116002)(3846002)(7736002)(2906002)(54906003)(36756003)(6636002)(478600001)(2501003)(110136005)(316002)(6436002)(71200400001)(71190400001)(86362001)(14454004)(25786009)(305945005)(486006)(2616005)(66946007)(5660300002)(76176011)(52116002)(4326008)(26005)(476003)(386003)(6486002)(66066001)(102836004)(6506007)(66556008)(446003)(256004)(6512007)(64756008)(107886003)(99286004)(66476007)(14444005)(11346002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1323;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /k6Z8JJ0LNUgstqp8HOpuU31iz8SoIIxf+nDbLVAwouV2lQdule0RNCJGuwUiSu6tQ6eBYFpvuEsO8SczsgmOlgs1CAlM6XMrumRhrViYtcine/uM4qElz53BgbabPZDsl713+ukexSHUNeAXj/gSQQ4XhJUiRXjTBlE8VFJmYvf7MfLjI6ZPPwvHRb5mHslTTOjpm0yjQK2CRfwYLCC8wDYTj88YZJ30jAdmFRga5WJAN0ncofY8dgLkp3MKhgVbiU9uuJL5B4hUIr/q9Sklgr1QPGeH4D2eKbzIt994nyXC3fTqc8u5wgGuwjHpRHvw/VkqWWE9q0JzdTn92heoSdc3PWPVPIQYpmK/j1AVKBlqYB4BH2KK1OWaY14uipFppDmPlzJVILwNF3OdbZLM9VL3ZR6XuO/j+7auZSrfz8+CWAnDQCs/BcqVZGW96+V
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: caa48345-061d-4e9b-3048-08d76740b824
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 07:19:56.3140 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: e0BsY2c2k2YiB1H2gjKrZmi/hOyFNqdgRdAGE4Q5QLhfuN2go/YyoAK1KBMYBci2aVdZFR1b+XUbs5QkeDKNiDYIU+dtYlojFdZio1irzUo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1323
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_232002_922898_957D6D7D 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Eugen.Hristev@microchip.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

This is the addition of a new Evaluation Kit the SAMA5D27-WLSOM1-EK.
It's based on the Microchip WireLess SoM which contains the
SAMA5D27 LPDDR2 2Gbits SiP.

[nicolas.ferre@microchip.com]: initial implementation
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
[eugen.hristev@microchip.com]: ported to new kernel version,
[eugen.hristev@microchip.com]: addition of peripherals (adc, pmic, qspi, uart)
Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
---
 arch/arm/boot/dts/Makefile                    |   1 +
 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi   | 304 ++++++++++++++++++++++++++
 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts | 270 +++++++++++++++++++++++
 3 files changed, 575 insertions(+)
 create mode 100644 arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
 create mode 100644 arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 4ac0531..3beb450 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -49,6 +49,7 @@ dtb-$(CONFIG_SOC_SAM_V7) += \
 	at91-kizbox3-hs.dtb \
 	at91-nattis-2-natte-2.dtb \
 	at91-sama5d27_som1_ek.dtb \
+	at91-sama5d27_wlsom1_ek.dtb \
 	at91-sama5d2_ptc_ek.dtb \
 	at91-sama5d2_xplained.dtb \
 	at91-sama5d3_xplained.dtb \
diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
new file mode 100644
index 0000000..db3e223
--- /dev/null
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1.dtsi
@@ -0,0 +1,304 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * at91-sama5d27_wlsom1.dtsi - Device Tree file for SAMA5D27 WLSOM1
+ *
+ * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Nicolas Ferre <nicolas.ferre@microcihp.com>
+ * Author: Eugen Hristev <eugen.hristev@microcihp.com>
+ */
+#include "sama5d2.dtsi"
+#include "sama5d2-pinfunc.h"
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/mfd/atmel-flexcom.h>
+#include <dt-bindings/pinctrl/at91.h>
+
+/ {
+	model = "Microchip SAMA5D27 WLSOM1";
+	compatible = "microchip,sama5d27-wlsom1", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
+
+	clocks {
+		slow_xtal {
+			clock-frequency = <32768>;
+		};
+
+		main_xtal {
+			clock-frequency = <24000000>;
+		};
+	};
+};
+
+&flx1 {
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
+
+	uart6: serial@200 {
+		compatible = "atmel,at91sam9260-usart";
+		reg = <0x200 0x200>;
+		interrupts = <20 IRQ_TYPE_LEVEL_HIGH 7>;
+		dmas = <&dma0
+			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+			 AT91_XDMAC_DT_PERID(13))>,
+		       <&dma0
+			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+			 AT91_XDMAC_DT_PERID(14))>;
+		dma-names = "tx", "rx";
+		clocks = <&pmc PMC_TYPE_PERIPHERAL 20>;
+		clock-names = "usart";
+		pinctrl-0 = <&pinctrl_flx1_default>;
+		pinctrl-names = "default";
+	};
+};
+
+&i2c0 {
+	pinctrl-0 = <&pinctrl_i2c0_default>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&i2c1 {
+	dmas = <0>, <0>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_i2c1_default>;
+	status = "okay";
+
+	mcp16502@5b {
+		compatible = "microchip,mcp16502";
+		reg = <0x5b>;
+		status = "okay";
+		lpm-gpios = <&pioBU 0 GPIO_ACTIVE_LOW>;
+
+		regulators {
+			vdd_3v3: VDD_IO {
+				regulator-name = "VDD_IO";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3700000>;
+				regulator-initial-mode = <2>;
+				regulator-allowed-modes = <2>, <4>;
+				regulator-always-on;
+
+				regulator-state-standby {
+					regulator-on-in-suspend;
+					regulator-mode = <4>;
+				};
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-mode = <4>;
+				};
+			};
+
+			vddio_ddr: VDD_DDR {
+				regulator-name = "VDD_DDR";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-initial-mode = <2>;
+				regulator-allowed-modes = <2>, <4>;
+				regulator-always-on;
+
+				regulator-state-standby {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1200000>;
+					regulator-changeable-in-suspend;
+					regulator-mode = <4>;
+				};
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1200000>;
+					regulator-changeable-in-suspend;
+					regulator-mode = <4>;
+				};
+			};
+
+			vdd_core: VDD_CORE {
+				regulator-name = "VDD_CORE";
+				regulator-min-microvolt = <600000>;
+				regulator-max-microvolt = <1850000>;
+				regulator-initial-mode = <2>;
+				regulator-allowed-modes = <2>, <4>;
+				regulator-always-on;
+
+				regulator-state-standby {
+					regulator-on-in-suspend;
+					regulator-mode = <4>;
+				};
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+					regulator-mode = <4>;
+				};
+			};
+
+			vdd_ddr: VDD_OTHER {
+				regulator-name = "VDD_OTHER";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-initial-mode = <2>;
+				regulator-allowed-modes = <2>, <4>;
+				regulator-always-on;
+
+				regulator-state-standby {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+					regulator-changeable-in-suspend;
+					regulator-mode = <4>;
+				};
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+					regulator-changeable-in-suspend;
+					regulator-mode = <4>;
+				};
+			};
+
+			LDO1 {
+				regulator-name = "LDO1";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3700000>;
+				regulator-always-on;
+
+				regulator-state-standby {
+					regulator-on-in-suspend;
+				};
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			LDO2 {
+				regulator-name = "LDO2";
+				regulator-min-microvolt = <1200000>;
+				regulator-max-microvolt = <3700000>;
+				regulator-always-on;
+
+				regulator-state-standby {
+					regulator-on-in-suspend;
+				};
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+};
+
+&macb0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_macb0_default>;
+	phy-mode = "rmii";
+
+	ethernet-phy@0 {
+		reg = <0x0>;
+		interrupt-parent = <&pioA>;
+		interrupts = <PIN_PB24 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_macb0_phy_irq>;
+	};
+};
+
+&pmc {
+	atmel,osc-bypass;
+};
+
+&qspi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_qspi1_default>;
+	status = "disabled";
+
+	qspi1_flash: spi_flash@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <80000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <4>;
+		m25p,fast-read;
+		status = "disabled";
+
+		at91bootstrap@0 {
+			label = "at91bootstrap";
+			reg = <0x0 0x40000>;
+		};
+
+		bootloader@40000 {
+			label = "bootloader";
+			reg = <0x40000 0xc0000>;
+		};
+
+		bootloaderenvred@100000 {
+			label = "bootloader env redundant";
+			reg = <0x100000 0x40000>;
+		};
+
+		bootloaderenv@140000 {
+			label = "bootloader env";
+			reg = <0x140000 0x40000>;
+		};
+
+		dtb@180000 {
+			label = "device tree";
+			reg = <0x180000 0x80000>;
+		};
+
+		kernel@200000 {
+			label = "kernel";
+			reg = <0x200000 0x600000>;
+		};
+	};
+};
+
+&pioA {
+	pinctrl_flx1_default: flx1_usart_default {
+		pinmux = <PIN_PA24__FLEXCOM1_IO0>,
+			 <PIN_PA23__FLEXCOM1_IO1>,
+			 <PIN_PA25__FLEXCOM1_IO3>,
+			 <PIN_PA26__FLEXCOM1_IO4>;
+		bias-disable;
+	};
+
+	pinctrl_i2c0_default: i2c0_default {
+		pinmux = <PIN_PD21__TWD0>,
+			 <PIN_PD22__TWCK0>;
+		bias-disable;
+	};
+
+	pinctrl_i2c1_default: i2c1_default {
+		pinmux = <PIN_PD19__TWD1>,
+			 <PIN_PD20__TWCK1>;
+		bias-disable;
+	};
+
+	pinctrl_macb0_default: macb0_default {
+		pinmux = <PIN_PB14__GTXCK>,
+			 <PIN_PB15__GTXEN>,
+			 <PIN_PB16__GRXDV>,
+			 <PIN_PB17__GRXER>,
+			 <PIN_PB18__GRX0>,
+			 <PIN_PB19__GRX1>,
+			 <PIN_PB20__GTX0>,
+			 <PIN_PB21__GTX1>,
+			 <PIN_PB22__GMDC>,
+			 <PIN_PB23__GMDIO>;
+		bias-disable;
+	};
+
+	pinctrl_macb0_phy_irq: macb0_phy_irq {
+		pinmux = <PIN_PB24__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_qspi1_default: qspi1_default {
+		pinmux = <PIN_PB5__QSPI1_SCK>,
+			 <PIN_PB6__QSPI1_CS>,
+			 <PIN_PB7__QSPI1_IO0>,
+			 <PIN_PB8__QSPI1_IO1>,
+			 <PIN_PB9__QSPI1_IO2>,
+			 <PIN_PB10__QSPI1_IO3>;
+		bias-pull-up;
+	};
+};
+
diff --git a/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
new file mode 100644
index 0000000..0b9fa29
--- /dev/null
+++ b/arch/arm/boot/dts/at91-sama5d27_wlsom1_ek.dts
@@ -0,0 +1,270 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * at91-sama5d27_wlsom1_ek.dts - Device Tree file for SAMA5D27 WLSOM1 EK
+ *
+ * Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries
+ *
+ * Author: Nicolas Ferre <nicolas.ferre@microcihp.com>
+ */
+/dts-v1/;
+#include "at91-sama5d27_wlsom1.dtsi"
+
+/ {
+	model = "Microchip SAMA5D27 WLSOM1 EK";
+	compatible = "microchip,sama5d27-wlsom1-ek", "microchip,sama5d27-wlsom1", "atmel,sama5d27", "atmel,sama5d2", "atmel,sama5";
+
+	aliases {
+		serial0 = &uart0;	/* DBGU */
+		serial1 = &uart6;	/* BT */
+		serial2 = &uart5;	/* mikro BUS 2 */
+		serial3 = &uart3;	/* mikro BUS 1 */
+		i2c1	= &i2c1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	gpio_keys {
+		compatible = "gpio-keys";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_key_gpio_default>;
+		status = "okay";
+
+		sw4 {
+			label = "USER BUTTON";
+			gpios = <&pioA PIN_PB2 GPIO_ACTIVE_LOW>;
+			linux,code = <0x104>;
+			wakeup-source;
+		};
+	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_led_gpio_default>;
+		status = "okay";
+
+		red {
+			label = "red";
+			gpios = <&pioA PIN_PA6 GPIO_ACTIVE_HIGH>;
+		};
+
+		green {
+			label = "green";
+			gpios = <&pioA PIN_PA7 GPIO_ACTIVE_HIGH>;
+		};
+
+		blue {
+			label = "blue";
+			gpios = <&pioA PIN_PA8 GPIO_ACTIVE_HIGH>;
+			linux,default-trigger = "heartbeat";
+		};
+	};
+};
+
+&adc {
+	vddana-supply = <&vdd_3v3>;
+	vref-supply = <&vdd_3v3>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_adc_default>;
+	status = "okay";
+};
+
+&flx0 {
+	atmel,flexcom-mode = <ATMEL_FLEXCOM_MODE_USART>;
+	status = "okay";
+
+	uart5: serial@200 {
+		compatible = "atmel,at91sam9260-usart";
+		reg = <0x200 0x200>;
+		interrupts = <19 IRQ_TYPE_LEVEL_HIGH 7>;
+		dmas = <&dma0
+			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+			 AT91_XDMAC_DT_PERID(11))>,
+		       <&dma0
+			(AT91_XDMAC_DT_MEM_IF(0) | AT91_XDMAC_DT_PER_IF(1) |
+			 AT91_XDMAC_DT_PERID(12))>;
+		dma-names = "tx", "rx";
+		clocks = <&pmc PMC_TYPE_PERIPHERAL 19>;
+		clock-names = "usart";
+		pinctrl-0 = <&pinctrl_flx0_default>;
+		pinctrl-names = "default";
+		atmel,use-dma-rx;
+		atmel,use-dma-tx;
+		status = "okay";
+	};
+};
+
+&flx1 {
+	status = "okay";
+
+	uart6: serial@200 {
+		atmel,use-dma-rx;
+		atmel,use-dma-tx;
+		status = "okay";
+	};
+};
+
+&macb0 {
+	status = "okay";
+};
+
+&pioA {
+	/*
+	 * There is no real pinmux for ADC, if the pin
+	 * is not requested by another peripheral then
+	 * the muxing is done when channel is enabled.
+	 * Requesting pins for ADC is GPIO is
+	 * encouraged to prevent conflicts and to
+	 * disable bias in order to be in the same
+	 * state when the pin is not muxed to the adc.
+	 */
+	pinctrl_adc_default: adc_default {
+		pinmux = <PIN_PD25__GPIO>,
+			 <PIN_PD26__GPIO>;
+		bias-disable;
+	};
+
+	pinctrl_flx0_default: flx0_usart_default {
+		pinmux = <PIN_PB28__FLEXCOM0_IO0>,
+			 <PIN_PB29__FLEXCOM0_IO1>;
+		bias-disable;
+	};
+
+	pinctrl_key_gpio_default: key_gpio_default {
+		pinmux = <PIN_PB2__GPIO>;
+		bias-pull-up;
+	};
+
+	pinctrl_led_gpio_default: led_gpio_default {
+		pinmux = <PIN_PA6__GPIO>,
+			 <PIN_PA7__GPIO>,
+			 <PIN_PA8__GPIO>;
+		bias-pull-down;
+	};
+
+	pinctrl_sdmmc0_default: sdmmc0_default {
+		cmd_data {
+			pinmux = <PIN_PA1__SDMMC0_CMD>,
+				 <PIN_PA2__SDMMC0_DAT0>,
+				 <PIN_PA3__SDMMC0_DAT1>,
+				 <PIN_PA4__SDMMC0_DAT2>,
+				 <PIN_PA5__SDMMC0_DAT3>;
+			bias-disable;
+		};
+
+		ck_cd_vddsel {
+			pinmux = <PIN_PA0__SDMMC0_CK>,
+				 <PIN_PA11__SDMMC0_VDDSEL>,
+				 <PIN_PA12__SDMMC0_WP>,
+				 <PIN_PA13__SDMMC0_CD>;
+			bias-disable;
+		};
+	};
+
+	pinctrl_uart0_default: uart0_default {
+		pinmux = <PIN_PB26__URXD0>,
+			 <PIN_PB27__UTXD0>;
+		bias-disable;
+	};
+
+	pinctrl_uart3_default: uart3_default {
+		pinmux = <PIN_PB11__URXD3>,
+			 <PIN_PB12__UTXD3>;
+		bias-disable;
+	};
+
+	pinctrl_pwm0_default: pwm0_default {
+		pinmux = <PIN_PA31__PWML0>,
+			 <PIN_PA30__PWMH0>;
+		bias-disable;
+	};
+
+	pinctrl_usb_default: usb_default {
+		pinmux = <PIN_PA10__GPIO>;
+		bias-disable;
+	};
+};
+
+&pwm0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_pwm0_default>;
+	status = "okay";
+};
+
+&qspi1 {
+	status = "okay";
+
+	qspi1_flash: spi_flash@0 {
+		status = "okay";
+	};
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	mmc-ddr-3_3v;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_sdmmc0_default>;
+	status = "okay";
+};
+
+&shutdown_controller {
+	atmel,shdwc-debouncer = <976>;
+	atmel,wakeup-rtc-timer;
+
+	input@0 {
+		reg = <0>;
+		atmel,wakeup-type = "low";
+	};
+};
+
+&tcb0 {
+	timer0: timer@0 {
+		compatible = "atmel,tcb-timer";
+		reg = <0>;
+	};
+
+	timer1: timer@1 {
+		compatible = "atmel,tcb-timer";
+		reg = <1>;
+	};
+};
+
+&uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart0_default>;
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	status = "okay";
+};
+
+&uart3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_uart3_default>;
+	atmel,use-dma-rx;
+	atmel,use-dma-tx;
+	status = "okay";
+};
+
+&usb1 {
+	num-ports = <3>;
+	atmel,vbus-gpio = <0
+			   &pioA PIN_PA10 GPIO_ACTIVE_HIGH
+			   0
+			  >;
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usb_default>;
+	status = "okay";
+};
+
+&usb2 {
+	phy_type = "hsic";
+	status = "okay";
+};
+
+&watchdog {
+	status = "okay";
+};
+
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
