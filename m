Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADC1202560
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iNE0hEzUvM7c0tnhKn1wDwwZk0VVnrIzkx2UA3XD5zo=; b=awYEPk/nbt6Bif
	E2RyUD5GgXMMDYhW9fv7uwdyZbpqEOVFQyETfjDVxOXGZNHME77N2ijiSUDOz8epoVGG311hSLrKH
	9Xk29D1DOpIIruj00aq32QPvVZkpm96+3Il4an3zO/GuhL5hFg3320KDlrDOxgwKL91XgHntgaxqF
	Bv34DqjPULmoF7DlHMxXwNf3sqWi4vZheD9eAyz8PgtR3dTlEAU1GQAaKzumm3nLsN8CnCt52uZ7G
	bCWBf8LStk5ohyQJ6RhWflCYJxlP75TXCPKI+AhVhDwkTrOJnFqp4bMEr1yI2rb92Oib72Kwwm7OP
	rGPiLOqMYgovWau2ueUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgVb-0000VR-Br; Sat, 20 Jun 2020 16:38:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgUN-00085e-Az; Sat, 20 Jun 2020 16:37:08 +0000
Received: by mail-ed1-x543.google.com with SMTP id t21so10167171edr.12;
 Sat, 20 Jun 2020 09:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qI+KLgcHGZ3cTHvlkPTGBhsaWBLAUPc1zpeWREZblPA=;
 b=O6qDxq2yMHLFGGJbsYzsI+rIDfnFsX3XKNtroD0+uW16yAEWFPWutM0w0yHux3Z9+X
 gKXzwScCGY59HeJd2oHMZTXKA6wp+QjMoOSgRxTf2cw1kK00PaPWvfFFYNIBBL4foahL
 ONlv1VY4rjsO/CrAvP3wKYiT2wx6eRIUZoWleXBIGq/hj8D2TqKzq+Nl085RCT1XMeSs
 ZHe1Luhyewh50YyAL8aa/L/nOxFesF54Ae78aW7Fn3H0TPAq0M0AfphVYlUM5K+dkHKa
 T3U9zZvBu5shDX3wNAiDNzcuohhlbr/reutpA3aNpvS9hzxrcqZ70NG1dZvEd8PX1Ng+
 dXuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qI+KLgcHGZ3cTHvlkPTGBhsaWBLAUPc1zpeWREZblPA=;
 b=aHwY1IXHaMCh54SMiHZt1+yqVo9ItQ8V7Pc5efP0rImmDnLd1FJUvGiVfA1ASDlQIr
 WaV9Ync0GC4tFw3zwJOQBRUIp74lvUIsu1JkGfxOcrBYkNYzIpznbzFyXyVLsmTyO49G
 jpJTIP0WRnivcAIAyEEo8W3GQe+hmCP8lanevj+qY+u8sUwiA9DprHcvohiCuAxdD4cx
 vYWQvQx7m9CWJEjA0QIB2nZGbto2vc2LIEF5PZQ1j0yATzXTFcAJBjmiOodFF42Bxdcu
 CkpBT1wnRyoF8vT5fNx3KkTwYmfKtvKiZs5c0rnsMkMwLVoPosggmsX8AEmZhLeuhInv
 yayg==
X-Gm-Message-State: AOAM530GcJMssyMKrwSjqBM+LQjm2Jz0q00LFIXWbi0WmHBH1amSyl1Z
 MjUGruyobDyWv4Gx/NkBzpc4uVey
X-Google-Smtp-Source: ABdhPJyg/dkss/6p4dO79EJEEhEXYP+thVEqeGX7aTivWvxH3c9atiLcDkD1IPNAWMc27jcB5oB3Wg==
X-Received: by 2002:a50:9eaf:: with SMTP id a44mr8884095edf.121.1592671025708; 
 Sat, 20 Jun 2020 09:37:05 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o90sm7839442edb.60.2020.06.20.09.37.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:37:05 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 3/3] ARM: dts: meson8b: odroidc1: enable the SDHC controller
Date: Sat, 20 Jun 2020 18:36:54 +0200
Message-Id: <20200620163654.37207-4-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200620163654.37207-1-martin.blumenstingl@googlemail.com>
References: <20200620163654.37207-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_093707_405709_528667DF 
X-CRM114-Status: GOOD (  10.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Odroid-C1 has an eMMC connector where users can optionally install an
eMMC module. The eMMC modules run off a 1.8V VQMMC supply which means
that HS-200 mode can be used (this is the highest mode that the SDHC
controller supports). Enable the SDHC controller so eMMC modules can be
accessed.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b-odroidc1.dts | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b-odroidc1.dts b/arch/arm/boot/dts/meson8b-odroidc1.dts
index cb21ac9f517c..0c26467de4d0 100644
--- a/arch/arm/boot/dts/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/meson8b-odroidc1.dts
@@ -15,6 +15,7 @@ / {
 	aliases {
 		serial0 = &uart_AO;
 		mmc0 = &sd_card_slot;
+		mmc1 = &sdhc;
 	};
 
 	chosen {
@@ -26,6 +27,11 @@ memory {
 		reg = <0x40000000 0x40000000>;
 	};
 
+	emmc_pwrseq: emmc-pwrseq {
+		compatible = "mmc-pwrseq-emmc";
+		reset-gpios = <&gpio BOOT_9 GPIO_ACTIVE_LOW>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 		blue {
@@ -310,6 +316,26 @@ &saradc {
 	vref-supply = <&vcc_1v8>;
 };
 
+&sdhc {
+	status = "okay";
+
+	pinctrl-0 = <&sdxc_c_pins>;
+	pinctrl-names = "default";
+
+	bus-width = <8>;
+	max-frequency = <100000000>;
+
+	disable-wp;
+	cap-mmc-highspeed;
+	mmc-hs200-1_8v;
+	no-sdio;
+
+	mmc-pwrseq = <&emmc_pwrseq>;
+
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+};
+
 &sdio {
 	status = "okay";
 
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
