Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD941E4127
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:03:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+LLTTjKXAmWbtIxsloEwSkHBtKIrPWeINGmLT+MoWk=; b=KEwj8oLSRFAIre
	IwVKGhf03Rbg7vAq1W8Diym36Op70mojWunRvUqUGntwZC0luw/VmM1eAcX+VF+KBUxwFD/n2sRWQ
	mdfiPcntwnQoEHYwvCWlQzwKVafZmYZz8FJirCLBWPTK+6KMts/W1qqljuYXUq30EDX+MAf+6IScT
	GmQfkbmSDiS8t53h+fB+u9bUoIetIRpHqmF19XrHMFHlFySsTx00hoAIa7zwglnozqLv5x/suT0NL
	gVjonjF30xU2cH6U1xtK4QNOfd4+ejBPq4MdVdG72GP2tgFoR6ZSV0/aQ7powhhZozr8Nb3p23E7E
	3/pP8FskTrWcnsCID/0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdum2-0001BW-Sa; Wed, 27 May 2020 12:03:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudh-0006la-Et; Wed, 27 May 2020 11:54:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 788BDACF2;
 Wed, 27 May 2020 11:54:30 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 17/50] staging: vchi_common: Get rid of all unused definitions
Date: Wed, 27 May 2020 13:53:22 +0200
Message-Id: <20200527115400.31391-18-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045429_809010_F16ED149 
X-CRM114-Status: GOOD (  11.91  )
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

There is a series of structures and enums defined but never used. Get
rid of them.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../interface/vchi/vchi_common.h              | 65 -------------------
 1 file changed, 65 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_common.h b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
index 0f79bea4757d..e07376fe4dfd 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_common.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_common.h
@@ -10,23 +10,7 @@ enum vchi_flags {
 	VCHI_FLAGS_BLOCK_UNTIL_OP_COMPLETE   = 0x1,   // waits for message to be received, or sent (NB. not the same as being seen on other side)
 	VCHI_FLAGS_CALLBACK_WHEN_OP_COMPLETE = 0x2,   // run a callback when message sent
 	VCHI_FLAGS_BLOCK_UNTIL_QUEUED        = 0x4,   // return once the transfer is in a queue ready to go
-	VCHI_FLAGS_ALLOW_PARTIAL             = 0x8,
 	VCHI_FLAGS_BLOCK_UNTIL_DATA_READ     = 0x10,
-	VCHI_FLAGS_CALLBACK_WHEN_DATA_READ   = 0x20,
-
-	VCHI_FLAGS_ALIGN_SLOT            = 0x000080,  // internal use only
-	VCHI_FLAGS_BULK_AUX_QUEUED       = 0x010000,  // internal use only
-	VCHI_FLAGS_BULK_AUX_COMPLETE     = 0x020000,  // internal use only
-	VCHI_FLAGS_BULK_DATA_QUEUED      = 0x040000,  // internal use only
-	VCHI_FLAGS_BULK_DATA_COMPLETE    = 0x080000,  // internal use only
-	VCHI_FLAGS_INTERNAL              = 0xFF0000
-};
-
-// constants for vchi_crc_control()
-enum vchi_crc_control {
-	VCHI_CRC_NOTHING = -1,
-	VCHI_CRC_PER_SERVICE = 0,
-	VCHI_CRC_EVERYTHING = 1,
 };
 
 //callback reasons when an event occurs on a service
@@ -47,58 +31,9 @@ enum vchi_callback_reason {
 	VCHI_CALLBACK_BULK_RECEIVE_ABORTED,
 };
 
-// service control options
-enum vchi_service_option {
-	VCHI_SERVICE_OPTION_MIN,
-
-	VCHI_SERVICE_OPTION_TRACE,
-	VCHI_SERVICE_OPTION_SYNCHRONOUS,
-
-	VCHI_SERVICE_OPTION_MAX
-};
-
 //Callback used by all services / bulk transfers
 typedef void (*vchi_callback)(void *callback_param, //my service local param
 			      enum vchi_callback_reason reason,
 			      void *handle); //for transmitting msg's only
 
-/*
- * Define vector struct for scatter-gather (vector) operations
- * Vectors can be nested - if a vector element has negative length, then
- * the data pointer is treated as pointing to another vector array, with
- * '-vec_len' elements. Thus to append a header onto an existing vector,
- * you can do this:
- *
- * void foo(const struct vchi_msg_vector *v, int n)
- * {
- *    struct vchi_msg_vector nv[2];
- *    nv[0].vec_base = my_header;
- *    nv[0].vec_len = sizeof my_header;
- *    nv[1].vec_base = v;
- *    nv[1].vec_len = -n;
- *    ...
- *
- */
-struct vchi_msg_vector {
-	const void *vec_base;
-	int32_t vec_len;
-};
-
-/*
- * Iterator structure for reading ahead through received message queue.
- * Allocated by client, initialised by vchi_msg_look_ahead. Fields are for
- * internal VCHI use only.
- * Iterates over messages in queue at the instant of the call to
- * vchi_msg_lookahead - will not proceed to messages received since.
- * Behaviour is undefined if an iterator is used again after messages for that
- * service are removed/dequeued by any means other than vchi_msg_iter_...
- * calls on the iterator itself.
- */
-struct vchi_msg_iter {
-	struct opaque_vchi_service_t *service;
-	void *last;
-	void *next;
-	void *remove;
-};
-
 #endif // VCHI_COMMON_H_
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
