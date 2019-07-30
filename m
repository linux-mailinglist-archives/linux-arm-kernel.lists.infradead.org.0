Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B547E7AB99
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 16:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zr1nTGjWSci5eSAkFlcc2g4AngsVF7X74sNiiZuqAF0=; b=ffUHhVcs2Bzrwi
	isvDViVZoSskXuKpCDrzkGr+D631qPTIIkvYEVyLy8uiip/dCzimTazdDbsW23ObKlx/QXOg2bSKB
	9WV7r4Gz/TbIJ7EV4qQLOW4jtSn/jR6fhVtKq/GezqAOmSd/aJYpRdgB2NSglkoSepvWZE41RBDsZ
	iBRiw2HFPbRpQcBeYO021LuAsxNwCA6OM2RtyqGY9clV/34BDc8TAJ+5Ihg0k2taYqodduksVPZfw
	6Xz9c1RLXWCkk+p0XcvSuUEii697cL+tlYR/GJ3zfr16vXytOjEx8s0OOSi3WdKphcIjT8niApG6J
	iaMObOoNRJ4q+CaNVyOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTaD-0003Fb-Bt; Tue, 30 Jul 2019 14:58:33 +0000
Received: from mxout013.mail.hostpoint.ch ([2a00:d70:0:e::313])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTZW-0002mJ-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 14:57:52 +0000
Received: from [10.0.2.46] (helo=asmtp013.mail.hostpoint.ch)
 by mxout013.mail.hostpoint.ch with esmtp (Exim 4.92 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTZR-000FlJ-G7; Tue, 30 Jul 2019 16:57:45 +0200
Received: from [46.140.72.82] (helo=philippe-pc.toradex.int)
 by asmtp013.mail.hostpoint.ch with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91 (FreeBSD))
 (envelope-from <dev@pschenker.ch>)
 id 1hsTP4-000Mva-Od; Tue, 30 Jul 2019 16:47:02 +0200
X-Authenticated-Sender-Id: dev@pschenker.ch
From: Philippe Schenker <dev@pschenker.ch>
To: marcel.ziswiler@toradex.com, max.krummenacher@toradex.com, stefan@agner.ch,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 12/22] ARM: dts: imx6: Add touchscreens used on Toradex eval
 boards
Date: Tue, 30 Jul 2019 16:46:39 +0200
Message-Id: <20190730144649.19022-13-dev@pschenker.ch>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190730144649.19022-1-dev@pschenker.ch>
References: <20190730144649.19022-1-dev@pschenker.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_075750_670609_AF93ED18 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a00:d70:0:e:0:0:0:313 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Philippe Schenker <philippe.schenker@toradex.com>

This commit adds the touchscreens from Toradex so one can enable it.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts  | 44 +++++++++++++++++++
 arch/arm/boot/dts/imx6q-apalis-eval.dts       | 19 ++++++++
 arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts | 19 ++++++++
 arch/arm/boot/dts/imx6q-apalis-ixora.dts      | 19 ++++++++
 4 files changed, 101 insertions(+)

