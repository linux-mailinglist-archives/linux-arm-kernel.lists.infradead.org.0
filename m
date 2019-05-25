Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF772A6B7
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 May 2019 21:03:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NvjbgrVAo7tFqmb3jTuF/Pjt/qW6P8ZBMLpAyRSAxuE=; b=ODwBQJNx0QIJ43
	GeTqJDAEHJ636GoNxW4Q6a5/cMPPNwukdmDWjZiVxS2C+/OnIbo+uTh8MR6fdS+IrPxZKK7MWq03m
	/F5jqJIZw9AsK13RTLWlHt2aP4ePn8JzeiWw8sAdnBuHRsiNc2ez51IFJ0DjmmESKwdCVDkn7Oo+W
	/gTtTe2G/IdzW1c08naBWvuQWE7Mm5ZtYsrN+YXrrn1ddkqLRQtxQDLc6KHjyE1xDkiRGqy8C+kba
	Pisp51BNN1rhzmIBYADFtg1Sl49Q3Eza3+bDVk/kKr+i5bpeC4YD4RnEtL7n3hZNTZpsJvd1q6bHR
	Q+BoUBg0U8vsyapLFMmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUbwh-0002VP-1o; Sat, 25 May 2019 19:03:07 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUbvp-0001VS-Uw; Sat, 25 May 2019 19:02:15 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so12993825wrr.13;
 Sat, 25 May 2019 12:02:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hkt/Np1IRlTONH5ji7tqTfAwm8WEpSqR1gunLTp9R3E=;
 b=KMnJSlAfrtHVE6bAvSaTeQUHkXq8tF6jYakZK4zjQScDZc3QKks15L7mb+Ns/SVAka
 YkrjQkupgUS9S3Uzkz0KAuMAASnIINJS/CCnVociy3kPErHETBV2AE8suTQijp9hc/Lg
 BDBMWIUtrxBCHHbrCXuW5kSysGkh61CnuWpIG4zTY5cnviL0TveHQA3Xo21v8P//dxDi
 sDZ8H1DC72sGCh/J6bjE7xQPsBd3h+JmvgNt0fEzYaM2pOQ7DHwm/JoA6E9o9tfXvF7n
 5W8Cgt75fi0ux4rDNdbFg/E+Q5PrSMdzPiv5Nrif1L4FLAwT49Bdo0uPLFyV4+PlZVcA
 dwzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hkt/Np1IRlTONH5ji7tqTfAwm8WEpSqR1gunLTp9R3E=;
 b=mnUNzEYGsb5k89xqxGFv+GJpsqGt1bE5MZ58Wbhw8Au+oE0S6mIj1S97zpTdOjkS1n
 mg7Gc1YFPcAO1t3Yy7rzAoMY9vgvZtwReC9m3cxdl13nUZ2+Q/277DhiKSAWJDglLERA
 YB5J9zx2oAEz5YREyP7ym78s31bF6OKdk7ZRAVOCwIiO93Bj3sb/DPvHzQMdD6Ts4ZSC
 NJrHMqgB4D4UK7aHY0K8dfy7VpTQWwIKDu6DGTTYHHrFU/sZ8pRvL4lCZj3kjjbS4yIj
 Vrw5xupCZYxHchZkDtKpiLE3/UJ23hjaWKqdzn8jHSuQwrxrJmUjk6naCoUiINlvfMy3
 9Xfg==
X-Gm-Message-State: APjAAAUtV4QkFkipICLhJYIhWBNy9VA/CTLoOKxjxV4+lHPP8CfJmNqh
 Dzlibll91BasgoKZoF6GOazdCR7z
X-Google-Smtp-Source: APXvYqw/Y4OHw3xenTNmXBR12kuloK8/8HdBN0u9xdKRZykPGp047t6EkSAFYhXJLYS+ZGKxiJpo0Q==
X-Received: by 2002:a5d:4e46:: with SMTP id r6mr68767055wrt.290.1558810932149; 
 Sat, 25 May 2019 12:02:12 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133DDA4007CB8841254CD64FD.dip0.t-ipconnect.de.
 [2003:f1:33dd:a400:7cb8:8412:54cd:64fd])
 by smtp.googlemail.com with ESMTPSA id f2sm6870426wme.12.2019.05.25.12.02.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 25 May 2019 12:02:11 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 2/4] ARM: dts: meson8b: ec100: add the VDDEE regulator
Date: Sat, 25 May 2019 21:02:02 +0200
Message-Id: <20190525190204.7897-3-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
References: <20190525190204.7897-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190525_120213_992130_13CB9E15 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The VDDEE regulator is basically a copy of the VCCK regulator. VDDEE
supplies for example the Mali GPU and is controlled by PWM_D instead of
PWM_C.

Add the VDDEE PWM regulator and make it the supply of the Mali GPU.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-ec100.dts | 31 ++++++++++++++++++++++++++---
 1 file changed, 28 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/meson8b-ec100.dts b/arch/arm/boot/dts/meson8b-ec100.dts
index 9bf4249cb60d..61a1265064dc 100644
--- a/arch/arm/boot/dts/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/meson8b-ec100.dts
@@ -219,6 +219,27 @@
 		 */
 		vin-supply = <&vcc_3v3>;
 	};
+
+	vddee: regulator-vddee {
+		/*
+		 * Silergy SY8089AAC-GP 2A continuous, 3A peak, 1MHz
+		 * Synchronous Step Down Regulator. Also called VDDAO
+		 * in a part of the schematics.
+		 */
+		compatible = "pwm-regulator";
+
+		regulator-name = "VDDEE";
+		regulator-min-microvolt = <860000>;
+		regulator-max-microvolt = <1140000>;
+
+		vin-supply = <&vcc_5v>;
+
+		pwms = <&pwm_cd 1 1148 0>;
+		pwm-dutycycle-range = <100 0>;
+
+		regulator-boot-on;
+		regulator-always-on;
+	};
 };
 
 &cpu0 {
@@ -268,6 +289,10 @@
 	};
 };
 
+&mali {
+	mali-supply = <&vddee>;
+};
+
 &saradc {
 	status = "okay";
 	vref-supply = <&vcc_1v8>;
@@ -349,10 +374,10 @@
 
 &pwm_cd {
 	status = "okay";
-	pinctrl-0 = <&pwm_c1_pins>;
+	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&clkc CLKID_XTAL>;
-	clock-names = "clkin0";
+	clocks = <&clkc CLKID_XTAL>, <&clkc CLKID_XTAL>;
+	clock-names = "clkin0", "clkin1";
 };
 
 &rtc {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
