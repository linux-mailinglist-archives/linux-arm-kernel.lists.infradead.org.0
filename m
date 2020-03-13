Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BEC184381
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 10:15:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SU8FBgce+zUGYfe9jF3A0Uj3Iw8MEAuiPcgtG4MJ3Jw=; b=EtziisMzoHnNoQ
	j/lLLt8ltu5ULZ1hnxeZ0vr2KK7s4J5lHUlZGZXWgf6c64LAezi2/kqh+NsKaQdC/51nIKico9qF4
	GJaf+vPrJre+U6aqZNdtP/Q/coF2YtuJ1lGUSytZYan9L7EQ6Vd42FKcB123/E0mKps85TDP0EFJA
	BwhAQgUEz1pGciGC//I1kgN0jouOV4OQR5AnN5eReyY/LiNczSgt8QhkjdSWQBzkdQ64qwpJrr+eL
	ggdAwJ5c/o+FcB3NvsZOp4RnAXUpxvGI/wuH7Myd+wjciEalg8/TpHK/JcJwvBczOd/xp/LcddDcV
	JV7mX1YmuJ0pzmTPF1Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCgPD-0004BR-Qq; Fri, 13 Mar 2020 09:14:59 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCgOL-0003QC-T5
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 09:14:07 +0000
Received: by mail-wm1-x341.google.com with SMTP id n8so9041944wmc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 02:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E70oj/WzyijwJdfPjeZpJL/TnPPgDCbN1C/+b4ziaYU=;
 b=Uq9EQWvXN+7M20yu7voSmq83vDSTrffh8f2SJRZ7xOSQzmTw7UFNqSV/zMaj+qbldO
 I09tl+0BRTTnwz1QXcfg3E03NXqP9VcLsjoU0JUvX1ptuE+9omUWdEIqRJHMxfTV9myy
 /3bHwaSVGeLmU5gDataY+uOXd/s0LBEC5zsAvQWZcLMxJafqF83MtFd2fo3Uv3hi7zSy
 p6IBhGz4/KI6RWPHZM1bSsbKzlUlHoixfGutpTZ390FGXwUXGh+dgs1LIZjVv7GfbKi0
 y4zfPsh9adv2p5F8TEUBDf7Y7AnErfF99RmIyLbzXlThlj1suyS4n3u+EeL1tVP1tAeT
 NBRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E70oj/WzyijwJdfPjeZpJL/TnPPgDCbN1C/+b4ziaYU=;
 b=gPn0wuMkNRXLxm2TogBU0hAROI9COB6mjuPko/KHPWKo42SqHkkcHfP+rr7mmiXC1D
 6ljfP7oFB3LQIZzs/XdVdRVWL5d6lzxjySmyBQZZGcOsqJ4NzdrLgJA73WiGCs+UaBPe
 cjCBMgf77SYUep21tYJksR6TEYeNiVZey2AP+2CqBBN1BMsqFsjrnI1Gxt8W1yhuvsJO
 dFNHDlOP5cxAErOUf35urouzWOUCdqt8PnGNXF/uMNL8oFe57g1asgUHSDSqDEsu7ISk
 Fori2tZDfgUlrtx/jNkx0e01fmXOhdhagGGU9uNsjdXmjeEnU/nJxz1xplpzRhUtqKSO
 slIg==
X-Gm-Message-State: ANhLgQ0EAuyi23WLP7gf+r2vgk7BJJksbB1Zurl/IChoKFboMvYnB9HC
 O/D27ZvRHcy1QuGYYuRp9kOYzQ==
X-Google-Smtp-Source: ADFU+vsUGjCjoPvn78i2h2y/UPx6n/9ZiqzP07HFNclTzgvoivDZdY21eVjZkNHVfoQc6hEKkjcNwg==
X-Received: by 2002:a1c:e913:: with SMTP id q19mr10226228wmc.31.1584090843727; 
 Fri, 13 Mar 2020 02:14:03 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id s1sm7952666wrp.41.2020.03.13.02.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 02:14:03 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-g12-common: add spicc controller nodes
Date: Fri, 13 Mar 2020 10:14:01 +0100
Message-Id: <20200313091401.15888-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_021405_946418_3853B2C7 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the controller and pinctrl nodes for the Amlogic G12A SPICC
controllers.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
Kevin,

This depends on the CLKID_SPICC0_SCLK and CLKID_SPICC1_SCLK introduced
in https://lore.kernel.org/linux-arm-kernel/20200219084928.28707-2-narmstrong@baylibre.com/

Neil

 .../boot/dts/amlogic/meson-g12-common.dtsi    | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index abe04f4ad7d8..3e1dfa80651d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -957,6 +957,57 @@
 						};
 					};
 
+					spicc0_x_pins: spicc0-x {
+						mux {
+							groups = "spi0_mosi_x",
+							       "spi0_miso_x",
+							       "spi0_clk_x";
+							function = "spi0";
+							drive-strength-microamp = <4000>;
+							bias-disable;
+						};
+					};
+
+					spicc0_ss0_x_pins: spicc0-ss0-x {
+						mux {
+							groups = "spi0_ss0_x";
+							function = "spi0";
+							drive-strength-microamp = <4000>;
+							bias-disable;
+						};
+					};
+
+					spicc0_c_pins: spicc0-c {
+						mux {
+							groups = "spi0_mosi_c",
+							       "spi0_miso_c",
+							       "spi0_ss0_c",
+							       "spi0_clk_c";
+							function = "spi0";
+							drive-strength-microamp = <4000>;
+							bias-disable;
+						};
+					};
+
+					spicc1_pins: spicc1 {
+						mux {
+							groups = "spi1_mosi",
+							       "spi1_miso",
+							       "spi1_clk";
+							function = "spi1";
+							drive-strength-microamp = <4000>;
+						};
+					};
+
+					spicc1_ss0_pins: spicc1-ss0 {
+						mux {
+							groups = "spi1_ss0";
+							function = "spi1";
+							drive-strength-microamp = <4000>;
+							bias-disable;
+						};
+					};
+
 					tdm_a_din0_pins: tdm-a-din0 {
 						mux {
 							groups = "tdm_a_din0";
@@ -2051,6 +2102,30 @@
 				amlogic,channel-interrupts = <64 65 66 67 68 69 70 71>;
 			};
 
+			spicc0: spi@13000 {
+				compatible = "amlogic,meson-g12a-spicc";
+				reg = <0x0 0x13000 0x0 0x44>;
+				interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc CLKID_SPICC0>,
+					 <&clkc CLKID_SPICC0_SCLK>;
+				clock-names = "core", "pclk";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
+			spicc1: spi@15000 {
+				compatible = "amlogic,meson-g12a-spicc";
+				reg = <0x0 0x15000 0x0 0x44>;
+				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc CLKID_SPICC1>,
+					 <&clkc CLKID_SPICC1_SCLK>;
+				clock-names = "core", "pclk";
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
 			pwm_ef: pwm@19000 {
 				compatible = "amlogic,meson-g12a-ee-pwm";
 				reg = <0x0 0x19000 0x0 0x20>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