diff --git a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
index 9a5d6c94cca4..63d4f9ca9ad8 100644
--- a/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
+++ b/arch/arm/boot/dts/imx6dl-colibri-eval-v3.dts
@@ -168,6 +168,34 @@
 &i2c3 {
 	status = "okay";
 
+	/* Atmel maxtouch controller */
+	atmel_mxt_ts: atmel_mxt_ts@4a {
+		compatible = "atmel,maxtouch";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pcap_1>;
+		reg = <0x4a>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <9 IRQ_TYPE_EDGE_FALLING>; /* SODIMM 28 */
+		reset-gpios = <&gpio2 10 GPIO_ACTIVE_HIGH>; /* SODIMM 30 */
+		status = "disabled";
+	};
+
+	/*
+	 * the PCAPs use SODIMM 28/30, also used for PWM<B>, PWM<C>, aka pwm1,
+	 * pwm4. So if you enable one of the PCAP controllers disable the pwms.
+	 */
+	pcap: pcap@10 {
+		/* TouchRevolution Fusion 7 and 10 multi-touch controller */
+		compatible = "touchrevolution,fusion-f0710a";
+		reg = <0x10>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pcap_1>;
+		gpios = <&gpio1  9 0 /* SODIMM 28, Pen down interrupt */
+			 &gpio2 10 0 /* SODIMM 30, Reset */
+			>;
+		status = "disabled";
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	rtc_i2c: rtc@68 {
 		compatible = "st,m41t0";
@@ -175,6 +203,22 @@
 	};
 };
 
+&iomuxc {
+	pinctrl_pcap_1: pcap-1 {
+		fsl,pins = <
+			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /* SODIMM 28 */
+			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10	0x1b0b0 /* SODIMM 30 */
+		>;
+	};
+
+	pinctrl_mxt_ts: mxt-ts {
+		fsl,pins = <
+			MX6QDL_PAD_EIM_CS1__GPIO2_IO24	0x130b0 /* SODIMM 107 */
+			MX6QDL_PAD_SD2_DAT1__GPIO1_IO14	0x130b0 /* SODIMM 106 */
+		>;
+	};
+};
+
 &ipu1_di0_disp0 {
 	remote-endpoint = <&lcd_display_in>;
 };
diff --git a/arch/arm/boot/dts/imx6q-apalis-eval.dts b/arch/arm/boot/dts/imx6q-apalis-eval.dts
index 0edd3043d9c1..60ec5e89d215 100644
--- a/arch/arm/boot/dts/imx6q-apalis-eval.dts
+++ b/arch/arm/boot/dts/imx6q-apalis-eval.dts
@@ -167,6 +167,25 @@
 &i2c1 {
 	status = "okay";
 
+	/* Atmel maxtouch controller */
+	atmel_mxt_ts: atmel_mxt_ts@4a {
+		compatible = "atmel,maxtouch";
+		reg = <0x4a>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
+		status = "disabled";
+	};
+
+	pcap@10 {
+		/* TouchRevolution Fusion 7 and 10 multi-touch controller */
+		compatible = "touchrevolution,fusion-f0710a";
+		reg = <0x10>;
+		gpios = <&gpio6 10 0 /* MXM3 11, Pen down interrupt */
+			 &gpio6  9 0 /* MXM3 13, Reset */
+			>;
+	};
+
 	pcie-switch@58 {
 		compatible = "plx,pex8605";
 		reg = <0x58>;
diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
index b94bb687be6b..98a8ae20b1f2 100644
--- a/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
+++ b/arch/arm/boot/dts/imx6q-apalis-ixora-v1.1.dts
@@ -172,6 +172,25 @@
 &i2c1 {
 	status = "okay";
 
+	/* Atmel maxtouch controller */
+	atmel_mxt_ts: atmel_mxt_ts@4a {
+		compatible = "atmel,maxtouch";
+		reg = <0x4a>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
+		status = "disabled";
+	};
+
+	pcap@10 {
+		/* TouchRevolution Fusion 7 and 10 multi-touch controller */
+		compatible = "touchrevolution,fusion-f0710a";
+		reg = <0x10>;
+		gpios = <&gpio6 10 GPIO_ACTIVE_HIGH /* MXM3 11, Pen down interrupt */
+			 &gpio6  9 GPIO_ACTIVE_HIGH /* MXM3 13, Reset */
+			>;
+	};
+
 	/* M41T0M6 real time clock on carrier board */
 	rtc_i2c: rtc@68 {
 		compatible = "st,m41t0";
diff --git a/arch/arm/boot/dts/imx6q-apalis-ixora.dts b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
index 302fd6adc8a7..67f6b36e6f94 100644
--- a/arch/arm/boot/dts/imx6q-apalis-ixora.dts
+++ b/arch/arm/boot/dts/imx6q-apalis-ixora.dts
@@ -171,6 +171,25 @@
 &i2c1 {
 	status = "okay";
 
+	/* Atmel maxtouch controller */
+	atmel_mxt_ts: atmel_mxt_ts@4a {
+		compatible = "atmel,maxtouch";
+		reg = <0x4a>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <10 IRQ_TYPE_EDGE_FALLING>;
+		reset-gpios = <&gpio6 9 GPIO_ACTIVE_HIGH>; /* SODIMM 13 */
+		status = "disabled";
+	};
+
+	pcap@10 {
+		/* TouchRevolution Fusion 7 and 10 multi-touch controller */
+		compatible = "touchrevolution,fusion-f0710a";
+		reg = <0x10>;
+		gpios = <&gpio6 10 GPIO_ACTIVE_HIGH /* MXM3 11, Pen down interrupt */
+			 &gpio6  9 GPIO_ACTIVE_HIGH /* MXM3 13, Reset */
+			>;
+	};
+
 	eeprom@50 {
 		compatible = "atmel,24c02";
 		reg = <0x50>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
