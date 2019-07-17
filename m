Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D906C1B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:51:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cbx0QRID+SPvOrjWC/GiM1LdrwmpooheiLD+1z9LsD8=; b=KC8sRmy8xUlnYOvOg51ZeqC0Xy
	q/j7yNbPibvtetDWTi78zOU2dtLqbpAKtWRhTNxAieXGcGtVrV6YJW9gfR8Nopml5gOMHLnKTvaFj
	mIkH5uAgg7m3suEPDugaOwUQBHce5HDffea+I43zIQ/RmNQU7hAqhML3FzAfqyYJ/aKk+lA2iLbdt
	kgscUE4sNSmEHftIfpu7p4DTmNKVQKXuo6jfU3vZbS9WD/udy+7CI1o6PcakuaWhdmutRGMeqi3wY
	R2j9FYun1M2yZd4d63bbRtH/dtYtKrazyScxkdFRNmmnxycOJsFyFrI5ilnjnzmTWNVmaphqBZKKX
	XYRvbDFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnpxH-0002x6-Qw; Wed, 17 Jul 2019 19:51:11 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx2-0002tI-Sk; Wed, 17 Jul 2019 19:50:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393043;
 bh=bMN5HaH7xs5OZI3fgydBkJ1gPM3MHOTFQvPIB1gYS7c=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=ObADk1ltN1b9eAZFJ/dvTcdwnghiCQ0i9PA0gj4ybp0QO7yLlHX3u2uc59Zm0LWCF
 wODuRZqXZ7UgrztIprbNAJXfTBcxj32HQcD5GJYZvipazdnG7Tlq4ORH30CRCGawgT
 OBinZnXcMijsdPEh1dmj7MOrQHSDwzI19sWf417w=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MZxch-1i1EVB3LCh-00LlwW; Wed, 17 Jul 2019 21:50:42 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 05/18] ARM: dts: bcm283x: Define memory at board level
Date: Wed, 17 Jul 2019 21:50:13 +0200
Message-Id: <1563393026-17118-6-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:+qUlbWv36YNvHIARxY8HjLdDd7OcImGMezScPmhJq9+C42OBSZS
 oSzdMEKkwp0h37hik0ttB5RDWntsuG7X/3Dqu31vFTRi2wY7mt3AEMBS+njOoZnxsqIwwwl
 zK4MFx5U6c2KtItuLklpEKp6iV8JquGYPGaqa/shqagci8tWLc2z74O1Hmql6jd2AtC4rE+
 A5cnvENUeT3ldFCHdDVsg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:UBGlykYIrRQ=:hwtxnuQFCUsIlxGIGJnNPv
 PS0CAZAqf/qCM883EeF/jNLcXOL4XMNtntkYy7Dbh3T1uLuDCHu+b66N4tSSpoP1LV8sIyjF+
 dRGhyTAa+RnTFLBjw8ZisM7pwy442D5FKcajIwP+YJoWK4XhyDdWAE++DUpVrM+te6AOBOtUc
 zZW10nFWmzlZiWyPHZdLpDE3s+nffs57+O4IIj7O61n9wZWVIMiX9ZyQpNUfzgsZd0Go/jf89
 yvh+rLVbVa4hemP6kwiLOqhZhDzBmVivi9JAGKPQeOOAxCSQMA7bfI3KNqgV67u1HZ0cLxn+A
 Sj5w35Zh094VTdJdU+mECb+LtyzUo70B0hPh8MnCSpa6pVXuch2q17PkfAfzQyYCVhS+tSod9
 75BfHoM8v6bmEj+qHGqTRSmTrRcqP1baDhIUsJ9Jrm+HSBsEm02nok9D9D8GEPy0DrQMldRmI
 cRgULSXBvCgr6BiZMel3/oHgMJvlhYuRUBrAtoG4rlqhBMl6NnWXd64F+FD2H6QF8Tx5pE6/b
 SPnHLPkdl474yytm2ExwIDMnc39fmWnN7J88At+xxTxpsfekVkdcJR9Ko853r6V9OMj+Nhj//
 SMcR5+Tmbn6PNw9gjH0YFYu90UIdCjAl7BIRzGwO0/R0pOutSCM3ggHuqWHTCSI23ZZFCQ6pg
 vz7JeAXOfgB3iR3ZyEy1UMPtDpn0D2Boyi6grxH2mw72WbaWjd9kQrA3zk/16bnBN85to9pNa
 QKFYzAyOigjq1jxvbEgi/Oz2UfPwPFqwUtVOMPRrcGNAj2My3QZnbicuB5z6L45rOeqxIIjBq
 eBp/EuroSUYuijo9/GO5LQ8q7fFh0pZM5xRwE7SpbYJGdm4ft6R9M1iE7Wuf3zNcKbL/42WRQ
 2uuizn9n5meXF3NllHRzHWOUlVQ0I9Yta+YiGF5AqpYlC7W4/j+g21m18Lz0phjZFHiHU7H+X
 rgwE39tggipRbX4Y3p35QK2inUm6PrOFY+L8aupro9GN/qgrkaHjqSMHCeSTbfQvS2f/FZMob
 rjQzPcEbC5SEY5a6rdiFduzDkwco/MQnS82/jrzLjLgTu5QnN/Tt2EJ32MjTxmb5I0T6Am6Rm
 7ljcWM+9vygPpw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125057_236314_CC3B6114 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now with the varity of several RPi boards, the memory should be defined
