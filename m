Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5F420255C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 18:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9le5pziDxWmHJ5UlRjP43D8g7OXShVeZt5K8KKTyjkY=; b=R9kdptS97nqYRg
	foWjn/GEefXWAHtHp2ub/m6ODet3gVdZcYxIuFLbmej31d1bX8mmcreq3hZ+x7hNZQ/kDNtj8qtLq
	acTNSluqhQgNn7hNUKBH4Uj5qIwn6WicQKIlKG9caDRgghrmt0VZXqHYft5GNKgN1Nktk0C2M3mi2
	mPpP/x7UODVzn04renRKwqY9+ehXzWveKoVIFE7g+7a3xVAy7RozgMJHMDwD/4cPAKvIa8RaDICnf
	5rl5Yc0VTmLy0SfjN5FY1eD9gLem9Yp2yqBqgQiP6d+XnkjNxWXnHFBJ7bdrI5pmOb8JHyg0u7gzn
	riXbF4z21AJfUtPWTpkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmgUx-0008O6-TM; Sat, 20 Jun 2020 16:37:43 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmgUL-00084e-6V; Sat, 20 Jun 2020 16:37:06 +0000
Received: by mail-ed1-x542.google.com with SMTP id cy7so3685840edb.5;
 Sat, 20 Jun 2020 09:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QeXIX4cL4JttaxyZztbyyc6gPAexWcRduvN8u8Of524=;
 b=fo70egYQi4mBdJdqmqluUFPtYiGSD6h3naKOeM4bW2cRV67/h1EwPiZj5F/8mJf0pM
 DG/JjCJ5Vft3kCJpXaD+GFS2JWe0Sd4JX2Vn4AG2xKefWgK9DtbsQZxpv+UPwiYGdGFI
 8q6FUrp8l5iMILI8I4r0mV9Bw7txC8+LbDjU09LC3Az9Byp/Ei6VC/d02OA8DjFAczM3
 DHz9txqK1IAjj5yeo+Yo8Z1gSUyHbyARn/O49ZsNBBbowwRAdV+i8CMFWAw6oS43Au+1
 TAKQFZYpHgiZ4ZiaZYv5E8vUFbn61YHqcvWmSAUmeKYdARqu2IiklZVtJQuooWXcX6tM
 j7LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QeXIX4cL4JttaxyZztbyyc6gPAexWcRduvN8u8Of524=;
 b=GEH7S9S0Y+9PmGeZbte6dNaG9GvARxQ+k3OyLqkf0pNEyAipbDS+bYeoo3rr3TcpiH
 9xiVKkg5MhtMEjfTC86Nplj1eD2oSnHL+UkfDCN2n1bEGwLfKZSlOhEYGUbHVQp0YPMy
 cF/mJLBHdctxHcLuS1nVbsU5pGo3UDJOfGqNdv9TDodUSuUQCM9dBBrZTXPhZ8iH8ALH
 uSEPSmN5VpZVRMGVA+opnFLo4hP2LmUBt1UhgdE6F/tL6feAi/1ON486mTWsPs/xQiMM
 XECBTXP/HKNUFEuBvYkWE0Uy3dhx6camK1DNY2lNG6hcAPor5LCPLvo7g8xpKwwBJUEO
 ih4Q==
X-Gm-Message-State: AOAM530yt2NBZTphNVZNdpIIOfdO6z/whgzigwMZSxa24d/CkIHg602q
 DPZWgoRA31xN9Z3O5Mv6Bol0OQ/G
X-Google-Smtp-Source: ABdhPJzDrh6d0sh+T/qt5F3roXDNZgw5kjhwH/j07o2a2OVligg/aY11BDFB+9LecHH5MFYs40V5OA==
X-Received: by 2002:a05:6402:128b:: with SMTP id
 w11mr8439854edv.377.1592671023487; 
 Sat, 20 Jun 2020 09:37:03 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f1371df700428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:371d:f700:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id o90sm7839442edb.60.2020.06.20.09.37.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 20 Jun 2020 09:37:02 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/3] ARM: dts: meson: add the SDHC MMC controller
Date: Sat, 20 Jun 2020 18:36:52 +0200
Message-Id: <20200620163654.37207-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200620163654.37207-1-martin.blumenstingl@googlemail.com>
References: <20200620163654.37207-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200620_093705_237707_4E2C48C5 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
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

Meson6, Meson8, Meson8b and Meson8m2 are using a similar SDHC controller
IP which typically connects to an eMMC chip (because unlike the SDIO
controller the SDHC controller has an 8-bit bus interface).

