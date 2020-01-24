Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E142C148A87
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:50:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3HYqcvLe01vstt8/dlzc4R7zbIvHtSbhCPLscTf34o=; b=a8NWDlRdOqfTJx
	YPczlSpQisgLhWQbhIz8v8JZ+GUBXq/7FFRfIwSVD3fV6PaF0OlmMNUoOyjK9EJsreTg7h/3/wCpw
	Ee+qu0SksYoxRoprcFozN3GTYHQk1o1VjHjsTGxO4NJuSrWT34s+bH+j17n8FUyK0RR0JR2yC6BRJ
	V8UD31w/bvZp9Un/D9JgHmTByxKsD8ygFqyAtHXrN/PCrqrgb7reH6SyZCWqmTCcGZHoHF1eAcmTS
	wlTkcl9juNARS1MjKYr+Mu3dmFGLpi1iB9GWHnhixJj7WgG8FluZrmXT8rFAHHENmiOp69+4O8lEE
	IY3zdIi9BYmqFkrY3ppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0Hq-0001xg-5H; Fri, 24 Jan 2020 14:50:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EI-0007fo-8g; Fri, 24 Jan 2020 14:46:40 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D52B1AFCB;
 Fri, 24 Jan 2020 14:46:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 09/22] staging: vc04_services: Get rid of
 vchiq_platform_videocore_wanted()
Date: Fri, 24 Jan 2020 15:46:03 +0100
Message-Id: <20200124144617.2213-10-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064638_617414_841B4750 
X-CRM114-Status: GOOD (  11.96  )
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

The function always returns true, which makes a whole bunch of code
useless.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_2835_arm.c      |  5 ---
 .../interface/vchiq_arm/vchiq_arm.c           | 34 +++----------------
 .../interface/vchiq_arm/vchiq_arm.h           |  3 --
 3 files changed, 5 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index 65e26a90c1db..a7f72dba2e20 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -257,11 +257,6 @@ int vchiq_dump_platform_state(void *dump_context)
 	return vchiq_dump(dump_context, buf, len + 1);
 }
 
-int
-vchiq_platform_videocore_wanted(struct vchiq_state *state)
-{
-	return 1; // autosuspend not supported - videocore always wanted
-}
 void
 vchiq_platform_handle_timeout(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 3c374686ce89..a90d6fbbb54b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2253,22 +2253,6 @@ vchiq_fops = {
  * Autosuspend related functionality
  */
 
-int
-vchiq_videocore_wanted(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		/* autosuspend not supported - always return wanted */
-		return 1;
-	else if (!arm_state->videocore_use_count)
-		/* usage count zero - check for override unless we're forcing */
-		return vchiq_platform_videocore_wanted(state);
-	else
-		/* non-zero usage count - videocore still required */
-		return 1;
-}
-
 static enum vchiq_status
 vchiq_keepalive_vchiq_callback(enum vchiq_reason reason,
 	struct vchiq_header *header,
@@ -2513,8 +2497,7 @@ need_resume(struct vchiq_state *state)
 	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
 
 	return (arm_state->vc_suspend_state > VC_SUSPEND_IDLE) &&
-			(arm_state->vc_resume_state < VC_RESUME_REQUESTED) &&
-			vchiq_videocore_wanted(state);
+			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
 }
 
 /* Initiate suspend via slot handler. Should be called with the write lock
@@ -2736,17 +2719,10 @@ vchiq_release_internal(struct vchiq_state *state, struct vchiq_service *service)
 	--arm_state->videocore_use_count;
 	--(*entity_uc);
 
-	if (!vchiq_videocore_wanted(state)) {
-		vchiq_log_info(vchiq_susp_log_level,
-			"%s %s count %d, state count %d - suspending",
-			__func__, entity, *entity_uc,
-			arm_state->videocore_use_count);
-		vchiq_arm_vcsuspend(state);
-	} else
-		vchiq_log_trace(vchiq_susp_log_level,
-			"%s %s count %d, state count %d",
-			__func__, entity, *entity_uc,
-			arm_state->videocore_use_count);
+	vchiq_log_trace(vchiq_susp_log_level,
+		"%s %s count %d, state count %d",
+		__func__, entity, *entity_uc,
+		arm_state->videocore_use_count);
 
 unlock:
 	write_unlock_bh(&arm_state->susp_res_lock);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 1f1ec679584b..beac1469d54d 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -112,9 +112,6 @@ vchiq_release_service(unsigned int handle);
 extern enum vchiq_status
 vchiq_check_service(struct vchiq_service *service);
 
-extern int
-vchiq_platform_videocore_wanted(struct vchiq_state *state);
-
 extern void
 vchiq_dump_platform_use_state(struct vchiq_state *state);
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
