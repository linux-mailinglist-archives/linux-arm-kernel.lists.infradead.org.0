Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7210C38DEF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DdrADoDEXvAJE65bqOslbTxflyEGUG6quXR11WSzF8=; b=oPQFu8rfPPh1HA
	hW9ZrsYM4JEcxqvcOWWG1nybvWfzzAwhQMCoU48msvzxhdZd0icodYpSroMmmZTYxIHpF7JipGaA2
	J56nhLpgJTKKJNw0E+56b1O8vjKxV0Z12vRxjexVHZb8qpUDs3T7xcDKxOM/XI/pc3nlSR0mhyXPa
	VVmpwoGy6gYX2Ui+1wRapqc8b40hFpJxPeGh+AOBXDJeJUPiU0utsz3V1+b2lKKgtc7lNVfwbyPoZ
	sotlW9qEehMP2wJVxRScafNeQ+0lOnKiWg/6Ak/wzp8PqYuW6D537YU8ap1oYsP2qjmP4jvgLbOY0
	Eze7LcaqqSQQbX2mw/6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGBQ-0002YU-PQ; Fri, 07 Jun 2019 14:49:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG9f-0001Cj-AB
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:47:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id h19so4248858wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:47:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lZkZr6EziWsPNbkH40RoVyz/4NEqFV1sE9ycOq6JdzQ=;
 b=eqpJtEhpH+OXz8eQ5Au51p7DYK/OWw2oSYWxJqlNVdEnI71fvOcr/E5+N+gdn1pUe3
 v9tUucsG1pIVpd5sqmfpnmts843CPSFB42eEpmDQb8BhJlgPKAH/qGSUdQyv7KYk57Kt
 LjW7h3V+7V9gFsaVoGWBHrMx4AoCy1JDblj8xksshzoh4+PN56NbpqKAinTzGeCHSucM
 znwVx9TmGxqyLcjdHK1FPdQw7dpwPpdair3kWj06MtTosDkXEU99QEvyLXmuHVBqlPna
 DOLAoNyJNj4HYPpJJOle9JjI/9MdZYqfBSuhStGtNZ75Id4Yjov4ib8/cD4k8LwTZji9
 nm+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lZkZr6EziWsPNbkH40RoVyz/4NEqFV1sE9ycOq6JdzQ=;
 b=E17KV6biYx6sKJ+IM2+iStLBJ6CgxygUO8/1xDVJr/A66UW9LCdTGK1+GtvlHba8L8
 TXHSPBQqlaDtFo4TmJh4WvDgS9TrvP2XX21ORSYexTMjd11yMLnr7jaq22tJ+6Lc7kmV
 IHs9Ju0XLeWqUl/ayA5sfbRPAgP887aHSYmWkCExjSk+Wz/pq1FYgVC+hctoCsBigcN9
 EBQvctROL3KClbFubyh7Lya5WMA2odj+ortHevZ1qf5pwmPOJBL1Hif2pnu9Sn3KLEF9
 3u1QcgbLkl4WUuqsvubZgVnq7ObM4ApgKU/0pqUwLxuG4iswG/23DBqtrbIYyZsyG6Ky
 qHzA==
X-Gm-Message-State: APjAAAUKAmx8CtCoVKM0VEtaxC6QAjj/LrYrfbgAqIybhL1de41HUGNP
 0lG4LcM+c8jMR5YLbHfkmVIUDw==
X-Google-Smtp-Source: APXvYqyDd2VI/H4vsvCIyOTgJOV/JMwi2X8GQ5jPzrFPlCxLzMvdW2iCCef0MhC5PTSOKQc9dwebdw==
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr3980950wms.8.1559918861330;
 Fri, 07 Jun 2019 07:47:41 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q20sm5184516wra.36.2019.06.07.07.47.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:47:40 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 2/3] arm64: dts: meson-g12a-x96-max: Enable Wifi SDIO Module
Date: Fri,  7 Jun 2019 16:47:34 +0200
Message-Id: <20190607144735.3829-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607144735.3829-1-narmstrong@baylibre.com>
References: <20190607144735.3829-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074743_384520_1123DCB0 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The X96 Max embeds an AP6398S SDIO module, let's add the
corresponding SDIO, PWM clock and mmc-pwrseq nodes.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 69aae6c03dc5..345c9277cc4c 100644
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
@@ -155,6 +169,14 @@
 	pinctrl-names = "default";
 };
 
+&pwm_ef {
+	status = "okay";
+	pinctrl-0 = <&pwm_e_pins>;
+	pinctrl-names = "default";
+	clocks = <&xtal>;
+	clock-names = "clkin0";
+};
+
 &uart_A {
 	status = "okay";
 	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
@@ -178,6 +200,34 @@
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
