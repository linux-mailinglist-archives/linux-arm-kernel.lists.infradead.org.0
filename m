Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646E0B6D3F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 22:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jyl8ZkX6nPKi++2bgfu13Uqi0K2/avYH9mFg4rZNJ0E=; b=u4qpMTmE0A8ycL
	THLcagusVVXR4RzN7PNZXiHK3fJoHDMFD9nl2PtzLqAjcB6s7uDQ05JdBH1RaJimW4cRSTeYpg8AH
	qqFcZXo/m4GCKIxeHroSpvUwpVZLADraOBnNFeYuvKMLInB+zWxjKEhXApoZIjBQN7yQqw6yzwhni
	ccifBqWfmjrTLcP/4EnJ1Hr6afa31wowZGhZ5UsOh3Gk4zuOt/M2x3rBoM9yYWtOO9f/UF89EQk3G
	YSBjOVP5YAQ7CUlV/NTTddv6j16k313M6E2yIi+rlIF78JUeAe0Dss3f9m5A4nsP5H3svxJdZY5Hx
	1JFxqlEJYh27XwAxzv1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAgEz-0007ni-J3; Wed, 18 Sep 2019 20:07:53 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAgEn-0007mP-CP
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 20:07:43 +0000
Received: by mail-yb1-xb43.google.com with SMTP id t15so466007ybg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 13:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8wRVg7Xp6X9fH0kFWOO4JmqVs8YGObxnFzNWoZ7A1I4=;
 b=JQuBapSX6N+q1mvLBlG+ko3vJHHAReQ7+RKU3yLX8PMtWnaVC4/ePwCDnv7GNJlyu7
 5ufKPZlQCzxQ9sW8GoVcTdN27S1aYjJxUATQvTcg7SeRZX0lQiBzGTGnUvUp3OywcLL6
 DwiqhbAREYbkAySZMFBtgEhdPeLwqOCPvoQwEKkMNomCPbtDc9pMmUvVAVmUAO+q4eM/
 1S8XNWIN8qsRv6pVHT+mU4v/LbO3hi/oO1q18koj2TDm4uLVJz2aaOOQFxwrlYQd663U
 RJa1Ph7YnozA8evZr52kZ9iUmxvSDyuRh7qlvLdxFop0HltioB8rvx/7+Uq2nOO90V7S
 O/8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8wRVg7Xp6X9fH0kFWOO4JmqVs8YGObxnFzNWoZ7A1I4=;
 b=NuAAM0n+N9s+NpxbjuvoEfAM4T0GZGfFvKPYVGdlJiL+deRn0QT3yzx85sXqDVr3om
 29ZG77rnKzcbK693wl9SVuDj+r60SkoZFEfVhVJsxEpBWIWeiqazfpiJWuqiG9gCqK/G
 euJ/Z78Xt4muDvZrLfw+CWWRk2Irtd+dZQv/WxYUfZrLx6ZX8bCckHEKZ3s5BKNq4KVJ
 risXDBgc1UDwrsO09DzFckEqtG7Tl/S27fNvft3J9Zo52WM4yPS2gSThfxWKTNu3xJ1e
 UQOj/wuVJQk5S6GmhYBHD0b+AS1foQ9Em30lhBVet8+EeMQNlFNGfoSyEJCTG6IdXJU+
 /PmQ==
X-Gm-Message-State: APjAAAWqgDAKS534iHyNXOLKNMY3DAWUJe4KHHD5TwXxUoNKbTPQtu9W
 dwnvkKd7FcchGT9P7Dp0en649w==
X-Google-Smtp-Source: APXvYqxp93kVw5JZ6ziN8xitJxe4JOB8xsrtmFJlgaaZHb9kWTb2WQcrBfBg/UL18FVpSe/EetmYyg==
X-Received: by 2002:a25:2e44:: with SMTP id b4mr3154900ybn.9.1568837259968;
 Wed, 18 Sep 2019 13:07:39 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id 207sm1429317ywu.106.2019.09.18.13.07.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 13:07:39 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 2/3] drm: Measure Self Refresh Entry/Exit times to avoid
 thrashing
