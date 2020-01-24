Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA528148AA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:52:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9HUf/WFRiAVSM8CgSc7LRfZJaYO7bVCup7nSWDAX7s=; b=e4J5pHVf4Ayzb/
	h+QbZU1iDBOzE4BWHWSYFbsHut+7hCRPBwG2AEL9GeXvuf4oVDnn0tcA5Rf/ydYoRFn4omNdnh9TS
	6W5T+8AoxYhnR0Fs51SewJkddVt43OzwG6/qg3Ac9yR2/sDMq8w3Fsx1Jjo/Kls9u2DVKGfaACdru
	1qNt1VFpmIDa779SwVoo9kVSw895CuBLMVzhBh7Bi+u9DhrVPY1MxjRePw3qhh+mLz6Z7DssJv4pb
	KLw252sB6hO/8Pb0ZMJ9a/cR2Bs2ZY3BtB2mO+i9Ej/OrHIwG84kGIe9Ib0hHsdCvJ2kNrLehtnB/
	/lD7K8tpjfQM2X7IReLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0KD-0005Uu-2R; Fri, 24 Jan 2020 14:52:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EP-0007lV-1d; Fri, 24 Jan 2020 14:46:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 9E774AEEE;
 Fri, 24 Jan 2020 14:46:43 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 17/22] staging: vc04_services: Delete
 vchiq_platform_check_suspend()
Date: Fri, 24 Jan 2020 15:46:11 +0100
Message-Id: <20200124144617.2213-18-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064645_381113_B8544A4C 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
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

The function does nothing.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c | 15 ---------------
 .../interface/vchiq_arm/vchiq_core.c              |  3 ---
 .../interface/vchiq_arm/vchiq_core.h              |  3 ---
 3 files changed, 21 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 591fbb99d015..8ec5a61c5d89 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2451,21 +2451,6 @@ need_resume(struct vchiq_state *state)
 			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
 }
 
-void
-vchiq_platform_check_suspend(struct vchiq_state *state)
-{
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit", __func__);
-	return;
-}
-
 enum vchiq_status
 vchiq_use_internal(struct vchiq_state *state, struct vchiq_service *service,
 		   enum USE_TYPE_E use_type)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index c5493dee6dd7..d5957411d906 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -1866,9 +1866,6 @@ slot_handler_func(void *v)
 
 		DEBUG_TRACE(SLOT_HANDLER_LINE);
 		if (state->poll_needed) {
-			/* Check if we need to suspend - may change our
-			 * conn_state */
-			vchiq_platform_check_suspend(state);
 
 			state->poll_needed = 0;
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index 11037a499408..604d0c330819 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -590,9 +590,6 @@ vchiq_complete_bulk(struct vchiq_bulk *bulk);
 extern void
 remote_event_signal(struct remote_event *event);
 
-void
-vchiq_platform_check_suspend(struct vchiq_state *state);
-
 extern int
 vchiq_dump(void *dump_context, const char *str, int len);
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
