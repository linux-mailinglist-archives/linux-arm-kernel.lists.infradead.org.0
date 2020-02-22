Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFC3169053
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 17:25:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rWoxjVsSUyoDgYhp6KclXcqljNDaaN2uF/T6fr7xJaM=; b=CBGUAbkLpYUofjyidKXZvQeLO5
	Fc0x66DhehakO0OsE5f2ZT2nX4lf+AbjOnPYW/u9GT5cgcz9HDmihcxBV9lE16f83TVUkLMvMrkjN
	+mA5Q1j+OZa9zevipmvSykMh/DQVpIJNseBQYfN42gFd8uWXDG7VZ0fHjx90RUuwF/xQgpCGB3VSG
	YORwxCjuEi+/S/jTbDkP1mA3zFfSDp3zz8gta2MDgJObpkOOLPNCbV/TqOgSt3H6+vSO3CQ4HqGnf
	HrsRkmsTv3xTJrJRTymEA+XrJElsUge9t2gDXrcFeIekPFzqQHvbhLffNxihnhOmqIndlrAir5cet
	lYbwOBlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5XbH-0001B7-DK; Sat, 22 Feb 2020 16:25:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Xac-0000dk-8x
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 16:25:16 +0000
Received: by mail-pf1-x442.google.com with SMTP id x185so2953974pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 22 Feb 2020 08:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ToHubF4KECCMrwSTfQauUnB07RA2vKU+QmGUx0zj7dk=;
 b=DCeJQWqMYEktzqwzYPWXrCtBjxlTN8VoLK6rTnVSJ+DyThaYmZG4zMy3J0uAcv5Xl6
 NTFZV5I50yPOniS5gf0xWJH2PZ+CmoCgCyT0RGbxaOHZBpXWkLCoD58p/vpgq9wR7s6r
 vJwrEd4Qdlr+awqgO1zD6srjSxbvwRSNN/oYR4kEz8evxlBLsVi5CeOULy/e5DkSgF/b
 1wrr6XV6qrvNLX4R699w4FgeGpTYIIqQoIEH34dlqPzw2pbaP9tiidjLStIO1d5eAO3d
 KUlN4/nws3fNhI+lLEsiGP+3hu+n5gtOQgjkxmo4yB6uOAVRNUDoMnlaqrhHzsLUZXSk
 QVkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ToHubF4KECCMrwSTfQauUnB07RA2vKU+QmGUx0zj7dk=;
 b=RlE5RewPuhV3cWvzFJzmKJB36Sp6Nbp7tjLQ07m27EccX2qKmbOfmzT/izxxitFOmt
 Wb7/vd0k5xfoHLt/lsP/AXHobnd1LWf/1ZBb9C02VlLwc1N9zZbr8M7NlHA+1Bl8rmD5
 cgKQdjTnIiVSV7AjN+7OFVJeKpQ2uIl0cPrSvImN7E4iee47J2qve9em5FoM3OtFOSm8
 jkCsT87GyIQDKofmt/JRWn7jOe0J1H0n99ddHE1k9Uqr7iQSgRE4D9LGiF0rtCgpvDav
 aM0REewvdlJpy7yNvt4kb2KCnrrkgtunaX9U1sNdE2VeMmR7SJoJANLrX4JJeRvb+3ZX
 jl/w==
X-Gm-Message-State: APjAAAUXEnYF2fvUPrj1TAgks+rX+0uNMnh0Q39XkJUMNkGSLXnjF9Hm
 BdeYGk7Y8ZMBfLdG5z44VVBn
X-Google-Smtp-Source: APXvYqxqECy1swcSUk5Q/XFynMYjNqC7uwTEp6QMHAMY0oAVrNhg714YYtW+z6ull/nvzMusU+x6RQ==
X-Received: by 2002:a63:120f:: with SMTP id h15mr45746851pgl.235.1582388712857; 
 Sat, 22 Feb 2020 08:25:12 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:801:b38c:89e8:305c:23c4:b77f])
 by smtp.gmail.com with ESMTPSA id q17sm6851296pfg.123.2020.02.22.08.25.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 08:25:12 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: matthias.bgg@gmail.com,
	robh+dt@kernel.org
Subject: [PATCH 2/4] arm64: dts: mediatek: Add I2C support for MT6797 SoC
Date: Sat, 22 Feb 2020 21:54:42 +0530
Message-Id: <20200222162444.11590-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
References: <20200222162444.11590-1-manivannan.sadhasivam@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_082514_334004_CCB6FA05 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 adamboardman@gmail.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add I2C support for Mediatek MT6797 SoC. There are a total of 8 I2C
controllers in this SoC (2 being shared) and they are same as the
controllers present in MT6577 SoC. Hence, the driver support is added with
DT fallback method.

As per the datasheet, there are controllers with _imm prefix like i2c2_imm
and i2c3_imm. These appears to be in different memory regions but sharing
the same pins with i2c2 and i2c3 respectively. Since there is no clear
evidence of what they really are, I've adapted the numbering/naming scheme
from the downstream code by Mediatek.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt6797.dtsi | 220 +++++++++++++++++++++++
 1 file changed, 220 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt6797.dtsi b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
index 2b2a69c7567f..22f093960d27 100644
--- a/arch/arm64/boot/dts/mediatek/mt6797.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6797.dtsi
@@ -155,6 +155,62 @@
 					 <MT6797_GPIO233__FUNC_UTXD1>;
 			};
 		};
