Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5A42B64F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:23:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVU+t0sqsFlG4S6uKd7ALb0g2gXvWqvMDX3+zVCxTMM=; b=cPcgLQ8Hv6HEyu
	RIR7dVRBATEj/x6TD1PMshgG8kOD9lDgiVFwn/0q+OJeKFNR3cSCbRdJ9G5DwmcFLYSkPdnxxOqut
	XYTnheYNfIEDTwn9HINBI5PzfhlddjiTeaZuZImp7CapkWwKSAsG/SZ6196JRNV7rUS6b5eaftFuB
	RpxXyzCqEnkwJ6r/SWTDsQGgn9kS2qVdKR+jhDnEpnzrGehaN4vqNhlkRhx3ELjP0EQu/JR5TBLvt
	ZuWyMUnntT+R/fZ9Oq/WAY6iFbvAtHJbCIH60HNT6X5L3F2ZlSWTHEGWYJ0DG0tSY1TDyFsMPtEIK
	Wn5ebeRLWmQeND/SpyEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFbL-0003lr-2S; Mon, 27 May 2019 13:23:43 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZo-0002AR-9i
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:15 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so16932704wrs.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B15kJiNx0gB5GZgy154+cF2VY43Rpy+WChAQDJEB4z4=;
 b=rxyG/XbxOY9xO0y8sz7iyV/GR+qomMOMyrjb46om9LbLfzHg+biOdo3QrM6hV19Wye
 2RDnWMDDZXA2XaWC+ixE+k79juVBbkN9/GqFFk/x/Nyyr3G3l8ALH3meaEZAotFvrElm
 BPz7tcSanuoSSu60aB755pCVvWBjgcaxfQWa6kWkVk5Nffcn87IzYwzFZYZG9Pm1bU5j
 zdDsKtxX9Db3wfQTAPOE0KjSNjwhQzXlnDmBL4WOpgVJA3LUOWcscEeM3ooZUKWnfr4J
 b+aa7hPn5TEA9MxVjJk6ZTUeKFZx6AJn8AhKbnC9ij52i6wQdgCZ3yKUiVzyda02xbom
 dIdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B15kJiNx0gB5GZgy154+cF2VY43Rpy+WChAQDJEB4z4=;
 b=PcUDoTy5FSXrrkapN3BpOfpraQkrJ25+aDuhrCOHgr764Q4iyWxnm1IzUdlX5gapSS
 5rZIbfRjrhVU8lwZb3ry2uGfQNVceanFiS5c3m7yGXGg6kV3RVQfLZ7vlcj9FFd0oBbF
 oDlHqOz+WCOM1gtEf0Yv+hPKfDmM8Qsk8+4Vfmw7cYzpjqvdX+YADH/eNzkRPsn9F35D
 QG8FxosQUzjUzjBz1fnkL9vErgPUy6cXpHPi0XqSPNNH5/ckatuQudeuNIxhjgiFrmb1
 3zzliI/NYsDvrJwCmfwxpZpBd+50Y3wXZVTD/l8buI1M4fHx+YkALNJlwkJqfy/hrE35
 O33Q==
X-Gm-Message-State: APjAAAXGsMe/KJkHcHAKWMPK6fW8aZVRSbG00mHIwG85aGwgIaTXwz+J
 0xWj8IQmSMdbsDCWpU6kJNumyw==
X-Google-Smtp-Source: APXvYqwNQZvfpu+TITjMJMn64RyU9BPmMPPPawWMAjqT5Dub5Vb5xePuM97dcekNw6lWKErVTVOkFA==
X-Received: by 2002:adf:e30d:: with SMTP id b13mr58410891wrj.246.1558963326793; 
 Mon, 27 May 2019 06:22:06 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:06 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 05/10] arm64: dts: meson-gxbb-vega-s95: fix regulators
Date: Mon, 27 May 2019 15:21:55 +0200
Message-Id: <20190527132200.17377-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062208_629522_5750A0CD 
X-CRM114-Status: GOOD (  11.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, christianshewitt@gmail.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Align the regulator names with other GXBB SoCS for upcoming
SARADC support and SDIO/SDCard fixes.
Also fix how regulators are passed to MMC controllers & USB.

Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi | 34 ++++++++++++-------
 1 file changed, 21 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 623bcb6594b1..760730d4e87b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -28,10 +28,10 @@
 		};
 	};
 
-	usb_vbus: regulator-usb0-vbus {
+	usb_pwr: regulator-usb-pwrs {
 		compatible = "regulator-fixed";
 
-		regulator-name = "USB0_VBUS";
+		regulator-name = "USB_PWR";
 
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
@@ -40,18 +40,25 @@
 		enable-active-high;
 	};
 
-	vcc_3v3: regulator-vcc_3v3 {
+	vddio_boot: regulator-vddio_boot {
 		compatible = "regulator-fixed";
-		regulator-name = "VCC_3V3";
+		regulator-name = "VDDIO_BOOT";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+	};
+
+	vddao_3v3: regulator-vddao_3v3 {
+		compatible = "regulator-fixed";
+		regulator-name = "VDDAO_3V3";
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
 	};
 
-	vcc_1v8: regulator-vcc_1v8 {
+	vcc_3v3: regulator-vcc_3v3 {
 		compatible = "regulator-fixed";
-		regulator-name = "VCC_1V8";
-		regulator-min-microvolt = <1800000>;
-		regulator-max-microvolt = <1800000>;
+		regulator-name = "VCC_3V3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
 	};
 
 	emmc_pwrseq: emmc-pwrseq {
@@ -133,8 +140,8 @@
 
 	mmc-pwrseq = <&sdio_pwrseq>;
 
-	vmmc-supply = <&vcc_3v3>;
-	vqmmc-supply = <&vcc_1v8>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddio_boot>;
 
 	brcmf: wifi@1 {
 		reg = <1>;
@@ -156,7 +163,8 @@
 
 	cd-gpios = <&gpio CARD_6 GPIO_ACTIVE_LOW>;
 
-	vmmc-supply = <&vcc_3v3>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vcc_3v3>;
 };
 
 /* eMMC */
@@ -176,7 +184,7 @@
 
 	mmc-pwrseq = <&emmc_pwrseq>;
 	vmmc-supply = <&vcc_3v3>;
-	vmmcq-sumpply = <&vcc_1v8>;
+	vqmmc-supply = <&vddio_boot>;
 };
 
 &uart_AO {
@@ -187,7 +195,7 @@
 
 &usb0_phy {
 	status = "okay";
-	phy-supply = <&usb_vbus>;
+	phy-supply = <&usb_pwr>;
 };
 
 &usb1_phy {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
