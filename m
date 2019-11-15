Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE274FD8B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 10:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6qtetTdwlZl03omq9EoGWlYPt43G+TFfbGReWcl6Kpg=; b=eLwBq45PXHOir8
	AjTZfmCjKUvA50U7YxJ36iAtHWjb7609Ft1uN/UjkOTxnliakrAzqj9kuX8MbHTULPj78kr8moA7C
	FNULkBH4CrkK76p+CGjc5WpQfWZk2PU9X40W+lSAMWTgHXPUZSsLDljVGCeXyoAx6M4+2gmmDSS2d
	R8CSiK3KqW8De7aB0WLnh6mff3+HTkjOXEbtlfKzICYHfjXaeVygk+IMwpxWSf+cCC8DJPJbi/G6J
	nE741TSjbvUBFZJ2/I1P/VDgbsAWcPoxkQQIGdPAGWNVQL12SaJ9kAjiecsgKMamvMbLP0gYy48BB
	PNNR3ZjGBakWjTMYpJXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVXnR-0007Ol-Fs; Fri, 15 Nov 2019 09:21:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVXnH-0007Mq-BC
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 09:21:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id l1so8904977wme.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 01:21:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oQB86j8FZQH4Sh7rDbVmMqNvIL9AFAXhmpfcG7mbgqg=;
 b=Ld4XloE2FMFzkHUAG7n2jsiQXHCt5cLaiA94t087F7u+01dZJeZ0TRKPko5uVepFBd
 ivSQf+gMl0XzwE6nw2V9W0qYXt0eV5v5UbehbFWKwbeTXDsPmN8p357V3VvmDe6y7oD1
 b/jgpdfFOh0OLKqUH9XDrAKaEhu0GFl7FddtI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oQB86j8FZQH4Sh7rDbVmMqNvIL9AFAXhmpfcG7mbgqg=;
 b=GV3foT4wxoFXD9tRJqMVmHz4dbLTAB7nj3VGhlcxpN6mA3ie+4JppFYX0H1/wq+z/B
 AB5/BT9fcVuNB4HDwsP3SZIF4tDlbvZjDPZMyvdsVGZ+gDmyN8hdNcaadiYcNZW2jLXy
 +/XKcSkHgp9PD31lyHW/V8tOYLfE1K9Z+b10pZaNpiLueopUAUkQovffJA1eFGWwWx6F
 P6bIDKd10rf06brBQhIK8JLnUgWzqPvqJtnVALqyXI+omp24N3jbP8CvdXinE1EhtAG6
 RuweVNA24HbGxK87cNjbqX+m8dwUXODXgwOyVlJR5bCxppCGjTjjV6mCW0E1sVL32PDt
 jCGg==
X-Gm-Message-State: APjAAAUO3m67A9JGPjfJL8yblTnoU2UM4hnVLrRqrHGLs9kH+wGExlbf
 k+8HxpA/19JH5NqsVYxSiDO6Lw==
X-Google-Smtp-Source: APXvYqzfNw+xEwRsZgEJ5EaZ5mtAtKcnYpFttPkjdcMRICstqKjbeIL1lMoNPriAWVWuc8ftUFw/fQ==
X-Received: by 2002:a7b:c762:: with SMTP id x2mr13261637wmk.128.1573809689026; 
 Fri, 15 Nov 2019 01:21:29 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id 11sm8987506wmi.8.2019.11.15.01.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 01:21:28 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: [PATCH 2/8] drm/atmel: ditch fb_create wrapper
Date: Fri, 15 Nov 2019 10:21:14 +0100
Message-Id: <20191115092120.4445-3-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
References: <20191115092120.4445-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_012131_443473_CFDFDD44 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Boris Brezillon <bbrezillon@kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Spotted while looking through them all.

Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Boris Brezillon <bbrezillon@kernel.org>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
index 92640298ad41..8dc917a1270b 100644
--- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
+++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_dc.c
@@ -557,12 +557,6 @@ static irqreturn_t atmel_hlcdc_dc_irq_handler(int irq, void *data)
 	return IRQ_HANDLED;
 }
 
-static struct drm_framebuffer *atmel_hlcdc_fb_create(struct drm_device *dev,
-		struct drm_file *file_priv, const struct drm_mode_fb_cmd2 *mode_cmd)
-{
-	return drm_gem_fb_create(dev, file_priv, mode_cmd);
-}
-
 struct atmel_hlcdc_dc_commit {
 	struct work_struct work;
 	struct drm_device *dev;
@@ -657,7 +651,7 @@ static int atmel_hlcdc_dc_atomic_commit(struct drm_device *dev,
 }
 
 static const struct drm_mode_config_funcs mode_config_funcs = {
-	.fb_create = atmel_hlcdc_fb_create,
+	.fb_create = drm_gem_fb_create,
 	.atomic_check = drm_atomic_helper_check,
 	.atomic_commit = atmel_hlcdc_dc_atomic_commit,
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
