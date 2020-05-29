Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 546DB1E81B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:22:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3fj+egQ1pNY8hsuJs0LBftOR6huQgBYeHLvNGfZH/g=; b=Oz53VIppb4Zb9V
	07VrZhBFdjNi3XRVkoJcgkMjv9+v3/6V7I34S45mzGC8u1o41sKiWJ3IRRO6rGmZ+nSB/oUKu8NgQ
	ltVse3KB5d6XOJvVCUE28ZS5yCnep4pg0coDFfzNzaYyTIpeuX5nEe3RusiIPcV684dQO54xKo1aI
	2e4oJfwihtSPLh/Kl/AnEv43QFxSlFTvDL5vzICn2d2sLKZx/nkJial5FNo0xfbxHRgFCUTEvvIOO
	GjtQk8JzJGcX5TZecUs90S/Z1frQHLG73PBmAkycWn6H/b8s4LOMtwx2IWo1xWjB8UUnys4BOx9/i
	+T3HPW8SxC2uVUrcQ9fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jegpc-0001Ls-56; Fri, 29 May 2020 15:22:00 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jegnZ-0005qK-3L
 for linux-arm-kernel@lists.infradead.org; Fri, 29 May 2020 15:19:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id k26so4006049wmi.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 29 May 2020 08:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bxjlfwjwrOxt5UTQatxMHEDDG1cEpZr3A7ziLWB5/Ps=;
 b=CdyvHuXNeinarWetQUHY23NlfBktrI7NsPvPK4QlHcreNJ7+g9PbgZNBsYMwf6ax1F
 RNCIJSRRvKuHs2LPiVSO7cQ2FC1FLwlDYFieXVxz029U7D9UY6XnCP6xhTOW32ww8PbI
 9SVmJQIUTw6tsV37Ot+vVFVc9FC3FhMpAhtiqeJ6zYodDKT9gTDNFqSLZO6n5hp90b1s
 IttYpeJ2CZlHqOfXsmc9m7dlSnR+I2D+ShB1y8QMmgOGioE0Gg07UpAg8BQN3tfpYgBr
 PJtFYp8P8I/wA0SUC+lCCNFKZKCWuWIGe15F6Wdopx11rqkVe+TBk2NBHTzpI0EMniTH
 appQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bxjlfwjwrOxt5UTQatxMHEDDG1cEpZr3A7ziLWB5/Ps=;
 b=phrHFW7DJCRJ+Wemc0qJCihGF39nFtSi/HsBjCpaXisPcbYH6giYROIzCuKCIctvdb
 DVNfumbRsZ3y1wn0mSeyt7fRZPRPKnLPpIKmB/cuEXv04mVF8tpCxNYYWSbt69NIji7m
 SQiEWlYMrMbSzh2qPKCes7Jczxg/NLfaPuHTEObeK80zmQx8odxHaa7epbrpWEfB/8CM
 JCd/SEjtKnXCeLs3ZfFZqYfCJcwpFzPUgOSrRu2rHItUUvShByilihQ4duRPRGM/AEn9
 n8cannrKxv+aWMNuwfoP5dy8RoOEBDLeRu1HR6aKP1i2Onb1kI7csbpSgVALrEnbwJIX
 ojaQ==
X-Gm-Message-State: AOAM531VlHuX1EU1q/v0ysZd9VvYuzdO1WcbnyFNFFFbCaH/CeBlzWtu
 YQ3+WCd0un18lHmQswvwaDze4Q==
X-Google-Smtp-Source: ABdhPJxh/bVaeh2MVgKx4F3/KaCcTUoYmLlR6YS3YGbWKR0BbqEsj+GvB2QgVpXtXKQc6FhL6LDVEg==
X-Received: by 2002:a05:600c:2259:: with SMTP id
 a25mr3528245wmm.32.1590765587441; 
 Fri, 29 May 2020 08:19:47 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:acf8:18a8:b3a5:a17b])
 by smtp.gmail.com with ESMTPSA id x66sm9220421wmb.40.2020.05.29.08.19.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 May 2020 08:19:46 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v7 4/6] drm/meson: overlay: setup overlay for Amlogic FBC
 Memory Saving mode
Date: Fri, 29 May 2020 17:19:33 +0200
Message-Id: <20200529151935.13418-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200529151935.13418-1-narmstrong@baylibre.com>
References: <20200529151935.13418-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_081953_213608_FB08D7A9 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setup the Amlogic FBC decoder for the VD1 video overlay plane to use
a different superblock size for the Memory Saving mode.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_overlay.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index 2713d008cee8..b5c502876428 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -487,6 +487,10 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 					  AFBC_HOLD_LINE_NUM(8) |
 					  AFBC_BURST_LEN(2);
 
+		if (fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC(0,
+						AMLOGIC_FBC_OPTION_MEM_SAVING))
+			priv->viu.vd1_afbc_mode |= AFBC_BLK_MEM_MODE;
+
 		priv->viu.vd1_afbc_en = 0x1600 | AFBC_DEC_ENABLE;
 
 		priv->viu.vd1_afbc_conv_ctrl = AFBC_CONV_LBUF_LEN(256);
@@ -672,12 +676,17 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
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
 
@@ -735,6 +744,9 @@ static bool meson_overlay_format_mod_supported(struct drm_plane *plane,
 		unsigned int layout = modifier &
 			DRM_FORMAT_MOD_AMLOGIC_FBC(
 				__fourcc_mod_amlogic_layout_mask, 0);
+		unsigned int options =
+			(modifier >> __fourcc_mod_amlogic_options_shift) &
+			__fourcc_mod_amlogic_options_mask;
 
 		if (format != DRM_FORMAT_YUV420_8BIT &&
 		    format != DRM_FORMAT_YUV420_10BIT) {
@@ -749,6 +761,13 @@ static bool meson_overlay_format_mod_supported(struct drm_plane *plane,
 			return false;
 		}
 
+		if (options &&
+		    options != AMLOGIC_FBC_OPTION_MEM_SAVING) {
+			DRM_DEBUG_KMS("%llx invalid layout %x\n",
+				      modifier, layout);
+			return false;
+		}
+
 		return true;
 	}
 
@@ -782,6 +801,8 @@ static const uint32_t supported_drm_formats[] = {
 };
 
 static const uint64_t format_modifiers[] = {
+	DRM_FORMAT_MOD_AMLOGIC_FBC(AMLOGIC_FBC_LAYOUT_BASIC,
+				   AMLOGIC_FBC_OPTION_MEM_SAVING),
 	DRM_FORMAT_MOD_AMLOGIC_FBC(AMLOGIC_FBC_LAYOUT_BASIC, 0),
 	DRM_FORMAT_MOD_LINEAR,
 	DRM_FORMAT_MOD_INVALID,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
