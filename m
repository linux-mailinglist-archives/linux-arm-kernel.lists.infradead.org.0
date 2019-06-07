Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B9C438DE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c6hOvSgvqkLejLFRxWeejv4QvX0bLJdx5F/Daxu2E60=; b=i6yydfjRLAQJiH
	yhcghgFwcPFO7k81Bzk7/b+RXV1LUiLWsGi+T2RLS27ZhVnlHrFOUCl3LBPb8jm3aNFI+Ip1xAYFU
	lOZzNzrMf5RHT4/jd0Hz7gvO8atKsDDKh9rVzl6W5AiI788XCaoPqG84LYdoksJWHplW/DH6dsjDw
	1x3p7QTweUBPHuhlO40oEcFDoHG1Dzr2jvPiZhr6bhF5SA3sAIhnCezBj+GmMquS+JwiX78AGiRPk
	PYT9V7i9wAcR8zTWOr5EbZ7i78xjO7X4+nm2HaJfiLsF/UNxg8+LEgyfst1JLxiCetbarpyhTQEt9
	lSKEp2KDS1seYgVRvM0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGB6-0002F4-2k; Fri, 07 Jun 2019 14:49:12 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG9d-0001BU-RV
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:47:45 +0000
Received: by mail-wr1-x443.google.com with SMTP id n9so2487091wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/q31YJBntN7aERDn31WI4iT/fxCa5CdKI5jVgevLIGg=;
 b=m/K9VzHsqgtdqCgZnn8FiXFVa2tmOrV/uYTohpN41eUsEfmLuX4FjOkht0Es8GNV8M
 1rjOE/orKbGwIzp34kaqjOM/wWt7ZozDMQAdgZVG3UNqGaWECo/TbXHqW+u8zISJeXM2
 0H8/udl2i10r6WquXUwgiOsODs8vMYvOHya23dQ2JFbxx3YF+jffpCKHX36cHvlmy1Vo
 EPlhXiTqUHA/iEptOv6wCIlS1kJC1JirNrXHkaZqlL5aMmxFZMCEa9Ns3M8siQ7Exfl4
 /b5sdGGxvPBHz0YxcRzrGR5HsIkZEeDznqlljPXo607dbxGJdX8sYySfaPRrORFZljcn
 IU6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/q31YJBntN7aERDn31WI4iT/fxCa5CdKI5jVgevLIGg=;
 b=rx9lUVcfckTIaso+0A0XqlCCYdnNIebyEHLAxRvGHbR+SCxkkPGlN08OSpxSvGhzXQ
 +XcTslyuECW6xO/+Ta+sUDowHejUGZn+Fa+7s+PLAOBHwhyHO+W79Pngrz9ofeLw+5Jl
 lTfZIrkKW2G3kj7QC5PIzGvrjGIp+gQEjZcDWMq+qcBuZsA9rwm4RquEdJC1IfDQqyxL
 WHbWjnKg5sPi2BvpjhGNhxeyIxdRAljNK980m9df0AhdKS4m0NV1Y0Xe2H8wAOeNd/U8
 5N2mVbDAf8F7sHbCvZs48hSYGuXzDOtPBynZpf0+RDkYiYz+Zipp5k9HJ+7rBaUV7/lP
 caRQ==
X-Gm-Message-State: APjAAAUM9fqZkffpvVIFg7LwLuGAIoR9t8YIcjVtQdcr4ejQJ02ubvQl
 64+a8txTleer08AAf1Rgxt++5Q==
X-Google-Smtp-Source: APXvYqx7nN0vbFi+WM1m4IK4O4uZDD/Xl1Qx+n1xucGQ8GFrcb+e0WJvGAdiLqpAfIS5NRuz4n7VyA==
X-Received: by 2002:a5d:6243:: with SMTP id m3mr3374922wrv.41.1559918860294;
 Fri, 07 Jun 2019 07:47:40 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q20sm5184516wra.36.2019.06.07.07.47.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:47:39 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 1/3] arm64: dts: meson-g12a-x96-max: add support for sdcard
 and emmc
Date: Fri,  7 Jun 2019 16:47:33 +0200
Message-Id: <20190607144735.3829-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607144735.3829-1-narmstrong@baylibre.com>
References: <20190607144735.3829-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074741_903047_A6A4DD04 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, Guillaume La Roque <glaroque@baylibre.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guillaume La Roque <glaroque@baylibre.com>

Add nodes to support SDCard and onboard eMMC on the X96 Max.

Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 5cdc263b03e6..69aae6c03dc5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -45,6 +45,11 @@
 		};
 	};
 
+	emmc_pwrseq: emmc-pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&gpio BOOT_12 GPIO_ACTIVE_LOW>;
+	};
+
 	flash_1v8: regulator-flash_1v8 {
 		compatible = "regulator-fixed";
 		regulator-name = "FLASH_1V8";
@@ -172,3 +177,38 @@
 	status = "okay";
 	dr_mode = "host";
 };
+
+/* SD card */
+&sd_emmc_b {
+	status = "okay";
+	pinctrl-0 = <&sdcard_c_pins>;
+	pinctrl-1 = <&sdcard_clk_gate_c_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <4>;
+	cap-sd-highspeed;
+	max-frequency = <100000000>;
+	disable-wp;
+
+	cd-gpios = <&gpio GPIOC_6 GPIO_ACTIVE_LOW>;
+	vmmc-supply = <&vddao_3v3>;
+	vqmmc-supply = <&vddao_3v3>;
+};
+
+/* eMMC */
+&sd_emmc_c {
+	status = "okay";
+	pinctrl-0 = <&emmc_pins>, <&emmc_ds_pins>;
+	pinctrl-1 = <&emmc_clk_gate_pins>;
+	pinctrl-names = "default", "clk-gate";
+
+	bus-width = <8>;
+	cap-mmc-highspeed;
+	max-frequency = <100000000>;
+	non-removable;
+	disable-wp;
+
+	mmc-pwrseq = <&emmc_pwrseq>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&flash_1v8>;
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
