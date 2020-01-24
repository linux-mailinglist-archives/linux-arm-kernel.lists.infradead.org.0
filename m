Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D025F148AB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:54:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H2IbEVNvvfx8plCqrHTrG+OKV+34nDbQLKu7T1F0hwM=; b=qb1hcCt+ilVn8P
	fI5xm4HAjqv5LZGGELEv6cysQAScrsAxDE8ZPeTMPb338DfA5RJKMr5k/RivqDf8Ue5GYghzn43op
	+554F8+I3P++5JvepmN9pYgNaoJmCM75OnNmx+59l3QUcoc+difpuF4tcrtnX2pER5h9UOF8+MaiJ
	Ok9Q9rwk0kc7tNa1SFGF0t49NK4hmiaPSh2xJy86/LBGGXRsfKH5inAvUtslkInyO0cUDehOiHbbC
	Ny7VFiOWXcFA2u9ptvEkkLESLbBJmO9lLEOZvXNYqiCrHWENdbz8QPVFF1ULDvj8hQGPPHNhAuf4I
	lf2f9kfLPbn8xpuKcxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0LY-0006wU-PJ; Fri, 24 Jan 2020 14:54:08 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0ER-0007oN-Ug; Fri, 24 Jan 2020 14:46:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 71C8BAF32;
 Fri, 24 Jan 2020 14:46:46 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 21/22] staging: vc04_services: Get rid of the rest of
 suspend/resume state handling
Date: Fri, 24 Jan 2020 15:46:15 +0100
Message-Id: <20200124144617.2213-22-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064648_313884_85ECA90A 
X-CRM114-Status: GOOD (  13.05  )
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

The only remaining state doesn't provide any information anymore nor the
completion that depends on it, which is set to complete_all() before any
user may wait on it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 49 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           | 11 -----
 2 files changed, 60 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 049512589375..d81c2ed27ccc 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -48,10 +48,6 @@
 int vchiq_arm_log_level = VCHIQ_LOG_DEFAULT;
 int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
-#define VC_RESUME_NUM_OFFSET 1 /* number of values before idle which are -ve */
-static const char *const resume_state_names[] = {
-	"VC_RESUME_RESUMED"
-};
 /* The number of times we allow force suspend to timeout before actually
 ** _forcing_ suspend.  This is to cater for SW which fails to release vchiq
 ** correctly - we don't want to prevent ARM suspend indefinitely in this case.
@@ -2342,11 +2338,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		atomic_set(&arm_state->ka_use_ack_count, 0);
 		atomic_set(&arm_state->ka_release_count, 0);
 
-		init_completion(&arm_state->vc_resume_complete);
-		/* Initialise to 'done' state.  We only want to block on resume
-		 * completion while videocore is suspended. */
-		set_resume_state(arm_state, VC_RESUME_RESUMED);
-
 		arm_state->state = state;
 		arm_state->first_connect = 0;
 
@@ -2354,24 +2345,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 	return VCHIQ_SUCCESS;
 }
 
-void
-set_resume_state(struct vchiq_arm_state *arm_state,
-		 enum vc_resume_status new_state)
-{
-	/* set the state in all cases */
-	arm_state->vc_resume_state = new_state;
-
-	/* state specific additional actions */
-	switch (new_state) {
-	case VC_RESUME_RESUMED:
-		complete_all(&arm_state->vc_resume_complete);
-		break;
-	default:
-		BUG();
-		break;
-	}
-}
-
 enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type)
@@ -2412,22 +2385,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 
 	write_unlock_bh(&arm_state->susp_res_lock);
 
-	/* Completion is in a done state when we're not suspended, so this won't
-	 * block for the non-suspended case. */
-	if (!try_wait_for_completion(&arm_state->vc_resume_complete)) {
-		vchiq_log_info(vchiq_susp_log_level, "%s %s wait for resume",
-			__func__, entity);
-		if (wait_for_completion_killable(
-				&arm_state->vc_resume_complete)) {
-			vchiq_log_error(vchiq_susp_log_level, "%s %s wait for "
-				"resume interrupted", __func__, entity);
-			ret = VCHIQ_ERROR;
-			goto out;
-		}
-		vchiq_log_info(vchiq_susp_log_level, "%s %s resumed", __func__,
-			entity);
-	}
-
 	if (ret == VCHIQ_SUCCESS) {
 		enum vchiq_status status = VCHIQ_SUCCESS;
 		long ack_cnt = atomic_xchg(&arm_state->ka_use_ack_count, 0);
@@ -2619,7 +2576,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	int only_nonzero = 0;
 	static const char *nz = "<-- preventing suspend";
 
-	enum vc_resume_status  vc_resume_state;
 	int peer_count;
 	int vc_use_count;
 	int active_services;
@@ -2633,7 +2589,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		return;
 
 	read_lock_bh(&arm_state->susp_res_lock);
-	vc_resume_state  = arm_state->vc_resume_state;
 	peer_count = arm_state->peer_use_count;
 	vc_use_count = arm_state->videocore_use_count;
 	active_services = state->unused_service;
@@ -2662,10 +2617,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 
 	read_unlock_bh(&arm_state->susp_res_lock);
 
-	vchiq_log_warning(vchiq_susp_log_level,
-		"-- Videcore resume state: %s --",
-		resume_state_names[vc_resume_state + VC_RESUME_NUM_OFFSET]);
-
 	if (only_nonzero)
 		vchiq_log_warning(vchiq_susp_log_level, "Too many active "
 			"services (%d).  Only dumping up to first %d services "
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 7f5daa9aaf3d..2d747af4457a 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -14,10 +14,6 @@
 #include "vchiq_core.h"
 #include "vchiq_debugfs.h"
 
-enum vc_resume_status {
-	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
-};
-
 enum USE_TYPE_E {
 	USE_TYPE_SERVICE,
 	USE_TYPE_VCHIQ
@@ -31,10 +27,7 @@ struct vchiq_arm_state {
 	atomic_t ka_use_ack_count;
 	atomic_t ka_release_count;
 
-	struct completion vc_resume_complete;
-
 	rwlock_t susp_res_lock;
-	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
 
@@ -117,8 +110,4 @@ vchiq_instance_get_trace(struct vchiq_instance *instance);
 extern void
 vchiq_instance_set_trace(struct vchiq_instance *instance, int trace);
 
-extern void
-set_resume_state(struct vchiq_arm_state *arm_state,
-		 enum vc_resume_status new_state);
-
 #endif /* VCHIQ_ARM_H */
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
