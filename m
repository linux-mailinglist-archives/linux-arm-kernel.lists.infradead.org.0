Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3701E41AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9RATYAE2/HUTYTquEzzIQxCxA7WDCTDscxzeXPC1Oq4=; b=qcathmRIdbQ4N5
	9ztbfhOp/bb3BnJcUYDPWmgOJoL8P+YLG49voQ3IjtxWtVJ+ZM0hsFOqQXuesUoIZKZegeomK6YDX
	wu+n6+CVGrBvRJtlURjy5O6BmtvKTh2xi5D3KvL++uQaqU5miRyq4uJY3Lv1ECfvQ/Y9L8UwnX3Tb
	xvH0RmCqavYuSYVzdYT3muksaGkut0rfBaPgBCAnhYeQfm/JmuNVl7TUuOPgZjuuYdIIDm1MwIEub
	17OW019LWAq076M+61aG3lgIV/3nsy6qTaBwg9Vu1j7I3FoJD14j8bDysHbalmrByTvsP6xcg9WjI
	IGe7HLCiJ/AOm2srt2+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduvF-00061F-Tw; Wed, 27 May 2020 12:12:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdueB-0007GE-92; Wed, 27 May 2020 11:55:01 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3EF09AF4F;
 Wed, 27 May 2020 11:55:00 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [RFC 45/50] staging: vchi: Move vchi_queue_kernel_message() into vchiq
Date: Wed, 27 May 2020 13:53:50 +0200
Message-Id: <20200527115400.31391-46-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045459_714535_3A8C355F 
X-CRM114-Status: GOOD (  17.49  )
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

We can't really merge it with vchiq_queue_message() as it has internal
users that will not benefit from the retry mechanism
vchiq_queue_kernel_message() uses. So, for the sake of getting rid of
vchi, move it into vchiq.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  8 +++----
 .../vc04_services/interface/vchi/vchi.h       |  4 ----
 .../interface/vchiq_arm/vchiq_core.c          | 23 ++++++++++++++++---
 .../interface/vchiq_arm/vchiq_if.h            |  4 ++--
 .../interface/vchiq_arm/vchiq_shim.c          | 22 ------------------
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |  2 +-
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 14 +++++------
 7 files changed, 33 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 28d64bc895cd..efaa2ae11f52 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -44,8 +44,8 @@ static int bcm2835_audio_send_msg_locked(struct bcm2835_audio_instance *instance
 		init_completion(&instance->msg_avail_comp);
 	}
 
-	status = vchi_queue_kernel_message(instance->service_handle,
-					   m, sizeof(*m));
+	status = vchiq_queue_kernel_message(instance->service_handle,
+					    m, sizeof(*m));
 	if (status) {
 		dev_err(instance->dev,
 			"vchi message queue failed: %d, msg=%d\n",
@@ -350,8 +350,8 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		while (count > 0) {
 			int bytes = min(instance->max_packet, count);
 
-			status = vchi_queue_kernel_message(instance->service_handle,
-							   src, bytes);
+			status = vchiq_queue_kernel_message(instance->service_handle,
+							    src, bytes);
 			src += bytes;
 			count -= bytes;
 		}
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index c800796f9986..6de5df43cc29 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -37,10 +37,6 @@ extern int32_t vchi_service_use(unsigned handle);
 // Routine to decrement ref count on a named service
 extern int32_t vchi_service_release(unsigned handle);
 
-/* Routine to send a message from kernel memory across a service */
-extern int vchi_queue_kernel_message(unsigned handle, void *data,
-				     unsigned int size);
-
 // Routine to look at a message in place.
 // The message is dequeued, so the caller is left holding it; the descriptor is
 // filled in and must be released when the user has finished with the message.
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index 01a9331dbff4..ee11707b7476 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3213,11 +3213,28 @@ vchiq_queue_message(unsigned int handle,
 	return status;
 }
 
-enum vchiq_status vchiq_queue_kernel_message(unsigned int handle, void *context,
-				      size_t size)
+int vchiq_queue_kernel_message(unsigned handle, void *data, unsigned size)
 {
-	return vchiq_queue_message(handle, memcpy_copy_callback, context, size);
+	enum vchiq_status status;
+
+	while (1) {
+		status = vchiq_queue_message(handle, memcpy_copy_callback,
+					     data, size);
+
+		/*
+		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
+		 * implement a retry mechanism since this function is supposed
+		 * to block until queued
+		 */
+		if (status != VCHIQ_RETRY)
+			break;
+
+		msleep(1);
+	}
+
+	return status;
 }
+EXPORT_SYMBOL(vchiq_queue_kernel_message);
 
 void
 vchiq_release_message(unsigned int handle,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 931debcd6492..6374eda4ea0c 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -89,8 +89,8 @@ extern enum vchiq_status vchiq_open_service(struct vchiq_instance *instance,
 extern enum vchiq_status vchiq_close_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
 extern enum vchiq_status vchiq_release_service(unsigned int service);
-extern enum vchiq_status vchiq_queue_kernel_message(unsigned int handle,
-						    void *context, size_t size);
+extern int vchiq_queue_kernel_message(unsigned handle, void *data,
+				      unsigned size);
 extern void vchiq_msg_queue_push(unsigned handle, struct vchiq_header *header);
 extern void           vchiq_release_message(unsigned int service,
 	struct vchiq_header *header);
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 33493643b5f8..57ac6a289a08 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -9,28 +9,6 @@
 #include "../vchi/vchi.h"
 #include "vchiq.h"
 
-int vchi_queue_kernel_message(unsigned handle, void *data, unsigned int size)
-{
-	enum vchiq_status status;
-
-	while (1) {
-		status = vchiq_queue_kernel_message(handle, data, size);
-
-		/*
-		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
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
-EXPORT_SYMBOL(vchi_queue_kernel_message);
-
 /***********************************************************
  * Name: vchi_held_msg_release
  *
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 0b1a510d6bab..dc8c469b37d2 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -78,7 +78,7 @@ struct sm_instance {
 static int
 bcm2835_vchi_msg_queue(unsigned handle, void *data, unsigned int size)
 {
-	return vchi_queue_kernel_message(handle, data, size);
+	return vchiq_queue_kernel_message(handle, data, size);
 }
 
 static struct
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index b5d40074cdc7..664547c8e4a9 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -452,10 +452,9 @@ buffer_from_host(struct vchiq_mmal_instance *instance,
 
 	vchi_service_use(instance->service_handle);
 
-	ret = vchi_queue_kernel_message(instance->service_handle,
-					&m,
-					sizeof(struct mmal_msg_header) +
-					sizeof(m.u.buffer_from_host));
+	ret = vchiq_queue_kernel_message(instance->service_handle, &m,
+					 sizeof(struct mmal_msg_header) +
+					 sizeof(m.u.buffer_from_host));
 
 	vchi_service_release(instance->service_handle);
 
@@ -806,10 +805,9 @@ static int send_synchronous_mmal_msg(struct vchiq_mmal_instance *instance,
 
 	vchi_service_use(instance->service_handle);
 
-	ret = vchi_queue_kernel_message(instance->service_handle,
-					msg,
-					sizeof(struct mmal_msg_header) +
-					payload_len);
+	ret = vchiq_queue_kernel_message(instance->service_handle, msg,
+					 sizeof(struct mmal_msg_header) +
+					 payload_len);
 
 	vchi_service_release(instance->service_handle);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
