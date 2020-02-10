Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD891583F3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 20:57:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R0QPFig7F3GrLf9oDBbmttbss047NEtisrE+5Rybw3k=; b=BLkCLzWhZD0/Nf
	3bgRj5WMEh0sPJnpmd3MPoz/nAO1H4p4bXOYz/9lQqVWYwz+fxRDrxily6yNcLuKaUJ3YiHlb3fue
	I+MB0s+o0vfALYqymEloBQdsp2VKYCJ1C60kvnK2+lPsnGpk+GgidKe/RHWPNWXFZmfAhfSLQ325C
	StZqcr603cutfPWf/Q/d7qISX0qef4KXe/EKQ1QuyAUSNwlpbCj0UAQS3T3c0aXCuulnRGQIVCxlO
	yO1cth/wqQFHDxlJcWPubtcyKW9rZAn+aZto066GXz7YvJg4lVt5e8ueTwv+SLw6VAPGnEJNq6j4t
	t+d/VK/LK/PemPm4C84g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1FAn-0000EX-3B; Mon, 10 Feb 2020 19:56:49 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1FAf-0000DH-C7
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 19:56:42 +0000
Received: by mail-lf1-x141.google.com with SMTP id b15so5178098lfc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 11:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+Vp99gmXOmzAr4kwih73mUZpLLZhJP36bCWbtwEkM2M=;
 b=IVE1m+boYfFsAkei5sitHTt42rYyvgx7AefTzenzYhhSMxqkFdxhNXKdDGoBR8jpDo
 zf/f0G138XO4TRcSsRaftBds6Ljoo0hBOg4jocFiWM5eMnLBAtrXK6+BHhIvf52pUH7a
 LusYw26sxV/OXGgW1u8DukjIxkFo2wlFtM4+mFliGQ/gn11Og5NXYMaXrc9eEg81nBeL
 467mcbrM6z18MRAhdsIeicEQ024azdFbedeDewbjmbnTcJoAHnFrB8PgnuoREyTpDhv0
 O1yGInNXxsOiqZLwe+bdQLmD73gzSXQepWD/h80wltyf6ZJayT66Eys+mxNf5DwBpb0+
 oVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+Vp99gmXOmzAr4kwih73mUZpLLZhJP36bCWbtwEkM2M=;
 b=htAS5ai9sSJ2FfsVzNkaz0Awmk4khZEteDJ++IPoKmhNNS0RK8fJQA2ZteiSQ0Bkgg
 H5DYUOC9psrF5C2ZzsrXE5+9eBp5PHwB1sAqaMhT2b3oRfzNWgZHkV/du8fk1TzYTx3E
 32/s8NTIILgJYVze4+iuvKt1wNzJ8ziFzNb3UNwgRahvEkWLeqyH1bMn1Iay4nDZP+lk
 oKeVDaIbXJyKqP3PgDAfLDhV7IY3jMnXNA50eWOlQR0DGrjv3Q3PXDBH+cfznZm7NTO1
 asE76F/UXIYbZ9yhWcmqVeSB0wn130pIjN57egyBAsoL19Ja8r2FNT2DPYNA3hrJlZrP
 1iXA==
X-Gm-Message-State: APjAAAXhrK8wMbeQNtrwLwTO8IxvItJ4Lj4D647GQeRMYuhcvIy2+F9J
 IVaiIEpGl+GE4Hwr0mnCXqk=
X-Google-Smtp-Source: APXvYqzA17Cje2rmusmUFfK7j4fQQTvl9LMCQYu9vbuB0SOT5FOPce6rXHFVzj7jm75uI+0iw/xhUQ==
X-Received: by 2002:a19:4cc6:: with SMTP id z189mr1492261lfa.171.1581364596307; 
 Mon, 10 Feb 2020 11:56:36 -0800 (PST)
Received: from kedthinkpad ([5.20.204.163])
 by smtp.gmail.com with ESMTPSA id h10sm848723ljc.39.2020.02.10.11.56.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 11:56:35 -0800 (PST)
Date: Mon, 10 Feb 2020 21:56:33 +0200
From: Andrey Lebedev <andrey.lebedev@gmail.com>
To: mripard@kernel.org, wens@csie.org, airlied@linux.ie, daniel@ffwll.ch,
 dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] Support LVDS output on Allwinner A20
