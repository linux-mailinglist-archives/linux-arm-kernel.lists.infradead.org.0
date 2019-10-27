Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 939C1E6416
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 27 Oct 2019 17:19:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhNKZl7FcY6+5HKHczD8HQBThhQEoCukshvm/EX3H44=; b=M/0hmIcql7DuQ2
	QgfCx+hWIHq78EMXKx9HhCG9mFwLm3huHKalXnZt65ve2dpzu5ft4GzlC4fi38oMkho3SPcKbUeKt
	xU/Lg31UUBpx2QUcGuwQXeLW5WyyEyoF7VKc3phDRreoxGI7D6IernWGn5Md7ZznnmwYuEE/8B+jp
	yZVOieBQsMhCIYqn40bV7vhH4f+9vZneZL0QOI2J27lO72rt9i6NEQZms7Ruv8w6xo88lOSNYlyng
	Ng8jjWDrhAg/b72wlt6hWNjKPFAidR+BL+tPMnl/GipGahFTcuo786eXiO+nWBH7Ppt/FQM9gMUHd
	HO96WOx0mNGxvGH9Hr3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOlGE-0006wC-8J; Sun, 27 Oct 2019 16:19:22 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOlFD-0006Dk-HD; Sun, 27 Oct 2019 16:18:21 +0000
Received: by mail-wm1-x343.google.com with SMTP id g24so6950302wmh.5;
 Sun, 27 Oct 2019 09:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FLfO/KxjQrMiblT1/Pl6tSGizwnToQmABBG15vNjp4k=;
 b=efsrM2L5u58xFefwyRkML00CgeJKs665otWTyjbA2/ddI+1FTIC5bCoiYJ3dLqCbk5
 9Jj+1rgdcQjZvwk0HpeVxT97hjQ7QTUoH43jqmlSQt/YSq5nuymzxS3XWU8bWpvUvsU3
 bUlNzLbT9ZGAjvdUr8mLjT7/59ebbwMRaEzIZmd+22YNY8dyhQ8OYdzvSTadFdlipOz1
 I+jMzks8pkqYHLa28CwBBowmr68LB1OUP3W8fWAqjU636SO0ryrIdpJhwpeAYTFdCFRS
 VQuPoAKs3/7846wSlaBTTpUcDnJGnGRqMwWKvUFqOO/I6INNbYFGwEjzMLHTG+2Mpvvn
 /rZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FLfO/KxjQrMiblT1/Pl6tSGizwnToQmABBG15vNjp4k=;
 b=UC48wT36Na8LPmmZf7SXL8N1T/pQFgQd1rc9oPCsM49DyYxjjrxHuc2reX920dln2d
 yPALHHuNenO2mc3ujO84KPCF1MpZB2fECzzxKUxst5kvu7gI53XUr+ulcmGD911uK5SM
 8x/hpXZbhV0NEDd+/lchRmQMjpSu8TCCwCMlr8ebaVtYsrHjMfRgYydngcrbEppTquPE
 SR0z1pzVLfuG+C9hudXzX3Nssfq5EZoVG4dD1ozuoJjaKUL3CAJLBnuUabE7g3uHrf/X
 oNoozG/sAj4zRczc415siI3R4ZmGzs2eNqzlWg/Ab+nIu18LHDSZk7vVzSYpLw7j4etP
 JmJQ==
X-Gm-Message-State: APjAAAW8SThorkn4ZqpxhTKvdVkvYM3tZfuQcUqudTomkayBEv+sD5bL
 akzHntRGDUnBt4J7VzvljYU=
X-Google-Smtp-Source: APXvYqxcOwu2+Gf57BhS5TKGfe523w4Dkovl72D5JIuM/RKVfzS8lFfJXOVG73aoyklxUxyiYLJVyg==
X-Received: by 2002:a1c:4907:: with SMTP id w7mr11688747wma.62.1572193098092; 
 Sun, 27 Oct 2019 09:18:18 -0700 (PDT)
Received: from localhost.localdomain
 (p200300F133D01300428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:33d0:1300:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j14sm9585014wrj.35.2019.10.27.09.18.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Oct 2019 09:18:17 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: narmstrong@baylibre.com, jbrunet@baylibre.com,
 linux-amlogic@lists.infradead.org, khilman@baylibre.com
Subject: [PATCH v2 5/5] ARM: dts: meson: provide the XTAL clock using a
 fixed-clock
Date: Sun, 27 Oct 2019 17:18:05 +0100
Message-Id: <20191027161805.1176321-6-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
References: <20191027161805.1176321-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_091819_620121_97839F7C 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clock controller driver has provided the XTAL clock so far. This
does not match how the hardware actually works because the XTAL clock is
an actual crystal which is mounted on the PCB.

Add the "xtal" clock to meson.dtsi and replace all references to the
clock controller's CLKID_XTAL with the new xtal clock node.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson.dtsi           |  7 +++++++
 arch/arm/boot/dts/meson6.dtsi          |  7 -------
 arch/arm/boot/dts/meson8.dtsi          | 15 ++++++++-------
 arch/arm/boot/dts/meson8b-ec100.dts    |  2 +-
 arch/arm/boot/dts/meson8b-mxq.dts      |  2 +-
 arch/arm/boot/dts/meson8b-odroidc1.dts |  2 +-
 arch/arm/boot/dts/meson8b.dtsi         | 15 ++++++++-------
 7 files changed, 26 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boot/dts/meson.dtsi b/arch/arm/boot/dts/meson.dtsi
index c4447f6c8b2c..5d198309058a 100644
--- a/arch/arm/boot/dts/meson.dtsi
+++ b/arch/arm/boot/dts/meson.dtsi
@@ -282,4 +282,11 @@
 			};
 		};
 	};
