Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF7E192342
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 09:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lr2c4CFsM9OzT2IqjDMxIRuI8d+wNq/5IHpkJEEfkMo=; b=I3hlz1shWj+fC0
	WsJksAoNJY0xt0kSajyn5zbP3h4RPFralIDmWNcXlVw9NwfblA7KYWWesJWcQFXFoOmHOOZt8v7j8
	Ai9ntJqRa47H5A4VQcW8UIx5PPr5+CBCPTxbrRl6mnv8L5wjjeRrabceBj9BgItgAim6Cu16giKLy
	rQLUiKcd55fD1jJQPR3SyKAUQYnhYHcOWm+nEhuMpw+uj/P6sDVoyCN0wP/sqH+OS8YipAlAd6tby
	rSM8ATrn5YqeetgbvwSD8CfymRDr4/vfxZs2ry5WJ4GVxjuf9aNOKzEt/F2IKtWCxR5zMQ3jFNned
	IO2+iVigIFGmY7XoNwxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH1m7-0004u2-IE; Wed, 25 Mar 2020 08:52:35 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1kE-0002o6-TP
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 08:50:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id c187so1406620wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 01:50:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fPJX5pxHatWlhsndvDxqYNXpPbJWSaIQ/yvG8JwAaPQ=;
 b=aYBMrSDLGFsR9VGiA3afn25swSvBzlrBXb5UxObkLtHAfr5/+WOEvT0kDWgdi4FwZQ
 zjXQdJNgPta9PL4WL8iKpMmwrCQUjzd7L5DroRcX2ImHVgy2LegXPtXrazdftqoeVc1x
 2JDqjdl6bhSvwuIox3qPuKmXyKjgduvx0k6LVHhGYu7wNyvXwXb8oxn2Wxep8JR3Hxmh
 RNa4Dxv30pWkhHsYO3464gILGOeas27+J+86DpavRaAJ7e6k8QqAH9FkhtwLZQSBiRJ1
 bFMxqGTXHot17KqkZH0jUGmqpKnDXFuM9gVBRsTp5fT56nLY0EtNYwRzcv0if1ux9Ukw
 OuOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fPJX5pxHatWlhsndvDxqYNXpPbJWSaIQ/yvG8JwAaPQ=;
 b=qoJx6+mKR7x+pe4VyMCl59h9Z9upWTIJiOAQGjE57nrdS7ikqWbTO06eiU2x2u3fUs
 MYMNxZ6aaj2xHTr7o3vfN2Y+4K9zyI3Jbl8LMS3O68Oq4CJZmXqT/DvZa0fmsAXduFYF
 b/n2z6DJPlDgT0KkZoBl4ZFwji9axdgl3iRyj7OpIPUIPvb4ADZEj0yD28wivLUwlFHj
 BEh2vwqtmnA9+IT9+vm1deJu8+lbom9LFcvWTaK+YKvmuTiHQ3SeIb/oeLNBv7q7/VrD
 9y6Pm34OECtC+cIRkq4iVQLIW9Sqaua4jNtYzIz1NKOUhUJQQSZx8yN0QbVQWnq1q0uY
 lhJg==
X-Gm-Message-State: ANhLgQ3wbJCF7OSwKrllLj2CsktM2o2Jb1ejGgHwz5prfIKNi7h1dZgz
 w26EE4/OImOVRiCcSRg2K5dDfg==
X-Google-Smtp-Source: ADFU+vuYjdCM+0T2o7saCgezXhu9RnRogVZPN6H0/ZPkKnWZxBuY5GQnR1RGVO/FZ47BMHplkvQV5g==
X-Received: by 2002:a1c:9a43:: with SMTP id c64mr2217618wme.173.1585126237494; 
 Wed, 25 Mar 2020 01:50:37 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o16sm33892229wrs.44.2020.03.25.01.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 01:50:37 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v4 6/8] drm/meson: overlay: setup overlay for Amlogic FBC
 Memory Saving mode
Date: Wed, 25 Mar 2020 09:50:23 +0100
Message-Id: <20200325085025.30631-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200325085025.30631-1-narmstrong@baylibre.com>
References: <20200325085025.30631-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_015038_984831_E1713ADC 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mjourdan@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 ppaalanen@gmail.com, linux-amlogic@lists.infradead.org, brian.starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setup the Amlogic FBC decoder for the VD1 video overlay plane to use
a different superblock size for the Memory Saving mode.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_overlay.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index 51fa038ad5d7..8b9d4984b2a7 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -487,6 +487,9 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 					  AFBC_HOLD_LINE_NUM(8) |
 					  AFBC_BURST_LEN(2);
 
+		if (fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING)
+			priv->viu.vd1_afbc_mode |= AFBC_BLK_MEM_MODE;
+
 		priv->viu.vd1_afbc_en = 0x1600 | AFBC_DEC_ENABLE;
 
 		priv->viu.vd1_afbc_conv_ctrl = AFBC_CONV_LBUF_LEN(256);
@@ -672,12 +675,17 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 	}
 
 	if (priv->viu.vd1_afbc) {
+		/* Default mode is 4k per superblock */
+		unsigned long block_size = 4096;
 		unsigned long body_size;
 
-		/* Default mode is 4k per superblock */
+		/* 8bit mem saving mode is 3072bytes per superblock */
+		if (priv->viu.vd1_afbc_mode & AFBC_BLK_MEM_MODE)
+			block_size = 3072;
+
 		body_size = (ALIGN(priv->viu.vd1_stride0, 64) / 64) *
 			    (ALIGN(priv->viu.vd1_height0, 32) / 32) *
-			    4096;
+			    block_size;
 
 		priv->viu.vd1_afbc_body_addr = priv->viu.vd1_addr0 >> 4;
 
@@ -763,6 +771,8 @@ static const uint32_t supported_drm_formats[] = {
 };
 
 static const uint64_t format_modifiers[] = {
+	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC |
+				   DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING),
 	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC),
 	DRM_FORMAT_MOD_LINEAR,
 	DRM_FORMAT_MOD_INVALID,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
