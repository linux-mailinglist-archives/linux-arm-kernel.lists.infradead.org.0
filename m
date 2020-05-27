Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868561E4126
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 14:02:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QvzOA1tL64/buIjLYs633ytV3pZO3zzSYCH1bysQFFg=; b=ia/ksUMIFCcjJJ
	u8nFK/0QwZ+EpvvUNKqCf7tdAFSNV2o0RNBI+WR8ZhaG8hQyFhSE0lPDIKky7V0gkfKiuCym/CIFJ
	Fc6EV1tFKytbwsckaZMxPGYx7N3IbhaYFzWemMoppqQca66iMisbG5CBLlXZxGSMksBDcjl1ZFVye
	0UkHbvYi2BHsw5BCNx0f4/9KvvblUCsQJ01CYJmHJo2/CtZLTP3ZUWqm8NretXXRXe7j5YsjrRmx6
	DX6qKJ0ZslSYPAVqqa7Cu1T6SgSgw/CmBabMGxUU33SSMXntAdD8h65zZOtWhp+y8TEkvA+TNwMjJ
	sckRQ9BFc6CxJbA0BcfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdulm-0000yj-Nm; Wed, 27 May 2020 12:02:50 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdudj-0006qb-S9; Wed, 27 May 2020 11:54:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 04D8BAC91;
 Wed, 27 May 2020 11:54:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [RFC 20/50] staging: vc04_services: Get rid of vchi_cfg.h
Date: Wed, 27 May 2020 13:53:25 +0200
Message-Id: <20200527115400.31391-21-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527115400.31391-1-nsaenzjulienne@suse.de>
References: <20200527115400.31391-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_045432_203975_D41389E6 
X-CRM114-Status: GOOD (  20.07  )
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

Nothing in it is being used.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../vc04_services/interface/vchi/vchi.h       |   1 -
 .../vc04_services/interface/vchi/vchi_cfg.h   | 238 ------------------
 2 files changed, 239 deletions(-)
 delete mode 100644 drivers/staging/vc04_services/interface/vchi/vchi_cfg.h

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi.h b/drivers/staging/vc04_services/interface/vchi/vchi.h
index bf0c7a496f5a..55e51e5a1fdc 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi.h
@@ -4,7 +4,6 @@
 #ifndef VCHI_H_
 #define VCHI_H_
 
