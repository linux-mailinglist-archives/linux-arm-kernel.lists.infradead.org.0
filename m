Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DBC121C8C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 23:16:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kAEprzExn4zzTSs1opl2g/3mgoIYpppmi1DfmC1M+hw=; b=GvKjGgknRRraIhTAZ7Yib9kfjO
	dyU/OvRhPNM29tUKZtC7Dk/D9KFrEd4PIYb4F1BUmqNGzLMfZx4q7fJwDRkN8T/120FtzMjTiQiv/
	rz6cvb+c+VZatQ1vxN4MWuddkLy7WU81DU6WmI7apeDX4hA9D6V4HEZJZt9YBsvhT4yrwbVmOe/b6
	/cWkrQWF/g3TnH2tWz02Nkqf3QF7guRim7Yg4JgSTajrS4rSYFn8mbIFPcZVoHdfyaUpt/nanlIrx
	saSLi3BnERSoXiJsyy49yijia8lAjTvXWAmpJ8EBsOKXjJgG/RtJFYSqDi1COFRpM/xpNBnEDiQMH
	PPDgQk1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igyfU-000576-Vx; Mon, 16 Dec 2019 22:16:44 +0000
Received: from rnd-relay.smtp.broadcom.com ([192.19.229.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igyfM-00056X-H7
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 22:16:37 +0000
Received: from mail-irv-17.broadcom.com (mail-irv-17.lvn.broadcom.net
 [10.75.242.48])
 by rnd-relay.smtp.broadcom.com (Postfix) with ESMTP id 340DD30C2DA;
 Mon, 16 Dec 2019 14:11:43 -0800 (PST)
DKIM-Filter: OpenDKIM Filter v2.10.3 rnd-relay.smtp.broadcom.com 340DD30C2DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=broadcom.com;
 s=dkimrelay; t=1576534303;
 bh=c/wouBtv91PTKkOxRyp61Efr8gRVBG7WS5ajBeXOp4c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GPq2VwE9QNLUYvrq04bC1r3z1+LhdAmvQ9qr6JmtLOVnStfxwVIfT0yT1z7AtmloZ
 NVOaZ5PZjJYmOUB1SChdGUbPSZ1hoSpL+7L6ZuY5zOc+MK8ltHOls4L2J6te1jGKh9
 MBge094ODcsDczzp7TPlnerp40Ys7rrgtZDtrWh0=
Received: from stbsrv-and-01.and.broadcom.net (stbsrv-and-01.and.broadcom.net
 [10.28.16.211])
 by mail-irv-17.broadcom.com (Postfix) with ESMTP id CC569140069;
 Mon, 16 Dec 2019 14:16:29 -0800 (PST)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: lukasz.luba@arm.com
Subject: [PATCH 1/2] include: trace: Add SCMI header with trace events
Date: Mon, 16 Dec 2019 17:15:54 -0500
Message-Id: <20191216161650.21844-1-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216161650.21844-1-lukasz.luba@arm.com>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_141636_593107_7EB77ABB 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.19.229.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mingo@redhat.com, rostedt@goodmis.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sudeep.holla@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lukasz Luba <lukasz.luba@arm.com>

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

Hello,

When there are multiple messages in the mbox queue, I've found it
a chore matching up the 'begin' event with the 'end' event for each
SCMI msg.  The id (command) may not be unique, the proto_id may not be
unique, and the seq may not be unique.  The combination of the three
may not be unique.  Would it make sense to assign a monotonically
increasing ID to each msg so that one can easily match the two events
for each msg?  This id could be the result of an atomic increment and
could be stored in the xfer structure.  Of course, it would be one of
the values printed out in the events.

Also, would you consider a third event, right after the
scmi_fetch_response() invocation in scmi_rx_callback()?  I've found
this to be insightful in situations where we were debugging a timeout.

I'm fine if you elect not to do the above; I just wanted to post
this for your consideration.

Thanks,
Jim Quinlan
Broadcom

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
