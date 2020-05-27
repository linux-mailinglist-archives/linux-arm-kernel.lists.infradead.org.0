Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 195ED1E41A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:11:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QOX8KzR9m4w1pwAd4yicyKCdeEuis31S9PZNzaPDX1A=; b=aBcMxDKlKqoIbw
	fMvMbku92hyGl2VV2aTSMz+wCKC4S046DRYf9kYrkS7skz2d2W2yYlwWkmL6naa/NBJ2D6uoRFrch
	v3dRCvAlTTAjM3qk2R2SK4o1zqoAuZIl5FB0OruaIz1bwAIK9BNn7UbLokKmNSDk661kF1XMn4uoa
	/VKM8r9doAAPcThOTG7hTuYHPCCkX7OIEcYeJSskccQR0eIhnB7Dl1xSQwES74Sa0O2m33KdxfnTA
	+XUZwwJX406iWVNdGelD1gRCSn+7H7072c8L+EbBGlZxnsItiTi6RyBH27lL/oCr6JmyEXqgnIbjt
	h0lk406Vfv+eVWXGUWAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduuU-0005JQ-Jd; Wed, 27 May 2020 12:11:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdue8-0007Dp-NZ; Wed, 27 May 2020 11:54:59 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DA392AC84;
 Wed, 27 May 2020 11:54:57 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 43/50] staging: vchi: Get rid of vchi_bulk_queue_receive()
Date: Wed, 27 May 2020 13:53:48 +0200
Message-Id: <20200527115400.31391-44-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045457_086548_3A1C1642 
X-CRM114-Status: GOOD (  14.96  )
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

Its vchiq counterpart, vchiq_bulk_receive() is only used by vchi. We can
then merge both functions by moving vchi_bulk_queue_receive()'s retry
mechanism into vchiq_bulk_receive() and let services call the later.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  7 ----
 .../interface/vchiq_arm/vchiq_arm.c           | 42 ++++++++++++-------
 .../interface/vchiq_arm/vchiq_shim.c          | 38 -----------------
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 20 ++++-----
 4 files changed, 37 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index d24e7027c08f..ca20b99122f2 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -58,13 +58,6 @@ extern int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *messa
  * Global bulk API
  *****************************************************************************/
 
-// Routine to prepare interface for a transfer from the other side
-extern int32_t vchi_bulk_queue_receive(unsigned handle,
-				       void *data_dst,
-				       uint32_t data_size,
-				       enum vchiq_bulk_mode mode,
-				       void *transfer_handle);
-
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
 extern int32_t vchi_bulk_queue_transmit(unsigned handle,
 					const void *data_src,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 4d98d4d3ee8a..084e98b4ca61 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -380,24 +380,36 @@ vchiq_bulk_transmit(unsigned int handle, const void *data,
 }
 EXPORT_SYMBOL(vchiq_bulk_transmit);
 
-enum vchiq_status
-vchiq_bulk_receive(unsigned int handle, void *data,
-	unsigned int size, void *userdata, enum vchiq_bulk_mode mode)
+enum vchiq_status vchiq_bulk_receive(unsigned int handle, void *data,
+				     unsigned int size, void *userdata,
+				     enum vchiq_bulk_mode mode)
 {
 	enum vchiq_status status;
 
-	switch (mode) {
-	case VCHIQ_BULK_MODE_NOCALLBACK:
-	case VCHIQ_BULK_MODE_CALLBACK:
-		status = vchiq_bulk_transfer(handle, data, size, userdata,
-					     mode, VCHIQ_BULK_RECEIVE);
-		break;
-	case VCHIQ_BULK_MODE_BLOCKING:
-		status = vchiq_blocking_bulk_transfer(handle,
-			(void *)data, size, VCHIQ_BULK_RECEIVE);
-		break;
-	default:
-		return VCHIQ_ERROR;
+	while (1) {
+		switch (mode) {
+		case VCHIQ_BULK_MODE_NOCALLBACK:
+		case VCHIQ_BULK_MODE_CALLBACK:
+			status = vchiq_bulk_transfer(handle, data, size, userdata,
+						     mode, VCHIQ_BULK_RECEIVE);
+			break;
+		case VCHIQ_BULK_MODE_BLOCKING:
+			status = vchiq_blocking_bulk_transfer(handle,
+				(void *)data, size, VCHIQ_BULK_RECEIVE);
+			break;
+		default:
+			return VCHIQ_ERROR;
+		}
+
+		/*
+		 * vchiq_*_bulk_transfer() may return VCHIQ_RETRY, so we need
+		 * to implement a retry mechanism since this function is
+		 * supposed to block until queued
+		 */
+		if (status != VCHIQ_RETRY)
+			break;
+
+		msleep(1);
 	}
 
 	return status;
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 52654123463d..f69936a9eb29 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -31,44 +31,6 @@ int vchi_queue_kernel_message(unsigned handle, void *data, unsigned int size)
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-/***********************************************************
- * Name: vchi_bulk_queue_receive
- *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
- *             void *data_dst,
- *             const uint32_t data_size,
- *             enum vchi_flags flags
- *             void *bulk_handle
- *
- * Description: Routine to setup a rcv buffer
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_bulk_queue_receive(unsigned handle, void *data_dst,
-				uint32_t data_size, enum vchiq_bulk_mode mode,
-				void *bulk_handle)
-{
-	enum vchiq_status status;
-
-	while (1) {
-		status = vchiq_bulk_receive(handle, data_dst, data_size,
-					    bulk_handle, mode);
-		/*
-		 * vchiq_bulk_receive() may return VCHIQ_RETRY, so we need to
-		 * implement a retry mechanism since this function is supposed
-		 * to block until queued
-		 */
-		if (status != VCHIQ_RETRY)
-			break;
-
-		msleep(1);
-	}
-
-	return status;
-}
-EXPORT_SYMBOL(vchi_bulk_queue_receive);
-
 /***********************************************************
  * Name: vchi_bulk_queue_transmit
  *
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index d35d2b50991b..b5d40074cdc7 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -277,7 +277,7 @@ static void buffer_work_cb(struct work_struct *work)
  * VCHI will allow up to 4 bulk receives to be scheduled before blocking.
  * If we block in the service_callback context then we can't process the
  * VCHI_CALLBACK_BULK_RECEIVED message that would otherwise allow the blocked
- * vchi_bulk_queue_receive() call to complete.
+ * vchiq_bulk_receive() call to complete.
  */
 static void buffer_to_host_work_cb(struct work_struct *work)
 {
@@ -293,19 +293,19 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 		len = 8;
 	/* queue the bulk submission */
 	vchi_service_use(instance->service_handle);
-	ret = vchi_bulk_queue_receive(instance->service_handle,
-				      msg_context->u.bulk.buffer->buffer,
-				      /* Actual receive needs to be a multiple
-				       * of 4 bytes
-				       */
-				      (len + 3) & ~3,
-				      VCHIQ_BULK_MODE_CALLBACK,
-				      msg_context);
+	ret = vchiq_bulk_receive(instance->service_handle,
+				 msg_context->u.bulk.buffer->buffer,
+			         /* Actual receive needs to be a multiple
+			          * of 4 bytes
+			          */
+			         (len + 3) & ~3,
+			         msg_context,
+			         VCHIQ_BULK_MODE_CALLBACK);
 
 	vchi_service_release(instance->service_handle);
 
 	if (ret != 0)
-		pr_err("%s: ctx: %p, vchi_bulk_queue_receive failed %d\n",
+		pr_err("%s: ctx: %p, vchiq_bulk_receive failed %d\n",
 		       __func__, msg_context, ret);
 }
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