Date: Wed, 18 Sep 2019 16:07:29 -0400
Message-Id: <20190918200734.149876-2-sean@poorly.run>
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
In-Reply-To: <20190918200734.149876-1-sean@poorly.run>
References: <20190918200734.149876-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_130741_534614_3B3374CB 
X-CRM114-Status: GOOD (  22.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Sean Paul <seanpaul@chromium.org>,
 daniel@ffwll.ch, jekarl@iki.fi, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Currently the self refresh idle timer is a const set by the crtc. This
is fine if the self refresh entry/exit times are well-known for all
panels used on that crtc. However panels and workloads can vary quite a
bit, and a timeout which works well for one doesn't work well for
another.

In the extreme, if the timeout is too short we could get in a situation
where the self refresh exits are taking so long we queue up a self refresh
entry before the exit commit is even finished.

This patch changes the idle timeout to a moving average of the entry
times + a moving average of exit times + the crtc constant.

This patch was tested on rockchip, with a kevin CrOS panel the idle
delay averages out to about ~235ms (35 entry + 100 exit + 100 const). On
the same board, the bob panel idle delay lands around ~340ms (90 entry
+ 150 exit + 100 const).

WRT the dedicated mutex in self_refresh_data, it would be nice if we
could rely on drm_crtc.mutex to protect the average times, but there are
a few reasons why a separate lock is a better choice:
- We can't rely on drm_crtc.mutex being held if we're doing a nonblocking
  commit
- We can't grab drm_crtc.mutex since drm_modeset_lock() doesn't tell us
  whether the lock was already held in the acquire context (it eats
  -EALREADY), so we can't tell if we should drop it or not
- We don't need such a heavy-handed lock for what we're trying to do,
  commit ordering doesn't matter, so a point-of-use lock will be less
  contentious

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190917200443.64481-2-sean@poorly.run

Changes in v2:
- Migrate locking explanation from comment to commit msg (Daniel)
- Turf constant entry delay and multiply the avg times by 2 (Daniel)
---
 drivers/gpu/drm/drm_atomic_helper.c         | 20 ++++++
 drivers/gpu/drm/drm_self_refresh_helper.c   | 72 +++++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  5 +-
 include/drm/drm_self_refresh_helper.h       |  6 +-
 4 files changed, 90 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index 9d7e4da6c292..3f13fa9a9e24 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -26,6 +26,7 @@
  */
 
 #include <linux/dma-fence.h>
+#include <linux/ktime.h>
 
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
@@ -1570,9 +1571,23 @@ static void commit_tail(struct drm_atomic_state *old_state)
 {
 	struct drm_device *dev = old_state->dev;
 	const struct drm_mode_config_helper_funcs *funcs;
+	ktime_t start;
+	s64 commit_time_ms;
 
 	funcs = dev->mode_config.helper_private;
 
+	/*
+	 * We're measuring the _entire_ commit, so the time will vary depending
+	 * on how many fences and objects are involved. For the purposes of self
+	 * refresh, this is desirable since it'll give us an idea of how
+	 * congested things are. This will inform our decision on how often we
+	 * should enter self refresh after idle.
+	 *
+	 * These times will be averaged out in the self refresh helpers to avoid
+	 * overreacting over one outlier frame
+	 */
+	start = ktime_get();
+
 	drm_atomic_helper_wait_for_fences(dev, old_state, false);
 
 	drm_atomic_helper_wait_for_dependencies(old_state);
@@ -1582,6 +1597,11 @@ static void commit_tail(struct drm_atomic_state *old_state)
 	else
 		drm_atomic_helper_commit_tail(old_state);
 
+	commit_time_ms = ktime_ms_delta(ktime_get(), start);
+	if (commit_time_ms > 0)
+		drm_self_refresh_helper_update_avg_times(old_state,
+						 (unsigned long)commit_time_ms);
+
 	drm_atomic_helper_commit_cleanup_done(old_state);
 
 	drm_atomic_state_put(old_state);
diff --git a/drivers/gpu/drm/drm_self_refresh_helper.c b/drivers/gpu/drm/drm_self_refresh_helper.c
index 9095cebf2147..68f4765a5896 100644
--- a/drivers/gpu/drm/drm_self_refresh_helper.c
+++ b/drivers/gpu/drm/drm_self_refresh_helper.c
@@ -5,6 +5,7 @@
  * Authors:
  * Sean Paul <seanpaul@chromium.org>
  */
+#include <linux/average.h>
 #include <linux/bitops.h>
 #include <linux/slab.h>
 #include <linux/workqueue.h>
@@ -50,10 +51,17 @@
  * atomic_check when &drm_crtc_state.self_refresh_active is true.
  */
 
+#define SELF_REFRESH_AVG_SEED_MS 200
+
+DECLARE_EWMA(psr_time, 4, 4)
+
 struct drm_self_refresh_data {
 	struct drm_crtc *crtc;
 	struct delayed_work entry_work;
-	unsigned int entry_delay_ms;
+
+	struct mutex avg_mutex;
+	struct ewma_psr_time entry_avg_ms;
+	struct ewma_psr_time exit_avg_ms;
 };
 
 static void drm_self_refresh_helper_entry_work(struct work_struct *work)
@@ -121,6 +129,44 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
 	drm_modeset_acquire_fini(&ctx);
 }
 
+/**
+ * drm_self_refresh_helper_update_avg_times - Updates a crtc's SR time averages
+ * @state: the state which has just been applied to hardware
+ * @commit_time_ms: the amount of time in ms that this commit took to complete
+ *
+ * Called after &drm_mode_config_funcs.atomic_commit_tail, this function will
+ * update the average entry/exit self refresh times on self refresh transitions.
+ * These averages will be used when calculating how long to delay before
+ * entering self refresh mode after activity.
+ */
+void drm_self_refresh_helper_update_avg_times(struct drm_atomic_state *state,
+					      unsigned int commit_time_ms)
+{
+	struct drm_crtc *crtc;
+	struct drm_crtc_state *old_crtc_state, *new_crtc_state;
+	int i;
+
+	for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state,
+				      new_crtc_state, i) {
+		struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;
+		struct ewma_psr_time *time;
+
+		if (old_crtc_state->self_refresh_active ==
+		    new_crtc_state->self_refresh_active)
+			continue;
+
+		if (new_crtc_state->self_refresh_active)
+			time = &sr_data->entry_avg_ms;
+		else
+			time = &sr_data->exit_avg_ms;
+
+		mutex_lock(&sr_data->avg_mutex);
+		ewma_psr_time_add(time, commit_time_ms);
+		mutex_unlock(&sr_data->avg_mutex);
+	}
+}
+EXPORT_SYMBOL(drm_self_refresh_helper_update_avg_times);
+
 /**
  * drm_self_refresh_helper_alter_state - Alters the atomic state for SR exit
  * @state: the state currently being checked
@@ -152,6 +198,7 @@ void drm_self_refresh_helper_alter_state(struct drm_atomic_state *state)
 
 	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
 		struct drm_self_refresh_data *sr_data;
+		unsigned int delay;
 
 		/* Don't trigger the entry timer when we're already in SR */
 		if (crtc_state->self_refresh_active)
