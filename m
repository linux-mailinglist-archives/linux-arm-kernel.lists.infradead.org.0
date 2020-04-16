Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BEC1AC9C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 17:27:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+1rMMJiiobjYjTA4Q8HaH/mAoVDTDTt3k5ENbCc44k=; b=PVyMsBosig+k1t
	wTBfXNvE94kEhy2jUXu/ZpP811zPiV/okXTLKVaFv/UUdkvHoi2vXy0Z88bJEUjMpdseaWSMGp7fK
	h6TuCdzb0DN4OB7FDYZUErvYgh3NVPkIwGX8jb5C2ICeCMDWQivJ1mI4UsvSerKg1y2TUu7gmgVX0
	KZ1mjpAew5g2+H2vyNQ2l9fw2lEYccspWEYRTMLWRcPA7VgJC82aNpHTx3xF4mMwsw1QTsGWDIjXR
	tBeMQTiE310bKbDCAhloc+HIcS626jT1ZlXN65BRMwOCFteJqkzPN0PA5ttvOI/hGpGJCecw5wleS
	6arwxzE7IydQ1tcS7EYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP6QS-0000bZ-Q9; Thu, 16 Apr 2020 15:27:36 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP6OE-0006x6-3D
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 15:25:24 +0000
Received: by mail-wr1-x442.google.com with SMTP id x18so5367201wrq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 08:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pAAPmG/Jb3adRgVZcI3+WEZjd0CmBHlfGNHq+xKmSJk=;
 b=gb9mZRBkNIdN2fCnMt+El5mgw2WvvGR6aS/C/2wNRDwfSozMtKfOA60GbKoEAcQKqh
 UFBrc3r4cbHmlEcOVWXrrYXuHdY0f1fx0OouQPqCX7h1efZVVSZTEuP+hUsuKSdDZJ53
 C3Qr94o4eDf55MkwbkY1s7dimuMAbqWaORbJU7dtwPzVEaPPMB4RSlWTIp6Fy7gKcdbW
 9j26s6VN79Do1I2hDyLrmomQw4UevEVOHs/cvpMJTx106IwRMAZZkFzmvIv7Oz++m1IQ
 qBdvcByMosAJKufkkMKkWn5QQdEmnzKEEQGR6aEPP5O1q+uHNwKg6Pu/h2Wd/piNNkQP
 EBkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pAAPmG/Jb3adRgVZcI3+WEZjd0CmBHlfGNHq+xKmSJk=;
 b=lKh9V8Oq4Cl5DCbdjiVYIeUIj1JRYT6wB/jd8IuiFtSW2GLJUl99WY1i9QrL/UE6At
 AsNBIIWqfbeHBFeX0AoWUBf1Hc4PrRZJmsfriq3xcTBg/U5DHYOSOvndumIsTp6/hTjI
 ErDz8adu66nYCvsIHbH6ZfGy06W7jLFzUdDR3PQp/RJc/GD++nF3LFUUeiajaB8mJLPF
 LcM8qDr4Dc39/XpjmERFuwjsfO4p3+GfF8Ukq3QPIjTX5yuN413f4OSqoBy++TIT8nTE
 TT3YJeTbOFh6s50rVMuNfpqJGAvm3hSQEr+Oz3Tagc5KTNixgypcUAhKshrkash8eE+9
 FdEw==
X-Gm-Message-State: AGi0PubqUkZ51YAQklPY1oGPgCn93xStG9TgFSS2Zq94XAOkVsppbV/p
 ax8aV/jL9JuSM9dCA0RH+bxMVQ==
X-Google-Smtp-Source: APiQypIYCGk/APKOgaU92vz2hRnB71h6Oa4IfHbO/xSY2Vhgx/msOHurLSBkaZDwyaPEWqpzBH8x2Q==
X-Received: by 2002:adf:c442:: with SMTP id a2mr33790736wrg.110.1587050716672; 
 Thu, 16 Apr 2020 08:25:16 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 i17sm18019489wru.39.2020.04.16.08.25.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Apr 2020 08:25:15 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v5 6/8] drm/meson: overlay: setup overlay for Amlogic FBC
 Memory Saving mode
Date: Thu, 16 Apr 2020 17:24:58 +0200
Message-Id: <20200416152500.29429-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200416152500.29429-1-narmstrong@baylibre.com>
References: <20200416152500.29429-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_082518_271300_B374C723 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 drivers/gpu/drm/meson/meson_overlay.c | 24 ++++++++++++++++++++++--
 1 file changed, 22 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index 3127bd1a5d70..bbf86e9fc0ca 100644
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
 
@@ -735,6 +743,9 @@ static bool meson_overlay_format_mod_supported(struct drm_plane *plane,
 		unsigned int layout = modifier &
 			DRM_FORMAT_MOD_AMLOGIC_FBC(
 				DRM_FORMAT_MOD_AMLOGIC_FBC_LAYOUT_MASK);
+		unsigned int options = modifier &
+			DRM_FORMAT_MOD_AMLOGIC_FBC(
+				DRM_FORMAT_MOD_AMLOGIC_FBC_OPTIONS_MASK);
 
 		if (format != DRM_FORMAT_YUV420_8BIT &&
 		    format != DRM_FORMAT_YUV420_10BIT) {
@@ -749,6 +760,13 @@ static bool meson_overlay_format_mod_supported(struct drm_plane *plane,
 			return false;
 		}
 
+		if (options &&
+		    options != DRM_FORMAT_MOD_AMLOGIC_FBC_MEM_SAVING) {
+			DRM_DEBUG_KMS("%llx invalid layout %x\n",
+				      modifier, layout);
+			return false;
+		}
+
 		return true;
 	}
 
@@ -782,6 +800,8 @@ static const uint32_t supported_drm_formats[] = {
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
