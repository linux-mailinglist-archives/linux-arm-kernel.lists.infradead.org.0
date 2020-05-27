Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9284A1E4136
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:05:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w9Uvyue02nG+dksC8h4YnrKSZrbxxnTM15Za1fzhopw=; b=UInqXMJRxjsanL
	bsL7RNFapNWGVPctbTdStknxj2E8G/xQ7cBJfKou1qyKCp/+LHDdmZEwOYnC8MLNyvvnRt8Bwv9Yn
	NfGkDTAKg0JFF1XZvzjUKmvSXu361VOmAZBwbRqSidWr6GYI7rfDRuySjlhWgSChAFXHpGUXskU5c
	IDSFlhj3Ycg5pd/ZQvkkbFZxXvq5INloFXH8CCCvhWCkkRMX0y+1dwEpdLJNlBDHGri59dEAMK7nd
	mjWj3vhu5dU12E3+44B7W5NvGuDlJp3OsK6ILMnQUUX9o83+lCcU42RGTUkfbEfSdB4Wvyra/q0nk
	4/B815al5RDt2O8tqktQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduns-0002fy-5n; Wed, 27 May 2020 12:05:00 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudm-0006tb-Vc; Wed, 27 May 2020 11:54:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7CF2FAF16;
 Wed, 27 May 2020 11:54:35 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC 22/50] staging: vchi: Use enum vchiq_bulk_mode instead of vchi's
 transmission flags
Date: Wed, 27 May 2020 13:53:27 +0200
Message-Id: <20200527115400.31391-23-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045435_988245_4AD88563 
X-CRM114-Status: GOOD (  17.09  )
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

