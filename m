Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D58D1E41A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:11:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpoM4j6csHOSksnaTSFlLjBXF7REEAsiIre59IsFsyE=; b=UGzIy8w7DSJ6wa
	6QR7YZp71RVX3+j4e8GD8qNnVpKYWe1CBPiKIpzx+zjWS+MV3p/FJ0V6Mh62FgPJS/3I76GkibG/C
	JnA8BVaMmRXOhNkULKENb6rl2SLmLeh7EhtHylkGI4KSh5bIYPjE5jfIUMWm5/4Cs+70n+qCDCwb2
	RkICNjcu7zAr0KrDQrYFOiTkbZPuazAJmlOuuSTW3+wkk6DpvpaIC6R/jJNWj1p9AF+PBfAyWyXje
	f6jn6Nw2MKRtPaIsLzW3fmIbFQNElOAt9NxNP6UX6Y3QZGm2DXNQSoI/ZL6hx2ydtQYFdsYLx7U0p
	Q+cuFAW3JpIgZEcAfiPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdutk-0004bw-3f; Wed, 27 May 2020 12:11:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdue9-0007Em-Tx; Wed, 27 May 2020 11:55:00 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DE436AD66;
 Wed, 27 May 2020 11:54:58 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 44/50] staging: vchi: Get rid of vchi_bulk_queue_transmit()
Date: Wed, 27 May 2020 13:53:49 +0200
Message-Id: <20200527115400.31391-45-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045458_271187_4A1B5317 
X-CRM114-Status: GOOD (  17.86  )
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

