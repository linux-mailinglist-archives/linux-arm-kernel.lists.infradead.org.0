Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC24164D6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:11:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0N1iDazpD6Vpkw2EYi72oWUN8Iu5wPMexjdhxnzWmuo=; b=PVp1pCTAm32qxp
	S0QYuNN6UyJt1jS/brQJme0iuccdEQ80yU3XSUCTcMCfxz52pAfINF7jR2Od/m6k1Fttnpe9gfGHf
	x3hye6oMsaxOdgzo+qu8ByB09pbgEgkzjcTMgruve95ZX9zuotxZWn7PXU7VmmMN+bElYCbqLh+Tp
	j91qtH316tD+5ai5kR0gKrYLu7yZaY7N5wfSzj3Av1ztUJ03x/g1DcT2ZoQ621yMxRoSV8+zLR0A2
	ZlLFib0XIcjhzedCdxKPS+YooISb8J7PruavssKznO2jd2A9mE2M2dGFxrmVL9sVAI+JzD8TQO6q0
	gZI3h55Es97AATT8HaMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ToY-00023O-KG; Wed, 19 Feb 2020 18:11:14 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4TnP-0000B6-V8
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:10:06 +0000
Received: by mail-lj1-x232.google.com with SMTP id q23so1366272ljm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Feb 2020 10:10:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CXy/lin2Xh1wX40VjvzK4N5EhPUQ7F76cQqtDhuzdAw=;
 b=ZSmb5C/cZRYqsLdPN5VclmwPUdQnDwDtrA7+GzYBWb84Svro7eD8Goee9p+QyRNffa
 lpqAyFWy+OjRvu2rpmV7A4Jmhdsc+5LuASif2bPB98oAKK8SAwcn+GtOJIG8ms9rTe/N
 RP4ciMh5Oz0za8q1UrrAdZnxI7sqVIsyXhU/gxjc2NDufE8aa+dHG/ouZuOl4lxk5/xs
 PNhGSDzRpOqOb5liAqynz+yB+24F4ZZtRq81KpAGlGd+fDNr3x49k47xudxaB+T9qNIU
 PHdveJ7Khmi/0PaqciofTOm9bLWPWJ953WvudgraUKFCfqbcNtpMhezDXeFq8Ab8SS8K
 lGeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CXy/lin2Xh1wX40VjvzK4N5EhPUQ7F76cQqtDhuzdAw=;
 b=dy6n9T8Kiqqq/kcKCT+ljly8ReZcINnbQxktgac+lR5GkWVQQ1PicUdrwPWoDmIixj
 +iJgV8cXyVFXZYh2a1F5F89mZIQOvjOYq26f6YxT3YHx8uSOfDOy6S5/dy8sbUmdNDIf
 QEIkK/lB2divFUiNI9meMV3zAcssN70cb4Ym/SLKbhK4JDYgbohIb2BcZJTMJMSY8BIg
 a7YlbZ4UFpiclwLzDfq2W1TgCaTXLxnck0D6g4D0upJCuxy2CDitC+sy/mIY8dsX5fJN
 siOf2RQWHi2dyhDPTmA7JU5ei+SCbWFH6ZtNsiqLMArpIBxPCZay4b8JDLkeTxuTugKW
 H/eQ==
X-Gm-Message-State: APjAAAVCINTl8UiZ0Vjj64t7buVrHTK+ZI5/w/Tfpopvq+9uPnLSsIGC
 d3nmbJxpgSLRHigBn4p/OAs=
X-Google-Smtp-Source: APXvYqwZu3/RGiLTbpL0Zcsi2lbhwfT1xxLVM2mwlQE0Ir+J5oDWNK91WxTAezMAOPajhF/43rFOuw==
X-Received: by 2002:a2e:7e11:: with SMTP id z17mr16664008ljc.279.1582135801686; 
 Wed, 19 Feb 2020 10:10:01 -0800 (PST)
Received: from localhost.localdomain ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id 14sm183942lfz.47.2020.02.19.10.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Feb 2020 10:10:00 -0800 (PST)
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] ARM: dts: sun7i: Add LVDS panel support on A20
Date: Wed, 19 Feb 2020 20:08:56 +0200
Message-Id: <20200219180858.4806-4-andrey.lebedev@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200219180858.4806-1-andrey.lebedev@gmail.com>
References: <20200210195633.GA21832@kedthinkpad>
 <20200219180858.4806-1-andrey.lebedev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_101004_138419_EC9AD182 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:232 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm/boot/dts/sun7i-a20.dtsi | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 92b5be97085d..d50263c1ca9a 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -47,6 +47,7 @@
 #include <dt-bindings/dma/sun4i-a10.h>
 #include <dt-bindings/clock/sun7i-a20-ccu.h>
 #include <dt-bindings/reset/sun4i-a10-ccu.h>
+#include <dt-bindings/pinctrl/sun4i-a10.h>
 
 / {
 	interrupt-parent = <&gic>;
@@ -404,11 +405,12 @@
 		};
 
 		tcon0: lcd-controller@1c0c000 {
-			compatible = "allwinner,sun7i-a20-tcon";
+			compatible = "allwinner,sun7i-a20-tcon0",
+				     "allwinner,sun7i-a20-tcon";
 			reg = <0x01c0c000 0x1000>;
 			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-			resets = <&ccu RST_TCON0>;
-			reset-names = "lcd";
+			resets = <&ccu RST_TCON0>, <&ccu RST_LVDS>;
+			reset-names = "lcd", "lvds";
 			clocks = <&ccu CLK_AHB_LCD0>,
 				 <&ccu CLK_TCON0_CH0>,
 				 <&ccu CLK_TCON0_CH1>;
@@ -444,6 +446,11 @@
 					#size-cells = <0>;
 					reg = <1>;
 
+					tcon0_out_lvds: endpoint@0 {
+						reg = <0>;
+						allwinner,tcon-channel = <0>;
+					};
+
 					tcon0_out_hdmi: endpoint@1 {
 						reg = <1>;
 						remote-endpoint = <&hdmi_in_tcon0>;
@@ -454,7 +461,8 @@
 		};
 
 		tcon1: lcd-controller@1c0d000 {
-			compatible = "allwinner,sun7i-a20-tcon";
+			compatible = "allwinner,sun7i-a20-tcon1",
+				     "allwinner,sun7i-a20-tcon";
 			reg = <0x01c0d000 0x1000>;
 			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&ccu RST_TCON1>;
@@ -931,6 +939,20 @@
 				function = "ir1";
 			};
 
+			/omit-if-no-ref/
+			lcd_lvds0_pins: lcd-lvds0-pins {
+				pins = "PD0", "PD1", "PD2", "PD3", "PD4",
+				       "PD5", "PD6", "PD7", "PD8", "PD9";
+				function = "lvds0";
+			};
+
+			/omit-if-no-ref/
+			lcd_lvds1_pins: lcd-lvds1-pins {
+				pins = "PD10", "PD11", "PD12", "PD13", "PD14",
+				       "PD15", "PD16", "PD17", "PD18", "PD19";
+				function = "lvds1";
+			};
+
 			/omit-if-no-ref/
 			mmc0_pins: mmc0-pins {
 				pins = "PF0", "PF1", "PF2",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
