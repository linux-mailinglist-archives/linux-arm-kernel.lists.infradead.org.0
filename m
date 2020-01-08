Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B78133A29
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 05:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6kg5fKOmUEf22UmILRG7lYl/nN2ZcMy8y2k18tl3Pg=; b=FYQ03Q4gXjlejJ
	hSIh2H91F6IQCVSjyLkI6EVt9Da1890tuMcCtBt5WjHHDU8Agbgg+BgL1kFeyO55iOVEIb8JagYUk
	hJhJth+373g6IhBolquPCz43qeoho8QShO1lHgr3iQ5JNE2r9xIVEPwU7LINQHfBI6g2BO/+nCGq0
	c60IyvQ04qVMfnCDVQaeVm1Nu9sqDKfADK91+rOK75DAij46xRV709dWb7arwqmB/tNkCuNJoTea5
	NnXMCxazS7ehdhNTAV1qRJixsIXB/zRCS15u3pgNuNsPMpTmSyo+Ualrl8XMXWTI7lxlu+VyWwzlH
	UsbMjnsg5YItv6dREXHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip2r4-000171-P5; Wed, 08 Jan 2020 04:22:02 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip2pu-0000Ae-8h
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 04:20:52 +0000
Received: by mail-pf1-x441.google.com with SMTP id i23so955713pfo.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 20:20:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BsY5fjuE+U5lF0TwpIgIkyumygVTDJwlCVDsGfXmUK8=;
 b=kc6oE+AJmInib4sWUwj7Bo4GM/V9TueAwUxznfc+rj2AY6joapIE3XSs6HMfKGAijK
 DglLqt5X+pDenU7oBGRdAcOQnDlVhlMyS25SVHmZwEGo/uRJJujF5KYfSdora/uss2tQ
 4r+D81aayGrqJ+BeyPcugXTMGzav3DlAaYQx6QNBYfFzECHWyWtfe/pHak+Uo5c3Levu
 pGwplkFv1OUWFA0NsKIJIIRqCFNntsiRDj/eaKCtOOF9NSxk20AOplYC3meKtt13z0Og
 i22Ueiq0WiDRlTR/g91e/b9iKSYl+4yDHdWqRPGFWSnduIB9ccLor/uOYVZ6eMr6pvEp
 VliQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BsY5fjuE+U5lF0TwpIgIkyumygVTDJwlCVDsGfXmUK8=;
 b=IW8YcoG325panA960CvPxdUT1G0wrmofm8MzCFFDyzlh2cX0XR7U/h6OL+CLpKPNuI
 A1P5e7FgQlDn53Q/8DFKK8m1GuJviSxluMNHdavBgDiTczVld5BphM76KiHek/h8Aaa4
 RdILlzFdXtATnHtqnyk73vvBXSw5Fpd9PAT4w/9pqj+P7gyaBPlPNIy78cGX6jKovb+n
 x1n5P344iEZm7fPVqHV1hJd0DJZOi/42iv8Xvqol3L2b3xRiXPLVzCO+2MLpOOSQCgRb
 FrVGQTHIqPjJ+xLCj2bHCwDAVf3ReKybHst5zXHEJ7tn1ubDqqC+NbZl0OQi073VzjAx
 0oyA==
X-Gm-Message-State: APjAAAUku5G+oXfxQG3telLTxUyghCGBcyp/kKyCkLPpfJS4CKGRTKzY
 cs4d27Z99dvEU2RavnQNYXc=
X-Google-Smtp-Source: APXvYqxdSxMGety0x4AQA+p6/3GZXq/gedEOa5lO+VVW/Q7TsVcy3wbnObTRaipaON3o9Kb4R8AagQ==
X-Received: by 2002:a62:f94d:: with SMTP id g13mr3001129pfm.60.1578457249828; 
 Tue, 07 Jan 2020 20:20:49 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id p12sm1133478pjo.5.2020.01.07.20.20.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 20:20:49 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH v2 4/4] arm64: dts: allwinner: a64: enable DVFS
Date: Tue,  7 Jan 2020 20:20:18 -0800
Message-Id: <20200108042018.571251-5-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200108042018.571251-1-anarsoul@gmail.com>
References: <20200108042018.571251-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_202050_310760_491248B8 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add CPU regulator and operating points for all the A64-based boards
that are currently supported to enable DVFS.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 .../dts/allwinner/sun50i-a64-amarula-relic.dts  | 17 +++++++++++++++++
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts   | 17 +++++++++++++++++
 .../dts/allwinner/sun50i-a64-nanopi-a64.dts     | 17 +++++++++++++++++
 .../boot/dts/allwinner/sun50i-a64-olinuxino.dts | 17 +++++++++++++++++
 .../dts/allwinner/sun50i-a64-orangepi-win.dts   | 17 +++++++++++++++++
 .../boot/dts/allwinner/sun50i-a64-pine64.dts    | 17 +++++++++++++++++
 .../boot/dts/allwinner/sun50i-a64-pinebook.dts  | 17 +++++++++++++++++
 .../boot/dts/allwinner/sun50i-a64-sopine.dtsi   | 17 +++++++++++++++++
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts   | 17 +++++++++++++++++
 9 files changed, 153 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
index 5634245d11db..6ee7291293ec 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-amarula-relic.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 
@@ -65,6 +66,22 @@ wifi_pwrseq: wifi-pwrseq {
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &csi {
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
index 208373efee49..9b80e06f40d6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dts
@@ -43,6 +43,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 
@@ -108,6 +109,22 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
index 9b9d9157128c..6b81b91da504 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-nanopi-a64.dts
@@ -43,6 +43,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 
@@ -87,6 +88,22 @@ wifi_pwrseq: wifi_pwrseq {
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &de {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
index 01a9a52edae4..fb45c32558c5 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-olinuxino.dts
@@ -43,6 +43,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 
@@ -87,6 +88,22 @@ wifi_pwrseq: wifi_pwrseq {
 	};
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &de {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
index f54a415f2e3b..a510cf40a9fe 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-orangepi-win.dts
@@ -44,6 +44,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 
@@ -123,6 +124,22 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index 409523cb0950..7cb01886aa32 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -43,6 +43,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 
@@ -84,6 +85,22 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 78c82a665c84..74a8569c677f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
@@ -98,6 +99,22 @@ &codec_analog {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &dai {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
index 9d20e13f0c02..e64f330ca420 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine.dtsi
@@ -44,6 +44,7 @@
  */
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 
@@ -51,6 +52,22 @@ &codec_analog {
 	cpvdd-supply = <&reg_eldo1>;
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index 970415106dcf..0356608ce467 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -8,6 +8,7 @@
 /dts-v1/;
 
 #include "sun50i-a64.dtsi"
+#include "sun50i-a64-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
@@ -104,6 +105,22 @@ &de {
 	status = "okay";
 };
 
+&cpu0 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu1 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu2 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
+&cpu3 {
+	cpu-supply = <&reg_dcdc2>;
+};
+
 &ehci1 {
 	status = "okay";
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
