Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C13122D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 21:50:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3ITFmarixtRgLYlf7hna7ikwI9cSpo2IGVeEf5gew0=; b=THyJBFYkBNDCqG
	S5ZFiUrHTFqB3BhLAIaMUjmcE9FkISNHqeQy2+PdwOOsVyBwHgnTN4+gMmWXgR2LEV0qMtwtLvoaj
	WofM9mfN8ThDtj5XSyfEzgBIAL7jTjvNZzi+tpYvzlDDxK/CjyNpjn5yAwU7l3n38Fpxr9yrVpgrG
	qe7I/G3o+YTQiJKXMxA9nw8O0wiw7wwPE8zYrmKvsB0WXZBZkjwX0dbMzNxrRmQELbBI0au1zO6w/
	b0EWK1NaHFMdfUN849UhMCntTiKHvwhQpYz2i3t36Bn2rSpBC6TJjfs/bhcp9tQleQ3DoI3AM9wIi
	8KSUoQcXyKqoLbu4/wLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHj4-0001B9-GR; Thu, 02 May 2019 19:50:38 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHiw-00019i-1N
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 19:50:31 +0000
Received: by mail-qk1-x743.google.com with SMTP id g141so2278041qke.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 12:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oFVSuZJraJRY8lf7zLGr4Icu987vmHl/cFcB0vPbwTo=;
 b=T4x6TwEZL9VIqTV12O2BFwvKSIPNN7BS9WFC88TrYAEmDjgKlJUnAIv9A8+/WllSG+
 UEKM5WL87d4xq6HgqE3QULfTmN3wFg+WXSaGzcEjqq6uQdn6pexuw5YUxuP5q3MRdpP0
 k3Yla/PYmhA6I8boHirx6ETAqZNcMr0GFIBYTthqChrZ6WnGBeKxuLWO9gDaXat+vsyU
 Js1Q05cJ8VnDT9G7OdqrMODWsVG0DnZXZHIwQlVCV8LvYPk4rP4n+NCw/Sde4IGdPeGU
 uPj25y1BH/NZO8Tv8SuVdgaYxeLGgs9MTgqCN5oTiQBBzshAYGSd2uIJNLvR5KNez/+j
 a3sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oFVSuZJraJRY8lf7zLGr4Icu987vmHl/cFcB0vPbwTo=;
 b=gHk8wJxjFr1X4EQTfZEk798mQniSDgVkF1zk6bVycfkAfjLlQinJHlLPT6UvPNBtx/
 X1KxKNGgnSQANKe5WwCMQEl9ytt+hbHT4AGfF4ZH0VGwR+aPhh3O4ehdlR0Oz06vUs1P
 yy+Oy51YqN35e16iX8IU1XVBP1mJHxItNRScmVSMSQOFOkPk0PAEMjF0qHp86xzn55D+
 YSalgU0c+EHUOoZvAyjFW4PC9hj8nhNB/LTWLhWMnsYFbES6QjRe1ROs6LbqZ1AjKSm1
 OWn2ko6ttTfZknf4GeFDdn8U5WvfIc5yn+P5Ub0IdmjJXCVtEj8y3UG2sLQDIFfB9OAI
 R+DA==
X-Gm-Message-State: APjAAAU+U2vOc2ZhaLf2nfM2MKxqU2OZGxcxLhiYjSwMK9msb/bsdON9
 5nW7ysvakED7BAyR17ZcGPQ9UQ==
X-Google-Smtp-Source: APXvYqxxFG9zgR3WVcDfPdsGy4UEJe7Y+styDVNNm4qQfqbwO4kMeleh9vCf98fyvnm6StgEl1J4Hw==
X-Received: by 2002:a37:4948:: with SMTP id w69mr4703738qka.122.1556826628609; 
 Thu, 02 May 2019 12:50:28 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k36sm34366qtc.52.2019.05.02.12.50.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:50:28 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 06/10] drm/rockchip: Use dirtyfb helper
Date: Thu,  2 May 2019 15:49:48 -0400
Message-Id: <20190502194956.218441-7-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190502194956.218441-1-sean@poorly.run>
References: <20190502194956.218441-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_125030_091802_CCBEE551 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
