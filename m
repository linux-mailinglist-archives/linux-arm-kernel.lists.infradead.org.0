Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A6451E40DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:57:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XaNFIxiHCa1ZLLgdK71nykjda5WxE+zo9xMVDkcRgTo=; b=PoLMkyFF38qp6j
	e0Lh/SPwfoZnI4VQ6elJgS46WxPCBKWt+uK3gS9Vdtg+XT90ZnFxlQFyS8dYSORf6Y+cPCdaR6jdU
	/SZD7/LAAVIjkH9Zs3OmYVgaQb9IbsZLt23I+BT8X+HeFwncMzsBlsG6k8S0/8dZByPwYzCOAATI4
	5e8+x428fUcE4+BHDkbfhlsHSlY2gs9Q7xUVQckMqe4lApH9KWSzWNz7FtofqqMWPhwquNEk7/KZW
	V1+dO/QM2B/CIcjG10z2Jw2YchrTDySIzO0BNMv8jgG2I1DZkrUVFMk1ABmmRf6FQSqdC2jGsVRZr
	4fZouxEnvjRG97AKDUIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdufz-0002UG-8H; Wed, 27 May 2020 11:56:51 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudV-0006Xp-GQ; Wed, 27 May 2020 11:54:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 30B07AD2B;
 Wed, 27 May 2020 11:54:17 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 03/50] staging: vchiq: Move copy callback handling into vchiq
Date: Wed, 27 May 2020 13:53:08 +0200
Message-Id: <20200527115400.31391-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045417_892278_5C512CAF 
X-CRM114-Status: GOOD (  12.43  )
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

All vchi users use the kernel variant of the copy callback. The only
user for the user space variant of the copy callback is in the ioctl
implementation. So move all this copying logic into vchiq, and expose a
new function that explicitly passes kernel messages.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchiq_arm/vchiq_core.c          |  6 ++++
 .../interface/vchiq_arm/vchiq_core.h          |  7 ++++
 .../interface/vchiq_arm/vchiq_if.h            |  8 ++---
 .../interface/vchiq_arm/vchiq_shim.c          | 34 ++++---------------
 4 files changed, 22 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
index edcd97373809..67b2090c91db 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.c
@@ -3147,6 +3147,12 @@ vchiq_queue_message(unsigned int handle,
 	return status;
 }
 
+enum vchiq_status vchiq_queue_kernel_message(unsigned int handle, void *context,
+				      size_t size)
+{
+	return vchiq_queue_message(handle, memcpy_copy_callback, context, size);
+}
+
 void
 vchiq_release_message(unsigned int handle,
 		      struct vchiq_header *header)
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
index cedd8e721aae..1fe6cd8b86c0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_core.h
@@ -587,6 +587,13 @@ lock_service(struct vchiq_service *service);
 extern void
 unlock_service(struct vchiq_service *service);
 
+extern enum vchiq_status
+vchiq_queue_message(unsigned int handle,
+		    ssize_t (*copy_callback)(void *context, void *dest,
+					     size_t offset, size_t maxsize),
+		    void *context,
+		    size_t size);
+
 /* The following functions are called from vchiq_core, and external
 ** implementations must be provided. */
 
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
index 39b77ea19210..b62fd6d6f1ac 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_if.h
@@ -105,12 +105,8 @@ extern enum vchiq_status vchiq_close_service(unsigned int service);
 extern enum vchiq_status vchiq_remove_service(unsigned int service);
 extern enum vchiq_status vchiq_use_service(unsigned int service);
 extern enum vchiq_status vchiq_release_service(unsigned int service);
-extern enum vchiq_status
-vchiq_queue_message(unsigned int handle,
-		    ssize_t (*copy_callback)(void *context, void *dest,
-					     size_t offset, size_t maxsize),
-		    void *context,
-		    size_t size);
+extern enum vchiq_status vchiq_queue_kernel_message(unsigned int handle,
+						    void *context, size_t size);
 extern void           vchiq_release_message(unsigned int service,
 	struct vchiq_header *header);
 extern enum vchiq_status vchiq_bulk_transmit(unsigned int service,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 2c2bd7a9dc27..1c5ddea8b076 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -99,20 +99,15 @@ EXPORT_SYMBOL(vchi_msg_remove);
  *
  ***********************************************************/
 static
-int32_t vchi_msg_queue(struct vchi_service_handle *handle,
-	ssize_t (*copy_callback)(void *context, void *dest,
-				 size_t offset, size_t maxsize),
-	void *context,
-	uint32_t data_size)
+int32_t vchi_msg_queue(struct vchi_service_handle *handle, void *context,
+		       uint32_t data_size)
 {
 	struct shim_service *service = (struct shim_service *)handle;
 	enum vchiq_status status;
 
 	while (1) {
-		status = vchiq_queue_message(service->handle,
-					     copy_callback,
-					     context,
-					     data_size);
+		status = vchiq_queue_kernel_message(service->handle, context,
+						    data_size);
 
 		/*
 		 * vchiq_queue_message() may return VCHIQ_RETRY, so we need to
@@ -128,25 +123,10 @@ int32_t vchi_msg_queue(struct vchi_service_handle *handle,
 	return vchiq_status_to_vchi(status);
 }
 
-static ssize_t
-vchi_queue_kernel_message_callback(void *context,
-				   void *dest,
-				   size_t offset,
-				   size_t maxsize)
+int vchi_queue_kernel_message(struct vchi_service_handle *handle, void *data,
+			      unsigned int size)
 {
-	memcpy(dest, context + offset, maxsize);
-	return maxsize;
-}
-
-int
-vchi_queue_kernel_message(struct vchi_service_handle *handle,
-			  void *data,
-			  unsigned int size)
-{
-	return vchi_msg_queue(handle,
-			      vchi_queue_kernel_message_callback,
-			      data,
-			      size);
+	return vchi_msg_queue(handle, data, size);
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
