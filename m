Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79B6115D0E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 15:12:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+8VgecuGT3QUQ2p4zGoH9/cAjBIdqG1euy4Ns5N5WAc=; b=HQdOQqjdpCY9Vb
	VBIYoDPlUR/AiOJKVl2JMAz01s2n5uL5uyZPR1EbLaHFUpgWyFAlrIGSc8IDymnp/cnRbV0wmgQ96
	BVl3L4X9Z91obZzIz371nTYY/3ypmqyCSOFFMhiNbcsyKsDSqCmxXyaRmpi0wRqidP8J/CKNPFtmC
	9P5+IUv8/b8o8ywXIJMAzsl2Hcj8J2lg6WcXuQza4RZP0jDWPG1FNjIhh7j1SVjZDJePiaDt0TKe5
	mZ3Tkc3VD7PuqYJZs7V/LLbbt29G8TapTMJ+KOfWAtFx2GFU9rRroU8s+HFVgusMMmg9zz5rxE6lm
	NnH+/HKwjDdodPFZfPxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idapD-00076P-FV; Sat, 07 Dec 2019 14:12:47 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idahY-0005xL-EM; Sat, 07 Dec 2019 14:04:54 +0000
Received: by mail-lj1-x242.google.com with SMTP id r19so10734725ljg.3;
 Sat, 07 Dec 2019 06:04:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MB8F/gszf2cRKXpRo2VrQVMb2VRddLrgS3cljPlLt24=;
 b=U4xN8GN0VPGdaO0AWtyf6QNMU6m6GH++MkTsmxwi2KAjxIa1YJgJ8HSo/kVZ/oXAzn
 q83znx4fzd/G/OpFJmM6CAiN8Pgp0sCApYTH2XNHRcbDRklBLdWaY75dTGz3YrNod2VA
 RkaVGJC49ElYYqCRnVrHZunYO9+hDv9eBo931BevMWXMwqisYsqZDen0w3833qVKdgG9
 s4fx3xuCFRmxJ5nHIgrOtwi22oS6HxZLNe+rnRUZh8C9XNOdtzIyv3NGUJT8er74Pdh0
 WBvUy9rr9uNu8/DnprIlGZdSvditWsW7o3qXTjedfkIoteUK0Tphpvjdf74rklqpqMao
 kIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=MB8F/gszf2cRKXpRo2VrQVMb2VRddLrgS3cljPlLt24=;
 b=JcRHIuanlr4vlq43YqeidRWSAFcVHTi0xNgbXnjxhXdcBbipR7qBO+Ak6zjmMC51Jw
 n8sgC7AHUcJxCl4FkGQgug360RJoVrz2Uxk6Y9QmYeZcUCgJ+HNJg/gJmo7pAwANt7dV
 hD0AtIrRl4t0BmnhTaT38JnhFRUd9GaTD+U/DMzmhZiecI0jHLq6Wx3+MXV2SxiGNPkg
 KyXXNbr0F3sMcEgB7x8pXrL1/KjtniAahAKBy9smSLHlVAoHz9A9TbjgKStOClXIyh81
 pq4mecG4w9+2y7hHrwDh9GaGYHrpw8EM8PygLEMHaM5xJBVhSkSY8XggOj4nYknni7A0
 ndvA==
X-Gm-Message-State: APjAAAU9pXxw6bIMMQDtLV8IdRa7sCQ8m0mDCdikA8AXOTsFAR99T5Er
 XvWT0ifXQvZGNRTvxVwLQn0=
X-Google-Smtp-Source: APXvYqx9J1DRR8LiccaW8h+Ak6WWGoNOve+yafSt4KrzKSCNMRhs/EjfonWGrZJnRRbGVrZODAwZ4Q==
X-Received: by 2002:a2e:144b:: with SMTP id 11mr11535632lju.216.1575727490861; 
 Sat, 07 Dec 2019 06:04:50 -0800 (PST)
Received: from saturn.lan (18.158-248-194.customer.lyse.net. [158.248.194.18])
 by smtp.gmail.com with ESMTPSA id
 w17sm5644188lfn.22.2019.12.07.06.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Dec 2019 06:04:50 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
