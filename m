Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A8CC17DC6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:09:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zS9x6S0ixmj93rW/MLNKlTO4sWlruhF8Mv0tTP0tDgw=; b=lQmLrCncxOSwod
	j5ixNNXUmG3OXFD9bkt4SPW75cCMmp0IHSQ5v1akCU+egtP4RgdDxKKyCP75ZLEJ1vVyXADFQMq0p
	DNzb+z7TjeIA26fL15hEgh5fbK7sh/nZb2aq092BO24uzAxa3LZ3H2HwWfLR+ToJseklbGEBaiG3i
	OBUsjdJIBwJ4AIGpJxwgcxEFsiwiHfb0lnUY9VeSaQYc0XdYF8atPgEzdUj8kEUYoRQXcdyqQrA3j
	+dShJS7yjf6irx2lbXnt8mDhTUrx0WdAOM4QhN1bre2L7iuwzweIpH2hC9W5dOG0i4hG9iCDs+QGm
	zoJPl3TvBXFKfJ8higlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOP8c-0000ro-Cc; Wed, 08 May 2019 16:09:46 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOP8S-0000qi-V7
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:09:38 +0000
Received: by mail-qt1-x844.google.com with SMTP id i31so1111549qti.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=SSjzGScI7FWnThDcb7L6+9NbYWPOU1oEmSq7ubXMBrA=;
 b=b/Mzvp9NPtpNHKqVRbANgyrQcwT3N1aJFNvie3Z04eQTbUk6Qao33USN2IESlcHCOO
 4qnWQ0OSFA9kRNfw0U84tm6awagkWYPwG6lxiGHkQlacBIqYLmHbCoID7pE85RwJ6oWW
 fxCjWj0loJl7dr1aQl440frgop0Fsx3+xqDuR0iu3DGH+kYO/XBZ91bJw22MT3cefWmv
 9y+gjvaQnQ096PQRKvgg8gbPFShyevAenHdukkPFwgfEZVmYe7qW4oVd48HxFgI6IQar
 Fn788RAuaJM5XZ7ORF6O6nrqX9mxUfX5QCSmGbyiJwTNTf6qDqASZNABfmLhhypMhWKJ
 h7ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=SSjzGScI7FWnThDcb7L6+9NbYWPOU1oEmSq7ubXMBrA=;
 b=qMqRdqm5UaGuJjiEvVNgrShGUuLc1vezGCAbNdN9jxfB0D2cssoQRU20h9wQRHvveZ
 OU+mK5rshJlDpbIUvcj+NgSQbKpMMrHMCijMhyjVEN1uV4qjP2beZlDNwjN0p4EJFtxD
 PCMax/bdps4kmP0RnmrRM6e/6yBufECocoPckpGjRXUoHqQNCjMiVrdhueF9VPm3TxiO
 JjWBIuvOdH/yJFskd0jC23F9nQ0p72f/yXh+TEgtI77FaSfLeD3AYFTc1y7sSTYyu4Ew
 Q+QbHeEc0rEIJusify6kr70uMn9pBoDw0Oz59VIaQp1/xXyJRiISD2igFkdQ26pLGa5u
 oWCg==
X-Gm-Message-State: APjAAAU04DrgPzksRslBguwi8Wc05PP2S9sdlxzNuZbSDfsncWaiUcd6
 HZkMO8ATJKKgjXCiwyrPlpirXw==
X-Google-Smtp-Source: APXvYqyZLDk2aXR6xfKMLulFGaYRoZh1EvXTEYMzxva9aBfDueLN4c20IV9V9OJciZpl/JQmHfwuKQ==
X-Received: by 2002:ac8:2cc1:: with SMTP id 1mr32738783qtx.389.1557331775692; 
 Wed, 08 May 2019 09:09:35 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id s50sm10936877qts.39.2019.05.08.09.09.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:09:35 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 06/11] drm/rockchip: Use dirtyfb helper
Date: Wed,  8 May 2019 12:09:11 -0400
Message-Id: <20190508160920.144739-7-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508160920.144739-1-sean@poorly.run>
References: <20190508160920.144739-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_090937_005244_5846A708 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Instead of flushing all vops every time we get a dirtyfb call, use the
damage helper to kick off an atomic commit. Even though we don't use
damage clips, the helper commit will force us through the normal
psr_inhibit_get/put sequence.

Changes in v3:
- Added to the set
Changes in v4:
- None

Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-7-sean@poorly.run

Suggested-by: Daniel Vetter <daniel@ffwll.ch>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 97438bbbe389..02e81ca2d933 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -16,6 +16,7 @@
 #include <drm/drm.h>
 #include <drm/drmP.h>
 #include <drm/drm_atomic.h>
+#include <drm/drm_damage_helper.h>
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_probe_helper.h>
@@ -25,20 +26,10 @@
 #include "rockchip_drm_gem.h"
 #include "rockchip_drm_psr.h"
 
-static int rockchip_drm_fb_dirty(struct drm_framebuffer *fb,
-				 struct drm_file *file,
-				 unsigned int flags, unsigned int color,
-				 struct drm_clip_rect *clips,
-				 unsigned int num_clips)
-{
-	rockchip_drm_psr_flush_all(fb->dev);
-	return 0;
-}
-
 static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
 	.destroy       = drm_gem_fb_destroy,
 	.create_handle = drm_gem_fb_create_handle,
-	.dirty	       = rockchip_drm_fb_dirty,
+	.dirty	       = drm_atomic_helper_dirtyfb,
 };
 
 static struct drm_framebuffer *
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
