Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF4935ED4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 16:13:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nlkA9M/gkjN4TUH/STRqfnvByFjIBL5tRyO8hk51gHM=; b=HoaibqcPPZbWUG
	uSRxLJUPEllneDiDaGctC1qFTIblIj6jpRpr47RHyReqGCCIQwW4VItyH0QEwtGoZGYK6DPImFuBd
	U49kCea3IQFjDarpc+bTIjk006ZkIiaVYzCz9O4AdSPGswgwTenvRImsezAhgwl6Jt0/KLOphvImF
	TMktVo19urVquf8uvOaLhx+StukfCt5byfsyVvfss72cigoM4VzRM6FAyZJj6erJhRBa5YUU4KJcx
	PtE7xYc275s+iLyZ61KW3r/JDJgx1PyCkg7BEE3qjrTB361CP+Vj/mx4uER71XPixDmk7vPryV40t
	S72hA/jPyRnMDD1Op6bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYWfK-0007rZ-Dj; Wed, 05 Jun 2019 14:13:22 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYWew-0007c4-Vo
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 14:13:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id c6so2481458wml.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 07:12:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CiicJKseqdKOg5DHKMcjVCBzkcBVtZ2N776bahkz4d8=;
 b=Asrc1pFrwP/vms/HaF6ahudawkZj7r6MSdAFZiQNwE+2rIPqYk39LYibggrg3PpASb
 Lxs45FxLnqC1K6Z/+7Qt29IjRcH8V0USApXqVIJh4XCCSi2Z/V/mSNnpJyrDyuj0XZz4
 qEF5f/ioRukigieqF0HWRUSDmdzxjPElHcPTn9y/2MPWUrxqfLK2lPsPJf0QpQjgrQ/V
 ZDzG5+XmDVDVT/CVqrOlrt0/1cB3v8Hp6w19zCN0YcksRErl4ZCUJcJaoMFkrkvOlwji
 SfSmivfvh6n+9o7pF6OSRL9rtTFVHzKJ3hcycaKKwx/ELndMtA0+ufNTmh2jnAMtY6RL
 UbYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CiicJKseqdKOg5DHKMcjVCBzkcBVtZ2N776bahkz4d8=;
 b=dh4cHgN7YBpOLmJqbgjLpz+kluZEG2nBTRCam/JRLhNUARXaREq7G52I5RFNgiud2C
 KznADg2Iq6XktvQpf/K02x+U+Ti+J3D0EdU5StPWLiP+hww0Srv6kpp8+6HTZLtF4cnb
 JJF6FDYxkKfPuqWtrwDuowV+jOYnK47AZAb9smDWeeofYFv3+Y7PeupZNGLKWpgR6OAd
 IRaJteCuDwUpvj7LXXMGOpUc5MR182oBtxyLue37fSmkhsd8uMj+Mjee+BrxtEErwhBG
 MF+Skr43ZDLCwD6j7brbM2HCPXh+DlY0KR74AGA3N+MhR4mwRYgKIv60z50ecDRSLskn
 1Zkg==
X-Gm-Message-State: APjAAAUMTEPewdUn5eU5MO89t6YaJYF1IbKGoLRt4N09pQxCE/efPQr4
 rk+j4VkIrdhQcDnTM+jyvlGaLw==
X-Google-Smtp-Source: APXvYqzI3IVVjrCS/CpME4PJLgA844fWjiI4G6tQsgpnScJPfDZYOVtvDPHviInkIWlgQ7OFwSUOYQ==
X-Received: by 2002:a1c:48c5:: with SMTP id
 v188mr21902049wma.175.1559743976973; 
 Wed, 05 Jun 2019 07:12:56 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id s8sm36292546wra.55.2019.06.05.07.12.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Jun 2019 07:12:56 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 1/2] drm/meson: fix primary plane disabling
Date: Wed,  5 Jun 2019 16:12:52 +0200
Message-Id: <20190605141253.24165-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190605141253.24165-1-narmstrong@baylibre.com>
References: <20190605141253.24165-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_071259_022833_781C9C15 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

The primary plane disable logic is flawed, when the primary plane is
disabled, it is re-enabled in the vsync irq when another plane is updated.

Handle the plane disabling correctly by handling the primary plane
enable flag in the primary plane update & disable callbacks.

Fixes: 490f50c109d1 ("drm/meson: Add G12A support for OSD1 Plane")
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_crtc.c  | 4 ----
 drivers/gpu/drm/meson/meson_plane.c | 4 +++-
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index 685715144156..50a9a96720b9 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -107,8 +107,6 @@ static void meson_g12a_crtc_atomic_enable(struct drm_crtc *crtc,
 			priv->io_base + _REG(VPP_OUT_H_V_SIZE));
 
 	drm_crtc_vblank_on(crtc);
-
-	priv->viu.osd1_enabled = true;
 }
 
 static void meson_crtc_atomic_enable(struct drm_crtc *crtc,
@@ -137,8 +135,6 @@ static void meson_crtc_atomic_enable(struct drm_crtc *crtc,
 			    priv->io_base + _REG(VPP_MISC));
 
 	drm_crtc_vblank_on(crtc);
-
-	priv->viu.osd1_enabled = true;
 }
 
 static void meson_g12a_crtc_atomic_disable(struct drm_crtc *crtc,
diff --git a/drivers/gpu/drm/meson/meson_plane.c b/drivers/gpu/drm/meson/meson_plane.c
index 22490047932e..b788280895c6 100644
--- a/drivers/gpu/drm/meson/meson_plane.c
+++ b/drivers/gpu/drm/meson/meson_plane.c
@@ -305,6 +305,8 @@ static void meson_plane_atomic_update(struct drm_plane *plane,
 		meson_plane->enabled = true;
 	}
 
+	priv->viu.osd1_enabled = true;
+
 	spin_unlock_irqrestore(&priv->drm->event_lock, flags);
 }
 
@@ -323,7 +325,7 @@ static void meson_plane_atomic_disable(struct drm_plane *plane,
 				    priv->io_base + _REG(VPP_MISC));
 
 	meson_plane->enabled = false;
-
+	priv->viu.osd1_enabled = false;
 }
 
 static const struct drm_plane_helper_funcs meson_plane_helper_funcs = {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
