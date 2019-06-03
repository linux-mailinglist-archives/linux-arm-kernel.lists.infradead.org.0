Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3707C32D79
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:04:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfS3Ds6l9kIKLZAVv7H0t1Mf7mRxIBMc/vdFIGtevwM=; b=Kkr4ytORNU7eWf
	sdmOQaqAdBcU8uzgIovRzcd1Gw7roD6YAF9xTfsjqNFyAP3KOiG8fTQ0HnmTXwzqQyVFE/Ek+5P2H
	xTq6ZTI/S74y3WEGV+4rqgqe3j1V/YTQiBWeoZOCkpQCXdhKpsv3H01ojhn1sd0BAxcgg/TsRCyEM
	v1lBfyPkSIKs1XiF1wPXvftJX6h6s2pPsMnbct2PFpu+BvAJ30N8TEJTcYGuTVtAWnF5KqbtDbzSm
	J5xpF7t0QaUNLGu6IGXaYeObcXlvba74x14jVCWSErp5nG/30NWXWlQq4oV1tpE/aLeFW4H0L0Lzv
	6EkQNeoNSyT22g95z8Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjpi-0007NU-Eo; Mon, 03 Jun 2019 10:04:50 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjox-0006Uw-3q
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:04:05 +0000
Received: by mail-wr1-x443.google.com with SMTP id r18so2350013wrm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 03:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q9lcLmPi8XMHiXaXMu2ntTG9e0dgqGl+ZMcMDCcYGe4=;
 b=gEBC5aL1kPVPR+LUHjfVvz0ksvv2DkipPibJaPYpBIPdIqcM+Wcug6FummvXcULaSt
 /Ak+nz2LW/+jWrdpXj/9L3uqCtc/L/EQhvRcc+qNcnX+sa7SEKxtWOQmPJc+djEPENPL
 ag8UllJ6ZX10pf/GraIjEOQZE+zOnxTzDRK7nWjNgtib/eG3aucWdr1ZVJu/DJ64w9J2
 eGtUk6ICjuCy73lD1JthOtI4xIwTtmD6KtJColr4X0ifGIEAfakyl+9LAP6HVYhw9xPv
 ipt8IIFLV7TXnaHsvB9MpKt745rrzjKVNxLpXCcD6NGOCkhz2U60c9CV9mZhFlJk/RdP
 1OMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q9lcLmPi8XMHiXaXMu2ntTG9e0dgqGl+ZMcMDCcYGe4=;
 b=DxE7bcX4+IX2SjCRgxAkrFQAWXnMxsG1leyXt3bpLL3BpcJRfOGvqd8UbZlFR/8W/k
 TNl4dxWMs32+8zxWiS2yyesz/yV51fc4vUxCS8/QbDKUU1fO0GpGx6CP6Sz0F+OT+PUr
 BBjNIy4yGqpLjammu6ndejR8Du6tep+ydQy1j40t9xDAdTcHuHmKEZVKC6Einw/VwhPb
 ZgXlIBbwmXpvPOVNuogG52IvLQZyo59GWFrWK9TA64GScofceo3TQPNhXfmtj6Cw1U+P
 BxWD3UQ7a1xvpwZl7eFaYh4WiLOXVxGBqdMbjDEqU32ceOAl0x7wjyGR4K1luDRFS0Vy
 cmRw==
X-Gm-Message-State: APjAAAXxvXNfVh9mwi0Y/ZYQGD1U1kG1PH1BW7hPDY+LlilKSVDQ12Bx
 atbPpT3KHJ9sxFnPNkd/j0wAwQ==
X-Google-Smtp-Source: APXvYqwdNaVQrH1Hfwg41zEcu8yAiSsSfc+9kG7/WdtS15tQvV/Gq7PthCS+3NtUj9DsCTd99kW1+w==
X-Received: by 2002:adf:e30d:: with SMTP id b13mr1845319wrj.246.1559556241668; 
 Mon, 03 Jun 2019 03:04:01 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o3sm11282098wrv.94.2019.06.03.03.04.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 03:04:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 3/4] arm64: dts: meson-g12a-x96-max: Enable Wifi SDIO Module
Date: Mon,  3 Jun 2019 12:03:56 +0200
Message-Id: <20190603100357.16799-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603100357.16799-1-narmstrong@baylibre.com>
References: <20190603100357.16799-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_030403_172894_C228A5AA 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The X96 Max embeds an AP6398S SDIO module, let's add the
corresponding SDIO, PWM clock and mmc-pwrseq nodes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 69aae6c03dc5..8b263ec1e7a2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -50,6 +50,13 @@
 		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
 	};
 
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
+		clocks = <&wifi32k>;
+		clock-names = "ext_clock";
+	};
+
 	flash_1v8: regulator-flash_1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "FLASH_1V8";
@@ -114,6 +121,13 @@
 		vin-supply = <&dc_in>;
 		regulator-always-on;
 	};
+
+	wifi32k: wifi32k {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+	};
 };
 
 &cec_AO {
@@ -155,6 +169,12 @@
 	pinctrl-names = "default";
 };
 
+&pwm_ef {
+	status = "okay";
+	pinctrl-0 = <&pwm_e_pins>;
+	pinctrl-names = "default";
+};
+
 &uart_A {
 	status = "okay";
 	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
@@ -178,6 +198,34 @@
 	dr_mode = "host";
 };
 
+/* SDIO */
+&sd_emmc_a {
+	status = "okay";
+	pinctrl-0 = <&sdio_pins>;
+	pinctrl-1 = <&sdio_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	sd-uhs-sdr50;
+	max-frequency = <100000000>;
+
+	non-removable;
+	disable-wp;
+
+	mmc-pwrseq = <&sdio_pwrseq>;
+
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddao_1v8>;
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+	};
+};
+
 /* SD card */
 &sd_emmc_b {
 	status = "okay";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
