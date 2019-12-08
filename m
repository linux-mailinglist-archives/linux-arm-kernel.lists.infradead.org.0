Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47F0211634F
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Dec 2019 19:06:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WWSalNY71jrd1rM1CZGr01PoOT3D30GGvBI+F31m4gI=; b=IwGTjDMZ+OHy8p
	FkCXXvwb9bLxud8x5rRjXTSf4nVPyekyIjzsg9kwz1FcGU+Na3eoqcWS4h87Vtodt2NN/sZdRy0+9
	H+L7jKtzKeXyCrnMMgfZBPF62qNIUVYTUdSjbGi+NLSkQs7xZjzNbTUftAnNwmrKXP7F6gozrp4Jx
	CvH/FwL59UrDO/mxE0TNNhCdffOp/E/fSP4dpXul8CGDwFqcZQE2w3tAwGhY/XLHfmUCwMrS6WVz8
	7Bfgnb8Qr4QNRtnItQVIIAFhry/5JqYBTkSMdEtqS7yAblo6Ju448Vq8mTqX5fFlXBR3/Ef8cK4dE
	j9U7ZeV7kRL2NaipyVSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ie0wN-0003LF-N5; Sun, 08 Dec 2019 18:05:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ie0wC-0003J9-Bx; Sun, 08 Dec 2019 18:05:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id c20so10973748wmb.0;
 Sun, 08 Dec 2019 10:05:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nX/VsdwReAfzTgHRbYFywSS+wSQOYA7q3n8LLMhpENQ=;
 b=M+IM/CZMNAv/GLSrwNVOVXeNAE3U5NXW2PwmrdSO7qvWyrkgcNne4CCCFYLp2hV9L7
 w/qcMoIPjMVgxHXipW8jTtJ5CZG+cPYUtC3hEB43zO0P9SG6WfpPKgG+3fWe3btmiYfA
 Xj9MdcVefMDO7d7FaBR7Urex281bd/1BRsDv3lyxMLp5ZyeeenOFhAUqubO++XWLVO8b
 dHvwhW1A/omX7isXGqyiHPaQcK48mdOKqdtLjw+58Zj57G2wHaLVN9Vshsol5t2R6BIX
 AMlZnEKKt9geotWZLR9MDKRK5tCerLGpEuQZvuffEsG32LqS2lrCK1RL7uXzTzv7etRA
 peSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nX/VsdwReAfzTgHRbYFywSS+wSQOYA7q3n8LLMhpENQ=;
 b=oJVrDwcKpH/JCfc5FuPgd6fbHXa0MBqdW3hRkwVtal0qUV0xzgjlriRVOe9V1g8TAf
 tKM9DmnTyfNURJ5Uw7EPLae9O+ziqP3FcXrESQcQfNj+8bbF5+wPRSz5Qlb7mKMBkdEY
 GyK6Up4WyqqtZDJpy56s0INh/BVugaCGJ3UgV06q9j/V9yNLnImr/MKgaDxE+FjsaiCj
 LQrpD+sv/FUl6iprDLYfRNDN1szmRSAyfE3jEZMh1KfnwUPVxLU+jwsa9KJvHV38/0+S
 tSv+zi3+wyCGWQSga9yfWmZLtjPBy/qerBeuNXSD8mCv6OB+3oBwqG+CSoRfyhmKwhEn
 IR2w==
X-Gm-Message-State: APjAAAXTLfv8koOuRcCZh4xLJCsNMsIXdDwW1HxxxuwsYueaPslQIIxQ
 VjmV7Dpr1mI5jKDFKkGyv6MkQs+G
X-Google-Smtp-Source: APXvYqxeUzJvpPTRlQfa6b/Q+Z5o7aJhPwmHURMUapB5D4Ut6mzjK9ve5sA05s2aZjaIfSrBz7uttQ==
X-Received: by 2002:a1c:6884:: with SMTP id
 d126mr21569473wmc.135.1575828342623; 
 Sun, 08 Dec 2019 10:05:42 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1371AD700428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:371a:d700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id a64sm11797687wmc.18.2019.12.08.10.05.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Dec 2019 10:05:42 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org, khilman@baylibre.com,
 jbrunet@baylibre.com
Subject: [PATCH 1/3] ARM: dts: meson: provide the XTAL clock using a
 fixed-clock
Date: Sun,  8 Dec 2019 19:05:23 +0100
Message-Id: <20191208180525.1076152-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
References: <20191208180525.1076152-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_100544_408169_E8EC4BAB 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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
@@ -282,4 +282,11 @@ efuse: nvmem@0 {
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
@@ -36,13 +36,6 @@ apb2: bus@d0000000 {
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
index 3c534cd50ee3..add6d7991fdf 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -455,6 +455,8 @@ &gpio_intc {
 &hhi {
 	clkc: clock-controller {
 		compatible = "amlogic,meson8-clkc";
+		clocks = <&xtal>;
+		clock-names = "xtal";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
@@ -529,8 +531,7 @@ &rtc {
 
 &saradc {
 	compatible = "amlogic,meson8-saradc", "amlogic,meson-saradc";
-	clocks = <&clkc CLKID_XTAL>,
-		<&clkc CLKID_SAR_ADC>;
+	clocks = <&xtal>, <&clkc CLKID_SAR_ADC>;
 	clock-names = "clkin", "core";
 	amlogic,hhi-sysctrl = <&hhi>;
 	nvmem-cells = <&temperature_calib>;
@@ -548,31 +549,31 @@ &spifc {
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
@@ -377,7 +377,7 @@ &pwm_cd {
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
@@ -165,7 +165,7 @@ &pwm_cd {
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
@@ -340,7 +340,7 @@ &pwm_cd {
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
@@ -434,6 +434,8 @@ &gpio_intc {
 &hhi {
 	clkc: clock-controller {
 		compatible = "amlogic,meson8-clkc";
+		clocks = <&xtal>;
+		clock-names = "xtal";
 		#clock-cells = <1>;
 		#reset-cells = <1>;
 	};
@@ -508,8 +510,7 @@ &rtc {
 
 &saradc {
 	compatible = "amlogic,meson8b-saradc", "amlogic,meson-saradc";
-	clocks = <&clkc CLKID_XTAL>,
-		<&clkc CLKID_SAR_ADC>;
+	clocks = <&xtal>, <&clkc CLKID_SAR_ADC>;
 	clock-names = "clkin", "core";
 	amlogic,hhi-sysctrl = <&hhi>;
 	nvmem-cells = <&temperature_calib>;
@@ -523,31 +524,31 @@ &sdio {
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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
