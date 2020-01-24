Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12AD148A82
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qvl2mBCFKh6NsvYGPH8UUfkFQ+vEiRw3aHhOxNXLUi8=; b=bUtEvFiHN8ZmJp
	fTeQuv6laBUs+p7Cbbz3NIiqk12rSmZeIUTHPjcF1/Wv1K84JYEXvetkhrHnpndFTr82NjB6fgsc6
	uZV9VZpAsO7Nn/fjBH7EhLRUUp208o3XiODH+UR3F8rum4RenYCPfZRMXv6lIN+F76CoRbGx8pfiC
	YrOl7JI1JCcrKluyJWULTHXHj5xS4N5OopSpfsKlyAXl8zND3UocEDGLns74onCgGixpNNUNW5dHD
	q/x2skVk72oQ1qMaAd7/2qEykQdZQJ8vJffcPrebhpyt8dP4T5PqeX8NXLS4Rr5nfc/i9QmmAmlyL
	LYLN0/eA8X1bkQSMe0pA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0HD-0001PQ-4q; Fri, 24 Jan 2020 14:49:39 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EF-0007dJ-2z; Fri, 24 Jan 2020 14:46:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C9402AFA8;
 Fri, 24 Jan 2020 14:46:33 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 06/22] staging: vc04_services: get rid of
 vchiq_platform_use_suspend_timer()
Date: Fri, 24 Jan 2020 15:46:00 +0100
Message-Id: <20200124144617.2213-7-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064635_444051_31172B10 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function always returns 0, delete the function and all code
conditional to it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      | 11 ---
 .../interface/vchiq_arm/vchiq_arm.c           | 84 ++-----------------
 .../interface/vchiq_arm/vchiq_arm.h           | 16 +---
 3 files changed, 7 insertions(+), 104 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index ca30bfd52919..1ffb2aea947c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -284,17 +284,6 @@ vchiq_platform_videocore_wanted(struct vchiq_state *state)
 {
 	return 1; // autosuspend not supported - videocore always wanted
 }
-
-int
-vchiq_platform_use_suspend_timer(void)
-{
-	return 0;
-}
-void
-vchiq_dump_platform_use_state(struct vchiq_state *state)
-{
-	vchiq_log_info(vchiq_arm_log_level, "Suspend timer not in use");
-}
 void
 vchiq_platform_handle_timeout(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 4545df573c90..a75d5092cc73 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -48,9 +48,6 @@
 int vchiq_arm_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
-#define SUSPEND_TIMER_TIMEOUT_MS 100
-#define SUSPEND_RETRY_TIMER_TIMEOUT_MS 1000
-
 #define VC_SUSPEND_NUM_OFFSET 3 /* number of values before idle which are -ve */
 static const char *const suspend_state_names[] = {
 	"VC_SUSPEND_FORCE_CANCELED",
@@ -79,8 +76,6 @@ static const char *const resume_state_names[] = {
  * requested */
 #define FORCE_SUSPEND_TIMEOUT_MS 200
 
-static void suspend_timer_callback(struct timer_list *t);
-
 struct user_service {
 	struct vchiq_service *service;
 	void *userdata;
@@ -2384,12 +2379,7 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		 * completion while videocore is suspended. */
 		set_resume_state(arm_state, VC_RESUME_RESUMED);
 
-		arm_state->suspend_timer_timeout = SUSPEND_TIMER_TIMEOUT_MS;
-		arm_state->suspend_timer_running = 0;
 		arm_state->state = state;
-		timer_setup(&arm_state->suspend_timer, suspend_timer_callback,
-			    0);
-
 		arm_state->first_connect = 0;
 
 	}
@@ -2517,27 +2507,6 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 	}
 }
 
-/* should be called with the write lock held */
-inline void
-start_suspend_timer(struct vchiq_arm_state *arm_state)
-{
-	del_timer(&arm_state->suspend_timer);
-	arm_state->suspend_timer.expires = jiffies +
-		msecs_to_jiffies(arm_state->suspend_timer_timeout);
-	add_timer(&arm_state->suspend_timer);
-	arm_state->suspend_timer_running = 1;
-}
-
-/* should be called with the write lock held */
-static inline void
-stop_suspend_timer(struct vchiq_arm_state *arm_state)
-{
-	if (arm_state->suspend_timer_running) {
-		del_timer(&arm_state->suspend_timer);
-		arm_state->suspend_timer_running = 0;
-	}
-}
-
 static inline int
 need_resume(struct vchiq_state *state)
 {
@@ -2626,28 +2595,6 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 	return;
 }
 
-void
-vchiq_check_suspend(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-	write_lock_bh(&arm_state->susp_res_lock);
-	if (arm_state->vc_suspend_state != VC_SUSPEND_SUSPENDED &&
-			arm_state->first_connect &&
-			!vchiq_videocore_wanted(state)) {
-		vchiq_arm_vcsuspend(state);
-	}
-	write_unlock_bh(&arm_state->susp_res_lock);
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
-}
-
 /* This function should be called with the write lock held */
 int
 vchiq_check_resume(struct vchiq_state *state)
@@ -2702,9 +2649,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	}
 
 	write_lock_bh(&arm_state->susp_res_lock);
