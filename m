Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818EB120F18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:17:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JK16jZqs8CyWXmwwQWNBVZeqUeX59VNKuTRbmccbrA0=; b=HyQ
	IajxWaxFmd0nfY2agXgU5KowPeojnTv3G/v4X2SAWqB+a9E18Feeszjc36Y7m1Hl38Nd5WzOrvG9X
	junTN0FFRXbksFHDNCfZLivilgN/MUKZDf39JZIY50/sg5+5lwqGBLFMXJRCR4CpPUwLlWqGpNkx7
	jzYJJhfnTAQLp9o0C+WmXAtDpAMMwa+8ZfeEncoaMd3f35vgAC7uxEg+qvvEGfOP52aW7H4XEuCbp
	zovAu15e4JJxptRBIYQsiLe6NXb+hF2Ac1E4v+p1Z9Nd8PCXULt0xy8txwwr07zGRpB/OtggjPOfJ
	ltZI7BwmPgDrhncaa5M8eIaaXPaKgiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igt3j-000641-H4; Mon, 16 Dec 2019 16:17:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igt3U-0005yd-5g
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:17:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 963C71FB;
 Mon, 16 Dec 2019 08:17:06 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E95943F718;
 Mon, 16 Dec 2019 08:17:04 -0800 (PST)
From: lukasz.luba@arm.com
To: linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/2] include: trace: Add SCMI header with trace events
Date: Mon, 16 Dec 2019 16:16:49 +0000
Message-Id: <20191216161650.21844-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_081708_376387_55AAA104 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mingo@redhat.com, Lukasz Luba <lukasz.luba@arm.com>, rostedt@goodmis.org
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

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 MAINTAINERS                 |  1 +
 include/trace/events/scmi.h | 56 +++++++++++++++++++++++++++++++++++++
 2 files changed, 57 insertions(+)
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
index 000000000000..a84016b02ffd
--- /dev/null
+++ b/include/trace/events/scmi.h
@@ -0,0 +1,56 @@
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
+	TP_PROTO(u8 id, u8 protocol_id, u16 seq, bool poll),
+	TP_ARGS(id, protocol_id, seq, poll),
+
+	TP_STRUCT__entry(
+		__field(u8, id)
+		__field(u8, protocol_id)
+		__field(u16, seq)
+		__field(bool, poll)
+	),
+
+	TP_fast_assign(
+		__entry->id = id;
+		__entry->protocol_id = protocol_id;
+		__entry->seq = seq;
+		__entry->poll = poll;
+	),
+
+	TP_printk("id=%u protocol_id=%u seq=%u poll=%u", __entry->id,
+		__entry->protocol_id, __entry->seq, __entry->poll)
+);
+
+TRACE_EVENT(scmi_xfer_end,
+	TP_PROTO(u8 id, u8 protocol_id, u16 seq, u32 status),
+	TP_ARGS(id, protocol_id, seq, status),
+
+	TP_STRUCT__entry(
+		__field(u8, id)
+		__field(u8, protocol_id)
+		__field(u16, seq)
+		__field(u32, status)
+	),
+
+	TP_fast_assign(
+		__entry->id = id;
+		__entry->protocol_id = protocol_id;
+		__entry->seq = seq;
+		__entry->status = status;
+	),
+
+	TP_printk("id=%u protocol_id=%u seq=%u status=%u", __entry->id,
+		__entry->protocol_id, __entry->seq, __entry->status)
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
