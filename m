Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4AF1E40BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OR+LfE6iiGjgzeEutUydS2L4bC/oIDaxAKxMrJeHvMU=; b=CXDvf3sJxpHk7L
	ztdaDTxJWi8KHtwGmNR7le70AmqPjRUscVuvglH7G+CnCukfLjht1LxR3fDLYHJBzmhPGQse+APE3
	UXqfUW2/6VnvzoYCHczGcXsbekY+hbOFmlOBSHCjeZ70kQzMKFg1tqg5bUNNwS/IZu+9+i4Xrjoq9
	UABFN/kw7MMyUwqCHNpWnJIz75WZ89fTP34dpBxAwSHgwwTZdSn80cCOtrG3uBxSppP+ngvdfJ0Zy
	xxsJ7g0TTw4uV6fxO77v5XqIcX2M6YRGYFC47RdSEZKZRYMCDtwjZYh0DD6frl/V25VUvmMP/Ie9A
	XCBpA6ZzIyje2Um/qdhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jduec-0006xi-2u; Wed, 27 May 2020 11:55:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudV-0006Xl-GP; Wed, 27 May 2020 11:54:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 413C8ADE3;
 Wed, 27 May 2020 11:54:16 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 02/50] staging: vchi: Get rid of vchi_queue_user_message()
Date: Wed, 27 May 2020 13:53:07 +0200
Message-Id: <20200527115400.31391-3-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045417_712242_DCB04A95 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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

The function has no users.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |  6 ----
 .../interface/vchiq_arm/vchiq_shim.c          | 34 -------------------
 2 files changed, 40 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 686cfc536012..62d9d3efa755 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -111,12 +111,6 @@ vchi_queue_kernel_message(struct vchi_service_handle *handle,
 			  void *data,
 			  unsigned int size);
 
-/* Routine to send a message from user memory across a service */
-extern int
-vchi_queue_user_message(struct vchi_service_handle *handle,
-			void __user *data,
-			unsigned int size);
-
 // Routine to receive a msg from a service
 // Dequeue is equivalent to hold, copy into client buffer, release
 extern int32_t vchi_msg_dequeue(struct vchi_service_handle *handle,
diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 9a040651bb9b..2c2bd7a9dc27 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -150,40 +150,6 @@ vchi_queue_kernel_message(struct vchi_service_handle *handle,
 }
 EXPORT_SYMBOL(vchi_queue_kernel_message);
 
-struct vchi_queue_user_message_context {
-	void __user *data;
-};
-
-static ssize_t
-vchi_queue_user_message_callback(void *context,
-				 void *dest,
-				 size_t offset,
-				 size_t maxsize)
-{
-	struct vchi_queue_user_message_context *copycontext = context;
-
-	if (copy_from_user(dest, copycontext->data + offset, maxsize))
-		return -EFAULT;
-
-	return maxsize;
-}
-
-int
-vchi_queue_user_message(struct vchi_service_handle *handle,
-			void __user *data,
-			unsigned int size)
-{
-	struct vchi_queue_user_message_context copycontext = {
-		.data = data
-	};
-
-	return vchi_msg_queue(handle,
-			      vchi_queue_user_message_callback,
-			      &copycontext,
-			      size);
-}
-EXPORT_SYMBOL(vchi_queue_user_message);
-
 /***********************************************************
  * Name: vchi_bulk_queue_receive
  *
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
