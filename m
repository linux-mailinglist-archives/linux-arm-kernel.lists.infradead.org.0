Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A927915CBF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1xdM27sEJfpWoK+qEJCXa/E4Etq/cxoHyPuOgOgEtps=; b=S8kq77APZ5CFhB
	mXsqr5y75FkVMG52k7nBda7+tZR2jmhKN7F+DyjqPWAPAQqhRbg5QcPdCO5uejITLDG3N092PdV5B
	Rc1y0HhDVfDOSs3xLQxkXLETrmOO4oJulqNXuhSLfn5ep6/8IhGgGq0uu9gXOi1djDX1879k2LfT4
	NixvnJOV6vtpYkxJcdOkMPOEK4muwzKFp6lt8xoIjaOS68jjReyrLEV9hhwGesZGdbYvBGUjZHG5+
	8L2MzEP6m8UhfP8bZaHaL9/g9XZN/Rn9l9AGckWam7Lqlh0hjctcvZdgR8I6L7PiDrT2oZb96eLEk
	GnyKBNMtHPbx17noQkbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2KyM-0008LB-P6; Thu, 13 Feb 2020 20:20:30 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Kxw-0006zW-UW
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 20:20:06 +0000
Received: by mail-lj1-x22f.google.com with SMTP id e18so8062260ljn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 12:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mW6PukSxckGSUCke6VTFTCVByD+nJPm6k8mdLJlJUQ8=;
 b=RC09I+Bvk9BEGM312oV5NW7pG1aKQPts5wE1yDyMZ5aunmfCjtpj/ZtkVQfg5cc4kX
 n4rUd7Uw8Ed/epLUm9Gj7Q9rrTgeNaB7fA6T6msnWDT9n49NXzqbTh4gbBQ3D4ylyM2m
 Db9pfSfadEt1TPmiY25g7eQP5kfvza19ucaRwOBa4LoatztuIsBGKZCRLtsT1qGzqb+x
 3R1jApficdWMUC38I6zCdiYLKbYUeP7ewABAHw3uNkUlziHLUZmEa77C55CQ9fX5E8yR
 nhxT/uqgKTwmRXqalvyie7/fOEEnIe6JNxBaGyGoRwKVGvbXa2Gl0eaaV/pVBbzSbPgj
 WORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mW6PukSxckGSUCke6VTFTCVByD+nJPm6k8mdLJlJUQ8=;
 b=bf0YiBI321AGsq6mWXtKs4llc8hdlPUbKp/xq94x7/zp5u5+24d8xPtQlgWwX00Qf+
 CWQ56J2E3AMyS92Q/iINn5jw7W5DPwBlQA+/ZWu4Ptk2OUS+5FZB/Hrt86ulkBezRztC
 jPklICTpPuPYBtLLADIdcRd/kz0BiH9cNodSAsGL3b9eA+Aet2UH5+nFZn5wxB7xYXiY
 xLKZF3yLfr5K6vSR/jSZjkEbaP76a3a7sCdkrDC/OUP9H1LdjTBlZ1q7LIm4mhFBO46H
 w8mIMX94yZ2NbpHp3hmL/DvQR7RNT17vsa5tz1yrMznjD7GbULgtq1Mj98mUTVoqDi//
 KHhQ==
X-Gm-Message-State: APjAAAVfh7rumgm1UPPZecZIl5e7Ockgyubeqhc20c3nvxsoPuVxaRDB
 jJhq4Oxd/1VimoeGgTgdkKg=
X-Google-Smtp-Source: APXvYqxw0rZXUmiJIT9xq2xe3VuahXdAUOtscc4DdIG+xn5Y17KAhRRAUvyZVKqDwcbtKuS/oxnM5w==
X-Received: by 2002:a2e:9e19:: with SMTP id e25mr12844931ljk.179.1581625199519; 
 Thu, 13 Feb 2020 12:19:59 -0800 (PST)
Received: from localhost.localdomain ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id s22sm2209470ljm.41.2020.02.13.12.19.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 12:19:59 -0800 (PST)
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 3/3] ARM: dts: sun7i: Add LVDS panel support on A20
Date: Thu, 13 Feb 2020 22:18:57 +0200
Message-Id: <20200213201854.810-3-andrey.lebedev@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210195633.GA21832@kedthinkpad>
References: <20200210195633.GA21832@kedthinkpad>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_122005_023310_2F32FACF 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22f listed in]
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
 arch/arm/boot/dts/sun7i-a20.dtsi | 28 ++++++++++++++++++++++++++--
 1 file changed, 26 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 92b5be97085d..3b3c366a2bee 100644
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
+						allwinner,tcon-channel = <0>;
+					};
+
 					tcon0_out_hdmi: endpoint@1 {
 						reg = <1>;
 						remote-endpoint = <&hdmi_in_tcon0>;
@@ -1162,6 +1168,24 @@
 				pins = "PI20", "PI21";
 				function = "uart7";
 			};
+
+			/omit-if-no-ref/
+			lcd_lvds0_pins: lcd-lvds0-pins {
+				pins =
+					"PD0", "PD1", "PD2", "PD3", "PD4",
+					"PD5", "PD6", "PD7", "PD8", "PD9";
+				function = "lvds0";
+				allwinner,drive = <SUN4I_PINCTRL_10_MA>;
+			};
+
+			/omit-if-no-ref/
+			lcd_lvds1_pins: lcd-lvds1-pins {
+				pins =
+					"PD10", "PD11", "PD12", "PD13", "PD14",
+					"PD15", "PD16", "PD17", "PD18", "PD19";
+				function = "lvds1";
+				allwinner,drive = <SUN4I_PINCTRL_10_MA>;
+			};
 		};
 
 		timer@1c20c00 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
