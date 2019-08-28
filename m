Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8E9A098F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:34:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oZZyedgSJKD4SscXJqs6H1blT2wtQfSJSqyYnrOk1ao=; b=qaVzq44T2Hv0fRapYcylys+k6+
	Dxn5/c8bcvs+rvnavMi1bKb5auoLKVHfbyWmPUbWAy99khpJSp+sN/EpRWMAj49wynT9aswbJda7z
	JqsQg6NDrtci35fC5XrAJctS5lkxrShuO/YlGC9yhNfT9eNH2xj0jLRXulCvUdz5kkZypEOmswyq5
	g/3F4qlBaddBzFemTubjX70FDBbC9C5QYu+mvkv8YfFt+bbCTPtxlZA2DHgsDBp1gRr5Jnrymyfus
	19pMD1K4vm1fBf+G7Ih5r4KT2SueyZ8X8lw+X9zZLXmNV+hTeBaCkuWesNk7KEplA4FELg0Fe7Y71
	KQnmv5oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32m2-0004O1-2C; Wed, 28 Aug 2019 18:34:26 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32lc-0004AV-0B
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:34:01 +0000
Received: by mail-io1-xd43.google.com with SMTP id l7so1548160ioj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/MCZVi6gjQnZzoBjDSkBgdTOk/6xTGkg3e6v7Fw/HG0=;
 b=MX5SyXOUxD2vJG2x6hKpHKvhGuMWvvBTWHZYjsUQdx6ZY2viicTRwtxSMD47wa409Y
 JvjUa55W/633dQyDYaHCNrSZaGRJiuUBZI1QWPRsuzKDmHjhzvvdJMPP1PvLHlbLyzfb
 uTpB7933v3IBYa5I21x2OLWbVDNUaEeXtqqRddXuxYe0nJoPKa98DxVssomiX5cpmAkF
 5JGLTXeujpJLuSz1lnxVv9oLt5cq9HBSKjlptjjOvbKtPv2TSyy4rfp6PkccRZQhDyTc
 YHctd6QYUvP6r4TrPlet9Vg+cePEAlqG3oKvy2/1u/D14R3D/KvPafvJ20gfnfagcZ+X
 +gkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/MCZVi6gjQnZzoBjDSkBgdTOk/6xTGkg3e6v7Fw/HG0=;
 b=VuEXcAMn3IGci4Xwp4YmlmmcsTLfCRAYwKA0de5j4g48daeDeYWRBizhBYeeMnkggH
 LzhZJ7GPlkLGd5PE4YczsnpjIZmL2rlRjWxY1AsySdm8YCqdA2cerGezRvJv49u15SOh
 5eB5eIKFpH+Oj+k5KInz5Z2ZBsbBqroMiaq+ld9znRGEC0HMdSVQ4UPyWc1ZJXTXKHYJ
 PpHmWgIh7BOMxsDeprpjW5kMuPuSMAOscJjVgjbAo4R0rA5r8CU9Eqs1Px8NOstHiOIa
 BasaWYvcI2Ay0ZVN9gxIyqpXb03fcTVwz0I6zZ640uuj0Wu6c08PF8pSzrsBPuGbQ1aI
 MUnw==
X-Gm-Message-State: APjAAAU2V1mYZI+jce7d5DIA9JcS4bdApGKV4tmayy9uWC0k83YC6X/1
 WTKOLZ0JDKpI8p6EXRIoVM0=
X-Google-Smtp-Source: APXvYqzmuCBqbBBlo0qBs8s6y7oPoSyp9ckKM7QjXTCJ6WTRe6Z523OcD2B18vcA1COotQmCvdcC8g==
X-Received: by 2002:a6b:ea02:: with SMTP id m2mr5943823ioc.155.1567017238874; 
 Wed, 28 Aug 2019 11:33:58 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id o3sm2494650ioo.74.2019.08.28.11.33.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 11:33:58 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 2/3] ARM: dts: logicpd-torpedo-baseboard: Fix missing video
Date: Wed, 28 Aug 2019 13:33:50 -0500
Message-Id: <20190828183351.822-2-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828183351.822-1-aford173@gmail.com>
References: <20190828183351.822-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113400_049757_E8239E10 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A previous commit removed the panel-dpi driver, which made the
Torpedo video stop working because it relied on the dpi driver
for setting video timings.  Now that the simple-panel driver is
available in omap2plus, this patch migrates the Torpedo dev kits
to use a similar panel and remove the manual timing requirements.

Fixes: 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi b/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
index 642e809e757a..449cc7616da6 100644
--- a/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
+++ b/arch/arm/boot/dts/logicpd-torpedo-baseboard.dtsi
@@ -108,7 +108,6 @@
 &dss {
 	status = "ok";
 	vdds_dsi-supply = <&vpll2>;
-	vdda_video-supply = <&video_reg>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&dss_dpi_pins1>;
 	port {
@@ -124,44 +123,20 @@
 		display0 = &lcd0;
 	};
 
-	video_reg: video_reg {
-		pinctrl-names = "default";
-		pinctrl-0 = <&panel_pwr_pins>;
-		compatible = "regulator-fixed";
-		regulator-name = "fixed-supply";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		gpio = <&gpio5 27 GPIO_ACTIVE_HIGH>;	/* gpio155, lcd INI */
-	};
-
 	lcd0: display {
-		compatible = "panel-dpi";
+		/* This isn't the exact LCD, but the timings meet spec */
+		/* To make it work, set CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=4 */
+		compatible = "newhaven,nhd-4.3-480272ef-atxl";
 		label = "15";
-		status = "okay";
-		/* default-on; */
 		pinctrl-names = "default";
-
+		pinctrl-0 = <&panel_pwr_pins>;
+		backlight = <&bl>;
+		enable-gpios = <&gpio5 27 GPIO_ACTIVE_HIGH>;
 		port {
 			lcd_in: endpoint {
 				remote-endpoint = <&dpi_out>;
 			};
 		};
-
-		panel-timing {
-			clock-frequency = <9000000>;
-			hactive = <480>;
-			vactive = <272>;
-			hfront-porch = <3>;
-			hback-porch = <2>;
-			hsync-len = <42>;
-			vback-porch = <3>;
-			vfront-porch = <4>;
-			vsync-len = <11>;
-			hsync-active = <0>;
-			vsync-active = <0>;
-			de-active = <1>;
-			pixelclk-active = <1>;
-		};
 	};
 
 	bl: backlight {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
