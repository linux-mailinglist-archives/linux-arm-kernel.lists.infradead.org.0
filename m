Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2511E413B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y2NYSCeDIZkUYdS0ZHbacoU+7wuDi02W+DNJwhyzWFo=; b=ZFOj1Z2lwh+y0C
	UdTMws9sfb/3VX4DRBvC1PIdNSJnK/oDH0TsPHpl8tc+LEN4h+4LXX7H30vCzA9Dj2bfxaUau0LGC
	rJDP8QpUxF6i5zsWlasMs9meLJ17cnP9NA4YAp+qqymQDEYNaEn0CRpAAwCeZMoXm2EjFu0P/nu5d
	/BYLXZsnRk5NvYtfjCPnPsrA8ddhv+6XIa8byQjlYzq5EgP0u+HXKM0utR1twvgoxOoyA88a7pE8Z
	ExfNUDmkQgTfI+CIIHMpO+sV8loE14+5USy7Rur1vO0ALqtp8KRK0QfBlNRY4fGvaEBPK78GacdkV
	nG0+ETeOTJw6QHrrXHcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduoY-0005WF-6z; Wed, 27 May 2020 12:05:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudn-0006uS-MT; Wed, 27 May 2020 11:54:38 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id AD89AAD17;
 Wed, 27 May 2020 11:54:36 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC 23/50] staging: vchi: Use vchiq's enum vchiq_reason
Date: Wed, 27 May 2020 13:53:28 +0200
Message-Id: <20200527115400.31391-24-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045436_070642_06AAD7C7 
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

enum vchi_callback_reason maps 1:1 to enum vchiq_reason, in an effort to
simplify things, let's use the later, and get rid of the extra
indirection.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../bcm2835-audio/bcm2835-vchiq.c             |  5 +--
 .../interface/vchi/vchi_common.h              | 20 +---------
 .../interface/vchiq_arm/vchiq_shim.c          | 40 +------------------
 .../staging/vc04_services/vc-sm-cma/vc_sm.c   |  1 +
 .../vc04_services/vc-sm-cma/vc_sm_cma_vchi.c  |  7 ++--
 .../vc04_services/vchiq-mmal/mmal-vchiq.c     | 11 +++--
 6 files changed, 14 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
index 565853ec1e7a..0f97eda4ec90 100644
--- a/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
+++ b/drivers/staging/vc04_services/bcm2835-audio/bcm2835-vchiq.c
@@ -89,8 +89,7 @@ static int bcm2835_audio_send_simple(struct bcm2835_audio_instance *instance,
 	return bcm2835_audio_send_msg(instance, &m, wait);
 }
 
-static void audio_vchi_callback(void *param,
-				const enum vchi_callback_reason reason,
+static void audio_vchi_callback(void *param, const enum vchiq_reason reason,
 				void *msg_handle)
 {
 	struct bcm2835_audio_instance *instance = param;
@@ -99,7 +98,7 @@ static void audio_vchi_callback(void *param,
 	unsigned size;
 	int status;
 
-	if (reason != VCHI_CALLBACK_MSG_AVAILABLE)
+	if (reason != VCHIQ_MESSAGE_AVAILABLE)
 		return;
 
 	status = vchi_msg_hold(instance->service, (void **)&m, &size, &handle);
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 52b447c19445..24e8665e214a 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -4,27 +4,9 @@
 #ifndef VCHI_COMMON_H_
 #define VCHI_COMMON_H_
 
-//callback reasons when an event occurs on a service
-enum vchi_callback_reason {
-	/*
-	 * This indicates that there is data available handle is the msg id that
-	 * was transmitted with the data
-	 * When a message is received and there was no FULL message available
-	 * previously, send callback
-	 * Tasks get kicked by the callback, reset their event and try and read
-	 * from the fifo until it fails
-	 */
-	VCHI_CALLBACK_SERVICE_CLOSED,
-	VCHI_CALLBACK_MSG_AVAILABLE,
-	VCHI_CALLBACK_BULK_SENT,
-	VCHI_CALLBACK_BULK_RECEIVED,
-	VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
-};
-
 //Callback used by all services / bulk transfers
 typedef void (*vchi_callback)(void *callback_param, //my service local param
-			      enum vchi_callback_reason reason,
+			      enum vchiq_reason reason,
 			      void *handle); //for transmitting msg's only
 
 #endif // VCHI_COMMON_H_
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 3a5545e0db6b..649a65f02578 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -274,46 +274,10 @@ static enum vchiq_status shim_callback(enum vchiq_reason reason,
 	if (!service->callback)
 		goto release;
 
-	switch (reason) {
-	case VCHIQ_MESSAGE_AVAILABLE:
+	if (reason == VCHIQ_MESSAGE_AVAILABLE)
 		vchiu_queue_push(&service->queue, header);
 
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_MSG_AVAILABLE, NULL);
-
-		break;
-
-	case VCHIQ_BULK_TRANSMIT_DONE:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_SENT, bulk_user);
-		break;
-
-	case VCHIQ_BULK_RECEIVE_DONE:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_RECEIVED, bulk_user);
-		break;
-
-	case VCHIQ_SERVICE_CLOSED:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_SERVICE_CLOSED, NULL);
-		break;
-
-	case VCHIQ_BULK_TRANSMIT_ABORTED:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_TRANSMIT_ABORTED,
-				  bulk_user);
-		break;
-
-	case VCHIQ_BULK_RECEIVE_ABORTED:
-		service->callback(service->callback_param,
-				  VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
-				  bulk_user);
-		break;
-
-	default:
-		WARN(1, "not supported\n");
-		break;
-	}
+	service->callback(service->callback_param, reason, bulk_user);
 
 release:
 	return VCHIQ_SUCCESS;
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
index e660f546a7e4..fcef607e9446 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm.c
@@ -48,6 +48,7 @@
 #include <linux/types.h>
 #include <asm/cacheflush.h>
 
