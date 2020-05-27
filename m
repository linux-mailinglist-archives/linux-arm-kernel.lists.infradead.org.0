Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA281E4125
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:02:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PkcuBqebD5GNZS9eR6/9KIrBprcU6aacAjycnNZyJ88=; b=uR4s1vsRDMJDH0
	/tvrJlEC5e28LJRU+aSzvPjzeE+8N0sXoZqNlFE6JrR4fX1EvKF2FcGeSEjhP0L1P31ZSCJjNBr0E
	Gwljr8x/HlbYJGeE6ZgSuwpW7RRiMIjFzL7Qc6A+RJNJGKcWwemeWREXYnHrWCkgz9j0+yqc47cw2
	LX8x1H2gGKTzTYhWQ70ofq68+GS2rpzBIrH5bKQOtCwu0jKkC+EYbKCjF0EruvZ+yXJ4GQ9CzWNZb
	y2MQSzfXBr9xCPGi9+Ha39/hgbpew384706goV7I2ugrgY7QnDHZYF3Q6T0s3ztm42zVVycevn9Pg
	YYxfbRTSyd71iVaBbF6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdulT-0000jd-VQ; Wed, 27 May 2020 12:02:31 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudj-0006mB-5w; Wed, 27 May 2020 11:54:33 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 58AD0AC5B;
 Wed, 27 May 2020 11:54:31 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 18/50] staging: vc04_services: vc-sm-cma: Get rid of the
 multiple connections option
Date: Wed, 27 May 2020 13:53:23 +0200
Message-Id: <20200527115400.31391-19-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045431_537788_28338D95 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devel@driverdev.osuosl.org, kernel-list@raspberrypi.com,
 laurent.pinchart@ideasonboard.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Multiple connections are not handled by the IO thread, so it's not
really necessary to handle them on initialization.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../staging/vc04_services/vc-sm-cma/vc_sm.c   |  3 +-
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  | 67 ++++++-------------
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.h  |  1 -
 3 files changed, 23 insertions(+), 48 deletions(-)

diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
index 3f95ea90c08a..e660f546a7e4 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
@@ -1532,8 +1532,7 @@ static void vc_sm_connected_init(void)
 	}
 
 	/* Initialize an instance of the shared memory service. */
