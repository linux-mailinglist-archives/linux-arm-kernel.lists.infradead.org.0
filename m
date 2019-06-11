Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D253D1D3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1d9keJyHkbR/IWUFfatmU5sjTTpDeDjhvoOKe7bY39M=; b=fU20JnJ0rnjD3e
	WFfP2Ic4GeGI83ubZILI72wg5ALYSwad8EiHTIAHW6abxwJx/HkHivKyqlYDQWiijYpuNobyl4zRD
	LoerW9X3amgZUqyZxoKT1XxQh3dWViC9kxscojlDiXYll9zOshqKGOx01LsWsgNJSNojfLgMpiPew
	hRjzAXcGD1gSUFrGAM4RtIiqLBRgQpvI7DiwTXGVX78Ko906cseGXSiUUVg4LbV/kjG9ATcjUtNlL
	3Zpc5ArEGTt4jLzZMM6ZCEjL3NStacSFp1Z8vXEjF+vQnUZyCV7cxc6XLPKtMwBZrEM3+I8S6hx4+
	CazsJ8FJjspMDRM1hegA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajLU-0004cp-BY; Tue, 11 Jun 2019 16:10:00 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajLJ-0004c0-2d
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:09:51 +0000
Received: by mail-qk1-x743.google.com with SMTP id m14so7990318qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 09:09:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5KL5I0SAkC3HgYY38CLkIrnaNCzSCjH7Gekw6kD3yas=;
 b=Dhyyf6Zs2HJKXIA76COVerElgsDhNbHhr+jXsqwtv8uMA34bUEia2lD2YjSnWtRQkd
 aOfZ+XHC44LA2MnyWyibwejHLvta4yB1SAHpkH1gwGqNFPWrv/XfjUc7ewC1PKLqE6pP
 y4/SIIlXJZQnnuU6ZwYAcs7bnUMnQMqxxcZh2m2LttRmcoZllCMXiLJEr/Co/FKzBtbH
 z+cYWR5m55ciVzS1VYKKy1LL1HmmUA40AxOLfkQm/h7/HL4Z5vgHdGGz69k0qcQz7n64
 3e6aD2610yVgT5q9qbL5NjbeI3FG8rixtayH0FjJcomDORrVIFnNmwtnWPPNo9JBESkW
 4ZfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5KL5I0SAkC3HgYY38CLkIrnaNCzSCjH7Gekw6kD3yas=;
 b=WUJjtBz1WSBn9ZVk8rbNhA1W7pPk83+gqNeQQ080GB4Uz8xTbz8Pm0SRgvDfgH8Pnx
 WoyHHrj5hvh3hOdLJa/D/C7PA7B6Bskn87SL0dQ0oC60Nr3mUDX4RvPOivLivZDYxyn4
 Q7JotPgT6/eEr7SJZf9avSnnZMobZe7vfDU/2olaJ5jTpBkGF1NQLHxiWLuIUwLT5OLo
 ASQytfG+E5c+vyEoe7a8+rgaBI6hpu41YYpOH34N7DSVt2B/bHoLSDTIEGjTyM0LOe+A
 AjGWHdBTRJQ1SRduTtGx+KbaMjzdhFxVcW94LS1EpFa31v5hS+P/8jyT3q5/BnVN+wzU
 ausw==
X-Gm-Message-State: APjAAAVTTjpm6MKAHHcMWVzp6rqGhp75veVlQ9woUKgum9kDwuQCBxuq
 gk87Uk7c4ZSB2cl+fmWM0F7F3Q==
X-Google-Smtp-Source: APXvYqyouimZW0B4aAIYOj5G80WyFXPhJBMKXWTYK8Mb73HlKgta+rCD0kZUTBneLOUCeujgCmbY7g==
X-Received: by 2002:a37:502:: with SMTP id 2mr57254612qkf.93.1560269386635;
 Tue, 11 Jun 2019 09:09:46 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d188sm6755094qkf.40.2019.06.11.09.09.45
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 09:09:46 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 06/11] drm/rockchip: Use dirtyfb helper
Date: Tue, 11 Jun 2019 12:08:20 -0400
Message-Id: <20190611160844.257498-7-sean@poorly.run>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611160844.257498-1-sean@poorly.run>
References: <20190611160844.257498-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_090949_127873_1C74C058 
X-CRM114-Status: GOOD (  12.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
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
Changes in v5:
- None

Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-7-sean@poorly.run
Link to v4: https://patchwork.freedesktop.org/patch/msgid/20190508160920.144739-7-sean@poorly.run

Suggested-by: Daniel Vetter <daniel@ffwll.ch>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 31030cf81bc97..a888e31aa545a 100644
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