+#include "vchiq_if.h"
 #include "vchiq_connected.h"
 #include "vc_sm_cma_vchi.h"
 
diff --git a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
index b7de8526fc54..7efe42d51e46 100644
--- a/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
+++ b/drivers/staging/vc04_services/vc-sm-cma/vc_sm_cma_vchi.c
@@ -265,8 +265,7 @@ static int vc_sm_cma_vchi_videocore_io(void *arg)
 	return 0;
 }
 
-static void vc_sm_cma_vchi_callback(void *param,
-				    const enum vchi_callback_reason reason,
+static void vc_sm_cma_vchi_callback(void *param, const enum vchiq_reason reason,
 				    void *msg_handle)
 {
 	struct sm_instance *instance = param;
@@ -274,11 +273,11 @@ static void vc_sm_cma_vchi_callback(void *param,
 	(void)msg_handle;
 
 	switch (reason) {
-	case VCHI_CALLBACK_MSG_AVAILABLE:
+	case VCHIQ_MESSAGE_AVAILABLE:
 		complete(&instance->io_cmplt);
 		break;
 
-	case VCHI_CALLBACK_SERVICE_CLOSED:
+	case VCHIQ_SERVICE_CLOSED:
 		pr_info("%s: service CLOSED!!", __func__);
 	default:
 		break;
diff --git a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
index 1d9a3f94799a..258cfab7d397 100644
--- a/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
+++ b/drivers/staging/vc04_services/vchiq-mmal/mmal-vchiq.c
@@ -674,8 +674,7 @@ static void bulk_abort_cb(struct vchiq_mmal_instance *instance,
 }
 
 /* incoming event service callback */
-static void service_callback(void *param,
-			     const enum vchi_callback_reason reason,
+static void service_callback(void *param, const enum vchiq_reason reason,
 			     void *bulk_ctx)
 {
 	struct vchiq_mmal_instance *instance = param;
@@ -691,7 +690,7 @@ static void service_callback(void *param,
 	}
 
 	switch (reason) {
-	case VCHI_CALLBACK_MSG_AVAILABLE:
+	case VCHIQ_MESSAGE_AVAILABLE:
 		status = vchi_msg_hold(instance->service, (void **)&msg,
 				       &msg_len, &msg_handle);
 		if (status) {
@@ -756,15 +755,15 @@ static void service_callback(void *param,
 
 		break;
 
-	case VCHI_CALLBACK_BULK_RECEIVED:
+	case VCHIQ_BULK_RECEIVE_DONE:
 		bulk_receive_cb(instance, bulk_ctx);
 		break;
 
-	case VCHI_CALLBACK_BULK_RECEIVE_ABORTED:
+	case VCHIQ_BULK_RECEIVE_ABORTED:
 		bulk_abort_cb(instance, bulk_ctx);
 		break;
 
-	case VCHI_CALLBACK_SERVICE_CLOSED:
+	case VCHIQ_SERVICE_CLOSED:
 		/* TODO: consider if this requires action if received when
 		 * driver is not explicitly closing the service
 		 */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
