Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D283E120F1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:17:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lmyTe2wRut6z2beRkiYGij80x5hcrx9C2nceAuMjVrY=; b=PaEWSXJ/mo1mgZQJoxh2UGJH5G
	GBo0ggmR9UNhV/J6NhXLuXdyNPAqCM67OQ2wc0kk7qfsjqiEcZkfaQcYc7hue1mqAaDPb8uBZBt2s
	trBoG6B6cm0I9AIPfEvgri0pFqkgg975j3YwlqM7kmH4Yi4LeA7Nfta5TBtnN+A9uY+h+Pu//lL69
	E1aWLKfzgur0M1M+Nh60+i2MKTdMKzmS6CHUEoNnrJC1aUOEmew1ZACy1UG2ly6wz1nA+i5a0rYqq
	SOEO2USDHPMZjCdDgP9RzZGNzluLdPEUFFeEWKwveuEUrfs4rKrVPR6f73yfRcDKj+Nodiyv486uS
	F1waImtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igt41-0006WM-En; Mon, 16 Dec 2019 16:17:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igt3V-00060c-6Z
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:17:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A08C71045;
 Mon, 16 Dec 2019 08:17:08 -0800 (PST)
Received: from e123648.arm.com (unknown [10.37.12.145])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 014DE3F718;
 Mon, 16 Dec 2019 08:17:06 -0800 (PST)
From: lukasz.luba@arm.com
To: linux-kernel@vger.kernel.org, sudeep.holla@arm.com,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] drivers: firmware: scmi: Extend SCMI transport layer by
 trace events
Date: Mon, 16 Dec 2019 16:16:50 +0000
Message-Id: <20191216161650.21844-2-lukasz.luba@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191216161650.21844-1-lukasz.luba@arm.com>
References: <20191216161650.21844-1-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_081709_282496_AE447863 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
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

The SCMI transport layer communicates via mailboxes and shared memory with
firmware running on a microcontroller. It is platform specific how long it
takes to pass a SCMI message. The most sensitive requests are coming from
CPUFreq subsystem, which might be used by the scheduler.
Thus, there is a need to measure these delays and capture anomalies.
This change introduces trace events wrapped around transfer code.

Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
---
 drivers/firmware/arm_scmi/driver.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/firmware/arm_scmi/driver.c b/drivers/firmware/arm_scmi/driver.c
index 3eb0382491ce..0fda9b418bc6 100644
--- a/drivers/firmware/arm_scmi/driver.c
+++ b/drivers/firmware/arm_scmi/driver.c
@@ -29,6 +29,9 @@
 
 #include "common.h"
 
+#define CREATE_TRACE_POINTS
+#include <trace/events/scmi.h>
+
 #define MSG_ID_MASK		GENMASK(7, 0)
 #define MSG_XTRACT_ID(hdr)	FIELD_GET(MSG_ID_MASK, (hdr))
 #define MSG_TYPE_MASK		GENMASK(9, 8)
@@ -439,6 +442,9 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	if (unlikely(!cinfo))
 		return -EINVAL;
 
+	trace_scmi_xfer_begin(xfer->hdr.id, xfer->hdr.protocol_id,
+			      xfer->hdr.seq, xfer->hdr.poll_completion);
+
 	ret = mbox_send_message(cinfo->chan, xfer);
 	if (ret < 0) {
 		dev_dbg(dev, "mbox send fail %d\n", ret);
@@ -478,6 +484,9 @@ int scmi_do_xfer(const struct scmi_handle *handle, struct scmi_xfer *xfer)
 	 */
 	mbox_client_txdone(cinfo->chan, ret);
 
+	trace_scmi_xfer_end(xfer->hdr.id, xfer->hdr.protocol_id, xfer->hdr.seq,
+			    xfer->hdr.status);
+
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
