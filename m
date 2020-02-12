Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87E3015B3A2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 23:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rha4rynbYJU2UoDwaTrUvWFWcWd/pAIsUDd8SzxFOas=; b=FqTzMt/S38Qr8e
	FFnqhWUZC+kx9ON0PKBvj5kvokx69uvwW6ZRYeA9m8EOnKn7WlSI5gPbJW6/zDpu6BPnT9PKDvf3i
	2Vqxfcvo5FaigVzZZCSAwDceIchJYPknEJKPqMc/jiRXCQoAzVMIFmJg0gu0rVjYcuonFGX0AgI4X
	LGeS77ntn9l/KIO6RHOnoAPZ+A1WjLb0YqmHHbEy9rNbf3CVfEV5+lxKe2ZMskruIMsVbeLnzEfER
	djZM2JJeJNY4y9cdXGpV7oauAvcJLKNdoMHwDj2s+pBF53KZLdgDCzSYguIdZEbKdmpPGZ3b8M6fr
	W2k5Kj783ilpA2KBUzuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j20SC-0003bX-1p; Wed, 12 Feb 2020 22:25:56 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j20Rw-0003Ws-94
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 22:25:42 +0000
Received: by mail-lf1-x129.google.com with SMTP id v201so2732549lfa.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 14:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=P2sufO4LLXac8EpPRG82WEu62FbVXGdtrzG0LXHZeOc=;
 b=qWCgfyyaZcVlwnASB423iewuwd4fmtQcfKUkenO0oPI3pkWLGoRCTD9Fk/kaJW0CjH
 //r1Yth+Eqaq0+HtY38lAOhJQ69YyTEGFlnVRffyeb7AmMJdvsL9PELN35JM6nB2cKuy
 Y3cja1QMzIOqJxVK6+4lAHDuXG02HNegLzdn5G0ycXzutBpdU9qEPbU+H09ZGnSR6wE4
 X2OqusGjh1VDDNjsn2bsVIA2CLJ30WysxmJKeYafXTNFWGS3dHb7zOqcN1i/V0Ht2GGt
 KlMAhWNJShkvfwdlVpgEHu7/by0Jkq0c3SCAUr7SFH4lRfVFrFFBqjiUZobk1UOQcN1c
 90UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=P2sufO4LLXac8EpPRG82WEu62FbVXGdtrzG0LXHZeOc=;
 b=n5gPh+Vx/jQXc5LFBqROSoLCFW4FVHbVvTUAVY1nwfx049o5dG4yT3ookU+2SUVIbW
 EbH1b068HnocKWLqFCtq94zR8wOEF790EMrOyxsJKAf7knq9NGq0rT41sUdm3aof7lSF
 xLjG/UsXNqi+WoulJ2mlAmcaXPwi/pfRNVHpGr7iEIveIKBQOzP7d0P9t3okZOBbrlEl
 aVQLC11lVb2WY7jZxuZG0qJO3mz+JC2V38Ta1PJPt0vfomLHgQIbrRBH8QLZdMt8b68T
 NKVHxL2NeR4koCes7w99sZjipYFx81JtjZpNd+ENoCwKaBm4kFPvBsNQ23jDH/67iEPk
 zV4g==
X-Gm-Message-State: APjAAAWoSIKceMcRh4jb6e4IRvl/sVY0ilEPD2OUtR9yKrLnb5ZCygTi
 jCTtDPg0NFturwGPxLLAyanN5tBqkyNkjw==
X-Google-Smtp-Source: APXvYqzbSsCCf3UaK7PD3uxjPodMUnmbNyBSe6Xyg4gzlkdOwnEbZsG8gzDBCSwmJ7KSr76ZxQ1kNA==
X-Received: by 2002:ac2:523c:: with SMTP id i28mr7610773lfl.104.1581546337071; 
 Wed, 12 Feb 2020 14:25:37 -0800 (PST)
