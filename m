Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF3C14EB24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 11:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pdLLazQX202Dr8bZqWJpKmfU79VGISXuOIv0S+XAepQ=; b=tPg37f4p3Lwouw
	S8/djUppFFE3mek5nAZZxK/7Y6bHjiLzIrO8JyUbVjjuNDOpCRimBCJHrqCrk5xrF2fRTXIRMkgh7
	C7PbStfkdMuRqKKXtA5kvyvuK/DkzEd7C8BpUCFMkDJhEVLiC8NqHBywjM0kC09bOn96h0Tyx6zJw
	KzWNiIgp4ADfecngPGYKmCGJ+0bwxVZ00vYHRr4UZ5CJazoINvQkQ3VGbF5k1TsvL6Bdzsm7l8h7e
	hJod9aNI8stdW99UkIS2HFQc/Xzu5uzjiN/FOFGn2gGbWUtrh3BlZ6Te8FIeT6Ua6iwxVS/2F9OLj
	IP9LdOMK2M/h3ux3dyrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTmv-0000iU-Od; Fri, 31 Jan 2020 10:44:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThl-0003c9-JP; Fri, 31 Jan 2020 10:39:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 41FF8AF43;
 Fri, 31 Jan 2020 10:39:16 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 15/21] staging: vc04_services: Get rid of unused
 suspend/resume states
Date: Fri, 31 Jan 2020 11:38:31 +0100
Message-Id: <20200131103836.14312-16-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023917_961387_DF94B676 
X-CRM114-Status: GOOD (  12.71  )
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

It's impossible to get into them, so simply delete them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 55 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  7 ---
 2 files changed, 62 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index f66280663d0d..db7ae204f50f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -50,20 +50,13 @@ int vchiq_susp_log_level = VCHIQ_LOG_ERROR;
 
 #define VC_SUSPEND_NUM_OFFSET 3 /* number of values before idle which are -ve */
 static const char *const suspend_state_names[] = {
-	"VC_SUSPEND_FORCE_CANCELED",
-	"VC_SUSPEND_REJECTED",
-	"VC_SUSPEND_FAILED",
 	"VC_SUSPEND_IDLE",
-	"VC_SUSPEND_REQUESTED",
 	"VC_SUSPEND_IN_PROGRESS",
-	"VC_SUSPEND_SUSPENDED"
 };
 #define VC_RESUME_NUM_OFFSET 1 /* number of values before idle which are -ve */
 static const char *const resume_state_names[] = {
-	"VC_RESUME_FAILED",
 	"VC_RESUME_IDLE",
 	"VC_RESUME_REQUESTED",
-	"VC_RESUME_IN_PROGRESS",
 	"VC_RESUME_RESUMED"
 };
 /* The number of times we allow force suspend to timeout before actually
@@ -2396,18 +2389,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 **			before resuming can occur.  We therefore also reset the
 **			resume state machine to VC_RESUME_IDLE in this state.
 **
-** VC_SUSPEND_SUSPENDED - Suspend has completed successfully. Also call
-**			complete_all on the suspend completion to notify
-**			anything waiting for suspend to happen.
-**
-** VC_SUSPEND_REJECTED - Videocore rejected suspend. Videocore will also
-**			initiate resume, so no need to alter resume state.
-**			We call complete_all on the suspend completion to notify
-**			of suspend rejection.
-**
-** VC_SUSPEND_FAILED - We failed to initiate videocore suspend.  We notify the
-**			suspend completion and reset the resume state machine.
-**
 ** VC_RESUME_IDLE - Initialise the resume completion at the same time.  The
 **			resume completion is in it's 'done' state whenever
 **			videcore is running.  Therefore, the VC_RESUME_IDLE
@@ -2415,13 +2396,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 **			Hence, any thread which needs to wait until videocore is
 **			running can wait on this completion - it will only block
 **			if videocore is suspended.
-**
-** VC_RESUME_RESUMED - Resume has completed successfully.  Videocore is running.
-**			Call complete_all on the resume completion to unblock
-**			any threads waiting for resume.	 Also reset the suspend
-**			state machine to it's idle state.
-**
-** VC_RESUME_FAILED - Currently unused - no mechanism to fail resume exists.
 */
 
 void