Message-ID: <20200210195633.GA21832@kedthinkpad>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_115641_440856_4EB723E5 
X-CRM114-Status: GOOD (  16.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andrey.lebedev[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A20 SoC (found in Cubieboard 2 among others) requires different LVDS set
up procedure than A33. Timing controller (tcon) driver only implements
sun6i-style procedure, that doesn't work on A20 (sun7i).

The support for such procedure is ported from u-boot and follows u-boot
naming convention: SUN6I* for sun6i-style procedure, and SUN4I for other
(which happens to be compatible with A20).
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 91 ++++++++++++++++++++----------
 drivers/gpu/drm/sun4i/sun4i_tcon.h | 12 ++++
 2 files changed, 73 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index c81cdce6ed55..78896e907ca9 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -114,46 +114,74 @@ static void sun4i_tcon_channel_set_status(struct sun4i_tcon *tcon, int channel,
 	}
 }
 
+static void sun4i_tcon_lvds_sun6i_enable(struct sun4i_tcon *tcon,
+					 const struct drm_encoder *encoder) {
+	u8 val;
+	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
+		     SUN6I_TCON0_LVDS_ANA0_C(2) |
+		     SUN6I_TCON0_LVDS_ANA0_V(3) |
+		     SUN6I_TCON0_LVDS_ANA0_PD(2) |
+		     SUN6I_TCON0_LVDS_ANA0_EN_LDO);
+	udelay(2);
+
+	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
+			   SUN6I_TCON0_LVDS_ANA0_EN_MB,
+			   SUN6I_TCON0_LVDS_ANA0_EN_MB);
+	udelay(2);
+
+	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
+			   SUN6I_TCON0_LVDS_ANA0_EN_DRVC,
+			   SUN6I_TCON0_LVDS_ANA0_EN_DRVC);
+
+	if (sun4i_tcon_get_pixel_depth(encoder) == 18)
+		val = 7;
+	else
+		val = 0xf;
+
+	regmap_write_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
+			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(0xf),
+			  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(val));
+
+}
+
+static void sun4i_tcon_lvds_sun4i_enable(struct sun4i_tcon *tcon) {
+	regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
+		     SUN4I_TCON0_LVDS_ANA0_CK_EN |
+		     SUN4I_TCON0_LVDS_ANA0_REG_V |
+		     SUN4I_TCON0_LVDS_ANA0_REG_C |
+		     SUN4I_TCON0_LVDS_ANA0_EN_MB |
+		     SUN4I_TCON0_LVDS_ANA0_PD |
+		     SUN4I_TCON0_LVDS_ANA0_DCHS);
+
+	udelay(2); /* delay at least 1200 ns */
+	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
+			   SUN4I_TCON0_LVDS_ANA1_INIT,
+			   SUN4I_TCON0_LVDS_ANA1_INIT);
+	udelay(1); /* delay at least 1200 ns */
+	regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA1_REG,
+			   SUN4I_TCON0_LVDS_ANA1_UPDATE,
+			   SUN4I_TCON0_LVDS_ANA1_UPDATE);
+}
+
+
 static void sun4i_tcon_lvds_set_status(struct sun4i_tcon *tcon,
 				       const struct drm_encoder *encoder,
 				       bool enabled)
 {
 	if (enabled) {
-		u8 val;
-
+		// Enable LVDS interface
 		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
 				   SUN4I_TCON0_LVDS_IF_EN,
 				   SUN4I_TCON0_LVDS_IF_EN);
 
-		/*
-		 * As their name suggest, these values only apply to the A31
-		 * and later SoCs. We'll have to rework this when merging
-		 * support for the older SoCs.
-		 */
-		regmap_write(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
-			     SUN6I_TCON0_LVDS_ANA0_C(2) |
-			     SUN6I_TCON0_LVDS_ANA0_V(3) |
-			     SUN6I_TCON0_LVDS_ANA0_PD(2) |
-			     SUN6I_TCON0_LVDS_ANA0_EN_LDO);
-		udelay(2);
-
-		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
-				   SUN6I_TCON0_LVDS_ANA0_EN_MB,
-				   SUN6I_TCON0_LVDS_ANA0_EN_MB);
-		udelay(2);
-
-		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
-				   SUN6I_TCON0_LVDS_ANA0_EN_DRVC,
-				   SUN6I_TCON0_LVDS_ANA0_EN_DRVC);
-
-		if (sun4i_tcon_get_pixel_depth(encoder) == 18)
-			val = 7;
-		else
-			val = 0xf;
+		// Perform SoC-specific setup procedure
+		if (tcon->quirks->sun6i_lvds_init) {
+			sun4i_tcon_lvds_sun6i_enable(tcon, encoder);
+		}
+		else {
+			sun4i_tcon_lvds_sun4i_enable(tcon);
+		}
 
