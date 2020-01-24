Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D27148AAD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:53:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XzSOh1AmqA5xAPKZRfxs8fUd8+HJoI1b3czoZNBDZw=; b=GUc77b3L29Tf3A
	pp2TXLUd4rcCPdFFiFhjG3KiL767tnb6aCbysKwUud/PwMz2f92o1oF9PqKCJXMSYfDNUZwNerKQD
	/D+py7E1BslZhUIl+UGT1lOL7HDqFbFxtBiP2cU06U6QgAInJSBa9qpZMbtUQut8yvO+MSZyQwyWF
	MbbbM+SjuiX7t+xnAN68JB86/PZcLiVOe9zv868pja8W823Mz1x3Cd9BGdqdV8bo+7FkRy1Njsu3p
	AZ9dM2i06b3RPxWmo2j6Lt7ZpGvgzpAjuP3l+vlHa/pcGxwPGH25sYabWikm6H+jjoi7mOc/A/KUv
	670yQ8xCkFfGjlv/gTTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv0Kv-0006B9-B0; Fri, 24 Jan 2020 14:53:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv0EQ-0007n0-Fw; Fri, 24 Jan 2020 14:46:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1F856AF0D;
 Fri, 24 Jan 2020 14:46:45 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 19/22] staging: vc04_services: Get rid of vc_suspend_state in
 struct vchiq_arm_state
Date: Fri, 24 Jan 2020 15:46:13 +0100
Message-Id: <20200124144617.2213-20-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124144617.2213-1-nsaenzjulienne@suse.de>
References: <20200124144617.2213-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_064646_752282_DA5F3DF9 
X-CRM114-Status: GOOD (  10.67  )
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

It's never used.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchiq_arm/vchiq_arm.c     | 11 ++---------
 .../vc04_services/interface/vchiq_arm/vchiq_arm.h     |  1 -
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 577ecfefce3c..049512589375 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -2619,7 +2619,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 	int only_nonzero = 0;
 	static const char *nz = "<-- preventing suspend";
 
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status  vc_resume_state;
 	int peer_count;
 	int vc_use_count;
@@ -2634,7 +2633,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 		return;
 
 	read_lock_bh(&arm_state->susp_res_lock);
-	vc_suspend_state = arm_state->vc_suspend_state;
 	vc_resume_state  = arm_state->vc_resume_state;
 	peer_count = arm_state->peer_use_count;
 	vc_use_count = arm_state->videocore_use_count;
@@ -2664,9 +2662,6 @@ vchiq_dump_service_use_state(struct vchiq_state *state)
 
 	read_unlock_bh(&arm_state->susp_res_lock);
 
-	vchiq_log_warning(vchiq_susp_log_level,
-		"-- Videcore suspend state: %s --",
-		suspend_state_names[vc_suspend_state + VC_SUSPEND_NUM_OFFSET]);
 	vchiq_log_warning(vchiq_susp_log_level,
 		"-- Videcore resume state: %s --",
 		resume_state_names[vc_resume_state + VC_RESUME_NUM_OFFSET]);
@@ -2713,12 +2708,10 @@ vchiq_check_service(struct vchiq_service *service)
 	if (ret == VCHIQ_ERROR) {
 		vchiq_log_error(vchiq_susp_log_level,
 			"%s ERROR - %c%c%c%c:%d service count %d, "
-			"state count %d, videocore suspend state %s", __func__,
+			"state count %d", __func__,
 			VCHIQ_FOURCC_AS_4CHARS(service->base.fourcc),
 			service->client_id, service->service_use_count,
-			arm_state->videocore_use_count,
-			suspend_state_names[arm_state->vc_suspend_state +
-						VC_SUSPEND_NUM_OFFSET]);
+			arm_state->videocore_use_count);
 	}
 out:
 	return ret;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
index e2f7fa865694..780c352a5d64 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.h
@@ -34,7 +34,6 @@ struct vchiq_arm_state {
 	struct completion vc_resume_complete;
 
 	rwlock_t susp_res_lock;
-	enum vc_suspend_status vc_suspend_state;
 	enum vc_resume_status vc_resume_state;
 
 	struct vchiq_state *state;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
