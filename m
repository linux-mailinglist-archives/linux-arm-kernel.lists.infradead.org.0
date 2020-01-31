Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FDE14EB21
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 11:44:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I46juow/kRQ1iFNnxq0muy4Nw+ZmwA+XwHAKFntcP70=; b=riLSlaqWqnt/PF
	sH0DfXYbhRl/iq84SNG2/F9t6ulS7XKUZ2lJNfYF4n4E2rifjcFi8FjHBoX5YO8uw9bBkjeSGK1G3
	hjrS/sJwK0i4I77wbAlOfGcLBG81zo6alAMKqjSUkFDc1NkHqLzxsA6S86wJFShlU5LDOUzWqcntb
	ljhUzNJCd3s3BfLgo5rc3aiqYKQMloRszqM5EELECEYYsWbrCTj1mOlqfHDn/cEHADsw0aDSmUuUj
	A9+CkQAYrkHh90IwNaS4uTpVlI4BaVOWP603/2i2HxLSTMnXJIPTwMyO2EpFtagp38mWQYHLV8VpK
	qy2RrZ3XnZsp6snAGJDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTmV-0000Eq-Do; Fri, 31 Jan 2020 10:44:11 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThb-0003Tg-P5; Fri, 31 Jan 2020 10:39:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B2A9EB001;
 Fri, 31 Jan 2020 10:39:05 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/21] staging: vc04_services: Get rid of resume_blocked in
 struct vchiq_arm_state
Date: Fri, 31 Jan 2020 11:38:18 +0100
Message-Id: <20200131103836.14312-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023908_103309_10AFC6F1 
X-CRM114-Status: GOOD (  17.20  )
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

The boolean value is never set to true, hence remove it and all the code that
depends on it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 51 +------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  1 -
 2 files changed, 2 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 4458c1e60fa3..af4dc23f5510 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2270,10 +2270,7 @@ vchiq_videocore_wanted(struct vchiq_state *state)
 		return 1;
 	else if (!arm_state->videocore_use_count)
 		/* usage count zero - check for override unless we're forcing */
-		if (arm_state->resume_blocked)
-			return 0;
-		else
-			return vchiq_platform_videocore_wanted(state);
+		return vchiq_platform_videocore_wanted(state);
 	else
 		/* non-zero usage count - videocore still required */
 		return 1;
@@ -2567,7 +2564,6 @@ static inline void
 unblock_resume(struct vchiq_arm_state *arm_state)
 {
 	complete_all(&arm_state->resume_blocker);
-	arm_state->resume_blocked = 0;
 }
 
 /* Initiate suspend via slot handler. Should be called with the write lock
@@ -2724,46 +2720,6 @@ vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 	}
 
 	write_lock_bh(&arm_state->susp_res_lock);
-	while (arm_state->resume_blocked) {
-		/* If we call 'use' while force suspend is waiting for suspend,
-		 * then we're about to block the thread which the force is
-		 * waiting to complete, so we're bound to just time out. In this
-		 * case, set the suspend state such that the wait will be
-		 * canceled, so we can complete as quickly as possible. */
-		if (arm_state->resume_blocked && arm_state->vc_suspend_state ==
-				VC_SUSPEND_IDLE) {
-			set_suspend_state(arm_state, VC_SUSPEND_FORCE_CANCELED);
-			break;
-		}
-		/* If suspend is already in progress then we need to block */
-		if (!try_wait_for_completion(&arm_state->resume_blocker)) {
-			/* Indicate that there are threads waiting on the resume
-			 * blocker.  These need to be allowed to complete before
-			 * a _second_ call to force suspend can complete,
-			 * otherwise low priority threads might never actually
-			 * continue */
-			arm_state->blocked_count++;
-			write_unlock_bh(&arm_state->susp_res_lock);
-			vchiq_log_info(vchiq_susp_log_level, "%s %s resume "
-				"blocked - waiting...", __func__, entity);
-			if (wait_for_completion_killable(
-					&arm_state->resume_blocker)) {
-				vchiq_log_error(vchiq_susp_log_level, "%s %s "
-					"wait for resume blocker interrupted",
-					__func__, entity);
-				ret = VCHIQ_ERROR;
-				write_lock_bh(&arm_state->susp_res_lock);
-				arm_state->blocked_count--;
-				write_unlock_bh(&arm_state->susp_res_lock);
-				goto out;
-			}
-			vchiq_log_info(vchiq_susp_log_level, "%s %s resume "
-				"unblocked", __func__, entity);
-			write_lock_bh(&arm_state->susp_res_lock);
-			if (--arm_state->blocked_count == 0)
-				complete_all(&arm_state->blocked_blocker);
-		}
-	}
 
 	stop_suspend_timer(arm_state);
 
@@ -2861,10 +2817,7 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	--(*entity_uc);
 
 	if (!vchiq_videocore_wanted(state)) {
-		if (vchiq_platform_use_suspend_timer() &&
-				!arm_state->resume_blocked) {
-			/* Only use the timer if we're not trying to force
-			 * suspend (=> resume_blocked) */
+		if (vchiq_platform_use_suspend_timer()) {
 			start_suspend_timer(arm_state);
 		} else {
 			vchiq_log_info(vchiq_susp_log_level,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index f0044289b6bc..c904f7be9084 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -74,7 +74,6 @@ struct vchiq_arm_state {
 	** ARM is suspending
 	*/
 	struct completion resume_blocker;
-	int resume_blocked;
 	struct completion blocked_blocker;
 	int blocked_count;
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