On Meson8, Meson8b and Meson8m2 the clock inputs are all the same.
However, Meson8m2 seems to have an improved version of the SHDC
controller IP which doesn't require the driver to wait manually for a
flush of a DMA transfer. Thus every SoC has it's own compatible string
so if more difference are discovered they can be implemented.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson.dtsi    |  7 +++++++
 arch/arm/boot/dts/meson8.dtsi   | 19 +++++++++++++++++++
 arch/arm/boot/dts/meson8b.dtsi  | 20 ++++++++++++++++++++
 arch/arm/boot/dts/meson8m2.dtsi |  4 ++++
 4 files changed, 50 insertions(+)

diff --git a/arch/arm/boot/dts/meson.dtsi b/arch/arm/boot/dts/meson.dtsi
index ae89deaa8c9c..464057989572 100644
--- a/arch/arm/boot/dts/meson.dtsi
+++ b/arch/arm/boot/dts/meson.dtsi
@@ -140,6 +140,13 @@ spifc: spi@8c80 {
 				status = "disabled";
 			};
 
+			sdhc: mmc@8e00 {
+				compatible = "amlogic,meson-mx-sdhc";
+				reg = <0x8e00 0x42>;
+				interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
+				status = "disabled";
+			};
+
 			gpio_intc: interrupt-controller@9880 {
 				compatible = "amlogic,meson-gpio-intc";
 				reg = <0x9880 0x10>;
diff --git a/arch/arm/boot/dts/meson8.dtsi b/arch/arm/boot/dts/meson8.dtsi
index 3d0ab2ac5332..04688e8abce2 100644
--- a/arch/arm/boot/dts/meson8.dtsi
+++ b/arch/arm/boot/dts/meson8.dtsi
@@ -384,6 +384,15 @@ mux {
 			};
 		};
 
+		sdxc_b_pins: sdxc-b {
+			mux {
+				groups = "sdxc_d0_b", "sdxc_d13_b",
+					 "sdxc_clk_b", "sdxc_cmd_b";
+				function = "sdxc_b";
+				bias-pull-up;
+			};
+		};
+
 		spi_nor_pins: nor {
 			mux {
 				groups = "nor_d", "nor_q", "nor_c", "nor_cs";
@@ -558,6 +567,16 @@ &saradc {
 	nvmem-cell-names = "temperature_calib";
 };
 
+&sdhc {
+	compatible = "amlogic,meson8-sdhc", "amlogic,meson-mx-sdhc";
+	clocks = <&xtal>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>,
+		 <&clkc CLKID_FCLK_DIV5>,
+		 <&clkc CLKID_SDHC>;
+	clock-names = "clkin0", "clkin1", "clkin2", "clkin3", "pclk";
+};
+
 &sdio {
 	compatible = "amlogic,meson8-sdio", "amlogic,meson-mx-sdio";
 	clocks = <&clkc CLKID_SDIO>, <&clkc CLKID_CLK81>;
diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 2069c57343e5..2401cdf5f751 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -363,6 +363,16 @@ mux {
 			};
 		};
 
+		sdxc_c_pins: sdxc-c {
+			mux {
+				groups = "sdxc_d0_c", "sdxc_d13_c",
+					 "sdxc_d47_c", "sdxc_clk_c",
+					 "sdxc_cmd_c";
+				function = "sdxc_c";
+				bias-pull-up;
+			};
+		};
+
 		pwm_c1_pins: pwm-c1 {
 			mux {
 				groups = "pwm_c1";
@@ -554,6 +564,16 @@ &saradc {
 	nvmem-cell-names = "temperature_calib";
 };
 
+&sdhc {
+	compatible = "amlogic,meson8-sdhc", "amlogic,meson-mx-sdhc";
+	clocks = <&xtal>,
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>,
+		 <&clkc CLKID_FCLK_DIV5>,
+		 <&clkc CLKID_SDHC>;
+	clock-names = "clkin0", "clkin1", "clkin2", "clkin3", "pclk";
+};
+
 &sdio {
 	compatible = "amlogic,meson8b-sdio", "amlogic,meson-mx-sdio";
 	clocks = <&clkc CLKID_SDIO>, <&clkc CLKID_CLK81>;
diff --git a/arch/arm/boot/dts/meson8m2.dtsi b/arch/arm/boot/dts/meson8m2.dtsi
index c7ddbb210366..6725dd9fd825 100644
--- a/arch/arm/boot/dts/meson8m2.dtsi
+++ b/arch/arm/boot/dts/meson8m2.dtsi
@@ -84,6 +84,10 @@ &saradc {
 	compatible = "amlogic,meson8m2-saradc", "amlogic,meson-saradc";
 };
 
+&sdhc {
+	compatible = "amlogic,meson8m2-sdhc", "amlogic,meson-mx-sdhc";
+};
+
 &usb0_phy {
 	compatible = "amlogic,meson8m2-usb2-phy", "amlogic,meson-mx-usb2-phy";
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
