Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37697D841E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:57:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UJtJdaTS1W0J4m4wfY37jwqwJLlkeaBhAZwvgTgNLVU=; b=T19sjw+UP69X+O
	fdM/WHtTI6EFTF/Bqq/E7ovA6M/hSFRMLXqfO15LJXd8RXTx+9IsoMNn63L14M9t/0MgzbGxEP0km
	QObLZjogIfi99bqp3z/5RlOLoBGcQpynMNZsimQdYm4Tl1oeyu3JMViB98UUhAk3ouNQ0r2jBBfO2
	HNDuENnD4wgZFr66wbqdrVkjryXHS06f33rO7NbQvLrpYOa0tLksqzj10fPCPKTZNDDVTiY5yzDhS
	p1rOZ/XPQleOMeBPc3YCKwDd0N3IkfQRgzsfAsGxkpHOtgvcudOqVeQEZfGzRW85VS1HA9TUfOoIR
	4+sKLrEzqRlRFmAoZU4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVlK-0001kY-If; Tue, 15 Oct 2019 22:57:54 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVlB-0001jx-B6; Tue, 15 Oct 2019 22:57:47 +0000
Received: by mail-wr1-x443.google.com with SMTP id y19so25747298wrd.3;
 Tue, 15 Oct 2019 15:57:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dxsR+jE7HQ+WwH+XNT4goBtNaDbshv4XV8JQAUdUe/Y=;
 b=mCWYtCkMlxCQLcNFRhscJ1ikgpdYrHHAxxvJNrjS9S75FvygxTgBv7Ibzm5m09JXFK
 JNfYmSGWe+Byu4hPnLmJWifBxS1xcDe8pa+zNxzf1l7nsow01mpBy1xYL6pmyO+vCQ9h
 sUmwcnXDqIk1Pj+OMGetWdzWd2lhNVVA0bDOQWaa+OnqvObmSw5U6YtGioCDKRbYhGl2
 v/ol+6DivktrI1vT45Zx4D4oBsYEVWDZ98a0fiQD/putQk93O3/jj+U9Pmu5UD7jbb9I
 1xZKPLxroi6/0SMouMoHVddLj6ivPoyjx/2LIhbH3PjV5hF/YTDkHY5GoC+dzt50qEF1
 HF7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=dxsR+jE7HQ+WwH+XNT4goBtNaDbshv4XV8JQAUdUe/Y=;
 b=argIJoKZ7R4mTsT1CZg9GVD6SlnXRAurMqyzwEsMPndUWXgwCalPGwgTmdadmGqehp
 qXTB6qibsb/rbWgaNRJl5ABda6v1Bve5YE41u9MOjTuW4TWwRZgy/lq8bIXLb3WnkFDA
 8cnJ30Q/udNHzlYLbpoMTfs+6eBpfPpKJtKAHnQXg4eh0AzejmSCuZ3M68GB+0yMK9np
 U6qDnEfea5m8I0EuGY9L9lyRVQraEZ+SSjNr/mRw4AbW6DNncmycqgLqWvhtfMKrp1rV
 hNxdET1QLnGZT5tf0+SZGfiOVAg+frjlUWcY/i4/L83y/IDvcjHSu60Hc6adbz9n2DAM
 vtAg==
X-Gm-Message-State: APjAAAVftpqREpCbfR17h6QpOD+F00Ucpp5Khj7VW6zxvVN9cQYLKYVM
 /rPLx8jsZgSvZ5ziVT/gjQ==
X-Google-Smtp-Source: APXvYqxTkw7MiBW3P+2HgzrNX82Rmz2hAKkCFbk+A2y/km9QlmMAqxHlGBeNELopUOF9q2jfF5l5rw==
X-Received: by 2002:adf:c641:: with SMTP id u1mr564599wrg.361.1571180262270;
 Tue, 15 Oct 2019 15:57:42 -0700 (PDT)
Received: from ninjahub.lan (host-2-102-13-201.as13285.net. [2.102.13.201])
 by smtp.googlemail.com with ESMTPSA id e3sm530596wme.39.2019.10.15.15.57.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:57:41 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: vc04_services: fix line over 80 characters checks
 warning
