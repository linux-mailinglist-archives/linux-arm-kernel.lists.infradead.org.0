Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E07EF1E4195
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:09:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OcX9JtP+hSgcm/i3xWAjm/BYReQt2zZ7nKxlGcgyIf4=; b=LWe5vy/MkC0cP+
	LlyL7SIH1BscSv5lyT2Rrzrfi7nOTK40QuaSLbJjgBH6nu8GzDL1NmR5VzUljUQSsr9+tOhCXEoyD
	CgDIJGqqNfwznCn34yMoD74A2mGPWz091kp/VfnbCsfqDfexmfZSTfFuyIFtdhNFbOtywhxuZyklI
	lidQwtcOcZVyn6yhp4LbVoz9w1qMIGdMawJIwP5uY2GF6dtBCUDBKBzFNXJmdnGgkh3zz2URhYVqW
	YwMYYi7sRysNvKK7obYmbS+Er31oa16d/clizvQqlCCil1Mw6x6OC+MM7apQA79r88OHu5FwNlBlh
	rDZUvb+cvyQ0gt+DfrhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdurn-0000OS-7R; Wed, 27 May 2020 12:09:03 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdue2-00077M-3e; Wed, 27 May 2020 11:54:53 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1046EAD66;
 Wed, 27 May 2020 11:54:51 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 35/50] staging: vchiq: Pass vchiq's message when holding a
 message
Date: Wed, 27 May 2020 13:53:40 +0200
Message-Id: <20200527115400.31391-36-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045450_570441_82B7421E 
X-CRM114-Status: GOOD (  15.61  )
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

vchi created an opaque structure to be held by services while they
process callback messages. The contents of this opaque structure are the
service handle, which all services already maintain, and a pointer to
vchiq's message structure, struct vchiq_header.

Let's get rid of this opaque structure and directly pass struct
vchiq_header, which is what ultimately vchiq consumes when handling
callback messages.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       | 14 ++---------
 .../interface/vchiq_arm/vchiq_shim.c          | 25 ++++++-------------
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |  6 ++---
 3 files changed, 12 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 74fd169e079a..72771fdee9d6 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -11,16 +11,6 @@
 // Macros to manipulate 'FOURCC' values
 #define MAKE_FOURCC(x) ((int32_t)((x[0] << 24) | (x[1] << 16) | (x[2] << 8) | x[3]))
 
-// Opaque service information
-struct opaque_vchi_service_t;
-
-// Descriptor for a held message. Allocated by client, initialised by vchi_msg_hold,
-// vchi_msg_iter_hold or vchi_msg_iter_hold_next. Fields are for internal VCHI use only.
-struct vchi_held_msg {
-	struct opaque_vchi_service_t *service;
-	void *message;
-};
-
 // Opaque handle for a VCHIQ instance
 struct vchiq_instance;
 
@@ -67,7 +57,7 @@ extern int vchi_queue_kernel_message(unsigned handle, void *data,
 extern int32_t vchi_msg_hold(unsigned handle,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
-			     struct vchi_held_msg *message_descriptor);
+			     struct vchiq_header **message);
 
 /*******************************************************************************
  * Global service support API - operations on held messages
@@ -75,7 +65,7 @@ extern int32_t vchi_msg_hold(unsigned handle,
  ******************************************************************************/
 
 // Routine to release a held message after it has been processed
-extern int32_t vchi_held_msg_release(struct vchi_held_msg *message);
+extern int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message);
 
 /******************************************************************************
  * Global bulk API
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 578346965da6..6eb9a9878641 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -113,7 +113,8 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
 /***********************************************************
  * Name: vchi_held_msg_release
  *
- * Arguments:  struct vchi_held_msg *message
+ * Arguments:  unsgined handle
+ *	       struct vchiq_header *message
  *
  * Description: Routine to release a held message (after it has been read with
  *              vchi_msg_hold)
@@ -121,7 +122,7 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Returns: int32_t - success == 0
  *
  ***********************************************************/
-int32_t vchi_held_msg_release(struct vchi_held_msg *message)
+int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message)
 {
 	/*
 	 * Convert the service field pointer back to an
@@ -131,8 +132,7 @@ int32_t vchi_held_msg_release(struct vchi_held_msg *message)
 	 * to a pointer.
 	 */
 
-	vchiq_release_message((unsigned int)(long)message->service,
-			      (struct vchiq_header *)message->message);
+	vchiq_release_message(handle, message);
 
 	return 0;
 }
@@ -144,7 +144,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Arguments:  struct vchi_service *service,
  *             void **data,
  *             uint32_t *msg_size,
- *             struct vchi_held_msg *message_handle
+ *             struct vchiq_header **message
  *
  * Description: Routine to return a pointer to the current message (to allow
  *              in place processing). The message is dequeued - don't forget
@@ -155,7 +155,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *
  ***********************************************************/
 int32_t vchi_msg_hold(unsigned handle, void **data, uint32_t *msg_size,
-		      struct vchi_held_msg *message_handle)
+		      struct vchiq_header **message)
 {
 	struct vchiq_header *header;
 
@@ -165,18 +165,7 @@ int32_t vchi_msg_hold(unsigned handle, void **data, uint32_t *msg_size,
 
 	*data = header->data;
 	*msg_size = header->size;
-
-	/*
-	 * upcast the unsigned int which is an int
-	 * to a pointer and stuff it in the held message.
-	 * This pointer is opaque to everything except
-	 * vchi_held_msg_release which simply downcasts it back
-	 * to an int.
-	 */
-
-	message_handle->service =
-		(struct opaque_vchi_service_t *)(long)handle;
-	message_handle->message = header;
+	*message = header;
 
 	return 0;
 }
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index b0339b5438aa..08979502f551 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -176,7 +176,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 	struct sm_instance *instance = arg;
 	struct sm_cmd_rsp_blk *cmd = NULL, *cmd_tmp;
 	struct vc_sm_result_t *reply;
-	struct vchi_held_msg msg;
+	struct vchiq_header *message;
 	u32 reply_len;
 	s32 status;
 	int svc_use = 1;
@@ -234,7 +234,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 		} while (1);
 
 		while (!vchi_msg_hold(instance->service_handle,
-				      (void **)&reply, &reply_len, &msg)) {
+				      (void **)&reply, &reply_len, &message)) {
 			if (reply->trans_id & 0x80000000) {
 				/* Async event or cmd from the VPU */
 				if (instance->vpu_event)
@@ -245,7 +245,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 						      reply_len);
 			}
 
-			vchi_held_msg_release(&msg);
+			vchi_held_msg_release(instance->service_handle, message);
 		}
 
 		/* Go through the dead list and free them */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