+
+		i2c0_pins_a: i2c0 {
+			pins0 {
+				pinmux = <MT6797_GPIO37__FUNC_SCL0_0>,
+					 <MT6797_GPIO38__FUNC_SDA0_0>;
+			};
+		};
+
+		i2c1_pins_a: i2c1 {
+			pins1 {
+				pinmux = <MT6797_GPIO55__FUNC_SCL1_0>,
+					 <MT6797_GPIO56__FUNC_SDA1_0>;
+			};
+		};
+
+		i2c2_pins_a: i2c2 {
+			pins2 {
+				pinmux = <MT6797_GPIO96__FUNC_SCL2_0>,
+					 <MT6797_GPIO95__FUNC_SDA2_0>;
+			};
+		};
+
+		i2c3_pins_a: i2c3 {
+			pins3 {
+				pinmux = <MT6797_GPIO75__FUNC_SDA3_0>,
+					 <MT6797_GPIO74__FUNC_SCL3_0>;
+			};
+		};
+
+		i2c4_pins_a: i2c4 {
+			pins4 {
+				pinmux = <MT6797_GPIO238__FUNC_SDA4_0>,
+					 <MT6797_GPIO239__FUNC_SCL4_0>;
+			};
+		};
+
+		i2c5_pins_a: i2c5 {
+			pins5 {
+				pinmux = <MT6797_GPIO240__FUNC_SDA5_0>,
+					 <MT6797_GPIO241__FUNC_SCL5_0>;
+			};
+		};
+
+		i2c6_pins_a: i2c6 {
+			pins6 {
+				pinmux = <MT6797_GPIO152__FUNC_SDA6_0>,
+					 <MT6797_GPIO151__FUNC_SCL6_0>;
+			};
+		};
+
+		i2c7_pins_a: i2c7 {
+			pins7 {
+				pinmux = <MT6797_GPIO154__FUNC_SDA7_0>,
+					 <MT6797_GPIO153__FUNC_SCL7_0>;
+			};
+		};
 	};
 
 	scpsys: scpsys@10006000 {
@@ -233,6 +289,170 @@
 		status = "disabled";
 	};
 
+	i2c0: i2c@11007000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <0>;
+		reg = <0 0x11007000 0 0x1000>,
+		      <0 0x11000100 0 0x80>;
+		interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C0>,
+			 <&infrasys CLK_INFRA_AP_DMA>;
+		clock-names = "main", "dma";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c1: i2c@11008000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <1>;
+		reg = <0 0x11008000 0 0x1000>,
+		      <0 0x11000180 0 0x80>;
+		interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C1>,
+			 <&infrasys CLK_INFRA_AP_DMA>;
+		clock-names = "main", "dma";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c8: i2c@11009000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <8>;
+		reg = <0 0x11009000 0 0x1000>,
+		      <0 0x11000200 0 0x80>;
+		interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C2>,
+			 <&infrasys CLK_INFRA_AP_DMA>,
+			 <&infrasys CLK_INFRA_I2C2_ARB>;
+		clock-names = "main", "dma", "arb";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c9: i2c@1100d000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <9>;
+		reg = <0 0x1100d000 0 0x1000>,
+		      <0 0x11000280 0 0x80>;
+		interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C3>,
+			 <&infrasys CLK_INFRA_AP_DMA>,
+			 <&infrasys CLK_INFRA_I2C3_ARB>;
+		clock-names = "main", "dma", "arb";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c6: i2c@1100e000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <6>;
+		reg = <0 0x1100e000 0 0x1000>,
+		      <0 0x11000500 0 0x80>;
+		interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C_APPM>,
+			 <&infrasys CLK_INFRA_AP_DMA>;
+		clock-names = "main", "dma";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c7: i2c@11010000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <7>;
+		reg = <0 0x11010000 0 0x1000>,
+		      <0 0x11000580 0 0x80>;
+		interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C_GPUPM>,
+			 <&infrasys CLK_INFRA_AP_DMA>;
+		clock-names = "main", "dma";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c4: i2c@11011000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <4>;
+		reg = <0 0x11011000 0 0x1000>,
+		      <0 0x11000300 0 0x80>;
+		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C4>,
+			 <&infrasys CLK_INFRA_AP_DMA>;
+		clock-names = "main", "dma";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c2: i2c@11013000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <2>;
+		reg = <0 0x11013000 0 0x1000>,
+		      <0 0x11000400 0 0x80>;
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C2_IMM>,
+			 <&infrasys CLK_INFRA_AP_DMA>,
+			 <&infrasys CLK_INFRA_I2C2_ARB>;
+		clock-names = "main", "dma", "arb";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c3: i2c@11014000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <3>;
+		reg = <0 0x11014000 0 0x1000>,
+		      <0 0x11000480 0 0x80>;
+		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C3_IMM>,
+			 <&infrasys CLK_INFRA_AP_DMA>,
+			 <&infrasys CLK_INFRA_I2C3_ARB>;
+		clock-names = "main", "dma", "arb";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
+	i2c5: i2c@1101c000 {
+		compatible = "mediatek,mt6797-i2c",
+			     "mediatek,mt6577-i2c";
+		id = <5>;
+		reg = <0 0x1101c000 0 0x1000>,
+		      <0 0x11000380 0 0x80>;
+		interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&infrasys CLK_INFRA_I2C5>,
+			 <&infrasys CLK_INFRA_AP_DMA>;
+		clock-names = "main", "dma";
+		clock-div = <10>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		status = "disabled";
+	};
+
 	mmsys: mmsys_config@14000000 {
 		compatible = "mediatek,mt6797-mmsys", "syscon";
 		reg = <0 0x14000000 0 0x1000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
