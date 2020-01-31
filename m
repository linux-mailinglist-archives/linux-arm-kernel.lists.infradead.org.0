Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC6A14EB1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 11:43:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/NABDFE76oYWwYzI7vi3SNkaMf6UD2J80o+A1YEdnk=; b=bcPsFxopm3hmpH
	eHSilPmumWsymGX8JmYyal8BhLSi+UejXkBhdM2TqxxQpXLQ/ofRXz2bzt96UN9XbtPKjTrtlOLc0
	SJjtFM8i1VHhxJwK0dvULBVrUe1gqrxegU/t7KvYMjj2Wv7AZNnAsxhjftALtvesq3WCn+zjPKsEt
	FviwEWiZkMThsojcxk6HAVMk0ytqp7lEU47LjaC8srU7Rxd+dZbjlCtDFnwWRhnCIeYXoFEFFcUKw
	bxdjyUJD+xoj9YiFp1nMgcoduC0Y+sV6yFKmj2tcmq1tZ/1ZxwptyCc1uOzr7tjHg33WvTNxeKIAM
	mZmDvd4849dIN/lMMhzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixTlk-00080f-5A; Fri, 31 Jan 2020 10:43:24 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixThj-0003Zj-7W; Fri, 31 Jan 2020 10:39:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id E5D7EAFF6;
 Fri, 31 Jan 2020 10:39:13 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 12/21] staging: vc04_services: Get rid of
 vchiq_arm_vcsuspend()
Date: Fri, 31 Jan 2020 11:38:28 +0100
Message-Id: <20200131103836.14312-13-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200131103836.14312-1-nsaenzjulienne@suse.de>
References: <20200131103836.14312-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_023915_431078_E830DC7A 
X-CRM114-Status: GOOD (  10.01  )
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

It's not used.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_arm.c           | 51 -------------------
 .../interface/vchiq_arm/vchiq_arm.h           |  3 --
 2 files changed, 54 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 7c620366dfb6..a33f0fb5d45f 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2500,57 +2500,6 @@ need_resume(struct vchiq_state *state)
 			(arm_state->vc_resume_state < VC_RESUME_REQUESTED);
 }
 
-/* Initiate suspend via slot handler. Should be called with the write lock
- * held */
-enum vchiq_status
-vchiq_arm_vcsuspend(struct vchiq_state *state)
-{
-	enum vchiq_status status = VCHIQ_ERROR;
-	struct vchiq_arm_state *arm_state = vchiq_platform_get_arm_state(state);
-
-	if (!arm_state)
-		goto out;
-
-	vchiq_log_trace(vchiq_susp_log_level, "%s", __func__);
-	status = VCHIQ_SUCCESS;
-
-	switch (arm_state->vc_suspend_state) {
-	case VC_SUSPEND_REQUESTED:
-		vchiq_log_info(vchiq_susp_log_level, "%s: suspend already "
-			"requested", __func__);
-		break;
-	case VC_SUSPEND_IN_PROGRESS:
-		vchiq_log_info(vchiq_susp_log_level, "%s: suspend already in "
-			"progress", __func__);
-		break;
-
-	default:
-		/* We don't expect to be in other states, so log but continue
-		 * anyway */
-		vchiq_log_error(vchiq_susp_log_level,
-			"%s unexpected suspend state %s", __func__,
-			suspend_state_names[arm_state->vc_suspend_state +
-						VC_SUSPEND_NUM_OFFSET]);
-		/* fall through */
-	case VC_SUSPEND_REJECTED:
-	case VC_SUSPEND_FAILED:
-		/* Ensure any idle state actions have been run */
-		set_suspend_state(arm_state, VC_SUSPEND_IDLE);
-		/* fall through */
-	case VC_SUSPEND_IDLE:
-		vchiq_log_info(vchiq_susp_log_level,
-			"%s: suspending", __func__);
-		set_suspend_state(arm_state, VC_SUSPEND_REQUESTED);
-		/* kick the slot handler thread to initiate suspend */
-		request_poll(state, NULL, 0);
-		break;
-	}
-
-out:
-	vchiq_log_trace(vchiq_susp_log_level, "%s exit %d", __func__, status);
-	return status;
-}
-
 void
 vchiq_platform_check_suspend(struct vchiq_state *state)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 0a4efcf95a61..606a519dd3db 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -88,9 +88,6 @@ int vchiq_platform_init(struct platform_device *pdev,
 extern struct vchiq_state *
 vchiq_get_state(void);
 
-extern enum vchiq_status
-vchiq_arm_vcsuspend(struct vchiq_state *state);
-
 extern enum vchiq_status
 vchiq_arm_vcresume(struct vchiq_state *state);
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
