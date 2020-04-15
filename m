Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C4E1A94B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 09:42:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCYGgvtGqfSjW2EvYFGOKaALypx+g3fStBUC2IraZuU=; b=EYvITm7Tvhr8Dq
	Y66Mzv+AftjN5caV0XVOecT5QPfkfJmGNDKPXxrAnpkHyWw7pC5fkIVRZEnlijJxqDGvjtA3qaOtF
	AASA7/ABfQGLGe6B0TjkKrPQUinJbt+0cNCSdl8/Io5nrsOIhU7MLFLXFEiTbVibIQaxWo2F73pvs
	jg3WKwogKnn3zTEYuLumt1UlVrfBZMH42GdKOWUQVxhWaH+Q83xMe1MEnIs/l06odFqVrvwL6zi7v
	gruMXx2Mo2D7+nszEaxIjY0qmXeme0cGbP9oyrU4vKinrRvnN1tn/couoZrJVwG1+emdoNv14mTPM
	NJgGXvNlqw97MeOAFjjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOcgS-00083T-C8; Wed, 15 Apr 2020 07:42:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOcfz-0007rL-Hr
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 07:41:42 +0000
Received: by mail-wr1-x444.google.com with SMTP id f13so17852904wrm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Apr 2020 00:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Bgyl8gwEhgw+1DWHG2zt0So6E/0SeXCV3Ne1xirJ9SU=;
 b=RnzWg22wpo2WhG14fxwTjDsLx7d+MMOUoe/Y5LZwI0RpQXNu2jriSG9MlQGXielvTq
 RNl6hIdqqy6crc11kcuQR1aLPDxagvBeZelPptN5biJLV7s3iRBSi/z9+RmJUdpKfzWf
 zJ5B3Y/k8P0dP/+9t0MxSw2FRViLtuo5BhIZg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Bgyl8gwEhgw+1DWHG2zt0So6E/0SeXCV3Ne1xirJ9SU=;
 b=N1+S1fkyZGVV3uLuBjO7/GoO/QD2RpOsnluBGkXN9p/gPKaoYStmkQvltG4LXIV4AD
 hl9vtLs0C70C0ZRSyIzdxIjynH8En1FYc4OrXUTVNyvXGc0bh8UDJPY7aZPy30ts+fOb
 OhtXVrBMN1IRnNjUbjRiVzd+2c8EOy9ymnqTlyyhfpb0hVuzgPXegZ43trQD5JTVFDc4
 puAw9t0wU6Zeq3JoCb8tmY5zjOOkKhumQgkDaU7oiRwU7Rovxx8dlbF6Pn7v7bwtOiAF
 0F7CylFItM65s897DJoLlLcHO7pOj2Blx2Fz5xG2I3rKGDfyyEpCC2fseM0LPCJ1lW3Q
 197w==
X-Gm-Message-State: AGi0PuYBskgr5zN9soFvQOJxx1MniJUjV57FxUOEKnzO99pTp51dV9Zm
 gVv45/whGXmPYrwVcRvmANky47BhgWg=
X-Google-Smtp-Source: APiQypLgjeMnycEVi9VU+fR3cGLcz5D+n0wscsSidJIQlXvYlvgFlxboFTZ5TW2dlAug0JuLNGuGeg==
X-Received: by 2002:a5d:474b:: with SMTP id o11mr26353053wrs.4.1586936497587; 
 Wed, 15 Apr 2020 00:41:37 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id u30sm1878552wru.13.2020.04.15.00.41.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Apr 2020 00:41:37 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Subject: [PATCH 56/59] drm/aspeed: Use managed drmm_mode_config_cleanup
Date: Wed, 15 Apr 2020 09:40:31 +0200
Message-Id: <20200415074034.175360-57-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
References: <20200415074034.175360-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_004139_598809_D0319706 
X-CRM114-Status: GOOD (  12.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Joel Stanley <joel@jms.id.au>, Daniel Vetter <daniel.vetter@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since aspeed doesn't use devm_kzalloc anymore we can use the managed
mode config cleanup.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Joel Stanley <joel@jms.id.au>
Cc: Andrew Jeffery <andrew@aj.id.au>
Cc: linux-aspeed@lists.ozlabs.org
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/aspeed/aspeed_gfx_drv.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
index 6b27242b9ee3..6e464b84a256 100644
--- a/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
+++ b/drivers/gpu/drm/aspeed/aspeed_gfx_drv.c
@@ -63,15 +63,15 @@ static const struct drm_mode_config_funcs aspeed_gfx_mode_config_funcs = {
 	.atomic_commit		= drm_atomic_helper_commit,
 };
 
-static void aspeed_gfx_setup_mode_config(struct drm_device *drm)
+static int aspeed_gfx_setup_mode_config(struct drm_device *drm)
 {
-	drm_mode_config_init(drm);
-
 	drm->mode_config.min_width = 0;
 	drm->mode_config.min_height = 0;
 	drm->mode_config.max_width = 800;
 	drm->mode_config.max_height = 600;
 	drm->mode_config.funcs = &aspeed_gfx_mode_config_funcs;
+
+	return drmm_mode_config_init(drm);
 }
 
 static irqreturn_t aspeed_gfx_irq_handler(int irq, void *data)
@@ -144,7 +144,9 @@ static int aspeed_gfx_load(struct drm_device *drm)
 	writel(0, priv->base + CRT_CTRL1);
 	writel(0, priv->base + CRT_CTRL2);
 
-	aspeed_gfx_setup_mode_config(drm);
+	ret = aspeed_gfx_setup_mode_config(drm);
+	if (ret < 0)
+		return ret;
 
 	ret = drm_vblank_init(drm, 1);
 	if (ret < 0) {
@@ -181,7 +183,6 @@ static int aspeed_gfx_load(struct drm_device *drm)
 static void aspeed_gfx_unload(struct drm_device *drm)
 {
 	drm_kms_helper_poll_fini(drm);
-	drm_mode_config_cleanup(drm);
 }
 
 DEFINE_DRM_GEM_CMA_FOPS(fops);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