@@ -161,8 +208,13 @@ void drm_self_refresh_helper_alter_state(struct drm_atomic_state *state)
 		if (!sr_data)
 			continue;
 
+		mutex_lock(&sr_data->avg_mutex);
+		delay = (ewma_psr_time_read(&sr_data->entry_avg_ms) +
+			 ewma_psr_time_read(&sr_data->exit_avg_ms)) * 2;
+		mutex_unlock(&sr_data->avg_mutex);
+
 		mod_delayed_work(system_wq, &sr_data->entry_work,
-				 msecs_to_jiffies(sr_data->entry_delay_ms));
+				 msecs_to_jiffies(delay));
 	}
 }
 EXPORT_SYMBOL(drm_self_refresh_helper_alter_state);
@@ -170,12 +222,10 @@ EXPORT_SYMBOL(drm_self_refresh_helper_alter_state);
 /**
  * drm_self_refresh_helper_init - Initializes self refresh helpers for a crtc
  * @crtc: the crtc which supports self refresh supported displays
- * @entry_delay_ms: amount of inactivity to wait before entering self refresh
  *
  * Returns zero if successful or -errno on failure
  */
-int drm_self_refresh_helper_init(struct drm_crtc *crtc,
-				 unsigned int entry_delay_ms)
+int drm_self_refresh_helper_init(struct drm_crtc *crtc)
 {
 	struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;
 
@@ -189,8 +239,18 @@ int drm_self_refresh_helper_init(struct drm_crtc *crtc,
 
 	INIT_DELAYED_WORK(&sr_data->entry_work,
 			  drm_self_refresh_helper_entry_work);
-	sr_data->entry_delay_ms = entry_delay_ms;
 	sr_data->crtc = crtc;
+	mutex_init(&sr_data->avg_mutex);
+	ewma_psr_time_init(&sr_data->entry_avg_ms);
+	ewma_psr_time_init(&sr_data->exit_avg_ms);
+
+	/*
+	 * Seed the averages so they're non-zero (and sufficiently large
+	 * for even poorly performing panels). As time goes on, this will be
+	 * averaged out and the values will trend to their true value.
+	 */
+	ewma_psr_time_add(&sr_data->entry_avg_ms, SELF_REFRESH_AVG_SEED_MS);
+	ewma_psr_time_add(&sr_data->exit_avg_ms, SELF_REFRESH_AVG_SEED_MS);
 
 	crtc->self_refresh_data = sr_data;
 	return 0;
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 2f821c58007c..613404f86668 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -39,8 +39,6 @@
 #include "rockchip_drm_vop.h"
 #include "rockchip_rgb.h"
 
-#define VOP_SELF_REFRESH_ENTRY_DELAY_MS 100
-
 #define VOP_WIN_SET(vop, win, name, v) \
 		vop_reg_set(vop, &win->phy->name, win->base, ~0, v, #name)
 #define VOP_SCL_SET(vop, win, name, v) \
@@ -1563,8 +1561,7 @@ static int vop_create_crtc(struct vop *vop)
 	init_completion(&vop->line_flag_completion);
 	crtc->port = port;
 
-	ret = drm_self_refresh_helper_init(crtc,
-					   VOP_SELF_REFRESH_ENTRY_DELAY_MS);
+	ret = drm_self_refresh_helper_init(crtc);
 	if (ret)
 		DRM_DEV_DEBUG_KMS(vop->dev,
 			"Failed to init %s with SR helpers %d, ignoring\n",
diff --git a/include/drm/drm_self_refresh_helper.h b/include/drm/drm_self_refresh_helper.h
index 397a583ccca7..5b79d253fb46 100644
--- a/include/drm/drm_self_refresh_helper.h
+++ b/include/drm/drm_self_refresh_helper.h
@@ -12,9 +12,9 @@ struct drm_atomic_state;
 struct drm_crtc;
 
 void drm_self_refresh_helper_alter_state(struct drm_atomic_state *state);
+void drm_self_refresh_helper_update_avg_times(struct drm_atomic_state *state,
+					      unsigned int commit_time_ms);
 
-int drm_self_refresh_helper_init(struct drm_crtc *crtc,
-				 unsigned int entry_delay_ms);
-
+int drm_self_refresh_helper_init(struct drm_crtc *crtc);
 void drm_self_refresh_helper_cleanup(struct drm_crtc *crtc);
 #endif
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
