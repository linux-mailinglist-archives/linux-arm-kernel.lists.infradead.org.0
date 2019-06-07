Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC6738E00
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 16:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yGrQYFhFfbpHMih745XnkXuHdUcNRvIzORfliSXNUwg=; b=EMYGq5739M7QOa
	LDkkyzfb5HZ5TGgVRaOgcg1jzFFaQDrCDv/ZHt0IhMzo1pxz5MP5O/Wq0YDVi6pjnV5iz1OvcBOgk
	X3I13ndu0ItkSubNDYeoUdNVd1KNgiCoqH++BCVR3VouHUvqFOFqVJ5MJGBaHIcYnGvMKSbfO2iMa
	Bifn3pBq+euOvpY4jHCeZIEIuIYR35fH10VTdPbYxXj8z+Tmyvdgt0mFzu61d6Gao3hOmGzRrT/Hl
	FBnILVITl4598fhJZ0Xt7naiLpzA+krcTOI3JNJs8bd8H/cCg1skO6Y7vm3QhzX/1bfL8plUgYFKl
	C175TdB46vojX25xAebQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZGBp-0002ym-LC; Fri, 07 Jun 2019 14:49:57 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZG9g-0001Dr-Lq
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 14:47:47 +0000
Received: by mail-wm1-x344.google.com with SMTP id a15so2374573wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 07 Jun 2019 07:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tPTyfVIwA34LPg5YDvt9kvbQsjNuXGIsGhvwwUrhRvE=;
 b=oOjhENZqL4BhiLGy7B2SBUqZvF7HNB+Ur1xaBXLbkm9NDN7Wkxmv7Vn5iGauOR0BF/
 J/nlHAa6pwsIQsnWpFMnrHygtnbVU211VIDTH+eGKlf0K8dvS8qOJv3j9MRR6m0b6QF1
 c8g8TMX/8Gny7E+W+4eC3qHWXiTDPv27VPRFGqs39ax/KM5jtxrb2GgbwxZOZhQtkcHf
 meLo0oJwYZjBCggIl1Jt+vULGFaNDtLUcZRjR0kjoyzpP34NRtCqp4yhyna1iB57+12W
 Y1/iIu0aWZ8qtUtpbytmj2QAaM9xLz5HAEk45cdqhePq8a+CUcGkAA5msHhXjbmxQiAc
 pBmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tPTyfVIwA34LPg5YDvt9kvbQsjNuXGIsGhvwwUrhRvE=;
 b=K8Q+M+BJ0u+xWiYXUxTiYcP0zzUGGQG9zBWUwsnUIZt3ndVCaOGv5Yney77XhfWypM
 teR+n+r+NzCKYv93dV4o1QQyAXRjWPwDmuoFNcOaTWX/aVTr71DzHgXsH/WUUQaRlY73
 cDk5PMZrKcop/rvqWKFJcvhlYmS+AxvBER1+C6U3dTla8+TnxGws2RAL8GpUuwMx6Cua
 913Dvmoq7mHag9BunyMDR8iWsK86EfWaNbNdq5zBbLnh8k20ZX50axjiQEnTYXQsvHpR
 opjSx+U7euAuiEe/UwEAXSlzQt1Rm0vuL47Am6hak7ik9sBJvKDYJuXKOwF6Djy3cEt3
 QhNA==
X-Gm-Message-State: APjAAAVUGQF5kYIjz4lHs42lA5P9I0XXwyJ/2zJ9OqW4iPDNNmys6BpU
 fgKImV7TalzEpJNoj7/eZknVDg==
X-Google-Smtp-Source: APXvYqwWILUiwv79FHy2wYdmky8oGaRLMAzo72z4Mc1oYEnJ9iaUVsVj578xtD5mptsqtY9zca9QSg==
X-Received: by 2002:a1c:a848:: with SMTP id r69mr3830844wme.12.1559918862691; 
 Fri, 07 Jun 2019 07:47:42 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q20sm5184516wra.36.2019.06.07.07.47.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 07 Jun 2019 07:47:41 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH v2 3/3] arm64: dts: meson-g12a-sei510: Enable Wifi SDIO module
Date: Fri,  7 Jun 2019 16:47:35 +0200
Message-Id: <20190607144735.3829-4-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607144735.3829-1-narmstrong@baylibre.com>
References: <20190607144735.3829-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_074744_726539_C336D436 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The SEI510 embeds an AP6398S SDIO module, let's add the
corresponding SDIO, PWM clock and mmc-pwrseq nodes.

Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index be1d9ed6d521..a1821d850a6d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -128,6 +128,20 @@
 			no-map;
 		};
 	};
+
+	sdio_pwrseq: sdio-pwrseq {
+		compatible = "mmc-pwrseq-simple";
+		reset-gpios = <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
+		clocks = <&wifi32k>;
+		clock-names = "ext_clock";
+	};
+
+	wifi32k: wifi32k {
+		compatible = "pwm-clock";
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		pwms = <&pwm_ef 0 30518 0>; /* PWM_E at 32.768KHz */
+	};
 };
 
 &cec_AO {
@@ -174,11 +188,47 @@
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
 &saradc {
 	status = "okay";
 	vref-supply = <&vddio_ao1v8>;
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
+	vqmmc-supply = <&vddio_ao1v8>;
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
