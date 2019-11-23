Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BED5510804E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 Nov 2019 21:14:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9HG2GawW17popXVtm0GQaZWpWeWeQ+e4nsq5/nXPRw=; b=QcZMcolDrulkZC
	MO8Zli9SO5GI7ltOO7aq6F0eU4BBnjkpfQv8QZb9b69jF7383tqx44yABylS/AgYVwORr2otUtnaH
	j4B01wqrb5XXetRAfBAT62DxCCuciLDSsAuX5kqAuL4I9T8oih9UG8S6DbOtcw5ZUqNr4zHO4lMxq
	aZqDS6Z/R13Twf5xJC+gZNqPec0GD5lkCOsVy4jP6NG74QtFy+Z6990xdfxEJ7LHh548+xE1SNvWx
	G4GRXF333VsIoQup0dJlYMHjjeLBNBSxTM4y5I66aLUCiR12okX+nvhdDzTymrvTFqTOjuKcyndy/
	v52eOO/aablofSAx9YjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYbnh-0004nS-Am; Sat, 23 Nov 2019 20:14:37 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYbmm-00049s-IC
 for linux-arm-kernel@lists.infradead.org; Sat, 23 Nov 2019 20:13:43 +0000
Received: from apollo.fritz.box (unknown
 [IPv6:2a02:810c:c200:2e91:6257:18ff:fec4:ca34])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id AE3BB23E26;
 Sat, 23 Nov 2019 21:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1574540014;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6y9dGZOhfNrlYIQ7ALeL+gfU/dISRgUOzAUCnwO1T7I=;
 b=DaaraV6WwtL/kjNY3bMC8eh8f5s41drW1oDpwnv5KfMqubXWONo9UnIuTN86U2Ui62TjZE
 izzxxg5a1o6kaGi3KtuB6pqO+AHVb6LYV//DiIe3y4UGZGgtCucO4Odd56xfvOAuJZ7At/
 /mFXvTQe2niZ6brpQSdCdZS9/VqI8MM=
From: Michael Walle <michael@walle.cc>
To: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: freescale: add Kontron sl28 support
Date: Sat, 23 Nov 2019 21:13:17 +0100
Message-Id: <20191123201317.25861-5-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191123201317.25861-1-michael@walle.cc>
References: <20191123201317.25861-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: AE3BB23E26
X-Spamd-Result: default: False [6.40 / 15.00]; ARC_NA(0.00)[];
 FROM_HAS_DN(0.00)[]; TO_DN_SOME(0.00)[];
 R_MISSING_CHARSET(2.50)[]; TO_MATCH_ENVRCPT_ALL(0.00)[];
 TAGGED_RCPT(0.00)[dt]; MIME_GOOD(-0.10)[text/plain];
 BROKEN_CONTENT_TYPE(1.50)[]; NEURAL_SPAM(0.00)[0.148];
 DKIM_SIGNED(0.00)[];
 DBL_PROHIBIT(0.00)[0.1.134.160:email,0.3.13.64:email,0.5.48.32:email,0.3.52.80:email,0.0.0.4:email,0.0.0.50:email,0.0.0.32:email,0.0.0.5:email,0.4.147.224:email,0.0.39.16:email];
 RCPT_COUNT_SEVEN(0.00)[8]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:31334, ipnet:2a02:810c::/31, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_121340_904428_46741E00 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Michael Walle <michael@walle.cc>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device tree files for the Kontron SMARC-sAL28 board and its
carriers.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 arch/arm64/boot/dts/freescale/Makefile        |   4 +
 .../fsl-ls1028a-kontron-kbox-a-230-ls.dts     |  27 +++
 .../fsl-ls1028a-kontron-sl28-var3-ads2.dts    |  73 ++++++++
 .../fsl-ls1028a-kontron-sl28-var4.dts         |  34 ++++
 .../freescale/fsl-ls1028a-kontron-sl28.dts    | 158 ++++++++++++++++++
 5 files changed, 296 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 93fce8f0c66d..080c5a59d6bd 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -4,6 +4,10 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-frwy.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-oxalis.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1012a-rdb.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-kbox-a-230-ls.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var3-ads2.dtb
+dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-kontron-sl28-var4.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1028a-rdb.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-ls1043a-qds.dtb
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
new file mode 100644
index 000000000000..97e72c94b7fc
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Device Tree File for the Kontron KBox A-230-LS.
+ *
+ * This consists of a Kontron SMARC-sAL28 (Dual PHY) and a special
+ * carrier (s1914).
+ *
+ * Copyright (C) 2019 Michael Walle <michael@walle.cc>
+ *
+ */
+
+/dts-v1/;
+#include "fsl-ls1028a-kontron-sl28-var4.dts"
+
+/ {
+	model = "Kontron KBox A-230-LS";
+	compatible = "kontron,kbox-a-230-ls", "kontron,sl28-var3",
+		     "kontron,sl28", "fsl,ls1028a";
+};
+
+&i2c4 {
+	eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
new file mode 100644
index 000000000000..a4640e6b3928
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var3-ads2.dts
@@ -0,0 +1,73 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Device Tree file for the Kontron SMARC-sAL28 board on a SMARC Eval 2.0
+ * carrier (ADS2).
+ *
+ * Copyright (C) 2019 Michael Walle <michael@walle.cc>
+ *
+ */
+
+/dts-v1/;
+#include "fsl-ls1028a-kontron-sl28.dts"
+
+/ {
+	model = "Kontron SMARC-sAL28 (Single PHY) on SMARC Eval 2.0 carrier";
+	compatible = "kontron,sl28-var3-ads2", "kontron,sl28", "fsl,ls1028a";
+
+	sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,widgets =
+			"Headphone", "Headphone Jack",
+			"Line", "Line Out Jack";
+		simple-audio-card,routing =
+			"Line Out Jack", "LINEOUTR",
+			"Line Out Jack", "LINEOUTL",
+			"Headphone Jack", "HPOUTR",
+			"Headphone Jack", "HPOUTL";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&sai6>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&wm8904>;
+			frame-master;
+			bitclock-master;
+		};
+	};
+};
+
+&i2c4 {
+	status = "okay";
+
+	wm8904: wm8904@1a {
+		#sound-dai-cells = <0>;
+		compatible = "wlf,wm8904";
+		reg = <0x1a>;
+		clocks = <&wm8904_mclk>;
+		clock-names = "mclk";
+		assigned-clocks = <&wm8904_mclk>;
+		assigned-clock-rates = <1250000>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+	};
+};
+
+&sai6 {
+	status = "okay";
+};
+
+&soc {
+	wm8904_mclk: wm8904-mclk@f130080 {
+		compatible = "fsl,vf610-sai-clock";
+		reg = <0x0 0xf130080 0x0 0x80>;
+		clocks = <&clockgen 4 1>;
+		#clock-cells = <0>;
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
new file mode 100644
index 000000000000..5c8b13108e4d
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28-var4.dts
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Device Tree file for the Kontron SMARC-sAL28 board.
+ *
+ * This is for the network variant 4 which has two ethernet ports. It
+ * extends the base and provides one more port connected via RGMII.
+ *
+ * Copyright (C) 2019 Michael Walle <michael@walle.cc>
+ *
+ */
+
+/dts-v1/;
+#include "fsl-ls1028a-kontron-sl28.dts"
+
+/ {
+	model = "Kontron SMARC-sAL28 (Dual PHY)";
+	compatible = "kontron,sl28-var4", "kontron,sl28", "fsl,ls1028a";
+};
+
+&enetc_port1 {
+	phy-handle = <&phy1>;
+	phy-connection-type = "rgmii-id";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy1: ethernet-phy@4 {
+			reg = <0x4>;
+			eee-broken-1000t;
+			eee-broken-100tx;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
new file mode 100644
index 000000000000..a18cb4395ad0
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-sl28.dts
@@ -0,0 +1,158 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Device Tree file for the Kontron SMARC-sAL28 board.
+ *
+ * Copyright (C) 2019 Michael Walle <michael@walle.cc>
+ *
+ */
+
+/dts-v1/;
+#include "fsl-ls1028a.dtsi"
+
+/ {
+	model = "Kontron SMARC-sAL28";
+	compatible = "kontron,sl28", "fsl,ls1028a";
+
+	aliases {
+		crypto = &crypto;
+		serial0 = &duart0;
+		serial1 = &duart1;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
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
+&enetc_port0 {
+	phy-handle = <&phy0>;
+	phy-connection-type = "sgmii";
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		phy0: ethernet-phy@5 {
+			reg = <0x5>;
+			eee-broken-1000t;
+			eee-broken-100tx;
+		};
+	};
+};
+
+&esdhc {
+	sd-uhs-sdr104;
+	sd-uhs-sdr50;
+	sd-uhs-sdr25;
+	sd-uhs-sdr12;
+	status = "okay";
+};
+
+&esdhc1 {
+	mmc-hs200-1_8v;
+	mmc-hs400-1_8v;
+	bus-width = <8>;
+	status = "okay";
+};
+
+&fspi {
+	status = "okay";
+
+	w25q32jw@0 {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		compatible = "w25q32jw", "jedec,spi-nor";
+		m25p,fast-read;
+		spi-max-frequency = <133000000>;
+		reg = <0>;
+		/* The following setting enables 1-1-2 (CMD-ADDR-DATA) mode */
+		spi-rx-bus-width = <2>; /* 2 SPI Rx lines */
+		spi-tx-bus-width = <1>; /* 1 SPI Tx line */
+
+		partition@0 {
+			reg = <0x000000 0x010000>;
+			label = "rcw";
+			read-only;
+		};
+
+		partition@10000 {
+			reg = <0x010000 0x0f0000>;
+			label = "failsafe bootloader";
+			read-only;
+		};
+
+		partition@100000 {
+			reg = <0x100000 0x040000>;
+			label = "failsafe DP firmware";
+			read-only;
+		};
+
+		partition@140000 {
+			reg = <0x140000 0x0a0000>;
+			label = "failsafe trusted firmware";
+			read-only;
+		};
+
+		partition@1e0000 {
+			reg = <0x1e0000 0x020000>;
+			label = "reserved";
+			read-only;
+		};
+
+		partition@200000 {
+			reg = <0x200000 0x010000>;
+			label = "configuration store";
+		};
+
+		partition@210000 {
+			reg = <0x210000 0x0f0000>;
+			label = "bootloader";
+		};
+
+		partition@300000 {
+			reg = <0x300000 0x040000>;
+			label = "DP firmware";
+		};
+
+		partition@340000 {
+			reg = <0x340000 0x0a0000>;
+			label = "trusted firmware";
+		};
+
+		partition@3e0000 {
+			reg = <0x3e0000 0x020000>;
+			label = "bootloader environment";
+		};
+	};
+};
+
+&i2c0 {
+	status = "okay";
+
+	rtc@32 {
+		compatible = "microcrystal,rv8803";
+		reg = <0x32>;
+	};
+
+	eeprom@50 {
+		compatible = "atmel,24c32";
+		reg = <0x50>;
+		pagesize = <32>;
+	};
+};
+
+&i2c3 {
+	status = "okay";
+};
+
+&i2c4 {
+	status = "okay";
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
