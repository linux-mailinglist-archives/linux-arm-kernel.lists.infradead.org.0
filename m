Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4F9913134B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 15:01:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=XTKqgoxiKtuK0ihS4U/UI1zAZZRH8b2dcrtk/N5rsyQ=; b=m5M
	g0yWInOnBUuJUsRUQfPaPGSsrWXdfGIEz/B+T2eEhho302FKws02nxPPBPdmt8O7TROElBCHleeHp
	/ZKMPlgBSdsldmgYaL83rzsQ6FsH74cOxZahUHlbO0S94F9B+KiQBb/FCJSTSJ57ATkbxZpo9qqZH
	ubQduB/sW0fgFERIxJFFMP2r+ptDtCVnZuZWq1tG/G5xKslF6lK6F1J5NFi0EhNxZRtrg5uwp+GMs
	gmqRbDcD5P/BvVzg4Ad0kmHZH/IOaVFaM9XO5IYsCHcdZkXylrUmVfpAdoE7j6qVhmjbYEvySBZN+
	iqJeJa0SYYqZmbfAjPyKtkt2T2UVSIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSwN-0001p9-FW; Mon, 06 Jan 2020 14:01:07 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSwG-0001oM-VP
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 14:01:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id z7so49635885wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 06:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RzIMtNvAGQDbPQVx0Hz3IAid0OWJww7Kls0bXG4Uy/E=;
 b=PHWtKbOq/CrEs4SUS0sUv0iWuifZsXc4GJvxG3DUxbB4axii0Sejhfh423vwJbn5ir
 s6IUgTdi/i/a7HmdLf7FFRncae8amgnaQHDmizwDygH2u6JBVkf9kt4dFiqMDXSw1RCe
 MewDaPHANWnLQkO6Sf6xgsSeUIdj/c8hzz0s3rTL3mug6xWH5+TE+6AbV/ehr7xEIkXu
 U+x1jNhka2otSOp2qRo1jK7QXsxJ+t/QjYtJprNIkhRb9vQpNoCC9PVdRcyICnmj745t
 lHiodzueeyX9ZGfz9wNHUgE8fD4EHCAjTtt67RxGO09OfuOLbQ8DKbQbQleVMR/7Fzyy
 OONg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RzIMtNvAGQDbPQVx0Hz3IAid0OWJww7Kls0bXG4Uy/E=;
 b=lQzLmZZtUOYumPFkke33pvZ/GncDFTbwY5eygBtwqezaRg6C63S7HhghBJYFu7eAh7
 Gyhx0CaFM+fHZww56YbvEODTMb+hDMe77gDQL/9YHZfZuZUTkeIirFrXkCkGQgsPq+o6
 v9FvmJJWFgdqEdsJ0qIJy6YHZB/yorGwMxlHzpdlfMikhllRYMkGXe92FcoYX4oc/pkY
 EEoGqyz/APHYHmQzWV8KZjHlx75vNx2FSMlPepS+pvo5MPIbDu71XawZvl6sCaV26ivk
 5OeztfuPlupEuLKrFkE4C6ufYKtBbbpMwlyRg4ir0cnNJ58NJGHKU/Q+t4/yFc/WF+i9
 SnhA==
X-Gm-Message-State: APjAAAXGjyEB89YsSTTmZNbY3tS5cP/14DDgUiy37Jtp8qVB7n8lPEcI
 s3BLGAgYt270PVVR+VnGM+w=
X-Google-Smtp-Source: APXvYqwegU8fPwN/m0F//DfKIlBREr//Y7HVFmc5A7QaEiFngWeOC/9nSkyQ7d0wVBce3/I6w6Zv5w==
X-Received: by 2002:a05:6000:1187:: with SMTP id
 g7mr49594123wrx.109.1578319257965; 
 Mon, 06 Jan 2020 06:00:57 -0800 (PST)
Received: from localhost.localdomain ([197.254.95.38])
 by smtp.googlemail.com with ESMTPSA id p26sm22566715wmc.24.2020.01.06.06.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 06:00:57 -0800 (PST)
From: Wambui Karuga <wambui.karugax@gmail.com>
To: mripard@kernel.org,
	wens@csie.org,
	airlied@linux.ie,
	daniel@ffwll.ch
Subject: [PATCH] drm/sun4i: use PTR_ERR_OR_ZERO macro.
Date: Mon,  6 Jan 2020 17:00:52 +0300
Message-Id: <20200106140052.30747-1-wambui.karugax@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_060101_029671_1D9C3D26 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wambui.karugax[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the use of IS_ERR and PTR_ZERO macros by returning the
PTR_ERR_OR_ZERO macro.
Changes suggested by coccinelle. 

Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>
---
 drivers/gpu/drm/sun4i/sun4i_dotclock.c     | 4 +---
 drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c | 4 +---
 drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c     | 4 +---
 drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c | 4 +---
 4 files changed, 4 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun4i_dotclock.c b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
index 417ade3d2565..84c04d8192b3 100644
--- a/drivers/gpu/drm/sun4i/sun4i_dotclock.c
+++ b/drivers/gpu/drm/sun4i/sun4i_dotclock.c
@@ -191,10 +191,8 @@ int sun4i_dclk_create(struct device *dev, struct sun4i_tcon *tcon)
 	dclk->hw.init = &init;
 
 	tcon->dclk = clk_register(dev, &dclk->hw);
-	if (IS_ERR(tcon->dclk))
-		return PTR_ERR(tcon->dclk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(tcon->dclk);
 }
 EXPORT_SYMBOL(sun4i_dclk_create);
 
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c
index 2ff780114106..7a59505d6907 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_ddc_clk.c
@@ -135,8 +135,6 @@ int sun4i_ddc_create(struct sun4i_hdmi *hdmi, struct clk *parent)
 	ddc->m_offset = hdmi->variant->ddc_clk_m_offset;
 
 	hdmi->ddc_clk = devm_clk_register(hdmi->dev, &ddc->hw);
-	if (IS_ERR(hdmi->ddc_clk))
-		return PTR_ERR(hdmi->ddc_clk);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->ddc_clk);
 }
diff --git a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
index b66fa27fe6ea..12a7b7b1c99c 100644
--- a/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
+++ b/drivers/gpu/drm/sun4i/sun4i_hdmi_i2c.c
@@ -278,10 +278,8 @@ static int sun4i_hdmi_init_regmap_fields(struct sun4i_hdmi *hdmi)
 	hdmi->field_ddc_sck_en =
 		devm_regmap_field_alloc(hdmi->dev, hdmi->regmap,
 					hdmi->variant->field_ddc_sck_en);
-	if (IS_ERR(hdmi->field_ddc_sck_en))
-		return PTR_ERR(hdmi->field_ddc_sck_en);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(hdmi->field_ddc_sck_en);
 }
 
 int sun4i_hdmi_i2c_create(struct device *dev, struct sun4i_hdmi *hdmi)
diff --git a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
index a4d31fe3abff..fd09eff21b25 100644
--- a/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
+++ b/drivers/gpu/drm/sun4i/sun8i_hdmi_phy_clk.c
@@ -171,8 +171,6 @@ int sun8i_phy_clk_create(struct sun8i_hdmi_phy *phy, struct device *dev,
 	priv->hw.init = &init;
 
 	phy->clk_phy = devm_clk_register(dev, &priv->hw);
-	if (IS_ERR(phy->clk_phy))
-		return PTR_ERR(phy->clk_phy);
 
-	return 0;
+	return PTR_ERR_OR_ZERO(phy->clk_phy)
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
