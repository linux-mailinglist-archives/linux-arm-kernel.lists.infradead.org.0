Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C824DD25
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:52:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gUqwEuc3bQ1BUWG60NOu/5J8RPzv4O1gT3f6w+PPDTs=; b=JGSwZ4U+/8j169
	pTqfiyCbYEBsROIXtIQaCSEhQ9qABF9hYKqonXHTMfoXT+JWZY4tvxx2wIk5DMxaWVB1Ef7lByYbK
	m91OhuNOr1StcYXwXW3+jCNrfEXTDNLp7zko8tt1hTcuPhlNyoPU4yvoFwCb9RVlJrpNZm8CwwZ4L
	TvRYu2Y50MWSJCosVmhj4Dl+tz7SCOLrE07RZ0o7rN6cpSVHlRsvYexgrSBgkj5anZpCHgR1Zteyx
	M0FjvnFKKrKxpJls5Xe026RHXyfYoNPQrXi/WrvufYH+N+WC7K/O9Hwb+J+xlZFkyBXEcWtpo74nu
	ewJISi7mE25Ucze2DOcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL15m-00066Y-7u; Mon, 29 Apr 2019 07:52:50 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL15e-00065a-ME
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:52:44 +0000
Received: by mail-wm1-x343.google.com with SMTP id 26so12675771wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 00:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/+GdzCUbXbc9TnjbK+IzgC3Rn7LJK/U+L3O1XBIq//I=;
 b=E8jD+2dgpZNlzi2mli6iSqHgtX8ej4k2fD+p50X7E9LOuOgNBJ8gjAiK/IBRlJ+3OM
 /ezhla4lzKCiT7PZUIbPtAXYRSXzCpZOCkroWKcKrh8BWQv4R5GbvbhvcB1fx7/d8FSy
 G4CAF6FAJedyge2rIG6AwicnNEPM8G73yQvzHGrBoS+jwiRcXIKSh6VbwpVAZ0l4VTNI
 wok7bVcf5eQrVfmQTxDMGjxS30rWsNi12GwMpYTMAgbocRh2CqzeZWkF+rgUFVyywy24
 Im77RGr1kKsu0YTlS+T2nujXKe01K7Q05lij2Nt6vydzWaZfM69r7GVKjGUj5UymDHbh
 +GdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=/+GdzCUbXbc9TnjbK+IzgC3Rn7LJK/U+L3O1XBIq//I=;
 b=Gn2NIrEaEDUd/o+c4vIXmDHqYBB1gU6Q7xE02kRuTnZWc1LfVdb2+DSDlM3DJb6Rb3
 f8rRe5tqZCjhH8RLAJyii1/9ngGmROOTckeMnZf0bRrzHXNvPO2z6OFtvm03y8brNY1Z
 VvBvtHGUUjiOE3n1UkE2wJoGWXckahTVoMlKpwbYwpuocojfYQ6694L6JF7jCU8gyHzk
 i0ZwL0OVZW3GVcMjR4Zg+zXpLcAys0AGuEXc/kon/NUeaQl2GLtf2uHVK3vX1sjRc4Fn
 u8Qiws/+fyCDE7LeqjArzn1YzxcC1EMFHnSshHc0346QZZTXTS489VOZrPYqY4XJ5Fvh
 q8dw==
X-Gm-Message-State: APjAAAUN1wGjd2DeoRdgwe3t5yGlgAjxe3CpPFaGDcm3C2nesj0CcwMV
 HrCIDAA0+ARdey9Bs15R3H8m2g==
X-Google-Smtp-Source: APXvYqyrm9gcWdptLmdNHOe30KFoldLfiJoNxGhNez9U3SHQHqIDbxiDVW0eb3kiP7omvUckOLprWA==
X-Received: by 2002:a1c:495:: with SMTP id 143mr8270669wme.109.1556524360393; 
 Mon, 29 Apr 2019 00:52:40 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id q4sm5118457wrg.24.2019.04.29.00.52.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 29 Apr 2019 00:52:39 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/meson: Add support for XBGR8888 & ABGR8888 formats
Date: Mon, 29 Apr 2019 09:52:38 +0200
Message-Id: <20190429075238.7884-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_005242_723032_4ACE521B 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add missing XBGR8888 & ABGR8888 formats variants from the primary plane.

Fixes: bbbe775ec5b5 ("drm: Add support for Amlogic Meson Graphic Controller")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_plane.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index bf8f1fab63aa..b8f6b08a89a6 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -165,6 +165,13 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
 		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
 					      OSD_COLOR_MATRIX_32_ARGB;
 		break;
+	case DRM_FORMAT_XBGR8888:
+		/* For XRGB, replace the pixel's alpha by 0xFF */
+		writel_bits_relaxed(OSD_REPLACE_EN, OSD_REPLACE_EN,
+				    priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
+		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
+					      OSD_COLOR_MATRIX_32_ABGR;
+		break;
 	case DRM_FORMAT_ARGB8888:
 		/* For ARGB, use the pixel's alpha */
 		writel_bits_relaxed(OSD_REPLACE_EN, 0,
@@ -172,6 +179,13 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
 		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
 					      OSD_COLOR_MATRIX_32_ARGB;
 		break;
+	case DRM_FORMAT_ABGR8888:
+		/* For ARGB, use the pixel's alpha */
+		writel_bits_relaxed(OSD_REPLACE_EN, 0,
+				    priv->io_base + _REG(VIU_OSD1_CTRL_STAT2));
+		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_32 |
+					      OSD_COLOR_MATRIX_32_ABGR;
+		break;
 	case DRM_FORMAT_RGB888:
 		priv->viu.osd1_blk0_cfg[0] |= OSD_BLK_MODE_24 |
 					      OSD_COLOR_MATRIX_24_RGB;
@@ -356,7 +370,9 @@ static const struct drm_plane_funcs meson_plane_funcs = {
 
 static const uint32_t supported_drm_formats[] = {
 	DRM_FORMAT_ARGB8888,
+	DRM_FORMAT_ABGR8888,
 	DRM_FORMAT_XRGB8888,
+	DRM_FORMAT_XBGR8888,
 	DRM_FORMAT_RGB888,
 	DRM_FORMAT_RGB565,
 };
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