-#include "vchi_cfg.h"
 #include "vchi_common.h"
 
 /******************************************************************************
diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
deleted file mode 100644
index 138c36151a22..000000000000
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ /dev/null
@@ -1,238 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause */
-/* Copyright (c) 2010-2012 Broadcom. All rights reserved. */
-
-#ifndef VCHI_CFG_H_
-#define VCHI_CFG_H_
-
-/*******************************************************************************
- * Defines in this first section are part of the VCHI API and may be examined by
- * VCHI services.
- ******************************************************************************/
-
-/*
- * Required alignment of base addresses for bulk transfer, if unaligned
- * transfers are not enabled
- * Really determined by the message driver, and should be available from
- * a run-time call.
- */
-#ifndef VCHI_BULK_ALIGN
-#   if __VCCOREVER__ >= 0x04000000
-#       define VCHI_BULK_ALIGN 32 // Allows for the need to do cache cleans
-#   else
-#       define VCHI_BULK_ALIGN 16
-#   endif
-#endif
-
-/*
- * Required length multiple for bulk transfers, if unaligned transfers are
- * not enabled
- * May be less than or greater than VCHI_BULK_ALIGN
- * Really determined by the message driver, and should be available from
- * a run-time call.
- */
-#ifndef VCHI_BULK_GRANULARITY
-#   if __VCCOREVER__ >= 0x04000000
-#       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
-#   else
-#       define VCHI_BULK_GRANULARITY 16
-#   endif
-#endif
-
-/* The largest possible message to be queued with vchi_msg_queue. */
-#ifndef VCHI_MAX_MSG_SIZE
-#   if defined VCHI_LOCAL_HOST_PORT
-#       define VCHI_MAX_MSG_SIZE     16384         // makes file transfers fast, but should they be using bulk?
-#   else
-#       define VCHI_MAX_MSG_SIZE      4096 // NOTE: THIS MUST BE LARGER THAN OR EQUAL TO THE SIZE OF THE KHRONOS MERGE BUFFER!!
-#   endif
-#endif
-
-/******************************************************************************
- * Defines below are system configuration options, and should not be used by
- * VCHI services.
- ******************************************************************************/
-
-/*
- * How many connections can we support? A localhost implementation uses
- * 2 connections, 1 for host-app, 1 for VMCS, and these are hooked together
- * by a loopback MPHI VCFW  driver.
- */
-#ifndef VCHI_MAX_NUM_CONNECTIONS
-#   define VCHI_MAX_NUM_CONNECTIONS 3
-#endif
-
-/*
- * How many services can we open per connection? Extending this doesn't cost
- * processing time, just a small amount of static memory.
- */
-#ifndef VCHI_MAX_SERVICES_PER_CONNECTION
-#  define VCHI_MAX_SERVICES_PER_CONNECTION 36
-#endif
-
-/* Adjust if using a message driver that supports more logical TX channels */
-#ifndef VCHI_MAX_BULK_TX_CHANNELS_PER_CONNECTION
-#   define VCHI_MAX_BULK_TX_CHANNELS_PER_CONNECTION 9 // 1 MPHI + 8 CCP2 logical channels
-#endif
-
-/* Adjust if using a message driver that supports more logical RX channels */
-#ifndef VCHI_MAX_BULK_RX_CHANNELS_PER_CONNECTION
-#   define VCHI_MAX_BULK_RX_CHANNELS_PER_CONNECTION 1 // 1 MPHI
-#endif
-
-/*
- * How many receive slots do we use. This times VCHI_MAX_MSG_SIZE gives the
- * effective receive queue space, less message headers.
- */
-#ifndef VCHI_NUM_READ_SLOTS
-#  if defined(VCHI_LOCAL_HOST_PORT)
-#     define VCHI_NUM_READ_SLOTS 4
-#  else
-#     define VCHI_NUM_READ_SLOTS 48
-#  endif
-#endif
-
-/*
- * Do we utilise overrun facility for receive message slots? Can aid peer
- * transmit performance. Only define on VideoCore end, talking to host.
- */
-//#define VCHI_MSG_RX_OVERRUN
-
-/*
- * How many transmit slots do we use. Generally don't need many,
- * as the hardware driver underneath VCHI will usually have its own buffering.
- */
-#ifndef VCHI_NUM_WRITE_SLOTS
-#  define VCHI_NUM_WRITE_SLOTS 4
-#endif
-
-/*
- * If a service has held or queued received messages in VCHI_XOFF_THRESHOLD or
- * more slots, then it's taking up too much buffer space,
- * and the peer service will be told to stop transmitting with an XOFF message.
- * For this to be effective, the VCHI_NUM_READ_SLOTS needs to be considerably
- * bigger than VCHI_NUM_WRITE_SLOTS, or the transmit latency is too high.
- */
-#ifndef VCHI_XOFF_THRESHOLD
-#  define VCHI_XOFF_THRESHOLD (VCHI_NUM_READ_SLOTS / 2)
-#endif
-
-/*
- * After we've sent an XOFF, the peer will be told to resume transmission
- * once the local service has dequeued/released enough messages that it's now
- * occupying VCHI_XON_THRESHOLD slots or fewer.
- */
-#ifndef VCHI_XON_THRESHOLD
-#  define VCHI_XON_THRESHOLD (VCHI_NUM_READ_SLOTS / 4)
-#endif
-
-/*
- * A size below which a bulk transfer omits the handshake completely and always
- * goes via the message channel, if bulk auxiliary is being sent on that
- * service. (The user can guarantee this by enabling unaligned transmits).
- * Not API.
- */
-#ifndef VCHI_MIN_BULK_SIZE
-#  define VCHI_MIN_BULK_SIZE    (VCHI_MAX_MSG_SIZE / 2 < 4096 ? VCHI_MAX_MSG_SIZE / 2 : 4096)
-#endif
-
-/*
- * Maximum size of bulk transmission chunks, for each interface type.
- * A trade-off between speed and latency; the smaller the chunk size the better
- * change of messages and other bulk transmissions getting in when big bulk
- * transfers are happening. Set to 0 to not break transmissions into chunks.
- */
-#ifndef VCHI_MAX_BULK_CHUNK_SIZE_MPHI
-#  define VCHI_MAX_BULK_CHUNK_SIZE_MPHI (16 * 1024)
-#endif
-
-/*
- * NB Chunked CCP2 transmissions violate the letter of the CCP2 spec
- * by using "JPEG8" mode with multiple-line frames. Only use if the receiver
- * can cope.
- */
-#ifndef VCHI_MAX_BULK_CHUNK_SIZE_CCP2
-#  define VCHI_MAX_BULK_CHUNK_SIZE_CCP2 0
-#endif
-
-/*
- * How many TX messages can we have pending in our transmit slots.
- * Once exhausted, vchi_msg_queue will be blocked.
- */
-#ifndef VCHI_TX_MSG_QUEUE_SIZE
-#  define VCHI_TX_MSG_QUEUE_SIZE           256
-#endif
-
-/*
- * How many RX messages can we have parsed in the receive slots. Once exhausted,
- * parsing will be suspended until older messages are dequeued/released.
- */
-#ifndef VCHI_RX_MSG_QUEUE_SIZE
-#  define VCHI_RX_MSG_QUEUE_SIZE           256
-#endif
-
-/*
- * Really should be able to cope if we run out of received message descriptors,
- * by suspending parsing as the comment above says, but we don't.
- * This sweeps the issue under the carpet.
- */
-#if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS
-#  undef VCHI_RX_MSG_QUEUE_SIZE
-#  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE / 16 + 1) * VCHI_NUM_READ_SLOTS)
-#endif
-
-/*
- * How many bulk transmits can we have pending. Once exhausted,
- * vchi_bulk_queue_transmit will be blocked.
- */
-#ifndef VCHI_TX_BULK_QUEUE_SIZE
-#  define VCHI_TX_BULK_QUEUE_SIZE           64
-#endif
-
-/*
- * How many bulk receives can we have pending. Once exhausted,
- *vchi_bulk_queue_receive will be blocked.
- */
-#ifndef VCHI_RX_BULK_QUEUE_SIZE
-#  define VCHI_RX_BULK_QUEUE_SIZE           64
-#endif
-
-/*
- * A limit on how many outstanding bulk requests we expect the peer to give us.
- * If the peer asks for more than this, VCHI will fail and assert.
- * The number is determined by the peer's hardware
- * - it's the number of outstanding requests that can be queued
- * on all bulk channels. VC3's MPHI peripheral allows 16.
- */
-#ifndef VCHI_MAX_PEER_BULK_REQUESTS
-#  define VCHI_MAX_PEER_BULK_REQUESTS       32
-#endif
-
-/*
- * Define VCHI_CCP2TX_MANUAL_POWER if the host tells us when to turn the CCP2
- * transmitter on and off.
- */
-/*#define VCHI_CCP2TX_MANUAL_POWER*/
-
-#ifndef VCHI_CCP2TX_MANUAL_POWER
-
-/*
- * Timeout (in milliseconds) for putting the CCP2TX interface into IDLE state.
- * Set negative for no IDLE.
- */
-#  ifndef VCHI_CCP2TX_IDLE_TIMEOUT
-#    define VCHI_CCP2TX_IDLE_TIMEOUT        5
-#  endif
-
-/*
- * Timeout (in milliseconds) for putting the CCP2TX interface into OFF state.
- * Set negative for no OFF.
- */
-#  ifndef VCHI_CCP2TX_OFF_TIMEOUT
-#    define VCHI_CCP2TX_OFF_TIMEOUT         1000
-#  endif
-
-#endif /* VCHI_CCP2TX_MANUAL_POWER */
-
-#endif /* VCHI_CFG_H_ */
-
-/****************************** End of file **********************************/
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