Received: from localhost.localdomain ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id 126sm188008lfm.38.2020.02.12.14.25.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 14:25:36 -0800 (PST)
From: andrey.lebedev@gmail.com
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/2] ARM: sun7i: dts: Add LVDS panel support on A20
Date: Thu, 13 Feb 2020 00:23:57 +0200
Message-Id: <20200212222355.17141-2-andrey.lebedev@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210195633.GA21832@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_142540_337080_2D0B292A 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrey Lebedev <andrey@lebedev.lt>, linux-sunxi@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Lebedev <andrey@lebedev.lt>

Define pins for LVDS channels 0 and 1, configure reset line for tcon0 and
provide sample LVDS panel, connected to tcon0.

Signed-off-by: Andrey Lebedev <andrey@lebedev.lt>
---
 arch/arm/boot/dts/sun7i-a20.dtsi | 45 +++++++++++++++++++++++++++++---
 1 file changed, 42 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 92b5be97085d..b05fdf8df32e 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -47,6 +47,7 @@
 #include <dt-bindings/dma/sun4i-a10.h>
 #include <dt-bindings/clock/sun7i-a20-ccu.h>
 #include <dt-bindings/reset/sun4i-a10-ccu.h>
+#include <dt-bindings/pinctrl/sun4i-a10.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -407,8 +408,8 @@
 			compatible = "allwinner,sun7i-a20-tcon";
 			reg = <0x01c0c000 0x1000>;
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-			resets = <&ccu RST_TCON0>;
-			reset-names = "lcd";
+			resets = <&ccu RST_TCON0>, <&ccu RST_LVDS>;
+			reset-names = "lcd", "lvds";
 			clocks = <&ccu CLK_AHB_LCD0>,
 				 <&ccu CLK_TCON0_CH0>,
 				 <&ccu CLK_TCON0_CH1>;
@@ -444,6 +445,11 @@
 					#size-cells = <0>;
 					reg = <1>;
 
+					tcon0_out_lvds: endpoint@0 {
+						reg = <0>;
+						remote-endpoint = <&lvds_in_tcon0>;
+						allwinner,tcon-channel = <0>;
+					};
 					tcon0_out_hdmi: endpoint@1 {
 						reg = <1>;
 						remote-endpoint = <&hdmi_in_tcon0>;
@@ -686,6 +692,19 @@
 			};
 		};
 
+		lvds_panel: panel@1c16500 {
+			compatible = "panel-lvds";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			port {
+				lvds_in_tcon0: endpoint {
+					remote-endpoint = <&tcon0_out_lvds>;
+				};
+			};
+		};
+
 		spi2: spi@1c17000 {
 			compatible = "allwinner,sun4i-a10-spi";
 			reg = <0x01c17000 0x1000>;
@@ -872,7 +891,7 @@
 			gmac_rgmii_pins: gmac-rgmii-pins {
 				pins = "PA0", "PA1", "PA2",
 				       "PA3", "PA4", "PA5", "PA6",
-				        "PA7", "PA8", "PA10",
+					"PA7", "PA8", "PA10",
 				       "PA11", "PA12", "PA13",
 				       "PA15", "PA16";
 				function = "gmac";
@@ -1162,6 +1181,26 @@
 				pins = "PI20", "PI21";
 				function = "uart7";
 			};
+
+			/omit-if-no-ref/
+			lcd_lvds0_pins: lcd_lvds0_pins {
+				allwinner,pins =
+					"PD0", "PD1", "PD2", "PD3", "PD4",
+					"PD5", "PD6", "PD7", "PD8", "PD9";
+				allwinner,function = "lvds0";
+				allwinner,drive = <SUN4I_PINCTRL_10_MA>;
+				allwinner,pull = <SUN4I_PINCTRL_NO_PULL>;
+			};
+
+			/omit-if-no-ref/
+			lcd_lvds1_pins: lcd_lvds1_pins {
+				allwinner,pins =
+					"PD10", "PD11", "PD12", "PD13", "PD14",
+					"PD15", "PD16", "PD17", "PD18", "PD19";
+				allwinner,function = "lvds1";
+				allwinner,drive = <SUN4I_PINCTRL_10_MA>;
+				allwinner,pull = <SUN4I_PINCTRL_NO_PULL>;
+			};
 		};
 
 		timer@1c20c00 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
