Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00642148AA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:53:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sb5i/jY02oFXUTTjGHmRVQo44NzwFtbS8TQCuWz/Srk=; b=YQFJ3S0aORUi2x
	zuSmVvlwh8jMr6L69zCcF3Sfh2FNY86weSsQ9S4DBtgzUN3ZHLou21xXwlz+BMPIjSPon6zyn0Mui
	sg6dbVQvx9mOmcRwtjfuva+GvkPJogrU1ngT06b3POJHFWgaovE/ulks7/8gMxZgqOG4V5j427hKW
	ccvqchglI31CMfhy+71C57hou+bLu5MTcdS6qek9FRtQZJbOxctbcMcH3JCDmSUuVvqlFIwSJZYEV
	ZMR2o5+7blq7W9Gd1FZo6Sqxszq6BLN1JELonBoNRXlwrO0iPeZ7HF91pdst/dkRVWYj5ygQ/1tXt
	YRuBCXQ8pZ/MlIjMZScA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0KT-0005lt-Ej; Fri, 24 Jan 2020 14:53:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EP-0007mQ-Vj; Fri, 24 Jan 2020 14:46:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 65BA5AFA8;
 Fri, 24 Jan 2020 14:46:44 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 18/22] staging: vc04_services: Get of even more suspend/resume
 states
Date: Fri, 24 Jan 2020 15:46:12 +0100
Message-Id: <20200124144617.2213-19-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064646_364390_588DE2B3 
X-CRM114-Status: GOOD (  15.38  )
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

After the first states cleanup pass some set_suspend/resume_state()
calls disappeared which opened up even more opportunities for deletions.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 92 +------------------
 .../interface/vchiq_arm/vchiq_arm.h           | 11 ---
 2 files changed, 3 insertions(+), 100 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 8ec5a61c5d89..577ecfefce3c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -48,15 +48,8 @@
 int vchiq_arm_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
-#define VC_SUSPEND_NUM_OFFSET 3 /* number of values before idle which are -ve */
-static const char *const suspend_state_names[] = {
-	"VC_SUSPEND_IDLE",
-	"VC_SUSPEND_IN_PROGRESS",
-};
 #define VC_RESUME_NUM_OFFSET 1 /* number of values before idle which are -ve */
 static const char *const resume_state_names[] = {
-	"VC_RESUME_IDLE",
-	"VC_RESUME_REQUESTED",
 	"VC_RESUME_RESUMED"
 };
 /* The number of times we allow force suspend to timeout before actually
@@ -2361,63 +2354,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 	return VCHIQ_SUCCESS;
 }
 
-/*
-** Functions to modify the state variables;
-**	set_suspend_state
-**	set_resume_state
-**
-** There are more state variables than we might like, so ensure they remain in
-** step.  Suspend and resume state are maintained separately, since most of
-** these state machines can operate independently.  However, there are a few
-** states where state transitions in one state machine cause a reset to the
-** other state machine.  In addition, there are some completion events which
-** need to occur on state machine reset and end-state(s), so these are also
-** dealt with in these functions.
-**
-** In all states we set the state variable according to the input, but in some
-** cases we perform additional steps outlined below;
-**
-** VC_SUSPEND_IDLE - Initialise the suspend completion at the same time.
-**			The suspend completion is completed after any suspend
-**			attempt.  When we reset the state machine we also reset
-**			the completion.  This reset occurs when videocore is
-**			resumed, and also if we initiate suspend after a suspend
-**			failure.
-**
-** VC_SUSPEND_IN_PROGRESS - This state is considered the point of no return for
-**			suspend - ie from this point on we must try to suspend
-**			before resuming can occur.  We therefore also reset the
-**			resume state machine to VC_RESUME_IDLE in this state.
-**
-** VC_RESUME_IDLE - Initialise the resume completion at the same time.  The
-**			resume completion is in it's 'done' state whenever
-**			videcore is running.  Therefore, the VC_RESUME_IDLE
-**			state implies that videocore is suspended.
-**			Hence, any thread which needs to wait until videocore is
-**			running can wait on this completion - it will only block
-**			if videocore is suspended.
-*/
-
-void
-set_suspend_state(struct vchiq_arm_state *arm_state,
-		  enum vc_suspend_status new_state)
-{
-	/* set the state in all cases */
-	arm_state->vc_suspend_state = new_state;
-
-	/* state specific additional actions */
-	switch (new_state) {
-	case VC_SUSPEND_IDLE:
-		break;
-	case VC_SUSPEND_IN_PROGRESS:
-		set_resume_state(arm_state, VC_RESUME_IDLE);
-		break;
-	default:
-		BUG();
-		break;
-	}
-}
-
 void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state)
@@ -2427,14 +2363,8 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 
 	/* state specific additional actions */
 	switch (new_state) {
-	case VC_RESUME_IDLE:
-		reinit_completion(&arm_state->vc_resume_complete);
-		break;
-	case VC_RESUME_REQUESTED:
-		break;
 	case VC_RESUME_RESUMED:
 		complete_all(&arm_state->vc_resume_complete);
-		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
 		break;
 	default:
 		BUG();
@@ -2442,15 +2372,6 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 	}
 }
 
-static inline int
-need_resume(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
-			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
-}
-
 enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type)
@@ -2485,16 +2406,9 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
-	if (need_resume(state)) {
-		set_resume_state(arm_state, VC_RESUME_REQUESTED);
-		vchiq_log_info(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, local_entity_uc, local_uc);
-		request_poll(state, NULL, 0);
-	} else
-		vchiq_log_trace(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, *entity_uc, local_uc);
+	vchiq_log_trace(vchiq_susp_log_level,
+		"%s %s count %d, state count %d",
+		__func__, entity, *entity_uc, local_uc);
 
 	write_unlock_bh(&arm_state->susp_res_lock);
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index d01d91e24a89..e2f7fa865694 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -14,14 +14,7 @@
 #include "vchiq_core.h"
 #include "vchiq_debugfs.h"
 
-enum vc_suspend_status {
-	VC_SUSPEND_IDLE = 0,       /* VC active, no suspend actions */
-	VC_SUSPEND_IN_PROGRESS,    /* Slot handler has recvd suspend request */
-};
-
 enum vc_resume_status {
-	VC_RESUME_IDLE = 0,    /* VC suspended, no resume actions */
-	VC_RESUME_REQUESTED,   /* User has requested resume */
 	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
 };
 
@@ -128,10 +121,6 @@ vchiq_instance_get_trace(struct vchiq_instance *instance);
 extern void
 vchiq_instance_set_trace(struct vchiq_instance *instance, int trace);
 
-extern void
-set_suspend_state(struct vchiq_arm_state *arm_state,
-		  enum vc_suspend_status new_state);
-
 extern void
 set_resume_state(struct vchiq_arm_state *arm_state,
 		 enum vc_resume_status new_state);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
