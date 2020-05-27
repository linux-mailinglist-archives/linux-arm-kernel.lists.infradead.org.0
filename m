Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A531E412C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RaVrheNMF7BXN7OB/zb5tZn12HdGF9KoZMrhe4sw17I=; b=MVgXi/TPqsANZw
	+ZdvYIekSiqIoSmtYoujY1AGYVaMrZ3bkxSRzaP+9EY5FfUqZ+oU/q74H8OoV0KrYcMB+rtDEveZv
	M6IqIhhW0q+07DhaP8XwDYjLJGSaFmkZQn3zFSyLwQyLNcCufZ2GCdsk3furXapHtlo111abML5tD
	gkrnswRu33oZYbO/vCzP6jIRFA84QuVDJ7Y/QCXL1Mk2fxkdo5y2NjIrJD1IPSfVqv5XOYdsHRqXI
	9D8I3LC53jfqqwrTzVTpeyxIwyyUvK6tegMsrzyej2KtVU8w9EZ2YogiiwOBKpsz7n/lrMc/PQ31P
	vVMaJ0rIRw9x6nkT0IMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdump-0001pi-77; Wed, 27 May 2020 12:03:55 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudl-0006sf-PX; Wed, 27 May 2020 11:54:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 18955AD2B;
 Wed, 27 May 2020 11:54:34 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 21/50] staging: vchi: Get rid of flags argument in
 vchi_msg_hold()
Date: Wed, 27 May 2020 13:53:26 +0200
Message-Id: <20200527115400.31391-22-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045434_143671_A448D76E 
X-CRM114-Status: GOOD (  15.15  )
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
 laurent.pinchart@ideasonboard.com, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All users are ignoring the flags argument. So for the sake of
simplicity delete it.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/bcm2835-audio/bcm2835-vchiq.c      |  3 +--
 drivers/staging/vc04_services/interface/vchi/vchi.h  |  1 -
 .../vc04_services/interface/vchiq_arm/vchiq_shim.c   | 12 +++---------
 .../staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c |  2 +-
 .../staging/vc04_services/vchiq-mmal/mmal-vchiq.c    |  2 +-
 5 files changed, 6 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 5018b5baa009..68119246f10b 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -102,8 +102,7 @@ static void audio_vchi_callback(void *param,
 	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
 		return;
 
-	status = vchi_msg_hold(instance->service, (void **)&m, &size,
-			       VCHI_FLAGS_NONE, &handle);
+	status = vchi_msg_hold(instance->service, (void **)&m, &size, &handle);
 	if (status)
 		return;
 
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 55e51e5a1fdc..92ce811fc28d 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -87,7 +87,6 @@ extern int vchi_queue_kernel_message(struct vchi_service *service, void *data,
 extern int32_t vchi_msg_hold(struct vchi_service *service,
 			     void **data,        // } may be NULL, as info can be
 			     uint32_t *msg_size, // } obtained from HELD_MSG_T
-			     enum vchi_flags flags,
 			     struct vchi_held_msg *message_descriptor);
 
 /*******************************************************************************
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 0c3473861a8d..0466512cfe3c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -195,7 +195,6 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  * Arguments:  struct vchi_service *service,
  *             void **data,
  *             uint32_t *msg_size,
- *             enum vchi_flags flags,
  *             struct vchi_held_msg *message_handle
  *
  * Description: Routine to return a pointer to the current message (to allow
@@ -207,17 +206,12 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *
  ***********************************************************/
 int32_t vchi_msg_hold(struct vchi_service *service, void **data,
-		      uint32_t *msg_size, enum vchi_flags flags,
-		      struct vchi_held_msg *message_handle)
+		      uint32_t *msg_size, struct vchi_held_msg *message_handle)
 {
 	struct vchiq_header *header;
 
-	WARN_ON((flags != VCHI_FLAGS_NONE) &&
-		(flags != VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE));
-
-	if (flags == VCHI_FLAGS_NONE)
-		if (vchiu_queue_is_empty(&service->queue))
-			return -1;
+	if (vchiu_queue_is_empty(&service->queue))
+		return -1;
 
 	header = vchiu_queue_pop(&service->queue);
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 72b09685db31..826cac7922d2 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -237,7 +237,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 		} while (1);
 
 		while (!vchi_msg_hold(instance->service, (void **)&reply,
-				       &reply_len, VCHI_FLAGS_NONE, &msg)) {
+				      &reply_len, &msg)) {
 			if (reply->trans_id & 0x80000000) {
 				/* Async event or cmd from the VPU */
 				if (instance->vpu_event)
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 5183aff453eb..9f905f529d91 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -693,7 +693,7 @@ static void service_callback(void *param,
 	switch (reason) {
 	case VCHI_CALLBACK_MSG_AVAILABLE:
 		status = vchi_msg_hold(instance->service, (void **)&msg,
-				       &msg_len, VCHI_FLAGS_NONE, &msg_handle);
+				       &msg_len, &msg_handle);
 		if (status) {
 			pr_err("Unable to dequeue a message (%d)\n", status);
 			break;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