vchi has a set of transfer flags which almost map 1:1 to vchiq's own
transfer modes. For the sake of simplicity let's use the later and
delete vchi's.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  2 +-
 .../vc04_services/bcm2835-audio/bcm2835.h     |  1 +
 .../vc04_services/interface/vchi/vchi.h       |  4 +-
 .../interface/vchi/vchi_common.h              |  9 ----
 .../interface/vchiq_arm/vchiq_shim.c          | 44 ++-----------------
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |  1 +
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     |  4 +-
 7 files changed, 10 insertions(+), 55 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 68119246f10b..565853ec1e7a 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -348,7 +348,7 @@ int bcm2835_audio_write(struct bcm2835_alsa_stream *alsa_stream,
 		/* Send the message to the videocore */
 		status = vchi_bulk_queue_transmit(instance->service,
 						  src, count,
-						  VCHI_FLAGS_BLOCK_UNTIL_DATA_READ,
+						  VCHIQ_BULK_MODE_BLOCKING,
 						  NULL);
 	} else {
 		while (count > 0) {
diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
index 2a94e825194f..7a0e4ab50fc7 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835.h
@@ -9,6 +9,7 @@
 #include <sound/core.h>
 #include <sound/pcm.h>
 #include <sound/pcm-indirect.h>
+#include "interface/vchiq_arm/vchiq_if.h"
 #include "interface/vchi/vchi.h"
 
 #define MAX_SUBSTREAMS   (8)
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 92ce811fc28d..9a74ca4e1062 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -105,14 +105,14 @@ extern int32_t vchi_held_msg_release(struct vchi_held_msg *message);
 extern int32_t vchi_bulk_queue_receive(struct vchi_service *service,
 				       void *data_dst,
 				       uint32_t data_size,
-				       enum vchi_flags flags,
+				       enum vchiq_bulk_mode mode,
 				       void *transfer_handle);
 
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
 extern int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
 					const void *data_src,
 					uint32_t data_size,
-					enum vchi_flags flags,
+				        enum vchiq_bulk_mode mode,
 					void *transfer_handle);
 
 /******************************************************************************
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index e07376fe4dfd..52b447c19445 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -4,15 +4,6 @@
 #ifndef VCHI_COMMON_H_
 #define VCHI_COMMON_H_
 
-//flags used when sending messages (must be bitmapped)
-enum vchi_flags {
-	VCHI_FLAGS_NONE                      = 0x0,
-	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
-	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
-	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4,   // return once the transfer is in a queue ready to go
-	VCHI_FLAGS_BLOCK_UNTIL_DATA_READ     = 0x10,
-};
-
 //callback reasons when an event occurs on a service
 enum vchi_callback_reason {
 	/*
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 0466512cfe3c..3a5545e0db6b 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -3,6 +3,7 @@
 #include <linux/module.h>
 #include <linux/types.h>
 
+#include "vchiq_if.h"
 #include "../vchi/vchi.h"
 #include "vchiq.h"
 #include "vchiq_core.h"
@@ -57,30 +58,11 @@ EXPORT_SYMBOL(vchi_queue_kernel_message);
  *
  ***********************************************************/
 int32_t vchi_bulk_queue_receive(struct vchi_service *service, void *data_dst,
-				uint32_t data_size, enum vchi_flags flags,
+				uint32_t data_size, enum vchiq_bulk_mode mode,
 				void *bulk_handle)
 {
-	enum vchiq_bulk_mode mode;
 	enum vchiq_status status;
 
-	switch ((int)flags) {
-	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
-		| VCHI_FLAGS_BLOCK_UNTIL_QUEUED:
-		WARN_ON(!service->callback);
-		mode = VCHIQ_BULK_MODE_CALLBACK;
-		break;
-	case VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE:
-		mode = VCHIQ_BULK_MODE_BLOCKING;
-		break;
-	case VCHI_FLAGS_BLOCK_UNTIL_QUEUED:
-	case VCHI_FLAGS_NONE:
-		mode = VCHIQ_BULK_MODE_NOCALLBACK;
-		break;
-	default:
-		WARN(1, "unsupported message\n");
-		return VCHIQ_ERROR;
-	}
-
 	while (1) {
 		status = vchiq_bulk_receive(service->handle, data_dst,
 			data_size, bulk_handle, mode);
@@ -116,31 +98,11 @@ EXPORT_SYMBOL(vchi_bulk_queue_receive);
 int32_t vchi_bulk_queue_transmit(struct vchi_service *service,
 				 const void *data_src,
 				 uint32_t data_size,
-				 enum vchi_flags flags,
+				 enum vchiq_bulk_mode mode,
 				 void *bulk_handle)
 {
-	enum vchiq_bulk_mode mode;
 	enum vchiq_status status;
 
-	switch ((int)flags) {
-	case VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE
-		| VCHI_FLAGS_BLOCK_UNTIL_QUEUED:
-		WARN_ON(!service->callback);
-		mode = VCHIQ_BULK_MODE_CALLBACK;
-		break;
-	case VCHI_FLAGS_BLOCK_UNTIL_DATA_READ:
-	case VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE:
-		mode = VCHIQ_BULK_MODE_BLOCKING;
-		break;
-	case VCHI_FLAGS_BLOCK_UNTIL_QUEUED:
-	case VCHI_FLAGS_NONE:
-		mode = VCHIQ_BULK_MODE_NOCALLBACK;
-		break;
-	default:
-		WARN(1, "unsupported message\n");
-		return VCHIQ_ERROR;
-	}
-
 	while (1) {
 		status = vchiq_bulk_transmit(service->handle, data_src,
 			data_size, bulk_handle, mode);
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index 826cac7922d2..b7de8526fc54 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -19,6 +19,7 @@
 #include <linux/slab.h>
 #include <linux/types.h>
 
+#include "interface/vchiq_arm/vchiq_if.h"
 #include "vc_sm_cma_vchi.h"
 
 #define VC_SM_VER  1
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 9f905f529d91..1d9a3f94799a 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -32,6 +32,7 @@
 
 #include "vc-sm-cma/vc_sm_knl.h"
 
+#include "interface/vchiq_arm/vchiq_if.h"
 #include "interface/vchi/vchi.h"
 
 /*
@@ -298,8 +299,7 @@ static void buffer_to_host_work_cb(struct work_struct *work)
 				       * of 4 bytes
 				       */
 				      (len + 3) & ~3,
-				      VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE |
-				      VCHI_FLAGS_BLOCK_UNTIL_QUEUED,
+				      VCHIQ_BULK_MODE_CALLBACK,
 				      msg_context);
 
 	vchi_service_release(instance->service);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
