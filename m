Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116F8174FE0
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 22:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hlyc+BtiAIH882SLCD1ufPQF9iw9eddDg8D8vbXK16E=; b=jpaMW120ESHVZ0
	KhoFswU9fp87KllHiHAvRuhNZWWM2rY2BvNjHRQpBuNHpSKR6DEDqra/fmaEZ0plK2bf20K0Ey1YF
	GcpG5hu0fsDiv7tkciMLPxGvhS38maT4QsXVJwz3ZPHyrZwWXvClwpnivHQXAqjgYVRRCeGuAB+PM
	skCmf7o+/FrkaU7V79hPzRA7PYcjo2lnCBTzrbIrXrJGhmyH4kq5PPjHjHHSnbleJEuTlqtd9RReV
	V5WscY1QQj/b5YuB0edNX3GCnFuKy07bOmmBud8aSef61knd2qrtzNCjPQADnklT6dMGVbTpUa4qE
	eKPVgwHRAkexs7RrCOzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8W1S-0007qU-2y; Sun, 01 Mar 2020 21:21:14 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8W0w-0007VO-8g
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 21:20:43 +0000
Received: by mail-pf1-x432.google.com with SMTP id y21so1028189pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 13:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rc9J+Cmf71xfajfNUuMMuICeYb/kHr4TudELbJoBD3U=;
 b=AQMUrVN/O+R6rAjAo1vv4GsivdtxeED67OT3d0xxSkrDvt3fYq+Yel4+P7Y3Q/peOq
 k5uX0o66W1+HYmLyIYOB/oxZxnXQ2e16d9RDQwIK/V3SyUWwnz3vWstf/fZMZqZj26Uo
 hf5TPTXaorYnBzBwVXurSfLjYLcuwNZPSgO8HLjmZWYIc8S+HfSwvJm2zkj6sdRgpgvu
 kkITrVOyk1GplF4ZAXZDEfgnjzlkSQ2qUT0Dz4JjNfY20neR/+vRgGnZmJuq8xnhN72g
 G+Za/Wgfw+yvRIIrbYh4ZGb/9Ir9+Sf6iP6dQxDpf+m7ZzsipE4gBj6n4NTQ5t1NB6RK
 NKrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rc9J+Cmf71xfajfNUuMMuICeYb/kHr4TudELbJoBD3U=;
 b=bTSeoILBL9czNro2TfCF0BCOuuVf1e9WQZjVS77E0jK/LvRFsr7wDekKJsftkdKcrS
 U41DE6sYdyFwK7Ek5fWJO6cmdCl9Atwl88oNeJZq17f4C82rbBG2bpjgwhoBrOuOUt2Y
 Ct9jgHLJ30diLHEhBMXMv2vKVq9Oihbg77T/1j/4jVxslcH1za8qgwZwEAnHuKd3/R5+
 te8RJ1Iuhoy7/Ys98l/RojHHetN6Z+1wyMP03gxVf09kjb6WMV3AYGr7ISiz+5LPZJAk
 uW+W37VBCfAcp4CvzdcrjMKkARsER+WPcEY7V25UCbaZX/kZq38Y7FhhlboKNziI8ye3
 oS7g==
X-Gm-Message-State: APjAAAU2giaLeU10PExVP1wutdiZ8pFKdK5u8tGEypbVaXGPW1Hn3UYM
 tb+HPEILB/tWuhGkYaGjHMA=
X-Google-Smtp-Source: APXvYqx6mpbuec4O7HMvIyBfEoEAnpVGqr1liKpxzSafteugww+5sx6T9X6KQolbli+jWf31t10u8w==
X-Received: by 2002:aa7:971c:: with SMTP id a28mr15117532pfg.152.1583097641365; 
 Sun, 01 Mar 2020 13:20:41 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.208])
 by smtp.gmail.com with ESMTPSA id u19sm4547686pgf.11.2020.03.01.13.20.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 13:20:40 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 2/3] ARM: dts: exynos: Add missing usbdrd3 suspend clk
Date: Sun,  1 Mar 2020 21:20:17 +0000
Message-Id: <20200301212019.2248-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200301212019.2248-1-linux.amoon@gmail.com>
References: <20200301212019.2248-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_132042_320463_71262317 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:432 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds new combatible strings for USBDRD3
for adding missing suspend clk, exynos5422 usbdrd3
support two clk USBD300 and SCLK_USBD300, so add missing
suspemd_clk for Exynos542x DWC3 nodes.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Previous changes:
	Added missing suspend clk name Exynos5410 SoC.
---
 arch/arm/boot/dts/exynos5410.dtsi | 8 ++++----
 arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
 arch/arm/boot/dts/exynos54xx.dtsi | 4 ++--
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5410.dtsi b/arch/arm/boot/dts/exynos5410.dtsi
index 2eab80bf5f3a..19845dcd528f 100644
--- a/arch/arm/boot/dts/exynos5410.dtsi
+++ b/arch/arm/boot/dts/exynos5410.dtsi
@@ -396,8 +396,8 @@ &trng {
 };
 
 &usbdrd3_0 {
-	clocks = <&clock CLK_USBD300>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_phy0 {
@@ -407,8 +407,8 @@ &usbdrd_phy0 {
 };
 
 &usbdrd3_1 {
-	clocks = <&clock CLK_USBD301>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_dwc3_1 {
diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index b672080e7469..bd505256a223 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1372,8 +1372,8 @@ &trng {
 };
 
 &usbdrd3_0 {
-	clocks = <&clock CLK_USBD300>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD300>, <&clock CLK_SCLK_USBD300>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_phy0 {
@@ -1383,8 +1383,8 @@ &usbdrd_phy0 {
 };
 
 &usbdrd3_1 {
-	clocks = <&clock CLK_USBD301>;
-	clock-names = "usbdrd30";
+	clocks = <&clock CLK_USBD301>, <&clock CLK_SCLK_USBD301>;
+	clock-names = "usbdrd30", "usbdrd30_susp_clk";
 };
 
 &usbdrd_dwc3_1 {
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 8aa5117e58ce..0aac6255de5d 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -143,7 +143,7 @@ hsi2c_7: i2c@12cd0000 {
 		};
 
 		usbdrd3_0: usb3-0 {
-			compatible = "samsung,exynos5250-dwusb3";
+			compatible = "samsung,exynos5420-dwusb3";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -165,7 +165,7 @@ usbdrd_phy0: phy@12100000 {
 		};
 
 		usbdrd3_1: usb3-1 {
-			compatible = "samsung,exynos5250-dwusb3";
+			compatible = "samsung,exynos5420-dwusb3";
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