Its vchiq counterpart, vchiq_bulk_transmit() is only used by vchi. We
can then merge both functions by moving vchi_bulk_queue_transmit()'s
retry mechanism into vchiq_bulk_transmit() and let services call the
later.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  7 +-
 .../vc04_services/interface/vchi/vchi.h       | 11 ----
 .../interface/vchiq_arm/vchiq_arm.c           | 38 +++++++----
 .../interface/vchiq_arm/vchiq_shim.c          | 66 ++++---------------
 4 files changed, 41 insertions(+), 81 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 55f1e684eef1..28d64bc895cd 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -343,10 +343,9 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 	count = size;
 	if (!instance->max_packet) {
 		/* Send the message to the videocore */
-		status = vchi_bulk_queue_transmit(instance->service_handle,
-						  src, count,
-						  VCHIQ_BULK_MODE_BLOCKING,
-						  NULL);
+		status = vchiq_bulk_transmit(instance->service_handle, src,
+					     count, NULL,
+					     VCHIQ_BULK_MODE_BLOCKING);
 	} else {
 		while (count > 0) {
 			int bytes = min(instance->max_packet, count);
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index ca20b99122f2..c800796f9986 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -54,17 +54,6 @@ struct vchiq_header *vchi_msg_hold(unsigned handle);
 // Routine to release a held message after it has been processed
 extern int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message);
 
-/******************************************************************************
- * Global bulk API
- *****************************************************************************/
-
-// Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
-extern int32_t vchi_bulk_queue_transmit(unsigned handle,
-					const void *data_src,
-					uint32_t data_size,
-				        enum vchiq_bulk_mode mode,
-					void *transfer_handle);
-
 /******************************************************************************
  * Configuration plumbing
  *****************************************************************************/
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
index 084e98b4ca61..524128225766 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_arm.c
@@ -361,19 +361,31 @@ vchiq_bulk_transmit(unsigned int handle, const void *data,
 {
 	enum vchiq_status status;
 
-	switch (mode) {
-	case VCHIQ_BULK_MODE_NOCALLBACK:
-	case VCHIQ_BULK_MODE_CALLBACK:
-		status = vchiq_bulk_transfer(handle, (void *)data, size,
-					     userdata, mode,
-					     VCHIQ_BULK_TRANSMIT);
-		break;
-	case VCHIQ_BULK_MODE_BLOCKING:
-		status = vchiq_blocking_bulk_transfer(handle,
-			(void *)data, size, VCHIQ_BULK_TRANSMIT);
-		break;
-	default:
-		return VCHIQ_ERROR;
+	while (1) {
+		switch (mode) {
+		case VCHIQ_BULK_MODE_NOCALLBACK:
+		case VCHIQ_BULK_MODE_CALLBACK:
+			status = vchiq_bulk_transfer(handle, (void *)data, size,
+						     userdata, mode,
+						     VCHIQ_BULK_TRANSMIT);
+			break;
+		case VCHIQ_BULK_MODE_BLOCKING:
+			status = vchiq_blocking_bulk_transfer(handle,
+				(void *)data, size, VCHIQ_BULK_TRANSMIT);
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
index f69936a9eb29..33493643b5f8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -31,46 +31,6 @@ int vchi_queue_kernel_message(unsigned handle, void *data, unsigned int size)
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-/***********************************************************
- * Name: vchi_bulk_queue_transmit
- *
- * Arguments:  VCHI_BULK_HANDLE_T handle,
- *             const void *data_src,
- *             uint32_t data_size,
- *             enum vchi_flags flags,
- *             void *bulk_handle
- *
- * Description: Routine to transmit some data
- *
- * Returns: int32_t - success == 0
- *
- ***********************************************************/
-int32_t vchi_bulk_queue_transmit(unsigned handle, const void *data_src,
-				 uint32_t data_size, enum vchiq_bulk_mode mode,
-				 void *bulk_handle)
-{
-	enum vchiq_status status;
-
-	while (1) {
-		status = vchiq_bulk_transmit(handle, data_src, data_size,
-					     bulk_handle, mode);
-
-		/*
-		 * vchiq_bulk_transmit() may return VCHIQ_RETRY, so we need to
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
-EXPORT_SYMBOL(vchi_bulk_queue_transmit);
-
-
 /***********************************************************
  * Name: vchi_held_msg_release
  *
@@ -80,10 +40,10 @@ EXPORT_SYMBOL(vchi_bulk_queue_transmit);
  * Description: Routine to release a held message (after it has been read with
  *              vchi_msg_hold)
  *
- * Returns: int32_t - success == 0
+ * Returns: int - success == 0
  *
  ***********************************************************/
-int32_t vchi_held_msg_release(unsigned handle, struct vchiq_header *message)
+int vchi_held_msg_release(unsigned handle, struct vchiq_header *message)
 {
 	/*
 	 * Convert the service field pointer back to an
@@ -104,7 +64,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *
  * Arguments:  struct vchi_service *service,
  *             void **data,
- *             uint32_t *msg_size,
+ *             unsigned *msg_size,
  *             struct vchiq_header **message
  *
  * Description: Routine to return a pointer to the current message (to allow
@@ -112,7 +72,7 @@ EXPORT_SYMBOL(vchi_held_msg_release);
  *              to release the message using vchi_held_msg_release when you're
  *              finished.
  *
- * Returns: int32_t - success == 0
+ * Returns: int - success == 0
  *
  ***********************************************************/
 struct vchiq_header *vchi_msg_hold(unsigned handle)
@@ -134,7 +94,7 @@ EXPORT_SYMBOL(vchi_msg_hold);
  *
  ***********************************************************/
 
-int32_t vchi_initialise(struct vchiq_instance **instance)
+int vchi_initialise(struct vchiq_instance **instance)
 {
 	return vchiq_initialise(instance);
 }
@@ -151,7 +111,7 @@ EXPORT_SYMBOL(vchi_initialise);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_connect(struct vchiq_instance *instance)
+int vchi_connect(struct vchiq_instance *instance)
 {
 	return vchiq_connect(instance);
 }
@@ -168,7 +128,7 @@ EXPORT_SYMBOL(vchi_connect);
  * Returns: 0 if successful, failure otherwise
  *
  ***********************************************************/
-int32_t vchi_disconnect(struct vchiq_instance *instance)
+int vchi_disconnect(struct vchiq_instance *instance)
 {
 	return vchiq_shutdown(instance);
 }
@@ -184,11 +144,11 @@ EXPORT_SYMBOL(vchi_disconnect);
  *
  * Description: Routine to open a service
  *
- * Returns: int32_t - success == 0
+ * Returns: int - success == 0
  *
  ***********************************************************/
 
-int32_t vchi_service_open(struct vchiq_instance *instance,
+int vchi_service_open(struct vchiq_instance *instance,
 		      struct vchiq_service_params *params,
 		      unsigned *handle)
 {
@@ -196,13 +156,13 @@ int32_t vchi_service_open(struct vchiq_instance *instance,
 }
 EXPORT_SYMBOL(vchi_service_open);
 
-int32_t vchi_service_close(unsigned handle)
+int vchi_service_close(unsigned handle)
 {
 	return vchiq_close_service(handle);
 }
 EXPORT_SYMBOL(vchi_service_close);
 
-int32_t vchi_get_peer_version(unsigned handle, short *peer_version)
+int vchi_get_peer_version(unsigned handle, short *peer_version)
 {
 	return vchiq_get_peer_version(handle, peer_version);
 }
@@ -218,7 +178,7 @@ EXPORT_SYMBOL(vchi_get_peer_version);
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_use(unsigned handle)
+int vchi_service_use(unsigned handle)
 {
 	return vchiq_use_service(handle);
 }
@@ -234,7 +194,7 @@ EXPORT_SYMBOL(vchi_service_use);
  * Returns: void
  *
  ***********************************************************/
-int32_t vchi_service_release(unsigned handle)
+int vchi_service_release(unsigned handle)
 {
 	return vchiq_release_service(handle);
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
