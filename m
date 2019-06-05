Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4DB135EDB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 16:13:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6CSe+TIEi+fTXV5Q7UTxdBGMGdBJ1RKizpL3hYpY3ck=; b=Eaf1iSEeiQsLUZ
	WivlyHXsBnJne6e8WzN9fatK4HINHCCAvakgWxEjqCFVqLZTEBCyhP/Rh07DjRFD1sd0C+DCY4sDE
	auERb8QQP30MxuUNPXfTDcipoqIOfp5R4htt9aHWvJSZPoM9s3OMXVBUgUu1nuQOSs72P3dX0MvYq
	HeGc9XLHhPDf9CSHTe9D5au6a1Tx0OfHIOpD6Opuj0TuAA/ar/mw9OmNOGEFSIJFpUzn+omxex4CM
	Dy/TGJYPhoi6KOTHIAi6Pw4U6uVwYreLqpDuIOuBnJf4K4zkAk2mmKX0Ah7jOg57UjznOg458dWAA
	3sEB66Eowvrvn5i+DXdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWfZ-0008FO-Q4; Wed, 05 Jun 2019 14:13:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWf0-0007cF-R7
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 14:13:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so1590406wrl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 07:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QJV2EelmzwU1/yznyPFkc/fxpPopz48+1zy1DsarmDE=;
 b=TVdJqRZFfU5s0FX3DJNaUJBa2wh3dlpycCNSUJUcDpNztvmmX7eFg6a+jgjhjp3qbp
 gQHVEwCL4w4ZnmBCCNQOzLmQ0xRkyb0gjzO6PQfC1KWeuZVPLOTTJfFXgbJfkEgqNm0L
 WMPL2OgOFvdi39tuwXV61CrYn9Fl1MBkA6pFoEdnUXyk/pPydlqd/rJ+lc8ByEjTKuY3
 u2dE2rGaX0W+8/+nrwyyqMzgBV2jkkmvxPC6u82FSHu8rvUtIBZnlJDfCYmtP3A9B2H+
 FfqafncdaU4zneDGniLi5/V3HygLwRsR2wVPzsZBfwlD/LS/QOi259lfN7GnIZt5I0fq
 KxJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QJV2EelmzwU1/yznyPFkc/fxpPopz48+1zy1DsarmDE=;
 b=XM4WFa+0nwznMG8r8mMh1OqfpNYq5KqEYkX6CjIw0PYIIBJH6qedFgyEx9Y9bJabCY
 SO0Ox7+3pyIyIILfGxG78RTOJxS658G8kvqXFQxU5Uw4LTGeHLTcr+FdEpZhceOta82m
 jM+wNOcnPGfAaTjp3fH2nPSXQn6fztofLukMr+S08jGmaIxfwjKw12axKDiffIQBrwqF
 mOD5t+usp124jIpn8/t0FUqxWFXS/W970LRjr1R1Se/wUnGi7xvm5hQJFJkIwSPDPkoW
 Qhwk0S4I0PknnbmohcWvC8xTbPtFc8SR7Miy0epSQ/68216vvwJfPGKY6NZQ8KSo6UQx
 jeMw==
X-Gm-Message-State: APjAAAWgTlMa5V6OHHHWWciPk3yl+ZfKE6xaP882T9dYN0fUWAxkHMqw
 bHubnHJ65EBmJhGd2UmU5j5CLA==
X-Google-Smtp-Source: APXvYqyfg6omR+ZPIC7qJMVZoiXxGQOWD9YskUpPvpHHMZWtFQOlsNcFXDkrbb+rAuRH69aSGBrBgA==
X-Received: by 2002:adf:a38d:: with SMTP id l13mr19424196wrb.187.1559743977659; 
 Wed, 05 Jun 2019 07:12:57 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s8sm36292546wra.55.2019.06.05.07.12.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 07:12:57 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 2/2] drm/meson: fix G12A primary plane disabling
Date: Wed,  5 Jun 2019 16:12:53 +0200
Message-Id: <20190605141253.24165-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605141253.24165-1-narmstrong@baylibre.com>
References: <20190605141253.24165-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_071303_085717_2B1CB003 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

The G12A Primary plane was disabled by writing in the OSD1 configuration
registers, but this caused the plane blender to stall instead of continuing
blended only the overlay plane.

Fix this by disabling the OSD1 plane in the blender registers, and also
enabling it back using the same register.

Fixes: 490f50c109d1 ("drm/meson: Add G12A support for OSD1 Plane")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_crtc.c  | 2 ++
 drivers/gpu/drm/meson/meson_plane.c | 4 ++--
 drivers/gpu/drm/meson/meson_viu.c   | 3 +--
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index 50a9a96720b9..aa8ea107524e 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -252,6 +252,8 @@ static void meson_g12a_crtc_enable_osd1(struct meson_drm *priv)
 	writel_relaxed(priv->viu.osb_blend1_size,
 		       priv->io_base +
 		       _REG(VIU_OSD_BLEND_BLEND1_SIZE));
+	writel_bits_relaxed(3 << 8, 3 << 8,
+			    priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
 }
 
 static void meson_crtc_enable_vd1(struct meson_drm *priv)
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index b788280895c6..d90427b93a51 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -318,8 +318,8 @@ static void meson_plane_atomic_disable(struct drm_plane *plane,
 
 	/* Disable OSD1 */
 	if (meson_vpu_is_compatible(priv, "amlogic,meson-g12a-vpu"))
-		writel_bits_relaxed(BIT(0) | BIT(21), 0,
-			priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
+		writel_bits_relaxed(3 << 8, 0,
+				    priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
 	else
 		writel_bits_relaxed(VPP_OSD1_POSTBLEND, 0,
 				    priv->io_base + _REG(VPP_MISC));
diff --git a/drivers/gpu/drm/meson/meson_viu.c b/drivers/gpu/drm/meson/meson_viu.c
index 462c7cb3e1bd..4b2b3024d371 100644
--- a/drivers/gpu/drm/meson/meson_viu.c
+++ b/drivers/gpu/drm/meson/meson_viu.c
@@ -405,8 +405,7 @@ void meson_viu_init(struct meson_drm *priv)
 				0 << 16 |
 				1,
 				priv->io_base + _REG(VIU_OSD_BLEND_CTRL));
-		writel_relaxed(3 << 8 |
-				1 << 20,
+		writel_relaxed(1 << 20,
 				priv->io_base + _REG(OSD1_BLEND_SRC_CTRL));
 		writel_relaxed(1 << 20,
 				priv->io_base + _REG(OSD2_BLEND_SRC_CTRL));
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