Date: Tue, 15 Oct 2019 23:57:16 +0100
Message-Id: <20191015225716.10563-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_155745_409747_CAA4A4D4 
X-CRM114-Status: GOOD (  15.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbi.octave[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Jules Irenge <jbi.octave@gmail.com>,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix line over 80 characters checks warning.
Issue detected by checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 .../vc04_services/interface/vchi/vchi_cfg.h   | 150 ++++++++++--------
 1 file changed, 88 insertions(+), 62 deletions(-)

diff --git a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
index 89aa4e6122cd..dbb6a5f07a79 100644
--- a/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
+++ b/drivers/staging/vc04_services/interface/vchi/vchi_cfg.h
@@ -4,13 +4,17 @@
 #ifndef VCHI_CFG_H_
 #define VCHI_CFG_H_
 
-/****************************************************************************************
- * Defines in this first section are part of the VCHI API and may be examined by VCHI
- * services.
- ***************************************************************************************/
-
-/* Required alignment of base addresses for bulk transfer, if unaligned transfers are not enabled */
-/* Really determined by the message driver, and should be available from a run-time call. */
+/*****************************************************************************
+ * Defines in this first section are part of the VCHI API and may be examined
+ * by VCHI services.
+ *****************************************************************************/
+
+/* Required alignment of base addresses for bulk transfer, if unaligned
+ * transfers are not enabled
+ *
+ * Really determined by the message driver, and should be available from
+ * a run-time call.
+ */
 #ifndef VCHI_BULK_ALIGN
 #   if __VCCOREVER__ >= 0x04000000
 #       define VCHI_BULK_ALIGN 32 // Allows for the need to do cache cleans
@@ -19,12 +23,15 @@
 #   endif
 #endif
 
-/* Required length multiple for bulk transfers, if unaligned transfers are not enabled */
-/* May be less than or greater than VCHI_BULK_ALIGN */
-/* Really determined by the message driver, and should be available from a run-time call. */
+/* Required length multiple for bulk transfers, if unaligned transfers are
+ * not enabled
+ * May be less than or greater than VCHI_BULK_ALIGN
+ * Really determined by the message driver, and should be available from
+ * a run-time call.
+ */
 #ifndef VCHI_BULK_GRANULARITY
 #   if __VCCOREVER__ >= 0x04000000
-#       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
+#	define VCHI_BULK_GRANULARITY 32 // Allows for the need of cache cleans
 #   else
 #       define VCHI_BULK_GRANULARITY 16
 #   endif
@@ -39,19 +46,22 @@
 #   endif
 #endif
 
-/******************************************************************************************
- * Defines below are system configuration options, and should not be used by VCHI services.
- *****************************************************************************************/
+/*******************************************************************************
+ * Defines below are system configuration options, and should not be used by
+ * VCHI services.
+ ******************************************************************************/
 
-/* How many connections can we support? A localhost implementation uses 2 connections,
- * 1 for host-app, 1 for VMCS, and these are hooked together by a loopback MPHI VCFW
- * driver. */
+/* How many connections can we support? A localhost implementation
+ * uses 2 connections, 1 for host-app, 1 for VMCS,
+ * and these are hooked together by a loopback MPHI VCFW  driver.
+ */
 #ifndef VCHI_MAX_NUM_CONNECTIONS
 #   define VCHI_MAX_NUM_CONNECTIONS 3
 #endif
 
-/* How many services can we open per connection? Extending this doesn't cost processing time, just a small
- * amount of static memory. */
+/* How many services can we open per connection? Extending this doesn't cost
+ * processing time, just a small amount of static memory.
+ */
 #ifndef VCHI_MAX_SERVICES_PER_CONNECTION
 #  define VCHI_MAX_SERVICES_PER_CONNECTION 36
 #endif
@@ -66,8 +76,9 @@
 #   define VCHI_MAX_BULK_RX_CHANNELS_PER_CONNECTION 1 // 1 MPHI
 #endif
 
-/* How many receive slots do we use. This times VCHI_MAX_MSG_SIZE gives the effective
- * receive queue space, less message headers. */
+/* How many receive slots do we use. This times VCHI_MAX_MSG_SIZE gives
+ * the effective receive queue space, less message headers.
+ */
 #ifndef VCHI_NUM_READ_SLOTS
 #  if defined(VCHI_LOCAL_HOST_PORT)
 #     define VCHI_NUM_READ_SLOTS 4
@@ -76,92 +87,107 @@
 #  endif
 #endif
 
-/* Do we utilise overrun facility for receive message slots? Can aid peer transmit
- * performance. Only define on VideoCore end, talking to host.
+/* Do we utilise overrun facility for receive message slots? Can aid peer
+ * transmit performance. Only define on VideoCore end, talking to host.
  */
 //#define VCHI_MSG_RX_OVERRUN
 
-/* How many transmit slots do we use. Generally don't need many, as the hardware driver
- * underneath VCHI will usually have its own buffering. */
+/* How many transmit slots do we use. Generally don't need many,
+ * as the hardware driver underneath VCHI will usually have its own buffering
+ */
 #ifndef VCHI_NUM_WRITE_SLOTS
 #  define VCHI_NUM_WRITE_SLOTS 4
 #endif
 
-/* If a service has held or queued received messages in VCHI_XOFF_THRESHOLD or more slots,
- * then it's taking up too much buffer space, and the peer service will be told to stop
- * transmitting with an XOFF message. For this to be effective, the VCHI_NUM_READ_SLOTS
- * needs to be considerably bigger than VCHI_NUM_WRITE_SLOTS, or the transmit latency
- * is too high. */
+/* If a service has held or queued received messages in VCHI_XOFF_THRESHOLD
+ * or more slots, then it's taking up too much buffer space, and the peer
+ * service will be told to stop transmitting with an XOFF message.
+ * For this to be effective, the VCHI_NUM_READ_SLOTS needs to be considerably
+ * bigger than VCHI_NUM_WRITE_SLOTS, or the transmit latency is too high.
+ */
 #ifndef VCHI_XOFF_THRESHOLD
 #  define VCHI_XOFF_THRESHOLD (VCHI_NUM_READ_SLOTS / 2)
 #endif
 
-/* After we've sent an XOFF, the peer will be told to resume transmission once the local
- * service has dequeued/released enough messages that it's now occupying
- * VCHI_XON_THRESHOLD slots or fewer. */
+/* After we've sent an XOFF, the peer will be told to resume transmission once
+ * the local service has dequeued/released enough messages that it's now
+ * occupying VCHI_XON_THRESHOLD slots or fewer.
+ */
 #ifndef VCHI_XON_THRESHOLD
 #  define VCHI_XON_THRESHOLD (VCHI_NUM_READ_SLOTS / 4)
 #endif
 
-/* A size below which a bulk transfer omits the handshake completely and always goes
- * via the message channel, if bulk auxiliary is being sent on that service. (The user
- * can guarantee this by enabling unaligned transmits).
- * Not API. */
+/* A size below which a bulk transfer omits the handshake completely and always
+ * goes via the message channel, if bulk auxiliary is being sent on that
+ * service. (The user can guarantee this by enabling unaligned transmits).
+ * Not API.
+ */
 #ifndef VCHI_MIN_BULK_SIZE
 #  define VCHI_MIN_BULK_SIZE    (VCHI_MAX_MSG_SIZE / 2 < 4096 ? VCHI_MAX_MSG_SIZE / 2 : 4096)
 #endif
 
-/* Maximum size of bulk transmission chunks, for each interface type. A trade-off between
- * speed and latency; the smaller the chunk size the better change of messages and other
- * bulk transmissions getting in when big bulk transfers are happening. Set to 0 to not
- * break transmissions into chunks.
+/* Maximum size of bulk transmission chunks, for each interface type.
+ * A trade-off between speed and latency; the smaller the chunk size
+ * the better change of messages and other bulk transmissions getting
+ * in when big bulk transfers are happening.
+ * Set to 0 to not break transmissions into chunks.
  */
 #ifndef VCHI_MAX_BULK_CHUNK_SIZE_MPHI
 #  define VCHI_MAX_BULK_CHUNK_SIZE_MPHI (16 * 1024)
 #endif
 
-/* NB Chunked CCP2 transmissions violate the letter of the CCP2 spec by using "JPEG8" mode
- * with multiple-line frames. Only use if the receiver can cope. */
+/* NB Chunked CCP2 transmissions violate the letter of the CCP2 spec
+ * by using "JPEG8" mode with multiple-line frames. Only use if the
+ * receiver can cope.
+ */
 #ifndef VCHI_MAX_BULK_CHUNK_SIZE_CCP2
 #  define VCHI_MAX_BULK_CHUNK_SIZE_CCP2 0
 #endif
 
-/* How many TX messages can we have pending in our transmit slots. Once exhausted,
- * vchi_msg_queue will be blocked. */
+/* How many TX messages can we have pending in our transmit slots.
+ * Once exhausted, vchi_msg_queue will be blocked.
+ */
 #ifndef VCHI_TX_MSG_QUEUE_SIZE
 #  define VCHI_TX_MSG_QUEUE_SIZE           256
 #endif
 
-/* How many RX messages can we have parsed in the receive slots. Once exhausted, parsing
- * will be suspended until older messages are dequeued/released. */
+/* How many RX messages can we have parsed in the receive slots.
+ * Once exhausted, parsing
+ * will be suspended until older messages are dequeued/released.
+ */
 #ifndef VCHI_RX_MSG_QUEUE_SIZE
 #  define VCHI_RX_MSG_QUEUE_SIZE           256
 #endif
 
-/* Really should be able to cope if we run out of received message descriptors, by
- * suspending parsing as the comment above says, but we don't. This sweeps the issue
- * under the carpet. */
+/* Really should be able to cope if we run out of received message descriptors,
+ * by suspending parsing as the comment above says, but we don't.
+ * This sweeps the issue under the carpet.
+ */
 #if VCHI_RX_MSG_QUEUE_SIZE < (VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS
 #  undef VCHI_RX_MSG_QUEUE_SIZE
 #  define VCHI_RX_MSG_QUEUE_SIZE ((VCHI_MAX_MSG_SIZE/16 + 1) * VCHI_NUM_READ_SLOTS)
 #endif
 
-/* How many bulk transmits can we have pending. Once exhausted, vchi_bulk_queue_transmit
- * will be blocked. */
+/* How many bulk transmits can we have pending. Once exhausted,
+ * vchi_bulk_queue_transmit  will be blocked.
+ */
 #ifndef VCHI_TX_BULK_QUEUE_SIZE
 #  define VCHI_TX_BULK_QUEUE_SIZE           64
 #endif
 
-/* How many bulk receives can we have pending. Once exhausted, vchi_bulk_queue_receive
- * will be blocked. */
+/* How many bulk receives can we have pending. Once exhausted,
+ * vchi_bulk_queue_receive will be blocked.
+ */
 #ifndef VCHI_RX_BULK_QUEUE_SIZE
 #  define VCHI_RX_BULK_QUEUE_SIZE           64
 #endif
 
-/* A limit on how many outstanding bulk requests we expect the peer to give us. If
- * the peer asks for more than this, VCHI will fail and assert. The number is determined
- * by the peer's hardware - it's the number of outstanding requests that can be queued
- * on all bulk channels. VC3's MPHI peripheral allows 16. */
+/* A limit on how many outstanding bulk requests we expect the peer to give us.
+ * If the peer asks for more than this, VCHI will fail and assert.
+ * The number is determined by the peer's hardware
+ *  - it's the number of outstanding requests that can be queued
+ * on all bulk channels. VC3's MPHI peripheral allows 16.
+ */
 #ifndef VCHI_MAX_PEER_BULK_REQUESTS
 #  define VCHI_MAX_PEER_BULK_REQUESTS       32
 #endif
@@ -173,15 +199,15 @@
 
 #ifndef VCHI_CCP2TX_MANUAL_POWER
 
-/* Timeout (in milliseconds) for putting the CCP2TX interface into IDLE state. Set
- * negative for no IDLE.
+/* Timeout (in milliseconds) for putting the CCP2TX interface into IDLE state.
+ * Set negative for no IDLE.
  */
 #  ifndef VCHI_CCP2TX_IDLE_TIMEOUT
 #    define VCHI_CCP2TX_IDLE_TIMEOUT        5
 #  endif
 
-/* Timeout (in milliseconds) for putting the CCP2TX interface into OFF state. Set
- * negative for no OFF.
+/* Timeout (in milliseconds) for putting the CCP2TX interface into OFF state.
+ * Set negative for no OFF.
  */
 #  ifndef VCHI_CCP2TX_OFF_TIMEOUT
 #    define VCHI_CCP2TX_OFF_TIMEOUT         1000
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
