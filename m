Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4881E410B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QtDCmSBng/EWuqOziZqMDg7KLfW83phmnc+jqxK9mWU=; b=u0j0RlvYAod/e3
	OkXitol0RTVP4w+h28J2OZRUxm92zXEMhSyXzvvazK1njRr0edGg2vLPL92CtjP/kGvjgRxXRpnWX
	8sQaY46OgKwIwM/NFzoJkKYt8Y3e2LBJZEDy+PVrr6NQEDmCkIyM6L+ICHH89Ld6jRqKCRoCKFENo
	zrKc2/ZSUgSkkH6hi8v8aYg92pPUviyDRbcMNoq+llWcLKb/686l4Pdo+fwMDT+/4bvbNH2x73DQy
	rThjQDc6PfdvEnshacZH3oNfDTkVXRpgMJTCm2/7n7444gtIM5NptSPMX3kwclsE/SvUxnDRl057E
	6V2KjpbQKxJVFAJV1sBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduiU-0004kj-HL; Wed, 27 May 2020 11:59:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudb-0006f0-Bb; Wed, 27 May 2020 11:54:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 2F67BAE61;
 Wed, 27 May 2020 11:54:24 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 12/50] staging: vchi: Get rid of vchi_msg_peek()
Date: Wed, 27 May 2020 13:53:17 +0200
Message-Id: <20200527115400.31391-13-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045423_707901_9D5E4B9D 
X-CRM114-Status: GOOD (  16.66  )
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

There already is a function that covers most of the functionality
vchi_msg_peek() provides: vchi_msg_hold(). The main difference being
that the later removes the message from vchu's queue while the other
does it later on, while releasing the message.

There are no users of this function that can't be trivially converted to
vchi_msg_hold(). So, for the sake of removing duplicate code, get rid of
vchi_msg_peek().

Note that the opposite change could be performed as well. But
vchi_msg_peek()'s implementation was deemed less robust as messages have
to be released in order.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       | 12 ----
 .../interface/vchiq_arm/vchiq_shim.c          | 64 -------------------
 .../interface/vchiq_arm/vchiq_util.c          | 12 ----
 .../interface/vchiq_arm/vchiq_util.h          |  1 -
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |  7 +-
 5 files changed, 4 insertions(+), 92 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 1a981e98e82b..1daef5ad70f1 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -103,18 +103,6 @@ extern int32_t vchi_msg_dequeue(struct vchi_service_handle *handle,
 				uint32_t *actual_msg_size,
 				enum vchi_flags flags);
 
-// Routine to look at a message in place.
-// The message is not dequeued, so a subsequent call to peek or dequeue
-// will return the same message.
-extern int32_t vchi_msg_peek(struct vchi_service_handle *handle,
-			     void **data,
-			     uint32_t *msg_size,
-			     enum vchi_flags flags);
-
-// Routine to remove a message after it has been read in place with peek
-// The first message on the queue is dequeued.
-extern int32_t vchi_msg_remove(struct vchi_service_handle *handle);
-
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 75d87b6992c4..54c2492b7c83 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -18,70 +18,6 @@ struct shim_service {
 	void *callback_param;
 };
 
-/***********************************************************
- * Name: vchi_msg_peek
- *
- * Arguments:  struct vchi_service_handle *handle,
- *             void **data,
- *             uint32_t *msg_size,
-
- *             enum vchi_flags flags
- *
- * Description: Routine to return a pointer to the current message (to allow in
- *              place processing). The message can be removed using
- *              vchi_msg_remove when you're finished
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_msg_peek(struct vchi_service_handle *handle,
-		      void **data,
-		      uint32_t *msg_size,
-		      enum vchi_flags flags)
-{
-	struct shim_service *service = (struct shim_service *)handle;
-	struct vchiq_header *header;
-
-	WARN_ON((flags != VCHI_FLAGS_NONE) &&
-		(flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));
-
-	if (flags == VCHI_FLAGS_NONE)
-		if (vchiu_queue_is_empty(&service->queue))
-			return -1;
-
-	header = vchiu_queue_peek(&service->queue);
-
-	*data = header->data;
-	*msg_size = header->size;
-
-	return 0;
-}
-EXPORT_SYMBOL(vchi_msg_peek);
-
-/***********************************************************
- * Name: vchi_msg_remove
- *
- * Arguments:  struct vchi_service_handle *handle,
- *
- * Description: Routine to remove a message (after it has been read with
- *              vchi_msg_peek)
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_msg_remove(struct vchi_service_handle *handle)
-{
-	struct shim_service *service = (struct shim_service *)handle;
-	struct vchiq_header *header;
-
-	header = vchiu_queue_pop(&service->queue);
-
-	vchiq_release_message(service->handle, header);
-
-	return 0;
-}
-EXPORT_SYMBOL(vchi_msg_remove);
-
 int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
 			       unsigned int size)
 {
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
index 644844d88fed..c1c81f9ab9e6 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.c
@@ -55,18 +55,6 @@ void vchiu_queue_push(struct vchiu_queue *queue, struct vchiq_header *header)
 	complete(&queue->push);
 }
 
-struct vchiq_header *vchiu_queue_peek(struct vchiu_queue *queue)
-{
-	while (queue->write == queue->read) {
-		if (wait_for_completion_interruptible(&queue->push))
-			flush_signals(current);
-	}
-
-	complete(&queue->push); // We haven't removed anything from the queue.
-
-	return queue->storage[queue->read & (queue->size - 1)];
-}
-
 struct vchiq_header *vchiu_queue_pop(struct vchiu_queue *queue)
 {
 	struct vchiq_header *header;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
index f03a4250de0d..1c90a8da1a92 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_util.h
@@ -44,7 +44,6 @@ extern int vchiu_queue_is_empty(struct vchiu_queue *queue);
 extern void vchiu_queue_push(struct vchiu_queue *queue,
 			     struct vchiq_header *header);
 
-extern struct vchiq_header *vchiu_queue_peek(struct vchiu_queue *queue);
 extern struct vchiq_header *vchiu_queue_pop(struct vchiu_queue *queue);
 
 #endif
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 6a203c60bf7f..cd3f62844616 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -180,6 +180,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 	struct sm_instance *instance = arg;
 	struct sm_cmd_rsp_blk *cmd = NULL, *cmd_tmp;
 	struct vc_sm_result_t *reply;
+	struct vchi_held_msg msg;
 	u32 reply_len;
 	s32 status;
 	int svc_use = 1;
@@ -236,8 +237,8 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 
 		} while (1);
 
-		while (!vchi_msg_peek(instance->vchi_handle[0], (void **)&reply,
-				      &reply_len, VCHI_FLAGS_NONE)) {
+		while (!vchi_msg_hold(instance->vchi_handle[0], (void **)&reply,
+				       &reply_len, VCHI_FLAGS_NONE, &msg)) {
 			if (reply->trans_id & 0x80000000) {
 				/* Async event or cmd from the VPU */
 				if (instance->vpu_event)
@@ -248,7 +249,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 						      reply_len);
 			}
 
-			vchi_msg_remove(instance->vchi_handle[0]);
+			vchi_held_msg_release(&msg);
 		}
 
 		/* Go through the dead list and free them */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
