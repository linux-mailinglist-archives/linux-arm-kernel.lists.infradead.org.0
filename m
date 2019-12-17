Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 336A4122D33
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 14:44:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=C5L9ZUFwU2+sMwREGrLVsq8JsGZ1gC2Y1k0Gd3gWQgE=; b=IQ0
	xda1rd9Yi2p1sxb4QamSz1zdR+kRJd0oBPBlthtU4Oivn0+jOxsvPUor9rZP430PrOFYqNwsr6oKP
	XFAqULxkkAvX+0Rq+obn+N2LMz8z3jeCoFnSmiStnI6e3lYTe3teyQmrW6g2jYcI6SOPPnfNCsj7C
	hmVE9cdyGr+2y5U5gJ8zIvkx4HUzRMrb80hbja5ieeqb6OGSAQYTuMGVZVebF06f/J9MEUhwAo4EY
	E/z+gM24YABFhar9ExOcG8KYG3noXU9G9Yo/LR8yamZOb5hJNPVWGTs8qCj/PpcNFEWAScid/a1iI
	6ko/SKX3g+NRSrgaav87T3+ETlNMCuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihD8x-0003UC-Gx; Tue, 17 Dec 2019 13:44:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihD8n-0003TE-8p
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 13:43:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F04331FB;
 Tue, 17 Dec 2019 05:43:53 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 373813F719;
 Tue, 17 Dec 2019 05:43:52 -0800 (PST)
From: lukasz.luba@arm.com
To: linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] include: trace: Add SCMI header with trace events
Date: Tue, 17 Dec 2019 13:43:44 +0000
Message-Id: <20191217134345.14004-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_054357_398952_E0D82E16 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mingo@redhat.com, Lukasz Luba <lukasz.luba@arm.com>,
 james.quinlan@broadcom.com, rostedt@goodmis.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lukasz Luba <lukasz.luba@arm.com>

Adding trace events would help to measure the speed of the communication
channel. It can be also potentially used helpful during investigation
of some issues platforms which use different transport layer.

Update also MAINTAINERS file with information that the new trace events
are maintained.

Suggested-by: Jim Quinlan <james.quinlan@broadcom.com>
Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 MAINTAINERS                 |  1 +
 include/trace/events/scmi.h | 90 +++++++++++++++++++++++++++++++++++++
 2 files changed, 91 insertions(+)
 create mode 100644 include/trace/events/scmi.h

diff --git a/MAINTAINERS b/MAINTAINERS
index cc0a4a8ae06a..0182315226fc 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15966,6 +15966,7 @@ F:	drivers/firmware/arm_scpi.c
 F:	drivers/firmware/arm_scmi/
 F:	drivers/reset/reset-scmi.c
 F:	include/linux/sc[mp]i_protocol.h
+F:	include/trace/events/scmi.h
 
 SYSTEM RESET/SHUTDOWN DRIVERS
 M:	Sebastian Reichel <sre@kernel.org>
diff --git a/include/trace/events/scmi.h b/include/trace/events/scmi.h
new file mode 100644
index 000000000000..f076c430d243
--- /dev/null
+++ b/include/trace/events/scmi.h
@@ -0,0 +1,90 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM scmi
+
+#if !defined(_TRACE_SCMI_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_SCMI_H
+
+#include <linux/tracepoint.h>
+
+TRACE_EVENT(scmi_xfer_begin,
+	TP_PROTO(int transfer_id, u8 msg_id, u8 protocol_id, u16 seq,
+		 bool poll),
+	TP_ARGS(transfer_id, msg_id, protocol_id, seq, poll),
+
+	TP_STRUCT__entry(
+		__field(int, transfer_id)
+		__field(u8, msg_id)
+		__field(u8, protocol_id)
+		__field(u16, seq)
+		__field(bool, poll)
+	),
+
+	TP_fast_assign(
+		__entry->transfer_id = transfer_id;
+		__entry->msg_id = msg_id;
+		__entry->protocol_id = protocol_id;
+		__entry->seq = seq;
+		__entry->poll = poll;
+	),
+
+	TP_printk("transfer_id=%d msg_id=%u protocol_id=%u seq=%u poll=%u",
+		__entry->transfer_id, __entry->msg_id, __entry->protocol_id,
+		__entry->seq, __entry->poll)
+);
+
+TRACE_EVENT(scmi_xfer_end,
+	TP_PROTO(int transfer_id, u8 msg_id, u8 protocol_id, u16 seq,
+		 u32 status),
+	TP_ARGS(transfer_id, msg_id, protocol_id, seq, status),
+
+	TP_STRUCT__entry(
+		__field(int, transfer_id)
+		__field(u8, msg_id)
+		__field(u8, protocol_id)
+		__field(u16, seq)
+		__field(u32, status)
+	),
+
+	TP_fast_assign(
+		__entry->transfer_id = transfer_id;
+		__entry->msg_id = msg_id;
+		__entry->protocol_id = protocol_id;
+		__entry->seq = seq;
+		__entry->status = status;
+	),
+
+	TP_printk("transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%u",
+		__entry->transfer_id, __entry->msg_id, __entry->protocol_id,
+		__entry->seq, __entry->status)
+);
+
+TRACE_EVENT(scmi_rx_done,
+	TP_PROTO(int transfer_id, u8 msg_id, u8 protocol_id, u16 seq,
+		 u8 msg_type),
+	TP_ARGS(transfer_id, msg_id, protocol_id, seq, msg_type),
+
+	TP_STRUCT__entry(
+		__field(int, transfer_id)
+		__field(u8, msg_id)
+		__field(u8, protocol_id)
+		__field(u16, seq)
+		__field(u8, msg_type)
+	),
+
+	TP_fast_assign(
+		__entry->transfer_id = transfer_id;
+		__entry->msg_id = msg_id;
+		__entry->protocol_id = protocol_id;
+		__entry->seq = seq;
+		__entry->msg_type = msg_type;
+	),
+
+	TP_printk("transfer_id=%d msg_id=%u protocol_id=%u seq=%u msg_type=%u",
+		__entry->transfer_id, __entry->msg_id, __entry->protocol_id,
+		__entry->seq, __entry->msg_type)
+);
+#endif /* _TRACE_SCMI_H */
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