at board level. This step gives us the chance to fix the memory size
of the RPi 1 B+, Zero (incl. W) and Compute Module 1.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts   | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi-a.dts        | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts   | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts   | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi-b.dts        | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi     | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts   | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi-zero.dts     | 5 +++++
 arch/arm/boot/dts/bcm2835-rpi.dtsi         | 5 -----
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts      | 1 +
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts | 1 +
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts | 1 +
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts      | 1 +
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi     | 1 +
 14 files changed, 45 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
index cb3f08d..5b42e9a 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a-plus.dts
@@ -8,6 +8,11 @@
 	compatible = "raspberrypi,model-a-plus", "brcm,bcm2835";
 	model = "Raspberry Pi Model A+";

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x10000000>;
+	};
+
 	leds {
 		act {
 			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-a.dts b/arch/arm/boot/dts/bcm2835-rpi-a.dts
index 2d167d9..b716214 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-a.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-a.dts
@@ -8,6 +8,11 @@
 	compatible = "raspberrypi,model-a", "brcm,bcm2835";
 	model = "Raspberry Pi Model A";

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x10000000>;
+	};
+
 	leds {
 		act {
 			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
index 83a3a60..3318082 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-plus.dts
@@ -9,6 +9,11 @@
 	compatible = "raspberrypi,model-b-plus", "brcm,bcm2835";
 	model = "Raspberry Pi Model B+";

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x20000000>;
+	};
+
 	leds {
 		act {
 			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
index b6b4fea..97d7eb5 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts
@@ -9,6 +9,11 @@
 	compatible = "raspberrypi,model-b-rev2", "brcm,bcm2835";
 	model = "Raspberry Pi Model B rev2";

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x10000000>;
+	};
+
 	leds {
 		act {
 			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-b.dts b/arch/arm/boot/dts/bcm2835-rpi-b.dts
index b5782fa..37e02a1 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-b.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-b.dts
@@ -9,6 +9,11 @@
 	compatible = "raspberrypi,model-b", "brcm,bcm2835";
 	model = "Raspberry Pi Model B";

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x10000000>;
+	};
+
 	leds {
 		act {
 			gpios = <&gpio 16 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi b/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
index ef22c2d..58059c2 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi
@@ -10,6 +10,11 @@
 		};
 	};

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x20000000>;
+	};
+
 	reg_3v3: fixed-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "3V3";
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
index 5ecc403..f38f388 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero-w.dts
@@ -12,6 +12,11 @@
 	compatible = "raspberrypi,model-zero-w", "brcm,bcm2835";
 	model = "Raspberry Pi Zero W";

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x20000000>;
+	};
+
 	chosen {
 		/* 8250 auxiliary UART instead of pl011 */
 		stdout-path = "serial1:115200n8";
diff --git a/arch/arm/boot/dts/bcm2835-rpi-zero.dts b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
index 84c7035..5fd0686 100644
--- a/arch/arm/boot/dts/bcm2835-rpi-zero.dts
+++ b/arch/arm/boot/dts/bcm2835-rpi-zero.dts
@@ -12,6 +12,11 @@
 	compatible = "raspberrypi,model-zero", "brcm,bcm2835";
 	model = "Raspberry Pi Zero";

+	memory@0 {
+		device_type = "memory";
+		reg = <0 0x20000000>;
+	};
+
 	leds {
 		act {
 			gpios = <&gpio 47 GPIO_ACTIVE_HIGH>;
diff --git a/arch/arm/boot/dts/bcm2835-rpi.dtsi b/arch/arm/boot/dts/bcm2835-rpi.dtsi
index 40bac52e..f5125b7 100644
--- a/arch/arm/boot/dts/bcm2835-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2835-rpi.dtsi
@@ -1,11 +1,6 @@
 #include <dt-bindings/power/raspberrypi-power.h>

 / {
-	memory@0 {
-		device_type = "memory";
-		reg = <0 0x10000000>;
-	};
-
 	leds {
 		compatible = "gpio-leds";

diff --git a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
index f97ec95..6a89999 100644
--- a/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
+++ b/arch/arm/boot/dts/bcm2836-rpi-2-b.dts
@@ -10,6 +10,7 @@
 	model = "Raspberry Pi 2 Model B";

 	memory@0 {
+		device_type = "memory";
 		reg = <0 0x40000000>;
 	};

diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
index 7f4437a..0e29aaa 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts
@@ -14,6 +14,7 @@
 	};

 	memory@0 {
+		device_type = "memory";
 		reg = <0 0x20000000>;
 	};

diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
index c6fa34c..a1487ae 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts
@@ -15,6 +15,7 @@
 	};

 	memory@0 {
+		device_type = "memory";
 		reg = <0 0x40000000>;
 	};

diff --git a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
index ce71f57..a36bfdb 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
+++ b/arch/arm/boot/dts/bcm2837-rpi-3-b.dts
@@ -15,6 +15,7 @@
 	};

 	memory@0 {
+		device_type = "memory";
 		reg = <0 0x40000000>;
 	};

diff --git a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
index 81399b2..7c3cb7e 100644
--- a/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
+++ b/arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi
@@ -5,6 +5,7 @@

 / {
 	memory@0 {
+		device_type = "memory";
 		reg = <0 0x40000000>;
 	};

--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
