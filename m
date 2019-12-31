Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E6D12D8D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 14:08:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8JP/PXvTiBkHmJydK7V7o4jbC8z5lKP/BHvNZ184+w=; b=agyYMynw/5t8Hc
	a8lOYmKFRh5mp4UAMXv9Cpn/Iw9PrQZh4YkQq5J9A62eu0yU2dIgAS4bM2MWkcosWQE4SgcqQkdrY
	jSvIL7PgpMlIrHFLO2S+nqikQ7hGNnKe6uj9Th3H6F/bK3NwsWJ+ZR7icHrTbfN73Jc5LDHpXQ1Nd
	J8sFf/PT00GveEI22rUnmMntnacXQFXOEyMbSif5aNm6ToVituWjQrf768ipgsa6eh6tikU4k9qV7
	Dw5ojIXqArr0qYB381e6ctiq6l3rHRPNQJt2IQQDxh30tTzuKtPdbPio9XXwei26865GNL/v7MWCF
	W//zhrq8SQNa96bK4aJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imHGB-0007Yp-3e; Tue, 31 Dec 2019 13:08:31 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imHE6-0005y5-NY
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Dec 2019 13:06:24 +0000
Received: by mail-pj1-x1043.google.com with SMTP id r67so1179317pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Dec 2019 05:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WXe17pB2YX4+a+B1E8N8lDCTkuNeVa3zzzOGyzeuSys=;
 b=Xf+YTt7DfVvRCedUsAinpV3gLCg7SQWb27vKaMoWf0AxV5Ig7mLEyrsAaBoKisMnpo
 kGQVw1Tzx4RxuNcQ8CW292dVNXAccfNluNAT1XJL9XHIe1o5EriOTeHp6Z/Izy71lKNf
 ieLQ7eq/kP+w1W9qC/RIQ3WAHWZG3kTzWynY8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WXe17pB2YX4+a+B1E8N8lDCTkuNeVa3zzzOGyzeuSys=;
 b=COuMmhuUa96+DRS72hgGwFQET9Nl5pk1XW+Ge6uj8KvzPExvEgZviQSP75s0Z6wFMC
 pHvXWhIklYuY/b8xO5EF3HOWtC8KXaNADbrTRFa7Zk0AWjftZlaC96Q80NuSM8pjhH1x
 BBLxgT0sMvkAoAzt0qZW5VrlZeXJt9XSM3P165jbLai1wNYdsUChDpbpgmpnStGoQ+h7
 U5ZnuqBUDt99DFQgd0mBMANBAlY6u2q6PRHpysDuTIJo/UI3ZA/1ARiGJx9ufP8PM09W
 5Erz2KiuvsP01HxvTDscKgofl8TxNhs4sQSqfT6ShKaRX5fVWsuMKyt0nR4QWu1Eoue2
 mG3g==
X-Gm-Message-State: APjAAAW3AVYrb6jbVlKT3bLl7StqUdX00dM9TfvAHfXu3UV+6w+dR8Q1
 f2aV/LJ61wq/Ex1ojRJHmYg5wQ==
X-Google-Smtp-Source: APXvYqwgs9Bcy+Z1Q95DxDdQGebtt2lr2Jj5jnrCw2RqXNwEkWy7kQOj9wu1KDy5cwYGG9UM+31XiA==
X-Received: by 2002:a17:90a:e657:: with SMTP id
 ep23mr5986713pjb.105.1577797582087; 
 Tue, 31 Dec 2019 05:06:22 -0800 (PST)
Received: from localhost.localdomain ([49.206.202.115])
 by smtp.gmail.com with ESMTPSA id i3sm55204089pfg.94.2019.12.31.05.06.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Dec 2019 05:06:21 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 8/9] ARM: dts: sun8i: r40: Add MIPI DSI pipeline
Date: Tue, 31 Dec 2019 18:35:27 +0530
Message-Id: <20191231130528.20669-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191231130528.20669-1-jagan@amarulasolutions.com>
References: <20191231130528.20669-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_050622_885892_55A17F27 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MIPI DSI pipeline for Allwinner R40.

