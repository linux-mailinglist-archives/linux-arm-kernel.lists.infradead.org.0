Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 916863D1EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:11:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z9L12A8grsTzsMMAZCcG57cFdcmtJVbysYENg73UgmE=; b=u4OGPuUsinbPCN
	UHnk7VDfFkIjZj62MFxGJfVzzpB3BEZGlN87R6g/ypC7fLiFwvjZLc+0vNYOx+kIapd+Hjh3BHRTZ
	VRkr6uU54LALpClWFyp6wclnqvz243JH2qM7llVcGyu0oxrZZDUvYRQaEUStTbIFIVv70Ddvb8GTA
	AwQAht02BQLYNyz3t9LKiXfdJ/a/DwwJkiB+oQc0f8l7cs4Yz94bowgPlk6lEJdYWAmQWWS7Jc1v7
	I+go2uAVyes1NhbmC3fmX4aKErTN92vovjeD1nr8eXI5Uu1bfR7gLzXxaHjLvCJkCkJPLO5kObYgq
	VjlXThAJIoIrLWjV2NSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajNB-0007BM-4j; Tue, 11 Jun 2019 16:11:45 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajLp-00069U-Jn
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:10:26 +0000
Received: by mail-qt1-x844.google.com with SMTP id x2so14311696qtr.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 09:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tz/AUVSey/wOflyWIdYzAN5/grk2WqATm9EznIgBMVM=;
 b=QXlq9KQeRAcP6l7cDxQ8JFskwcaZTfh86gU4xOi4ruUP1zbdaqTgGaPDN9VDr2P9UH
 cHc6mmSZuNN5LF3v57maA9XO0bhW6hRiTZSg7P4aZ6zWF+CiHl1f+teZLfDjr19Nl2WV
 ThGiUQ8leI5wYSfeyL3jPmFGbFYFnjicFgR7WCczKep+ES/FV0wXXdzAM9RwIx0qSbDW
 QQN3r7GfAowq5Ig20SHE2VfRUnViG1ioUf1x6RBzTl61V15eEPfXfomtmDwms5LZcQ4B
 L/NSTs2r8Yr2NhO7s9vuWXJEHZB4iA+bCndOp1DSLtyL4MBaIMRAjpPtJzp99E1wzRL5
 Lwqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tz/AUVSey/wOflyWIdYzAN5/grk2WqATm9EznIgBMVM=;
 b=F1LlB25/el3f4Y2WTqOimfJInvn42n8fJmG4HuzG2VmgwLGwl9mshKCiBLDa+yUo17
 PjlgiguGSZbTAtuKduZJcAyUBCyGtfNw3d6Yz5dQYZHs3xL7SLiogIRddOOPj77+2KjS
 cNdyYakf9rWILvlGAZCFiHEIdra0FUrEyELMHx9II05ntlaUV50CnZOhrU4Ybho3wPDm
 wa36mkexBkCbS/0E3UR+5Zo2hlod+I7lJYA+claK0JrXrGixFNF5mcGazLV8YOWA1swk
 OmMxX1qOec7ySU5FogAncL2xSHSl+XG4cZHSYV/3ttq1602kG3bBD85gm1JPXf9It5YN
 cUhQ==
X-Gm-Message-State: APjAAAVy/7UqdJOtNjlJ+ONtQhV7HoatAHrK/v2ohMLhU8VSWMn//hkA
 ommXjlpIj8wCkYKuPHbU3TbZSg==
X-Google-Smtp-Source: APXvYqzMOvbS+JUhgBC0sm4gtzMEKEhPbRHwGxPx5xInW9hLhaVCB+hiwrJ/rgWT8Z4vhdABHo8X6A==
X-Received: by 2002:a0c:b90a:: with SMTP id u10mr14736266qvf.201.1560269419882; 
 Tue, 11 Jun 2019 09:10:19 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d188sm6755094qkf.40.2019.06.11.09.10.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 09:10:19 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 11/11] drm/rockchip: Use drm_atomic_helper_commit_tail_rpm
Date: Tue, 11 Jun 2019 12:08:25 -0400
Message-Id: <20190611160844.257498-12-sean@poorly.run>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611160844.257498-1-sean@poorly.run>
References: <20190611160844.257498-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_091021_764424_4E860675 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
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
Cc: Zain Wang <wzz@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>,
 Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Now that we use the drm psr helpers, we no longer need to hand-roll our
atomic_commit_tail implementation. So use the helper

Changes in v2:
- None
Changes in v3:
- None
Changes in v4:
- None
Changes in v5:
- None

Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190228210939.83386-6-sean@poorly.run
Link to v2: https://patchwork.freedesktop.org/patch/msgid/20190326204509.96515-5-sean@poorly.run
Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-11-sean@poorly.run
Link to v4: https://patchwork.freedesktop.org/patch/msgid/20190508160920.144739-12-sean@poorly.run

Cc: Zain Wang <wzz@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 21 +--------------------
 1 file changed, 1 insertion(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index e305b8a586de2..7d1c5d8e74487 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -112,27 +112,8 @@ rockchip_user_fb_create(struct drm_device *dev, struct drm_file *file_priv,
 	return ERR_PTR(ret);
 }
 
-static void
-rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
-{
-	struct drm_device *dev = old_state->dev;
-
-	drm_atomic_helper_commit_modeset_disables(dev, old_state);
-
-	drm_atomic_helper_commit_modeset_enables(dev, old_state);
-
-	drm_atomic_helper_commit_planes(dev, old_state,
-					DRM_PLANE_COMMIT_ACTIVE_ONLY);
-
-	drm_atomic_helper_commit_hw_done(old_state);
-
-	drm_atomic_helper_wait_for_vblanks(dev, old_state);
-
-	drm_atomic_helper_cleanup_planes(dev, old_state);
-}
-
 static const struct drm_mode_config_helper_funcs rockchip_mode_config_helpers = {
-	.atomic_commit_tail = rockchip_atomic_helper_commit_tail_rpm,
+	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
 };
 
 static const struct drm_mode_config_funcs rockchip_drm_mode_config_funcs = {
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