-		regmap_write_bits(tcon->regs, SUN4I_TCON0_LVDS_ANA0_REG,
-				  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(0xf),
-				  SUN6I_TCON0_LVDS_ANA0_EN_DRVD(val));
 	} else {
 		regmap_update_bits(tcon->regs, SUN4I_TCON0_LVDS_IF_REG,
 				   SUN4I_TCON0_LVDS_IF_EN, 0);
@@ -1454,6 +1482,7 @@ static const struct sun4i_tcon_quirks sun6i_a31s_quirks = {
 };
 
 static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
+	.supports_lvds		= true,
 	.has_channel_0		= true,
 	.has_channel_1		= true,
 	.dclk_min_div		= 4,
@@ -1464,11 +1493,13 @@ static const struct sun4i_tcon_quirks sun7i_a20_quirks = {
 static const struct sun4i_tcon_quirks sun8i_a33_quirks = {
 	.has_channel_0		= true,
 	.has_lvds_alt		= true,
+	.sun6i_lvds_init	= true,
 	.dclk_min_div		= 1,
 };
 
 static const struct sun4i_tcon_quirks sun8i_a83t_lcd_quirks = {
 	.supports_lvds		= true,
+	.sun6i_lvds_init	= true,
 	.has_channel_0		= true,
 	.dclk_min_div		= 1,
 };
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index a62ec826ae71..973901c1bee5 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -193,6 +193,13 @@
 #define SUN4I_TCON_MUX_CTRL_REG			0x200
 
 #define SUN4I_TCON0_LVDS_ANA0_REG		0x220
+#define SUN4I_TCON0_LVDS_ANA0_DCHS			BIT(16)
+#define SUN4I_TCON0_LVDS_ANA0_PD			BIT(20) | BIT(21)
+#define SUN4I_TCON0_LVDS_ANA0_EN_MB			BIT(22)
+#define SUN4I_TCON0_LVDS_ANA0_REG_C			BIT(24) | BIT(25)
+#define SUN4I_TCON0_LVDS_ANA0_REG_V			BIT(26) | BIT(27)
+#define SUN4I_TCON0_LVDS_ANA0_CK_EN			BIT(29) | BIT(28)
+
 #define SUN6I_TCON0_LVDS_ANA0_EN_MB			BIT(31)
 #define SUN6I_TCON0_LVDS_ANA0_EN_LDO			BIT(30)
 #define SUN6I_TCON0_LVDS_ANA0_EN_DRVC			BIT(24)
@@ -201,6 +208,10 @@
 #define SUN6I_TCON0_LVDS_ANA0_V(x)			(((x) & 3) << 8)
 #define SUN6I_TCON0_LVDS_ANA0_PD(x)			(((x) & 3) << 4)
 
+#define SUN4I_TCON0_LVDS_ANA1_REG		0x224
+#define SUN4I_TCON0_LVDS_ANA1_INIT			(0x1f << 26 | 0x1f << 10)
+#define SUN4I_TCON0_LVDS_ANA1_UPDATE			(0x1f << 16 | 0x1f << 00)
+
 #define SUN4I_TCON1_FILL_CTL_REG		0x300
 #define SUN4I_TCON1_FILL_BEG0_REG		0x304
 #define SUN4I_TCON1_FILL_END0_REG		0x308
@@ -224,6 +235,7 @@ struct sun4i_tcon_quirks {
 	bool	needs_de_be_mux; /* sun6i needs mux to select backend */
 	bool    needs_edp_reset; /* a80 edp reset needed for tcon0 access */
 	bool	supports_lvds;   /* Does the TCON support an LVDS output? */
+	bool	sun6i_lvds_init; /* Requires sun6i lvds initialization? */
 	u8	dclk_min_div;	/* minimum divider for TCON0 DCLK */
 
 	/* callback to handle tcon muxing options */
-- 
2.20.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