+
+	xtal: xtal-clk {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "xtal";
+		#clock-cells = <0>;
+	};
 }; /* end of / */
diff --git a/arch/arm/boot/dts/meson6.dtsi b/arch/arm/boot/dts/meson6.dtsi
index 2d31b7ce3f8c..4716030a48d0 100644
--- a/arch/arm/boot/dts/meson6.dtsi
+++ b/arch/arm/boot/dts/meson6.dtsi
@@ -36,13 +36,6 @@
 		ranges = <0x0 0xd0000000 0x40000>;
 	};
 
-	xtal: xtal-clk {
-		compatible = "fixed-clock";
-		clock-frequency = <24000000>;
-		clock-output-names = "xtal";
-		#clock-cells = <0>;
-	};
-
 	clk81: clk@0 {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 5a7e3e5caebe..4f59a4c8f036 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -455,6 +455,8 @@
 &hhi {
 	clkc: clock-controller {
 		compatible = "amlogic,meson8-clkc";
+		clocks = <&xtal>;
+		clock-names = "xtal";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
@@ -529,8 +531,7 @@
 
 &saradc {
 	compatible = "amlogic,meson8-saradc", "amlogic,meson-saradc";
-	clocks = <&clkc CLKID_XTAL>,
-		<&clkc CLKID_SAR_ADC>;
+	clocks = <&xtal>, <&clkc CLKID_SAR_ADC>;
 	clock-names = "clkin", "core";
 	amlogic,hhi-sysctrl = <&hhi>;
 	nvmem-cells = <&temperature_calib>;
@@ -548,31 +549,31 @@
 };
 
 &timer_abcde {
-	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_CLK81>;
+	clocks = <&xtal>, <&clkc CLKID_CLK81>;
 	clock-names = "xtal", "pclk";
 };
 
 &uart_AO {
 	compatible = "amlogic,meson8-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_CLK81>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_CLK81>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
 &uart_A {
 	compatible = "amlogic,meson8-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_UART0>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_UART0>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
 &uart_B {
 	compatible = "amlogic,meson8-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_UART1>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_UART1>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
 &uart_C {
 	compatible = "amlogic,meson8-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_UART2>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_UART2>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
diff --git a/arch/arm/boot/dts/meson8b-ec100.dts b/arch/arm/boot/dts/meson8b-ec100.dts
index bed1dfef1985..163a200d5a7b 100644
--- a/arch/arm/boot/dts/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/meson8b-ec100.dts
@@ -377,7 +377,7 @@
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_XTAL>;
+	clocks = <&xtal>, <&xtal>;
 	clock-names = "clkin0", "clkin1";
 };
 
diff --git a/arch/arm/boot/dts/meson8b-mxq.dts b/arch/arm/boot/dts/meson8b-mxq.dts
index 6e39ad52e42d..33037ef62d0a 100644
--- a/arch/arm/boot/dts/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/meson8b-mxq.dts
@@ -165,7 +165,7 @@
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_XTAL>;
+	clocks = <&xtal>, <&xtal>;
 	clock-names = "clkin0", "clkin1";
 };
 
diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index a24eccc354b9..a2a47804fc4a 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -340,7 +340,7 @@
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_XTAL>;
+	clocks = <&xtal>, <&xtal>;
 	clock-names = "clkin0", "clkin1";
 };
 
diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 099bf8e711c9..1934666ff60f 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -434,6 +434,8 @@
 &hhi {
 	clkc: clock-controller {
 		compatible = "amlogic,meson8-clkc";
+		clocks = <&xtal>;
+		clock-names = "xtal";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
@@ -508,8 +510,7 @@
 
 &saradc {
 	compatible = "amlogic,meson8b-saradc", "amlogic,meson-saradc";
-	clocks = <&clkc CLKID_XTAL>,
-		<&clkc CLKID_SAR_ADC>;
+	clocks = <&xtal>, <&clkc CLKID_SAR_ADC>;
 	clock-names = "clkin", "core";
 	amlogic,hhi-sysctrl = <&hhi>;
 	nvmem-cells = <&temperature_calib>;
@@ -523,31 +524,31 @@
 };
 
 &timer_abcde {
-	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_CLK81>;
+	clocks = <&xtal>, <&clkc CLKID_CLK81>;
 	clock-names = "xtal", "pclk";
 };
 
 &uart_AO {
 	compatible = "amlogic,meson8b-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_CLK81>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_CLK81>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
 &uart_A {
 	compatible = "amlogic,meson8b-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_UART0>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_UART0>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
 &uart_B {
 	compatible = "amlogic,meson8b-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_UART1>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_UART1>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
 &uart_C {
 	compatible = "amlogic,meson8b-uart", "amlogic,meson-uart";
-	clocks = <&clkc CLKID_CLK81>, <&clkc CLKID_XTAL>, <&clkc CLKID_UART2>;
+	clocks = <&clkc CLKID_CLK81>, <&xtal>, <&clkc CLKID_UART2>;
 	clock-names = "baud", "xtal", "pclk";
 };
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