-	sm_state->sm_handle = vc_sm_cma_vchi_init(instance, 1,
-						  vc_sm_vpu_event);
+	sm_state->sm_handle = vc_sm_cma_vchi_init(instance, vc_sm_vpu_event);
 	if (!sm_state->sm_handle) {
 		pr_err("[%s]: failed to initialize shared memory service\n",
 		       __func__);
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 32706eb2838b..72b09685db31 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -46,8 +46,7 @@ struct sm_cmd_rsp_blk {
 };
 
 struct sm_instance {
-	u32 num_connections;
-	struct vchi_service *service[VCHI_MAX_NUM_CONNECTIONS];
+	struct vchi_service *service;
 	struct task_struct *io_thread;
 	struct completion io_cmplt;
 
@@ -187,13 +186,13 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 	while (1) {
 		if (svc_use)
-			vchi_service_release(instance->service[0]);
+			vchi_service_release(instance->service);
 		svc_use = 0;
 
 		if (wait_for_completion_interruptible(&instance->io_cmplt))
 			continue;
 
-		vchi_service_use(instance->service[0]);
+		vchi_service_use(instance->service);
 		svc_use = 1;
 
 		do {
@@ -214,7 +213,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 			/* Send the command */
 			status =
-				bcm2835_vchi_msg_queue(instance->service[0],
+				bcm2835_vchi_msg_queue(instance->service,
 						       cmd->msg, cmd->length);
 			if (status) {
 				pr_err("%s: failed to queue message (%d)",
@@ -237,7 +236,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 		} while (1);
 
-		while (!vchi_msg_hold(instance->service[0], (void **)&reply,
+		while (!vchi_msg_hold(instance->service, (void **)&reply,
 				       &reply_len, VCHI_FLAGS_NONE, &msg)) {
 			if (reply->trans_id & 0x80000000) {
 				/* Async event or cmd from the VPU */
@@ -286,21 +285,20 @@ static void vc_sm_cma_vchi_callback(void *param,
 }
 
 struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
-					unsigned int num_connections,
 					vpu_event_cb vpu_event)
 {
-	u32 i;
+	struct service_creation params = {
+		.version = VCHI_VERSION_EX(VC_SM_VER, VC_SM_MIN_VER),
+		.service_id = VC_SM_SERVER_NAME,
+		.callback = vc_sm_cma_vchi_callback,
+		.callback_param = NULL,
+	};
 	struct sm_instance *instance;
 	int status;
+	int i;
 
 	pr_debug("%s: start", __func__);
 
-	if (num_connections > VCHI_MAX_NUM_CONNECTIONS) {
-		pr_err("%s: unsupported number of connections %u (max=%u)",
-		       __func__, num_connections, VCHI_MAX_NUM_CONNECTIONS);
-
-		goto err_null;
-	}
 	/* Allocate memory for this instance */
 	instance = kzalloc(sizeof(*instance), GFP_KERNEL);
 
@@ -317,25 +315,15 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 		init_completion(&instance->free_blk[i].cmplt);
 		list_add(&instance->free_blk[i].head, &instance->free_list);
 	}
+	params.callback_param = instance;
 
 	/* Open the VCHI service connections */
-	instance->num_connections = num_connections;
-	for (i = 0; i < num_connections; i++) {
-		struct service_creation params = {
-			.version = VCHI_VERSION_EX(VC_SM_VER, VC_SM_MIN_VER),
-			.service_id = VC_SM_SERVER_NAME,
-			.callback = vc_sm_cma_vchi_callback,
-			.callback_param = instance,
-		};
-
-		status = vchi_service_open(vchiq_instance,
-					   &params, &instance->service[i]);
-		if (status) {
-			pr_err("%s: failed to open VCHI service (%d)",
-			       __func__, status);
-
-			goto err_close_services;
-		}
+	status = vchi_service_open(vchiq_instance, &params, &instance->service);
+	if (status) {
+		pr_err("%s: failed to open VCHI service (%d)",
+		       __func__, status);
+
+		goto err_close_services;
 	}
 
 	/* Create the thread which takes care of all io to/from videoocore. */
@@ -354,12 +342,8 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 	return instance;
 
 err_close_services:
-	for (i = 0; i < instance->num_connections; i++) {
-		if (instance->service[i])
-			vchi_service_close(instance->service[i]);
-	}
+	vchi_service_close(instance->service);
 	kfree(instance);
-err_null:
 	pr_debug("%s: FAILED", __func__);
 	return NULL;
 }
@@ -367,7 +351,6 @@ struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
 int vc_sm_cma_vchi_stop(struct sm_instance **handle)
 {
 	struct sm_instance *instance;
-	u32 i;
 
 	if (!handle) {
 		pr_err("%s: invalid pointer to handle %p", __func__, handle);
@@ -381,14 +364,8 @@ int vc_sm_cma_vchi_stop(struct sm_instance **handle)
 
 	instance = *handle;
 
-	/* Close all VCHI service connections */
-	for (i = 0; i < instance->num_connections; i++) {
-		s32 success;
-
-		vchi_service_use(instance->service[i]);
-
-		success = vchi_service_close(instance->service[i]);
-	}
+	vchi_service_use(instance->service);
+	vchi_service_close(instance->service);
 
 	kfree(instance);
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h
index 44cc389364f4..09ef0fc59566 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.h
@@ -29,7 +29,6 @@ typedef void (*vpu_event_cb)(struct sm_instance *instance,
  * Initialize the shared memory service, opens up vchi connection to talk to it.
  */
 struct sm_instance *vc_sm_cma_vchi_init(struct vchiq_instance *vchiq_instance,
-					unsigned int num_connections,
 					vpu_event_cb vpu_event);
 
 /*
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
