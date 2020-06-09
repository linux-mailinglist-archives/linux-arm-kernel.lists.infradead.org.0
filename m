Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 086AD1F3D00
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 15:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZzXGP7EKrk/+ErHH1Hx0qoRcx2Y1uxiwMKZ1hArZrqw=; b=puz
	NOEZ3zs+6ROi2fkno9Sn+UncbAIFF4GrTqGkHwnLpcfxyRaNnlq/dpFWApuR5QSjSmmK0rVYFys7j
	JaimVrcf3OpusvFx7pRtAcj2kYT4NlOX+QxhkKLTbDTtVvMvtNmZz+nuqXpuMN527LWdw7Uth9EKN
	1AmmRrWvxinUsnGerRIpbhMnmtId1zFbdmgsPtQMRpuefhqGtmYPZF67x6reAW4WrYyIHv+7Gzkyg
	WjloDTkezjxEzICTLc96tgf7l7kpHtvmdexzAdMUSrZzl0ayR6mvuysJbo3QKfzZDJSLxkMSKj0S9
	ppt3NEE4yqiPvbdZEhJP8O3eabqr/jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieZd-0001ih-KR; Tue, 09 Jun 2020 13:45:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieYz-0000Gk-2q
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 13:45:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 852E01F1;
 Tue,  9 Jun 2020 06:45:10 -0700 (PDT)
Received: from usa.arm.com (e103737-lin.cambridge.arm.com [10.1.197.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A28C83F66F;
 Tue,  9 Jun 2020 06:45:09 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] firmware: arm_scmi: Use signed integer to report transfer
 status
Date: Tue,  9 Jun 2020 14:45:03 +0100
Message-Id: <20200609134503.55860-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_064513_683811_D5F77C32 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lukasz Luba <lukasz.luba@arm.com>, Jim Quinlan <james.quinlan@broadcom.com>,
 Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the trace event 'scmi_xfer_end' reports the status of the
transfer using the unsigned status field read from the firmware. This
may not be easy to interpret and also may miss to present any timeouts
that happen in the driver.

Let us use signed integer so that error values are emitted out after
they are mapped from firmware errors to standard linux error codes.
While at this, let us also include any timeouts in the driver itself.

Cc: Jim Quinlan <james.quinlan@broadcom.com>
Cc: Lukasz Luba <lukasz.luba@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 3 +--
 include/trace/events/scmi.h        | 6 +++---
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 7483cacf63f9..136acbe2f4a1 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -392,8 +392,7 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 		info->desc->ops->mark_txdone(cinfo, ret);
 
 	trace_scmi_xfer_end(xfer->transfer_id, xfer->hdr.id,
-			    xfer->hdr.protocol_id, xfer->hdr.seq,
-			    xfer->hdr.status);
+			    xfer->hdr.protocol_id, xfer->hdr.seq, ret);
 
 	return ret;
 }
diff --git a/include/trace/events/scmi.h b/include/trace/events/scmi.h
index f076c430d243..f3a4b4d60714 100644
--- a/include/trace/events/scmi.h
+++ b/include/trace/events/scmi.h
@@ -35,7 +35,7 @@ TRACE_EVENT(scmi_xfer_begin,
 
 TRACE_EVENT(scmi_xfer_end,
 	TP_PROTO(int transfer_id, u8 msg_id, u8 protocol_id, u16 seq,
-		 u32 status),
+		 int status),
 	TP_ARGS(transfer_id, msg_id, protocol_id, seq, status),
 
 	TP_STRUCT__entry(
@@ -43,7 +43,7 @@ TRACE_EVENT(scmi_xfer_end,
 		__field(u8, msg_id)
 		__field(u8, protocol_id)
 		__field(u16, seq)
-		__field(u32, status)
+		__field(int, status)
 	),
 
 	TP_fast_assign(
@@ -54,7 +54,7 @@ TRACE_EVENT(scmi_xfer_end,
 		__entry->status = status;
 	),
 
-	TP_printk("transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%u",
+	TP_printk("transfer_id=%d msg_id=%u protocol_id=%u seq=%u status=%d",
 		__entry->transfer_id, __entry->msg_id, __entry->protocol_id,
 		__entry->seq, __entry->status)
 );
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
