Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E242B658
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 15:24:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+xCr86OO6yTAJymRglkriX7OvkrSngmlbTQzoOl+4LA=; b=IL5KxCBVLgJXPE
	VCFcWZ+fO5dDAEhnFViREgHcoyA/FagZwAw+wER/Zu7UWfzVo2H0vkSIuXtHRHA63TVFo90kg8Hxr
	5TUb64JtiYhAfpciaBQ8oy31v6ndkLQa/Lkmor/ljB6bFVPRT9+UpuIXcfKGKqM6j8f+oRtRZXhcU
	1149W94ztFLZEKozTX9g3YMXRLva1puynilt9XX5n73sHm0mqTN2D8mV5DeYTinmxh5CJAFAFti/T
	J8AkSdiDlLEvNTj20YrKdz1PD9RkmXVeQ8isqMHA6KsO0BaAZRKcBH/7f5q2JLnsz9wy+VoK+L8dg
	+aeB5s83A+d9Pd8SxmCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVFcM-0004qQ-C8; Mon, 27 May 2019 13:24:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVFZr-0002Fj-VO
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 13:22:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id e2so8162234wrv.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 06:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xq9gvQaTQshE54UN9urwGrJ/PW8MDhPcWZeqXmPnPkI=;
 b=Sj/HPZdj48Z931rhJgvmsSPg9x9RDBV6Vit7NVMr2+2LmFrs6YkavcRnQIACyyEKBC
 JB0eMOnlCkYUukcQew4/e5m9adRogWJzukVijek3voT9e65KbjkKgWGfz+8Ik/PYiH+S
 7gEPfLx8YV7Z/5btip0Pt42tqUfMg9mlMcwEJGd0dm7jX+Ty4EuFLj3C6w+bn7xQ64df
 hp5fOf44UKaxglgAZT+ff0QGs5Pb+5dqow2cPeOcf8NM/PKBzk5R+gjRsH68gIZt/c40
 FmoT3ky2FPe7kyltE3xMM/M7hovEjwNe9oFjSZ6Lfa22Xqha4QFpok8rJ0LbIv9n9RWf
 BLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xq9gvQaTQshE54UN9urwGrJ/PW8MDhPcWZeqXmPnPkI=;
 b=iNIdjfjuYfob4qVJBcE+pDSz5yhhd02362qk3AR7gfEzV+i4pIE3KXl0giTJTCn4el
 WSvK5H+hQdgOQoFwLIYRRDUnISUpU6IxBgZ5Nfl5yIokMtBUNJATTzgA5EkhEyGjWl8e
 8NfQ2nXWIAeddZgcryfuU3mYkO3R95tb5l4Tkr3v0q0pPHphjA2gWB7/QUIR/o7icx91
 7WpGvz9tGkpaQV4eQqYqwzTbUWYsyxJKFBvbdfU9zVBH2pF1lSTPQ0vOqOUeuAu75R9H
 Gau1O9f+kn/hr1M4V0PAy60N5xvcfp/WRql09k4fm0huIHuT2qbH78M494ZBiMDmb97K
 YO8g==
X-Gm-Message-State: APjAAAV3Oljwk0601n0Thb6pbOBXiL2pSlyS8lbM+g/Ez0ZbHyldfJMB
 yBt21yqzSGkjbgS/cUgXwWZJ4A==
X-Google-Smtp-Source: APXvYqyMfifY65haasTe+0rgvLhCeYDfEiW9wVbHqKfZPRH8VMKJlHQZKtU/12FI2Cwvig9Y8yUxLg==
X-Received: by 2002:adf:b446:: with SMTP id v6mr75583998wrd.30.1558963330491; 
 Mon, 27 May 2019 06:22:10 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id l12sm7019836wmj.22.2019.05.27.06.22.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 May 2019 06:22:09 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 09/10] arm64: dts: meson-gxbb-vega-s95: fix WiFi/BT module
 support
Date: Mon, 27 May 2019 15:21:59 +0200
Message-Id: <20190527132200.17377-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527132200.17377-1-narmstrong@baylibre.com>
References: <20190527132200.17377-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_062212_492107_9EADC707 
X-CRM114-Status: GOOD (  13.58  )
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

Fix the SDIO WiFi support and add proper Bluetooth support on the
Vega S95 board.

Suggested-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-gxbb-vega-s95.dtsi  | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 4d2aa4dc59e7..9b52f3dcdd49 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -93,8 +93,7 @@
 
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
-		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>,
-				<&gpio GPIOX_20 GPIO_ACTIVE_LOW>;
+		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
 		clocks = <&wifi32k>;
 		clock-names = "ext_clock";
 	};
@@ -167,7 +166,7 @@
 /* Wireless SDIO Module */
 &sd_emmc_a {
 	status = "okay";
-	pinctrl-0 = <&sdio_pins &sdio_irq_pins>;
+	pinctrl-0 = <&sdio_pins>;
 	pinctrl-1 = <&sdio_clk_gate_pins>;
 	pinctrl-names = "default", "clk-gate";
 	#address-cells = <1>;
@@ -229,6 +228,19 @@
 	vqmmc-supply = <&vddio_boot>;
 };
 
+/* This is connected to the Bluetooth module: */
+&uart_A {
+	status = "okay";
+	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
+	pinctrl-names = "default";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		shutdown-gpios = <&gpio GPIOX_20 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+/* This UART is brought out to the DB9 connector */
 &uart_AO {
 	status = "okay";
 	pinctrl-0 = <&uart_ao_a_pins>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
