Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 780BA148A90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fC5AkeCtItmwnCrEd+QzN5MYmen4NXUJDUcsszuUVmE=; b=u/DBdTWvwJogw2
	VDUYrAimgbGTMH4tMY4ybzs98oxR6yDhGpVjXxipljN+yNk3rbZB/FuiC8Ga74stCwzhip1lsmkSX
	QHyqzVGn1zzfER1Kebm4eIc6GLHMbg9i2XQApJaNkOTX6gwLb4fzqVp3HSsBqtsuHsPV7OFpPZi6o
	H3VKDJ8gMQ2EzeFWlkbNPHu3ZrPC8t+KrGBr9WRqRwQB8n94JupTnP/HRp1A9A20POzPx/YG0EahL
	fP6ZhvFirqHw8lOYmHNTw8GeyYBmeBC3VkomsJ/swYhovxddgKgUXK+HgmaBTkVbbawr5Pwm1F1ye
	2PAKawV4MbBi+0AAmLvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0Io-00049E-IP; Fri, 24 Jan 2020 14:51:18 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EM-0007jW-QH; Fri, 24 Jan 2020 14:46:44 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 68410AF22;
 Fri, 24 Jan 2020 14:46:41 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 14/22] staging: vc04_services: Delete vc_suspend_complete
 completion
Date: Fri, 24 Jan 2020 15:46:08 +0100
Message-Id: <20200124144617.2213-15-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064643_034265_D895A608 
X-CRM114-Status: UNSURE (   9.22  )
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

Nobody is waiting on it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.c  | 7 -------
 .../staging/vc04_services/interface/vchiq_arm/vchiq_arm.h  | 1 -
 2 files changed, 8 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 774ce4aa216f..da95bb1ec0eb 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2356,8 +2356,6 @@ vchiq_arm_init_state(struct vchiq_state *state,
 		atomic_set(&arm_state->ka_use_ack_count, 0);
 		atomic_set(&arm_state->ka_release_count, 0);
 
-		init_completion(&arm_state->vc_suspend_complete);
-
 		init_completion(&arm_state->vc_resume_complete);
 		/* Initialise to 'done' state.  We only want to block on resume
 		 * completion while videocore is suspended. */
@@ -2436,18 +2434,14 @@ set_suspend_state(struct vchiq_arm_state *arm_state,
 	/* state specific additional actions */
 	switch (new_state) {
 	case VC_SUSPEND_FORCE_CANCELED:
-		complete_all(&arm_state->vc_suspend_complete);
 		break;
 	case VC_SUSPEND_REJECTED:
-		complete_all(&arm_state->vc_suspend_complete);
 		break;
 	case VC_SUSPEND_FAILED:
-		complete_all(&arm_state->vc_suspend_complete);
 		arm_state->vc_resume_state = VC_RESUME_RESUMED;
 		complete_all(&arm_state->vc_resume_complete);
 		break;
 	case VC_SUSPEND_IDLE:
-		reinit_completion(&arm_state->vc_suspend_complete);
 		break;
 	case VC_SUSPEND_REQUESTED:
 		break;
@@ -2455,7 +2449,6 @@ set_suspend_state(struct vchiq_arm_state *arm_state,
 		set_resume_state(arm_state, VC_RESUME_IDLE);
 		break;
 	case VC_SUSPEND_SUSPENDED:
-		complete_all(&arm_state->vc_suspend_complete);
 		break;
 	default:
 		BUG();
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index 9a8ecc089c69..ac065f284372 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -46,7 +46,6 @@ struct vchiq_arm_state {
 	atomic_t ka_use_ack_count;
 	atomic_t ka_release_count;
 
-	struct completion vc_suspend_complete;
 	struct completion vc_resume_complete;
 
 	rwlock_t susp_res_lock;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
