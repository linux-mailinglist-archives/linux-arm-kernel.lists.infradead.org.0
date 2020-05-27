Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 176281E40E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 13:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQt24wR/+RGgWqGVtuAPhAP+2x3Ojlp/5NkfGEKy43k=; b=rWbEtKXqVVJ+sZ
	cJkf31mlzgfkCgPUK3WYqhkl2BCmuUbkq0YwkEoCDjN1JvOsT7dFogSDFM7AAnB6KssQpGp7D4pKn
	Ja9gMzOpeWaezeh6aUGOT0H0uC+qzT+QPROZZKSHSc2dCJjdgSywTo8mGvqQLVnKG4Yyri1UVbKKt
	T1JuOT8nZbUWHwUBQfprTV5nOIGSVZv9aBVpb/Gs66FGS8yuOp6gVxhuD2t6EMxgXCXnV8k+RMkdd
	kbagU+IXVxvVB83qgdZ1lh8LlxzDKgdQ2xenNCXIK56Z+9dN3Yh2NJAqD5vUYTbc69aRVPSaOLQSy
	t30NEqjhYhI3FRqItqDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdugF-0002sF-16; Wed, 27 May 2020 11:57:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudZ-0006ck-5z; Wed, 27 May 2020 11:54:23 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3DF3FAE44;
 Wed, 27 May 2020 11:54:20 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 07/50] staging: vchi: Get rid of not implemented function
 declarations
Date: Wed, 27 May 2020 13:53:12 +0200
Message-Id: <20200527115400.31391-8-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045421_515150_223262D9 
X-CRM114-Status: GOOD (  11.25  )
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

They don't exist, they have no users, get rid of them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       | 59 -------------------
 1 file changed, 59 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index 1e8d17531e9d..2e41b5f7bdec 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -67,19 +67,12 @@ extern "C" {
 // Routine used to initialise the vchi on both local + remote connections
 extern int32_t vchi_initialise(struct vchi_instance_handle **instance_handle);
 
-extern int32_t vchi_exit(void);
-
 extern int32_t vchi_connect(struct vchi_instance_handle *instance_handle);
 
 //When this is called, ensure that all services have no data pending.
 //Bulk transfers can remain 'queued'
 extern int32_t vchi_disconnect(struct vchi_instance_handle *instance_handle);
 
-// helper functions
-extern void *vchi_allocate_buffer(struct vchi_service_handle *handle, uint32_t *length);
-extern void vchi_free_buffer(struct vchi_service_handle *handle, void *address);
-extern uint32_t vchi_current_time(struct vchi_instance_handle *instance_handle);
-
 /******************************************************************************
  * Global service API
  *****************************************************************************/
@@ -135,54 +128,14 @@ extern int32_t vchi_msg_hold(struct vchi_service_handle *handle,
 			     enum vchi_flags flags,
 			     struct vchi_held_msg *message_descriptor);
 
-// Initialise an iterator to look through messages in place
-extern int32_t vchi_msg_look_ahead(struct vchi_service_handle *handle,
-				   struct vchi_msg_iter *iter,
-				   enum vchi_flags flags);
-
 /*******************************************************************************
  * Global service support API - operations on held messages
  * and message iterators
  ******************************************************************************/
 
-// Routine to get the address of a held message
-extern void *vchi_held_msg_ptr(const struct vchi_held_msg *message);
-
-// Routine to get the size of a held message
-extern int32_t vchi_held_msg_size(const struct vchi_held_msg *message);
-
-// Routine to get the transmit timestamp as written into the header by the peer
-extern uint32_t vchi_held_msg_tx_timestamp(const struct vchi_held_msg *message);
-
-// Routine to get the reception timestamp, written as we parsed the header
-extern uint32_t vchi_held_msg_rx_timestamp(const struct vchi_held_msg *message);
-
 // Routine to release a held message after it has been processed
 extern int32_t vchi_held_msg_release(struct vchi_held_msg *message);
 
-// Indicates whether the iterator has a next message.
-extern int32_t vchi_msg_iter_has_next(const struct vchi_msg_iter *iter);
-
-// Return the pointer and length for the next message and advance the iterator.
-extern int32_t vchi_msg_iter_next(struct vchi_msg_iter *iter,
-				  void **data,
-				  uint32_t *msg_size);
-
-// Remove the last message returned by vchi_msg_iter_next.
-// Can only be called once after each call to vchi_msg_iter_next.
-extern int32_t vchi_msg_iter_remove(struct vchi_msg_iter *iter);
-
-// Hold the last message returned by vchi_msg_iter_next.
-// Can only be called once after each call to vchi_msg_iter_next.
-extern int32_t vchi_msg_iter_hold(struct vchi_msg_iter *iter,
-				  struct vchi_held_msg *message);
-
-// Return information for the next message, and hold it, advancing the iterator.
-extern int32_t vchi_msg_iter_hold_next(struct vchi_msg_iter *iter,
-				       void **data,        // } may be NULL
-				       uint32_t *msg_size, // }
-				       struct vchi_held_msg *message);
-
 /******************************************************************************
  * Global bulk API
  *****************************************************************************/
@@ -194,13 +147,6 @@ extern int32_t vchi_bulk_queue_receive(struct vchi_service_handle *handle,
 				       enum vchi_flags flags,
 				       void *transfer_handle);
 
-// Prepare interface for a transfer from the other side into relocatable memory.
-int32_t vchi_bulk_queue_receive_reloc(const struct vchi_service_handle *handle,
-				      uint32_t offset,
-				      uint32_t data_size,
-				      const enum vchi_flags flags,
-				      void * const bulk_handle);
-
 // Routine to queue up data ready for transfer to the other (once they have signalled they are ready)
 extern int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 					const void *data_src,
@@ -216,11 +162,6 @@ extern int32_t vchi_bulk_queue_transmit(struct vchi_service_handle *handle,
 }
 #endif
 
-extern int32_t vchi_bulk_queue_transmit_reloc(struct vchi_service_handle *handle,
-					      uint32_t offset,
-					      uint32_t data_size,
-					      enum vchi_flags flags,
-					      void *transfer_handle);
 #endif /* VCHI_H_ */
 
 /****************************** End of file **********************************/
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
