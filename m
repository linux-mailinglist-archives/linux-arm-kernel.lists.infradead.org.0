Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B8B1912DD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 15:23:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTx82Zo1TTwcrozXLlsq9y9VrbEyoSrzf4yB2VRLJyU=; b=cNKQnwrgXoANdq
	/wY7eA/SBiW0w/wASjDaWsYq4uIkjNpiDJAbhbP4sMNSFfxp3S7+XeYJfyorfm7NXM0OS57wK0+vB
	LTozYQomIxcV35loxZqRcpMFP3xkcNH1PM58TWWYfMvdkgKB7EobcDuuOtqDbzqiDWgaKmvmHxJgF
	/Gkv1UfnPw+F0tjmLnCxCtXHqRN3wznTPF3EqwKnufEYcG8y14f/QI491lunfWpZZ2E/My+O99I2q
	Wo7Yf3CqThFD/I8vgf/WOmdpw+eZh4LKvwPiDEUf33QvTnfB8LP8SlTWW9NnRXT4QDBn4srGHCIq/
	YdSAuaQA9eiXLw5XvadQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGkS8-0000bv-Bw; Tue, 24 Mar 2020 14:22:48 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGkPy-00077n-2d
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 14:20:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id c81so3386368wmd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 24 Mar 2020 07:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pMoqaL6yn4wVYVlvTr5RoruqY0oplnpZZkK4h3Bk1Vc=;
 b=j1P7KuTVSjxrPEtajniTPWPfAOlurldgsF/xktOKR/xrk7/1/NQs15p+Wh7faGwx5J
 31rujTLqTWRQMqH3/Qe4/2GOhv1LyhS6h3aQmndYeiWEtihu+gMRLJ8Mhsc4Atutwenr
 P5yimGaHugk71bQO+JmtIQ7GkIpIRgbfPi0L04cCM3jPUZ8Yg6RBzuOGm+sOD+wR9+90
 hG1wSKJEIKqlV5EB1NyWZFEzvJXJGDqbt4fg81lUn6ckvIHasxInI05zYHRS0tL/A6kF
 wHF7icX/QfK7X5YWY18rNDRgIKKk1LgiCm6vJjVPQiHDPsc7B2m0Uhv6VF7NQFKGCV42
 hC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pMoqaL6yn4wVYVlvTr5RoruqY0oplnpZZkK4h3Bk1Vc=;
 b=ksuFyVt5idJTc6Sa4BriycA5/Scc/ly+XhoFtKURsvu6V2bf7K43SBlXvsR5imzU7g
 M401qNiCa81NYtnIJcFwlkAIhOSALA+fNtNyTdbLX3iEDYwF8+pwRo3V82mRdaF3xsWG
 1/i+LOnCDiyEUwuwFgIFUPoVG14tIXpr5DhRV4WD5aMdTpl7LalhwoEmG/uqGIgBPx38
 Ok5JYdinx30EyPUHgpnHOiJldO+oWTMWPjYs3KvFB8FsqOhB8OhoQRHoYNhi3xshlX0h
 L1dysCRqJ6n/mVIxYYco3tcdtsIkrawy5qKAirwUj79fvTAEUuPEK4ljzEk0BkIxxnIq
 JZmQ==
X-Gm-Message-State: ANhLgQ3FNnZkf3rU1v8pnkoPmLnnSxbFAOv46xMNcJMBUfeEe/QzHyDD
 psc2AiirL+zp3QskuZnWgwrUcw==
X-Google-Smtp-Source: ADFU+vtdVs9Y/Tzl2+XQY7ViTUqyXqgfFO/2wOmSWtCEH4wZVZeKpxYXjUZe5vF6CoRkmPuskQbK2Q==
X-Received: by 2002:a1c:6605:: with SMTP id a5mr5962156wmc.32.1585059632470;
 Tue, 24 Mar 2020 07:20:32 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5c5f:613e:f775:b6a2])
 by smtp.gmail.com with ESMTPSA id o4sm28688472wrp.84.2020.03.24.07.20.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 07:20:32 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 7/7] drm/meson: overlay: setup overlay for Amlogic FBC
 Scatter Memory layout
Date: Tue, 24 Mar 2020 15:20:16 +0100
Message-Id: <20200324142016.31824-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200324142016.31824-1-narmstrong@baylibre.com>
References: <20200324142016.31824-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_072034_295340_C129BB4C 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mjourdan@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>,
 linux-kernel@vger.kernel.org, ppaalanen@gmail.com,
 linux-amlogic@lists.infradead.org, brian.starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setup the Amlogic FBC decoder for the VD1 video overlay plane to use
read the FBC header as Scatter Memory layout reference.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_overlay.c | 48 +++++++++++++++++----------
 1 file changed, 31 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index 8b9d4984b2a7..af4698ae5281 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -487,6 +487,9 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 					  AFBC_HOLD_LINE_NUM(8) |
 					  AFBC_BURST_LEN(2);
 
+		if (fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC_SCATTER)
+			priv->viu.vd1_afbc_mode |= AFBC_SCATTER_MODE;
+
 		if (fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING)
 			priv->viu.vd1_afbc_mode |= AFBC_BLK_MEM_MODE;
 
@@ -675,23 +678,32 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 	}
 
 	if (priv->viu.vd1_afbc) {
-		/* Default mode is 4k per superblock */
-		unsigned long block_size = 4096;
-		unsigned long body_size;
-
-		/* 8bit mem saving mode is 3072bytes per superblock */
-		if (priv->viu.vd1_afbc_mode & AFBC_BLK_MEM_MODE)
-			block_size = 3072;
-
-		body_size = (ALIGN(priv->viu.vd1_stride0, 64) / 64) *
-			    (ALIGN(priv->viu.vd1_height0, 32) / 32) *
-			    block_size;
-
-		priv->viu.vd1_afbc_body_addr = priv->viu.vd1_addr0 >> 4;
-
-		/* Header is after body content */
-		priv->viu.vd1_afbc_head_addr = (priv->viu.vd1_addr0 +
-						body_size) >> 4;
+		if (priv->viu.vd1_afbc_mode & AFBC_SCATTER_MODE) {
+			/*
+			 * In Scatter mode, the header contains the physical
+			 * body content layout, thus the body content
+			 * size isn't needed.
+			 */
+			priv->viu.vd1_afbc_head_addr = priv->viu.vd1_addr0 >> 4;
+			priv->viu.vd1_afbc_body_addr = 0;
+		} else {
+			/* Default mode is 4k per superblock */
+			unsigned long block_size = 4096;
+			unsigned long body_size;
+
+			/* 8bit mem saving mode is 3072bytes per superblock */
+			if (priv->viu.vd1_afbc_mode & AFBC_BLK_MEM_MODE)
+				block_size = 3072;
+
+			body_size = (ALIGN(priv->viu.vd1_stride0, 64) / 64) *
+				    (ALIGN(priv->viu.vd1_height0, 32) / 32) *
+				    block_size;
+
+			priv->viu.vd1_afbc_body_addr = priv->viu.vd1_addr0 >> 4;
+			/* Header is after body content */
+			priv->viu.vd1_afbc_head_addr = (priv->viu.vd1_addr0 +
+							body_size) >> 4;
+		}
 	}
 
 	priv->viu.vd1_enabled = true;
@@ -771,6 +783,8 @@ static const uint32_t supported_drm_formats[] = {
 };
 
 static const uint64_t format_modifiers[] = {
+	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_SCATTER |
+				   DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING),
 	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC |
 				   DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING),
 	DRM_FORMAT_MOD_AMLOGIC_FBC(DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_BASIC),
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