-
-	stop_suspend_timer(arm_state);
-
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
@@ -2799,15 +2743,11 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	--(*entity_uc);
 
 	if (!vchiq_videocore_wanted(state)) {
-		if (vchiq_platform_use_suspend_timer()) {
-			start_suspend_timer(arm_state);
-		} else {
-			vchiq_log_info(vchiq_susp_log_level,
-				"%s %s count %d, state count %d - suspending",
-				__func__, entity, *entity_uc,
-				arm_state->videocore_use_count);
-			vchiq_arm_vcsuspend(state);
-		}
+		vchiq_log_info(vchiq_susp_log_level,
+			"%s %s count %d, state count %d - suspending",
+			__func__, entity, *entity_uc,
+			arm_state->videocore_use_count);
+		vchiq_arm_vcsuspend(state);
 	} else
 		vchiq_log_trace(vchiq_susp_log_level,
 			"%s %s count %d, state count %d",
@@ -2902,17 +2842,6 @@ vchiq_instance_set_trace(struct vchiq_instance *instance, int trace)
 	instance->trace = (trace != 0);
 }
 
-static void suspend_timer_callback(struct timer_list *t)
-{
-	struct vchiq_arm_state *arm_state =
-					from_timer(arm_state, t, suspend_timer);
-	struct vchiq_state *state = arm_state->state;
-
-	vchiq_log_info(vchiq_susp_log_level,
-		"%s - suspend timer expired - check suspend", __func__);
-	vchiq_check_suspend(state);
-}
-
 enum vchiq_status
 vchiq_use_service(unsigned int handle)
 {
@@ -3028,8 +2957,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		"--- Overall vchiq instance use count %d", vc_use_count);
 
 	kfree(service_data);
-
-	vchiq_dump_platform_use_state(state);
 }
 
 enum vchiq_status
@@ -3059,7 +2986,6 @@ vchiq_check_service(struct vchiq_service *service)
 			arm_state->videocore_use_count,
 			suspend_state_names[arm_state->vc_suspend_state +
 						VC_SUSPEND_NUM_OFFSET]);
-		vchiq_dump_service_use_state(service->state);
 	}
 out:
 	return ret;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 35889a65b17f..6daeb3e4f4b1 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -54,9 +54,6 @@ struct vchiq_arm_state {
 	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
-	struct timer_list suspend_timer;
-	int suspend_timer_timeout;
-	int suspend_timer_running;
 
 	/* Global use count for videocore.
 	** This is equal to the sum of the use counts for all services.  When
@@ -121,20 +118,14 @@ vchiq_platform_suspend(struct vchiq_state *state);
 extern int
 vchiq_platform_videocore_wanted(struct vchiq_state *state);
 
-extern int
-vchiq_platform_use_suspend_timer(void);
-
 extern void
 vchiq_dump_platform_use_state(struct vchiq_state *state);
 
-extern void
-vchiq_dump_service_use_state(struct vchiq_state *state);
-
 extern struct vchiq_arm_state*
 vchiq_platform_get_arm_state(struct vchiq_state *state);
 
-extern int
-vchiq_videocore_wanted(struct vchiq_state *state);
+extern struct vchiq_arm_state*
+vchiq_platform_get_arm_state(struct vchiq_state *state);
 
 extern enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
@@ -166,7 +157,4 @@ extern void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state);
 
-extern void
-start_suspend_timer(struct vchiq_arm_state *arm_state);
-
 #endif /* VCHIQ_ARM_H */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
