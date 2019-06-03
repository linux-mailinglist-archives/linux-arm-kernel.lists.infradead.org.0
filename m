Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763E532D7D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZ4WIQ0dxFjlJdKh41jcN9NEasyduAf2IPoMdODfHK0=; b=IYCRWGLjvhRsKs
	7GoZiTZRNaSm/y6XK9RbDP+SZ9J+zDvFd006020kUM06bYyju83wUoreO+Gy5STotBlVDluDyfsJ7
	yzAxp4M+SAhXWRCyF3yt8p7nwSLnMyrWVgcNQRsU7uj9m5R1bdhAxvyUBGQcwjr+Z9reQoVJ6NiDS
	7VsksbvYG/FHUbgK3Dftm1wJv0zzMxP0ZgJpNwCOcKAUVWyehNJSpSblSt6aIy5+gPuxJltMJGVrC
	NMHFimlSVLRPilLiJLMH+GgLND2Yup6WWVZFsFUQX05k4wDSqSBdFTfTqzsoto3vCwG1ah4Yh4XMr
	7Z/X2uWgCPJMz0QJIOkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXjq2-0007iD-38; Mon, 03 Jun 2019 10:05:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXjoy-0006Vj-1b
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:04:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id f10so10506984wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 03:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YMQH+YmMqEi+gsXseHBWQuJ/Imet99lfOVHmWm+WY1U=;
 b=DdmABLlIarebcQdqi3kcWqkFCKN8OCuNG59wewyDGcKAmrYKfr4JXLl1AP6wzl3YnU
 cafRtqasdDcyAiVJ1sbLHANKERnpmh+6duZfsY8gKWAXzaEw+YRofetU93bp1TwWWjT1
 2JQCeHyGP0sIj91aN+eYFRhbHw7QgLBofq5ImYTNMbTpKVhB3SI7gIdVQXuZs93/kyBY
 PHLRTZXOWh4QigbIJpr+9Plzf4c58yNlDaY1APglo5023V6SHJdFFiQgB5lpbkMjZGZh
 0j26+h44qPOXglXqXVh/dkcJ2Rfq5Qrmim/TrYizfEvchBGLPcnAvQplDPEl/jktQQJ5
 qilA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YMQH+YmMqEi+gsXseHBWQuJ/Imet99lfOVHmWm+WY1U=;
 b=ZFKCemDZ3Ptw0wimsgHwipIJDSKDJS1/U7kvdjPtr9zReSiJqxdhUIbXEZvCBlyS4S
 bbLr6HMX4eVdBlYa94/g2pt4MKtiWkdsJEgjzJRM8V9EQheKeIuyLHaKeJZPH237WJMb
 gk0o1x4V5hCIh9uZ4t5WqjFu2pMpCZHMWu/VvHvQOtS9zrHzAOWMsddTboaruEswxL8+
 NID1D2Vr7qtOUUaNZ7zEfBK+7HWVhRxo9RlG7z3wETzkucrd5E48T97xoYa4BEzBLISC
 B1tbba2N06V8SX5Q1II932ffzzT8Vu38S156ioY0GzYtWAACn0kZ6P8JLqWZ2iUPTPqy
 NwXw==
X-Gm-Message-State: APjAAAVds3lsw7oX95fPvcOkIAx2UCIkncxaLwgQHp4oecNKhlDOa4jd
 gkBfYNImj206MovL/G6WzC2VKQ==
X-Google-Smtp-Source: APXvYqxdgJNt/Z8H7RA95G1FQJxTUqwXFFclxWFD9X0UAVrW1pgptWbzt5ot7MgiYRg+s06Hj5jzqw==
X-Received: by 2002:a1c:5546:: with SMTP id j67mr1855939wmb.80.1559556242355; 
 Mon, 03 Jun 2019 03:04:02 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o3sm11282098wrv.94.2019.06.03.03.04.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 03 Jun 2019 03:04:01 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH 4/4] arm64: dts: meson-g12a-sei510: Enable Wifi SDIO module
Date: Mon,  3 Jun 2019 12:03:57 +0200
Message-Id: <20190603100357.16799-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190603100357.16799-1-narmstrong@baylibre.com>
References: <20190603100357.16799-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_030404_266573_4C6FF06B 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
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

The SEI510 embeds an AP6398S SDIO module, let's add the
corresponding SDIO, PWM clock and mmc-pwrseq nodes.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 .../boot/dts/amlogic/meson-g12a-sei510.dts    | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index be1d9ed6d521..5a97379f2417 100644
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
@@ -174,11 +188,45 @@
 	pinctrl-names = "default";
 };
 
+&pwm_ef {
+	status = "okay";
+	pinctrl-0 = <&pwm_e_pins>;
+	pinctrl-names = "default";
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