To: dri-devel@lists.freedesktop.org, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v2 23/25] drm/panel: sitronix-st7789v: use drm_panel backlight
 support
Date: Sat,  7 Dec 2019 15:03:51 +0100
Message-Id: <20191207140353.23967-24-sam@ravnborg.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191207140353.23967-1-sam@ravnborg.org>
References: <20191207140353.23967-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_060452_602399_E9337D4F 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sam.ravnborg[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Stefan Agner <stefan@agner.ch>, Andrzej Hajda <a.hajda@samsung.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Jagan Teki <jagan@amarulasolutions.com>, NXP Linux Team <linux-imx@nxp.com>,
 Jitao Shi <jitao.shi@mediatek.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, linux-mediatek@lists.infradead.org,
 Abhinav Kumar <abhinavk@codeaurora.org>, linux-tegra@vger.kernel.org,
 Sean Paul <sean@poorly.run>, linux-arm-kernel@lists.infradead.org,
 Purism Kernel Team <kernel@puri.sm>, linux-renesas-soc@vger.kernel.org,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the backlight support in drm_panel to simplify the driver

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
---
 .../gpu/drm/panel/panel-sitronix-st7789v.c    | 37 ++-----------------
 1 file changed, 4 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
index ebefe2f4c26b..cc02c54c1b2e 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7789v.c
@@ -3,7 +3,6 @@
  * Copyright (C) 2017 Free Electrons
  */
 
-#include <linux/backlight.h>
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/module.h>
@@ -116,7 +115,6 @@ struct st7789v {
 	struct drm_panel panel;
 	struct spi_device *spi;
 	struct gpio_desc *reset;
-	struct backlight_device *backlight;
 	struct regulator *power;
 };
 
@@ -323,12 +321,6 @@ static int st7789v_enable(struct drm_panel *panel)
 {
 	struct st7789v *ctx = panel_to_st7789v(panel);
 
-	if (ctx->backlight) {
-		ctx->backlight->props.state &= ~BL_CORE_FBBLANK;
-		ctx->backlight->props.power = FB_BLANK_UNBLANK;
-		backlight_update_status(ctx->backlight);
-	}
-
 	return st7789v_write_command(ctx, MIPI_DCS_SET_DISPLAY_ON);
 }
 
@@ -339,12 +331,6 @@ static int st7789v_disable(struct drm_panel *panel)
 
 	ST7789V_TEST(ret, st7789v_write_command(ctx, MIPI_DCS_SET_DISPLAY_OFF));
 
-	if (ctx->backlight) {
-		ctx->backlight->props.power = FB_BLANK_POWERDOWN;
-		ctx->backlight->props.state |= BL_CORE_FBBLANK;
-		backlight_update_status(ctx->backlight);
-	}
-
 	return 0;
 }
 
@@ -370,7 +356,6 @@ static const struct drm_panel_funcs st7789v_drm_funcs = {
 
 static int st7789v_probe(struct spi_device *spi)
 {
-	struct device_node *backlight;
 	struct st7789v *ctx;
 	int ret;
 
@@ -394,26 +379,15 @@ static int st7789v_probe(struct spi_device *spi)
 		return PTR_ERR(ctx->reset);
 	}
 
-	backlight = of_parse_phandle(spi->dev.of_node, "backlight", 0);
-	if (backlight) {
-		ctx->backlight = of_find_backlight_by_node(backlight);
-		of_node_put(backlight);
-
-		if (!ctx->backlight)
-			return -EPROBE_DEFER;
-	}
+	ret = drm_panel_of_backlight(&ctx->panel);
+	if (ret)
+		return ret;
 
 	ret = drm_panel_add(&ctx->panel);
 	if (ret < 0)
-		goto err_free_backlight;
+		return ret;
 
 	return 0;
-
-err_free_backlight:
-	if (ctx->backlight)
-		put_device(&ctx->backlight->dev);
-
-	return ret;
 }
 
 static int st7789v_remove(struct spi_device *spi)
@@ -422,9 +396,6 @@ static int st7789v_remove(struct spi_device *spi)
 
 	drm_panel_remove(&ctx->panel);
 
-	if (ctx->backlight)
-		put_device(&ctx->backlight->dev);
-
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