Unlike conventional Display pipeline in allwinner, R40 have
TCON TCOP which would interact various block like muxes,
tcon lcd, tcon_tv for better pipeline fitting.

For MIPI DSI pipeline, we have to configure the tcon_lcd0
block which would interact with tcon_top for upper pipeline
connections and dsi block for lower pipeline connections.

So, this patch created that pipeline by adding new nodes
for tcon_lcd0, dsi, dphy and connet them to make proper
pipeline fitting.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- drop clock-names in dsi node

 arch/arm/boot/dts/sun8i-r40.dtsi | 72 ++++++++++++++++++++++++++++++++
 1 file changed, 72 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 3faa35d43afa..4c61e93d9a0b 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -628,6 +628,7 @@
 
 					tcon_top_mixer0_out_tcon_lcd0: endpoint@0 {
 						reg = <0>;
+						remote-endpoint = <&tcon_lcd0_in_tcon_top_mixer0>;
 					};
 
 					tcon_top_mixer0_out_tcon_lcd1: endpoint@1 {
@@ -706,6 +707,45 @@
 			};
 		};
 
+		tcon_lcd0: lcd-controller@1c71000 {
+			compatible = "allwinner,sun8i-r40-tcon-lcd";
+			reg = <0x01c71000 0x1000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_TCON_LCD0>, <&ccu CLK_TCON_LCD0>;
+			clock-names = "ahb", "tcon-ch0";
+			clock-output-names = "tcon-pixel-clock";
+			resets = <&ccu RST_BUS_TCON_LCD0>, <&ccu RST_BUS_LVDS>;
+			reset-names = "lcd", "lvds";
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				tcon_lcd0_in: port@0 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <0>;
+
+					tcon_lcd0_in_tcon_top_mixer0: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&tcon_top_mixer0_out_tcon_lcd0>;
+					};
+				};
+
+				tcon_lcd0_out: port@1 {
+					#address-cells = <1>;
+					#size-cells = <0>;
+					reg = <1>;
+
+					tcon_lcd0_out_dsi_out: endpoint@1 {
+						reg = <1>;
+						remote-endpoint = <&dsi_in_tcon_lcd0_out>;
+					};
+				};
+			};
+		};
+
 		tcon_tv0: lcd-controller@1c73000 {
 			compatible = "allwinner,sun8i-r40-tcon-tv";
 			reg = <0x01c73000 0x1000>;
@@ -803,6 +843,38 @@
 			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_HIGH)>;
 		};
 
+		dsi: dsi@1ca0000 {
+			compatible = "allwinner,sun8i-r40-mipi-dsi",
+				     "allwinner,sun50i-a64-mipi-dsi";
+			reg = <0x01ca0000 0x1000>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>;
+			resets = <&ccu RST_BUS_MIPI_DSI>;
+			phys = <&dphy>;
+			phy-names = "dphy";
+			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port {
+				dsi_in_tcon_lcd0_out: endpoint {
+					remote-endpoint = <&tcon_lcd0_out_dsi_out>;
+				};
+			};
+		};
+
+		dphy: d-phy@1ca1000 {
+			compatible = "allwinner,sun8i-r40-mipi-dphy",
+				     "allwinner,sun6i-a31-mipi-dphy";
+			reg = <0x01ca1000 0x1000>;
+			clocks = <&ccu CLK_BUS_MIPI_DSI>,
+				 <&tcon_top CLK_TCON_TOP_DSI>;
+			clock-names = "bus", "mod";
+			resets = <&ccu RST_BUS_MIPI_DSI>;
+			status = "disabled";
+			#phy-cells = <0>;
+		};
+
 		hdmi: hdmi@1ee0000 {
 			compatible = "allwinner,sun8i-r40-dw-hdmi",
 				     "allwinner,sun8i-a83t-dw-hdmi";
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