@@ -2433,23 +2407,11 @@ set_suspend_state(struct vchiq_arm_state *arm_state,
 
 	/* state specific additional actions */
 	switch (new_state) {
-	case VC_SUSPEND_FORCE_CANCELED:
-		break;
-	case VC_SUSPEND_REJECTED:
-		break;
-	case VC_SUSPEND_FAILED:
-		arm_state->vc_resume_state = VC_RESUME_RESUMED;
-		complete_all(&arm_state->vc_resume_complete);
-		break;
 	case VC_SUSPEND_IDLE:
 		break;
-	case VC_SUSPEND_REQUESTED:
-		break;
 	case VC_SUSPEND_IN_PROGRESS:
 		set_resume_state(arm_state, VC_RESUME_IDLE);
 		break;
-	case VC_SUSPEND_SUSPENDED:
-		break;
 	default:
 		BUG();
 		break;
@@ -2465,15 +2427,11 @@ set_resume_state(struct vchiq_arm_state *arm_state,
 
 	/* state specific additional actions */
 	switch (new_state) {
-	case VC_RESUME_FAILED:
-		break;
 	case VC_RESUME_IDLE:
 		reinit_completion(&arm_state->vc_resume_complete);
 		break;
 	case VC_RESUME_REQUESTED:
 		break;
-	case VC_RESUME_IN_PROGRESS:
-		break;
 	case VC_RESUME_RESUMED:
 		complete_all(&arm_state->vc_resume_complete);
 		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
@@ -2503,12 +2461,6 @@ vchiq_platform_check_suspend(struct vchiq_state *state)
 
 	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
 
-	write_lock_bh(&arm_state->susp_res_lock);
-	if (arm_state->vc_suspend_state == VC_SUSPEND_REQUESTED &&
-			arm_state->vc_resume_state == VC_RESUME_RESUMED)
-		set_suspend_state(arm_state, VC_SUSPEND_IN_PROGRESS);
-	write_unlock_bh(&arm_state->susp_res_lock);
-
 out:
 	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
 	return;
@@ -2548,13 +2500,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	local_uc = ++arm_state->videocore_use_count;
 	local_entity_uc = ++(*entity_uc);
 
-	/* If there's a pending request which hasn't yet been serviced then
-	 * just clear it.  If we're past VC_SUSPEND_REQUESTED state then
-	 * vc_resume_complete will block until we either resume or fail to
-	 * suspend */
-	if (arm_state->vc_suspend_state <= VC_SUSPEND_REQUESTED)
-		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
-
 	if ((use_type != USE_TYPE_SERVICE_NO_RESUME) && need_resume(state)) {
 		set_resume_state(arm_state, VC_RESUME_REQUESTED);
 		vchiq_log_info(vchiq_susp_log_level,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index aa081d642818..afd822546e2e 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -15,20 +15,13 @@
 #include "vchiq_debugfs.h"
 
 enum vc_suspend_status {
-	VC_SUSPEND_FORCE_CANCELED = -3, /* Force suspend canceled, too busy */
-	VC_SUSPEND_REJECTED = -2,  /* Videocore rejected suspend request */
-	VC_SUSPEND_FAILED = -1,    /* Videocore suspend failed */
 	VC_SUSPEND_IDLE = 0,       /* VC active, no suspend actions */
-	VC_SUSPEND_REQUESTED,      /* User has requested suspend */
 	VC_SUSPEND_IN_PROGRESS,    /* Slot handler has recvd suspend request */
-	VC_SUSPEND_SUSPENDED       /* Videocore suspend succeeded */
 };
 
 enum vc_resume_status {
-	VC_RESUME_FAILED = -1, /* Videocore resume failed */
 	VC_RESUME_IDLE = 0,    /* VC suspended, no resume actions */
 	VC_RESUME_REQUESTED,   /* User has requested resume */
-	VC_RESUME_IN_PROGRESS, /* Slot handler has received resume request */
 	VC_RESUME_RESUMED      /* Videocore resumed successfully (active) */
 };
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
