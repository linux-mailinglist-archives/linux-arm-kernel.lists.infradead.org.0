Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E28108DD3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 Nov 2019 13:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bkyxGN34R7mFfoiXzR55oZnSkm15bY6R0VdIeGZxuoE=; b=KWUS9ErEoBdVgj
	8ie+u5HDdMq34FUODomVfhiNSVHDVAywqGmX9ca1lT6HGjGJ0p2zQH81+vRxHnoc+KGw3cGpBSpw1
	cUYXTYDkoI+Su7cPtJjMDfeEN33FioJI+FTFTQxI/9bavt5Y+BR/DVUnBCo50BAKzWBlTeXtAG1ob
	aShAG35EEsF5IaSFDq0dLIWE0DGLNKZWf4c6BVpQr2hf1JjzDEXIMkjdGnBjphHRxmeuP1wdHYGUs
	ZwGQNy0BGd8kRXALVBl6+mojMBypi7Sx6nSCeJ6gy+gQlEaKJQqduhFR4hvEnGdsvLe8FjJBB6P8W
	L2gJ4jV7iWJJTLxFxYEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZDTO-0000yt-Vk; Mon, 25 Nov 2019 12:28:11 +0000
Received: from mo6-p00-ob.smtp.rzone.de ([2a01:238:20a:202:5300::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZDSA-0008Rz-SM
 for linux-arm-kernel@lists.infradead.org; Mon, 25 Nov 2019 12:26:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1574684808;
 s=strato-dkim-0002; d=gerhold.net;
 h=Message-Id:Date:Subject:Cc:To:From:X-RZG-CLASS-ID:X-RZG-AUTH:From:
 Subject:Sender;
 bh=niuhOuM+JdZl+szJXAmMZWQPgbpfEj8VKERS/Uxxhks=;
 b=ekhFWhOhsV1GiufVhYVjLnGZMP7jAag0xbQRruT6BsnHfTZrzLTRqES52vYhtpaO0b
 tsAXSpUsSFwkvapKm0a08+37DwPo7uUjtDCMui64Oqp5rmEehXfuSnTrtPNY8W+eTL9m
 i43UN5bHIAAcOcRla1is2OktoCNHgvfO5D/Rdl4LBSibstScsPoENpxjLBPjTgHUbHxs
 zjKGRGryYQKtu+aM+YvayOZUmjIxCilfbvdG6T483vXnYeMjGPIyTboYbH9zZVSU4eG4
 byLVwYzb96b8X4r7C8xTjOdBJ9PmZo/0/A2BacsUDYStT5yf2pVx4c5EknfGulf9edVO
 2Dfg==
X-RZG-AUTH: ":P3gBZUipdd93FF5ZZvYFPugejmSTVR2nRPhVORvLd4SsytBXQr4OGUPX+1NmWArOmLo="
X-RZG-CLASS-ID: mo00
Received: from localhost.localdomain by smtp.strato.de (RZmta 45.0.2 DYNA|AUTH)
 with ESMTPSA id 304194vAPCQf0FN
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp521r1 with
 521 ECDH bits, eq. 15360 bits RSA))
 (Client did not present a certificate);
 Mon, 25 Nov 2019 13:26:41 +0100 (CET)
From: Stephan Gerhold <stephan@gerhold.net>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 1/5] ARM: dts: ux500: Move generic pin configs out of
 ste-href-family-pinctrl.dtsi
Date: Mon, 25 Nov 2019 13:22:52 +0100
Message-Id: <20191125122256.53482-1-stephan@gerhold.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_042655_407494_B24806D1 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5300:0:0:2 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All existing Ux500 boards make use of ste-href-family-pinctrl.dtsi,
which contains shared pin configurations for UART, I2C and SDI.
Most of these can be also used for devices not based on HREF.

Move the generic pin configs into a new device tree include
"ste-dbx5x0-pinctrl.dtsi". There is no functional change (yet),
as a next step we will rename the pin configs to use more generic
names.

Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
---
 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi     | 529 +++++++++++++++++
 .../arm/boot/dts/ste-href-family-pinctrl.dtsi | 532 +-----------------
 2 files changed, 530 insertions(+), 531 deletions(-)
 create mode 100644 arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi

diff --git a/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
new file mode 100644
index 000000000000..fbc41cacf690
--- /dev/null
+++ b/arch/arm/boot/dts/ste-dbx5x0-pinctrl.dtsi
@@ -0,0 +1,529 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright 2013 Linaro Ltd.
+ */
+
+#include "ste-nomadik-pinctrl.dtsi"
+
+&pinctrl {
+	/* Settings for all UART default and sleep states */
+	uart0 {
+		uart0_default_mode: uart0_default {
+			default_mux {
+				function = "u0";
+				groups = "u0_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO0_AJ5", "GPIO2_AH4"; /* CTS+RXD */
+				ste,config = <&in_pu>;
+			};
+			default_cfg2 {
+				pins = "GPIO1_AJ3", "GPIO3_AH3"; /* RTS+TXD */
+				ste,config = <&out_hi>;
+			};
+		};
+
+		uart0_sleep_mode: uart0_sleep {
+			sleep_cfg1 {
+				pins = "GPIO0_AJ5", "GPIO2_AH4"; /* CTS+RXD */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins = "GPIO1_AJ3"; /* RTS */
+				ste,config = <&slpm_out_hi_wkup_pdis>;
+			};
+			sleep_cfg3 {
+				pins = "GPIO3_AH3"; /* TXD */
+				ste,config = <&slpm_out_wkup_pdis>;
+			};
+		};
+	};
+
+	uart1 {
+		uart1_default_mode: uart1_default {
+			default_mux {
+				function = "u1";
+				groups = "u1rxtx_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO4_AH6"; /* RXD */
+				ste,config = <&in_pu>;
+			};
+			default_cfg2 {
+				pins = "GPIO5_AG6"; /* TXD */
+				ste,config = <&out_hi>;
+			};
+		};
+
+		uart1_sleep_mode: uart1_sleep {
+			sleep_cfg1 {
+				pins = "GPIO4_AH6"; /* RXD */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins = "GPIO5_AG6"; /* TXD */
+				ste,config = <&slpm_out_wkup_pdis>;
+			};
+		};
+	};
+
+	uart2 {
+		uart2_default_mode: uart2_default {
+			default_mux {
+				function = "u2";
+				groups = "u2rxtx_c_1";
+			};
+			default_cfg1 {
+				pins = "GPIO29_W2"; /* RXD */
+				ste,config = <&in_pu>;
+			};
+			default_cfg2 {
+				pins = "GPIO30_W3"; /* TXD */
+				ste,config = <&out_hi>;
+			};
+		};
+
+		uart2_sleep_mode: uart2_sleep {
+			sleep_cfg1 {
+				pins = "GPIO29_W2"; /* RXD */
+				ste,config = <&in_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins = "GPIO30_W3"; /* TXD */
+				ste,config = <&out_wkup_pdis>;
+			};
+		};
+	};
+
+	/* Settings for all I2C default and sleep states */
+	i2c0 {
+		i2c0_default_mode: i2c_default {
+			default_mux {
+				function = "i2c0";
+				groups = "i2c0_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO147_C15", "GPIO148_B16"; /* SDA/SCL */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		i2c0_sleep_mode: i2c_sleep {
+			sleep_cfg1 {
+				pins = "GPIO147_C15", "GPIO148_B16"; /* SDA/SCL */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
+	};
+
+	i2c1 {
+		i2c1_default_mode: i2c_default {
+			default_mux {
+				function = "i2c1";
+				groups = "i2c1_b_2";
+			};
+			default_cfg1 {
+				pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		i2c1_sleep_mode: i2c_sleep {
+			sleep_cfg1 {
+				pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
+	};
+
+	i2c2 {
+		i2c2_default_mode: i2c_default {
+			default_mux {
+				function = "i2c2";
+				groups = "i2c2_b_2";
+			};
+			default_cfg1 {
+				pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		i2c2_sleep_mode: i2c_sleep {
+			sleep_cfg1 {
+				pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
+	};
+
+	i2c3 {
+		i2c3_default_mode: i2c_default {
+			default_mux {
+				function = "i2c3";
+				groups = "i2c3_c_2";
+			};
+			default_cfg1 {
+				pins = "GPIO229_AG7", "GPIO230_AF7"; /* SDA/SCL */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		i2c3_sleep_mode: i2c_sleep {
+			sleep_cfg1 {
+				pins = "GPIO229_AG7", "GPIO230_AF7"; /* SDA/SCL */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
+	};
+
+	/*
+	 * Activating I2C4 will conflict with UART1 about the same pins so do not
+	 * enable I2C4 and UART1 at the same time.
+	 */
+	i2c4 {
+		i2c4_default_mode: i2c_default {
+			default_mux {
+				function = "i2c4";
+				groups = "i2c4_b_1";
+			};
+			default_cfg1 {
+				pins = "GPIO4_AH6", "GPIO5_AG6"; /* SDA/SCL */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		i2c4_sleep_mode: i2c_sleep {
+			sleep_cfg1 {
+				pins = "GPIO4_AH6", "GPIO5_AG6"; /* SDA/SCL */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
+	};
+
+	/* Settings for all MMC/SD/SDIO default and sleep states */
+	sdi0 {
+		/* This is the external SD card slot, 4 bits wide */
+		sdi0_default_mode: sdi0_default {
+			default_mux {
+				function = "mc0";
+				groups = "mc0_a_1";
+			};
+			default_cfg1 {
+				pins =
+				"GPIO18_AC2", /* CMDDIR */
+				"GPIO19_AC1", /* DAT0DIR */
+				"GPIO20_AB4"; /* DAT2DIR */
+				ste,config = <&out_hi>;
+			};
+			default_cfg2 {
+				pins = "GPIO22_AA3"; /* FBCLK */
+				ste,config = <&in_nopull>;
+			};
+			default_cfg3 {
+				pins = "GPIO23_AA4"; /* CLK */
+				ste,config = <&out_lo>;
+			};
+			default_cfg4 {
+				pins =
+				"GPIO24_AB2", /* CMD */
+				"GPIO25_Y4", /* DAT0 */
+				"GPIO26_Y2", /* DAT1 */
+				"GPIO27_AA2", /* DAT2 */
+				"GPIO28_AA1"; /* DAT3 */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		sdi0_sleep_mode: sdi0_sleep {
+			sleep_cfg1 {
+				pins =
+				"GPIO18_AC2", /* CMDDIR */
+				"GPIO19_AC1", /* DAT0DIR */
+				"GPIO20_AB4"; /* DAT2DIR */
+				ste,config = <&slpm_out_hi_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins =
+				"GPIO22_AA3", /* FBCLK */
+				"GPIO24_AB2", /* CMD */
+				"GPIO25_Y4", /* DAT0 */
+				"GPIO26_Y2", /* DAT1 */
+				"GPIO27_AA2", /* DAT2 */
+				"GPIO28_AA1"; /* DAT3 */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+			sleep_cfg3 {
+				pins = "GPIO23_AA4"; /* CLK */
+				ste,config = <&slpm_out_lo_wkup_pdis>;
+			};
+		};
+	};
+
+	sdi1 {
+		/* This is the WLAN SDIO 4 bits wide */
+		sdi1_default_mode: sdi1_default {
+			default_mux {
+				function = "mc1";
+				groups = "mc1_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO208_AH16"; /* CLK */
+				ste,config = <&out_lo>;
+			};
+			default_cfg2 {
+				pins = "GPIO209_AG15"; /* FBCLK */
+				ste,config = <&in_nopull>;
+			};
+			default_cfg3 {
+				pins =
+				"GPIO210_AJ15", /* CMD */
+				"GPIO211_AG14", /* DAT0 */
+				"GPIO212_AF13", /* DAT1 */
+				"GPIO213_AG13", /* DAT2 */
+				"GPIO214_AH15"; /* DAT3 */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		sdi1_sleep_mode: sdi1_sleep {
+			sleep_cfg1 {
+				pins = "GPIO208_AH16"; /* CLK */
+				ste,config = <&slpm_out_lo_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins =
+				"GPIO209_AG15", /* FBCLK */
+				"GPIO210_AJ15", /* CMD */
+				"GPIO211_AG14", /* DAT0 */
+				"GPIO212_AF13", /* DAT1 */
+				"GPIO213_AG13", /* DAT2 */
+				"GPIO214_AH15"; /* DAT3 */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
+	};
+
+	sdi2 {
+		/* This is the eMMC 8 bits wide, usually PoP eMMC */
+		sdi2_default_mode: sdi2_default {
+			default_mux {
+				function = "mc2";
+				groups = "mc2_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO128_A5"; /* CLK */
+				ste,config = <&out_lo>;
+			};
+			default_cfg2 {
+				pins = "GPIO130_C8"; /* FBCLK */
+				ste,config = <&in_nopull>;
+			};
+			default_cfg3 {
+				pins =
+				"GPIO129_B4", /* CMD */
+				"GPIO131_A12", /* DAT0 */
+				"GPIO132_C10", /* DAT1 */
+				"GPIO133_B10", /* DAT2 */
+				"GPIO134_B9", /* DAT3 */
+				"GPIO135_A9", /* DAT4 */
+				"GPIO136_C7", /* DAT5 */
+				"GPIO137_A7", /* DAT6 */
+				"GPIO138_C5"; /* DAT7 */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		sdi2_sleep_mode: sdi2_sleep {
+			sleep_cfg1 {
+				pins = "GPIO128_A5"; /* CLK */
+				ste,config = <&out_lo_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins =
+				"GPIO130_C8", /* FBCLK */
+				"GPIO129_B4"; /* CMD */
+				ste,config = <&in_wkup_pdis_en>;
+			};
+			sleep_cfg3 {
+				pins =
+				"GPIO131_A12", /* DAT0 */
+				"GPIO132_C10", /* DAT1 */
+				"GPIO133_B10", /* DAT2 */
+				"GPIO134_B9", /* DAT3 */
+				"GPIO135_A9", /* DAT4 */
+				"GPIO136_C7", /* DAT5 */
+				"GPIO137_A7", /* DAT6 */
+				"GPIO138_C5"; /* DAT7 */
+				ste,config = <&in_wkup_pdis>;
+			};
+		};
+	};
+
+	sdi4 {
+		/* This is the eMMC 8 bits wide, usually PCB-mounted eMMC */
+		sdi4_default_mode: sdi4_default {
+			default_mux {
+				function = "mc4";
+				groups = "mc4_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO203_AE23"; /* CLK */
+				ste,config = <&out_lo>;
+			};
+			default_cfg2 {
+				pins = "GPIO202_AF25"; /* FBCLK */
+				ste,config = <&in_nopull>;
+			};
+			default_cfg3 {
+				pins =
+				"GPIO201_AF24", /* CMD */
+				"GPIO200_AH26", /* DAT0 */
+				"GPIO199_AH23", /* DAT1 */
+				"GPIO198_AG25", /* DAT2 */
+				"GPIO197_AH24", /* DAT3 */
+				"GPIO207_AJ23", /* DAT4 */
+				"GPIO206_AG24", /* DAT5 */
+				"GPIO205_AG23", /* DAT6 */
+				"GPIO204_AF23"; /* DAT7 */
+				ste,config = <&in_pu>;
+			};
+		};
+
+		sdi4_sleep_mode: sdi4_sleep {
+			sleep_cfg1 {
+				pins = "GPIO203_AE23"; /* CLK */
+				ste,config = <&out_lo_wkup_pdis>;
+			};
+			sleep_cfg2 {
+				pins =
+				"GPIO202_AF25", /* FBCLK */
+				"GPIO201_AF24", /* CMD */
+				"GPIO200_AH26", /* DAT0 */
+				"GPIO199_AH23", /* DAT1 */
+				"GPIO198_AG25", /* DAT2 */
+				"GPIO197_AH24", /* DAT3 */
+				"GPIO207_AJ23", /* DAT4 */
+				"GPIO206_AG24", /* DAT5 */
+				"GPIO205_AG23", /* DAT6 */
+				"GPIO204_AF23"; /* DAT7 */
+				ste,config = <&slpm_in_wkup_pdis>;
+			};
+		};
+	};
+
+	/*
+	 * Multi-rate serial ports (MSPs) - MSP3 output is internal and
+	 * cannot be muxed onto any pins.
+	 */
+	msp0 {
+		msp0_default_mode: msp0_default {
+			default_msp0_mux {
+				function = "msp0";
+				groups = "msp0txrx_a_1", "msp0tfstck_a_1";
+			};
+			default_msp0_cfg {
+				pins =
+				"GPIO12_AC4", /* TXD */
+				"GPIO15_AC3", /* RXD */
+				"GPIO13_AF3", /* TFS */
+				"GPIO14_AE3"; /* TCK */
+				ste,config = <&in_nopull>;
+			};
+		};
+	};
+
+	msp1 {
+		msp1_default_mode: msp1_default {
+			default_mux {
+				function = "msp1";
+				groups = "msp1txrx_a_1", "msp1_a_1";
+			};
+			default_cfg1 {
+				pins = "GPIO33_AF2";
+				ste,config = <&out_lo>;
+			};
+			default_cfg2 {
+				pins =
+				"GPIO34_AE1",
+				"GPIO35_AE2",
+				"GPIO36_AG2";
+				ste,config = <&in_nopull>;
+			};
+		};
+	};
+
+	msp2 {
+		msp2_default_mode: msp2_default {
+			/* MSP2 usually used for HDMI audio */
+			default_mux {
+				function = "msp2";
+				groups = "msp2_a_1";
+			};
+			default_cfg1 {
+				pins =
+				"GPIO193_AH27", /* TXD */
+				"GPIO194_AF27", /* TCK */
+				"GPIO195_AG28"; /* TFS */
+				ste,config = <&in_pd>;
+			};
+			default_cfg2 {
+				pins = "GPIO196_AG26"; /* RXD */
+				ste,config = <&out_lo>;
+			};
+		};
+	};
+
+	musb {
+		musb_default_mode: musb_default {
+			default_mux {
+				function = "usb";
+				groups = "usb_a_1";
+			};
+			default_cfg1 {
+				pins =
+				"GPIO256_AF28", /* NXT */
+				"GPIO258_AD29", /* XCLK */
+				"GPIO259_AC29", /* DIR */
+				"GPIO260_AD28", /* DAT7 */
+				"GPIO261_AD26", /* DAT6 */
+				"GPIO262_AE26", /* DAT5 */
+				"GPIO263_AG29", /* DAT4 */
+				"GPIO264_AE27", /* DAT3 */
+				"GPIO265_AD27", /* DAT2 */
+				"GPIO266_AC28", /* DAT1 */
+				"GPIO267_AC27"; /* DAT0 */
+				ste,config = <&in_nopull>;
+			};
+			default_cfg2 {
+				pins = "GPIO257_AE29"; /* STP */
+				ste,config = <&out_hi>;
+			};
+		};
+
+		musb_sleep_mode: musb_sleep {
+			sleep_cfg1 {
+				pins =
+				"GPIO256_AF28", /* NXT */
+				"GPIO258_AD29", /* XCLK */
+				"GPIO259_AC29"; /* DIR */
+				ste,config = <&slpm_wkup_pdis_en>;
+			};
+			sleep_cfg2 {
+				pins = "GPIO257_AE29"; /* STP */
+				ste,config = <&slpm_out_hi_wkup_pdis>;
+			};
+			sleep_cfg3 {
+				pins =
+				"GPIO260_AD28", /* DAT7 */
+				"GPIO261_AD26", /* DAT6 */
+				"GPIO262_AE26", /* DAT5 */
+				"GPIO263_AG29", /* DAT4 */
+				"GPIO264_AE27", /* DAT3 */
+				"GPIO265_AD27", /* DAT2 */
+				"GPIO266_AC28", /* DAT1 */
+				"GPIO267_AC27"; /* DAT0 */
+				ste,config = <&slpm_in_wkup_pdis_en>;
+			};
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi b/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi
index 2c382d274ff6..434fa6baf71f 100644
--- a/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi
+++ b/arch/arm/boot/dts/ste-href-family-pinctrl.dtsi
@@ -3,212 +3,11 @@
  * Copyright 2013 Linaro Ltd.
  */
 
-#include "ste-nomadik-pinctrl.dtsi"
+#include "ste-dbx5x0-pinctrl.dtsi"
 
 / {
 	soc {
 		pinctrl {
-			/* Settings for all UART default and sleep states */
-			uart0 {
-				uart0_default_mode: uart0_default {
-					default_mux {
-						function = "u0";
-						groups = "u0_a_1";
-					};
-					default_cfg1 {
-						pins = "GPIO0_AJ5", "GPIO2_AH4"; /* CTS+RXD */
-						ste,config = <&in_pu>;
-					};
-
-					default_cfg2 {
-						pins = "GPIO1_AJ3", "GPIO3_AH3"; /* RTS+TXD */
-						ste,config = <&out_hi>;
-					};
-				};
-
-				uart0_sleep_mode: uart0_sleep {
-					sleep_cfg1 {
-						pins = "GPIO0_AJ5", "GPIO2_AH4"; /* CTS+RXD */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-
-					sleep_cfg2 {
-						pins = "GPIO1_AJ3"; /* RTS */
-						ste,config = <&slpm_out_hi_wkup_pdis>;
-					};
-
-					sleep_cfg3 {
-						pins = "GPIO3_AH3"; /* TXD */
-						ste,config = <&slpm_out_wkup_pdis>;
-					};
-				};
-			};
-
-			uart1 {
-				uart1_default_mode: uart1_default {
-					default_mux {
-						function = "u1";
-						groups = "u1rxtx_a_1";
-					};
-					default_cfg1 {
-						pins = "GPIO4_AH6"; /* RXD */
-						ste,config = <&in_pu>;
-					};
-
-					default_cfg2 {
-						pins = "GPIO5_AG6"; /* TXD */
-						ste,config = <&out_hi>;
-					};
-				};
-
-				uart1_sleep_mode: uart1_sleep {
-					sleep_cfg1 {
-						pins = "GPIO4_AH6"; /* RXD */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-
-					sleep_cfg2 {
-						pins = "GPIO5_AG6"; /* TXD */
-						ste,config = <&slpm_out_wkup_pdis>;
-					};
-				};
-			};
-
-			uart2 {
-				uart2_default_mode: uart2_default {
-					default_mux {
-						function = "u2";
-						groups = "u2rxtx_c_1";
-					};
-					default_cfg1 {
-						pins = "GPIO29_W2"; /* RXD */
-						ste,config = <&in_pu>;
-					};
-
-					default_cfg2 {
-						pins = "GPIO30_W3"; /* TXD */
-						ste,config = <&out_hi>;
-					};
-				};
-
-				uart2_sleep_mode: uart2_sleep {
-					sleep_cfg1 {
-						pins = "GPIO29_W2"; /* RXD */
-						ste,config = <&in_wkup_pdis>;
-					};
-
-					sleep_cfg2 {
-						pins = "GPIO30_W3"; /* TXD */
-						ste,config = <&out_wkup_pdis>;
-					};
-				};
-			};
-
-			/* Settings for all I2C default and sleep states */
-			i2c0 {
-				i2c0_default_mode: i2c_default {
-					default_mux {
-						function = "i2c0";
-						groups = "i2c0_a_1";
-					};
-					default_cfg1 {
-						pins = "GPIO147_C15", "GPIO148_B16"; /* SDA/SCL */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				i2c0_sleep_mode: i2c_sleep {
-					sleep_cfg1 {
-						pins = "GPIO147_C15", "GPIO148_B16"; /* SDA/SCL */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-				};
-			};
-
-			i2c1 {
-				i2c1_default_mode: i2c_default {
-					default_mux {
-						function = "i2c1";
-						groups = "i2c1_b_2";
-					};
-					default_cfg1 {
-						pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				i2c1_sleep_mode: i2c_sleep {
-					sleep_cfg1 {
-						pins = "GPIO16_AD3", "GPIO17_AD4"; /* SDA/SCL */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-				};
-			};
-
-			i2c2 {
-				i2c2_default_mode: i2c_default {
-					default_mux {
-						function = "i2c2";
-						groups = "i2c2_b_2";
-					};
-					default_cfg1 {
-						pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				i2c2_sleep_mode: i2c_sleep {
-					sleep_cfg1 {
-						pins = "GPIO10_AF5", "GPIO11_AG4"; /* SDA/SCL */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-				};
-			};
-
-			i2c3 {
-				i2c3_default_mode: i2c_default {
-					default_mux {
-						function = "i2c3";
-						groups = "i2c3_c_2";
-					};
-					default_cfg1 {
-						pins = "GPIO229_AG7", "GPIO230_AF7"; /* SDA/SCL */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				i2c3_sleep_mode: i2c_sleep {
-					sleep_cfg1 {
-						pins = "GPIO229_AG7", "GPIO230_AF7"; /* SDA/SCL */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-				};
-			};
-
-			/*
-			 * Activating I2C4 will conflict with UART1 about the same pins so do not
-			 * enable I2C4 and UART1 at the same time.
-			 */
-			i2c4 {
-				i2c4_default_mode: i2c_default {
-					default_mux {
-						function = "i2c4";
-						groups = "i2c4_b_1";
-					};
-					default_cfg1 {
-						pins = "GPIO4_AH6", "GPIO5_AG6"; /* SDA/SCL */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				i2c4_sleep_mode: i2c_sleep {
-					sleep_cfg1 {
-						pins = "GPIO4_AH6", "GPIO5_AG6"; /* SDA/SCL */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-				};
-			};
-
 			/* Settings for all SPI default and sleep states */
 			spi2 {
 				spi2_default_mode: spi_default {
@@ -270,335 +69,6 @@
 				};
 			};
 
-			/* Settings for all MMC/SD/SDIO default and sleep states */
-			sdi0 {
-				/* This is the external SD card slot, 4 bits wide */
-				sdi0_default_mode: sdi0_default {
-					default_mux {
-						function = "mc0";
-						groups = "mc0_a_1";
-					};
-					default_cfg1 {
-						pins =
-						"GPIO18_AC2", /* CMDDIR */
-						"GPIO19_AC1", /* DAT0DIR */
-						"GPIO20_AB4"; /* DAT2DIR */
-						ste,config = <&out_hi>;
-					};
-					default_cfg2 {
-						pins = "GPIO22_AA3"; /* FBCLK */
-						ste,config = <&in_nopull>;
-					};
-					default_cfg3 {
-						pins = "GPIO23_AA4"; /* CLK */
-						ste,config = <&out_lo>;
-					};
-					default_cfg4 {
-						pins =
-						"GPIO24_AB2", /* CMD */
-						"GPIO25_Y4", /* DAT0 */
-						"GPIO26_Y2", /* DAT1 */
-						"GPIO27_AA2", /* DAT2 */
-						"GPIO28_AA1"; /* DAT3 */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				sdi0_sleep_mode: sdi0_sleep {
-					sleep_cfg1 {
-						pins =
-						"GPIO18_AC2", /* CMDDIR */
-						"GPIO19_AC1", /* DAT0DIR */
-						"GPIO20_AB4"; /* DAT2DIR */
-						ste,config = <&slpm_out_hi_wkup_pdis>;
-					};
-					sleep_cfg2 {
-						pins =
-						"GPIO22_AA3", /* FBCLK */
-						"GPIO24_AB2", /* CMD */
-						"GPIO25_Y4", /* DAT0 */
-						"GPIO26_Y2", /* DAT1 */
-						"GPIO27_AA2", /* DAT2 */
-						"GPIO28_AA1"; /* DAT3 */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-					sleep_cfg3 {
-						pins = "GPIO23_AA4"; /* CLK */
-						ste,config = <&slpm_out_lo_wkup_pdis>;
-					};
-				};
-			};
-
-			sdi1 {
-				/* This is the WLAN SDIO 4 bits wide */
-				sdi1_default_mode: sdi1_default {
-					default_mux {
-						function = "mc1";
-						groups = "mc1_a_1";
-					};
-					default_cfg1 {
-						pins = "GPIO208_AH16"; /* CLK */
-						ste,config = <&out_lo>;
-					};
-					default_cfg2 {
-						pins = "GPIO209_AG15"; /* FBCLK */
-						ste,config = <&in_nopull>;
-					};
-					default_cfg3 {
-						pins =
-						"GPIO210_AJ15", /* CMD */
-						"GPIO211_AG14", /* DAT0 */
-						"GPIO212_AF13", /* DAT1 */
-						"GPIO213_AG13", /* DAT2 */
-						"GPIO214_AH15"; /* DAT3 */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				sdi1_sleep_mode: sdi1_sleep {
-					sleep_cfg1 {
-						pins = "GPIO208_AH16"; /* CLK */
-						ste,config = <&slpm_out_lo_wkup_pdis>;
-					};
-					sleep_cfg2 {
-						pins =
-						"GPIO209_AG15", /* FBCLK */
-						"GPIO210_AJ15", /* CMD */
-						"GPIO211_AG14", /* DAT0 */
-						"GPIO212_AF13", /* DAT1 */
-						"GPIO213_AG13", /* DAT2 */
-						"GPIO214_AH15"; /* DAT3 */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-				};
-			};
-
-			sdi2 {
-				/* This is the eMMC 8 bits wide, usually PoP eMMC */
-				sdi2_default_mode: sdi2_default {
-					default_mux {
-						function = "mc2";
-						groups = "mc2_a_1";
-					};
-					default_cfg1 {
-						pins = "GPIO128_A5"; /* CLK */
-						ste,config = <&out_lo>;
-					};
-					default_cfg2 {
-						pins = "GPIO130_C8"; /* FBCLK */
-						ste,config = <&in_nopull>;
-					};
-					default_cfg3 {
-						pins =
-						"GPIO129_B4", /* CMD */
-						"GPIO131_A12", /* DAT0 */
-						"GPIO132_C10", /* DAT1 */
-						"GPIO133_B10", /* DAT2 */
-						"GPIO134_B9", /* DAT3 */
-						"GPIO135_A9", /* DAT4 */
-						"GPIO136_C7", /* DAT5 */
-						"GPIO137_A7", /* DAT6 */
-						"GPIO138_C5"; /* DAT7 */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				sdi2_sleep_mode: sdi2_sleep {
-					sleep_cfg1 {
-						pins = "GPIO128_A5"; /* CLK */
-						ste,config = <&out_lo_wkup_pdis>;
-					};
-					sleep_cfg2 {
-						pins =
-						"GPIO130_C8", /* FBCLK */
-						"GPIO129_B4"; /* CMD */
-						ste,config = <&in_wkup_pdis_en>;
-					};
-					sleep_cfg3 {
-						pins =
-						"GPIO131_A12", /* DAT0 */
-						"GPIO132_C10", /* DAT1 */
-						"GPIO133_B10", /* DAT2 */
-						"GPIO134_B9", /* DAT3 */
-						"GPIO135_A9", /* DAT4 */
-						"GPIO136_C7", /* DAT5 */
-						"GPIO137_A7", /* DAT6 */
-						"GPIO138_C5"; /* DAT7 */
-						ste,config = <&in_wkup_pdis>;
-					};
-				};
-			};
-
-			sdi4 {
-				/* This is the eMMC 8 bits wide, usually PCB-mounted eMMC */
-				sdi4_default_mode: sdi4_default {
-					default_mux {
-						function = "mc4";
-						groups = "mc4_a_1";
-					};
-					default_cfg1 {
-						pins = "GPIO203_AE23"; /* CLK */
-						ste,config = <&out_lo>;
-					};
-					default_cfg2 {
-						pins = "GPIO202_AF25"; /* FBCLK */
-						ste,config = <&in_nopull>;
-					};
-					default_cfg3 {
-						pins =
-						"GPIO201_AF24", /* CMD */
-						"GPIO200_AH26", /* DAT0 */
-						"GPIO199_AH23", /* DAT1 */
-						"GPIO198_AG25", /* DAT2 */
-						"GPIO197_AH24", /* DAT3 */
-						"GPIO207_AJ23", /* DAT4 */
-						"GPIO206_AG24", /* DAT5 */
-						"GPIO205_AG23", /* DAT6 */
-						"GPIO204_AF23"; /* DAT7 */
-						ste,config = <&in_pu>;
-					};
-				};
-
-				sdi4_sleep_mode: sdi4_sleep {
-					sleep_cfg1 {
-						pins = "GPIO203_AE23"; /* CLK */
-						ste,config = <&out_lo_wkup_pdis>;
-					};
-					sleep_cfg2 {
-						pins =
-						"GPIO202_AF25", /* FBCLK */
-						"GPIO201_AF24", /* CMD */
-						"GPIO200_AH26", /* DAT0 */
-						"GPIO199_AH23", /* DAT1 */
-						"GPIO198_AG25", /* DAT2 */
-						"GPIO197_AH24", /* DAT3 */
-						"GPIO207_AJ23", /* DAT4 */
-						"GPIO206_AG24", /* DAT5 */
-						"GPIO205_AG23", /* DAT6 */
-						"GPIO204_AF23"; /* DAT7 */
-						ste,config = <&slpm_in_wkup_pdis>;
-					};
-				};
-			};
-
-			/*
-			 * Multi-rate serial ports (MSPs) - MSP3 output is internal and
-			 * cannot be muxed onto any pins.
-			 */
-			msp0 {
-				msp0_default_mode: msp0_default {
-					default_msp0_mux {
-						function = "msp0";
-						groups = "msp0txrx_a_1", "msp0tfstck_a_1";
-					};
-					default_msp0_cfg {
-						pins =
-						"GPIO12_AC4", /* TXD */
-						"GPIO15_AC3", /* RXD */
-						"GPIO13_AF3", /* TFS */
-						"GPIO14_AE3"; /* TCK */
-						ste,config = <&in_nopull>;
-					};
-				};
-			};
-
-			msp1 {
-				msp1_default_mode: msp1_default {
-					default_mux {
-						function = "msp1";
-						groups = "msp1txrx_a_1", "msp1_a_1";
-					};
-					default_cfg1 {
-						pins = "GPIO33_AF2";
-						ste,config = <&out_lo>;
-					};
-					default_cfg2 {
-						pins =
-						"GPIO34_AE1",
-						"GPIO35_AE2",
-						"GPIO36_AG2";
-						ste,config = <&in_nopull>;
-					};
-
-				};
-			};
-
-			msp2 {
-				msp2_default_mode: msp2_default {
-					/* MSP2 usually used for HDMI audio */
-					default_mux {
-						function = "msp2";
-						groups = "msp2_a_1";
-					};
-					default_cfg1 {
-						pins =
-						"GPIO193_AH27", /* TXD */
-						"GPIO194_AF27", /* TCK */
-						"GPIO195_AG28"; /* TFS */
-						ste,config = <&in_pd>;
-					};
-					default_cfg2 {
-						pins = "GPIO196_AG26"; /* RXD */
-						ste,config = <&out_lo>;
-					};
-				};
-			};
-
-
-			musb {
-				musb_default_mode: musb_default {
-					default_mux {
-						function = "usb";
-						groups = "usb_a_1";
-					};
-					default_cfg1 {
-						pins =
-						"GPIO256_AF28", /* NXT */
-						"GPIO258_AD29", /* XCLK */
-						"GPIO259_AC29", /* DIR */
-						"GPIO260_AD28", /* DAT7 */
-						"GPIO261_AD26", /* DAT6 */
-						"GPIO262_AE26", /* DAT5 */
-						"GPIO263_AG29", /* DAT4 */
-						"GPIO264_AE27", /* DAT3 */
-						"GPIO265_AD27", /* DAT2 */
-						"GPIO266_AC28", /* DAT1 */
-						"GPIO267_AC27"; /* DAT0 */
-						ste,config = <&in_nopull>;
-					};
-					default_cfg2 {
-						pins = "GPIO257_AE29"; /* STP */
-						ste,config = <&out_hi>;
-					};
-				};
-
-				musb_sleep_mode: musb_sleep {
-					sleep_cfg1 {
-						pins =
-						"GPIO256_AF28", /* NXT */
-						"GPIO258_AD29", /* XCLK */
-						"GPIO259_AC29"; /* DIR */
-						ste,config = <&slpm_wkup_pdis_en>;
-					};
-					sleep_cfg2 {
-						pins = "GPIO257_AE29"; /* STP */
-						ste,config = <&slpm_out_hi_wkup_pdis>;
-					};
-					sleep_cfg3 {
-						pins =
-						"GPIO260_AD28", /* DAT7 */
-						"GPIO261_AD26", /* DAT6 */
-						"GPIO262_AE26", /* DAT5 */
-						"GPIO263_AG29", /* DAT4 */
-						"GPIO264_AE27", /* DAT3 */
-						"GPIO265_AD27", /* DAT2 */
-						"GPIO266_AC28", /* DAT1 */
-						"GPIO267_AC27"; /* DAT0 */
-						ste,config = <&slpm_in_wkup_pdis_en>;
-					};
-				};
-			};
-
 			mcde {
 				lcd_default_mode: lcd_default {
 					default_mux1 {
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
