Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31D3769DE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 15:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RnbqwjZ9mSw3diYnFxssQ/SYzGOLobvloWiQZiyoxJQ=; b=lyy7+MpP754K3WBmOEqq6BgeUD
	e5uJ4fQ2RcCFE6fCI3IGkd8ZJF95tmgEY7FS8mxT+xUWIVdT8Ej6h54jBnpmTAfr3sKZDMp5uosmd
	zUMzBoINE5NMPdeBS4Y1pSMdu12EsG9pslqist61aJErff3nW1v3ZYQ1BTjVp4KgBEUHczpV49nyq
	N+qdvz3DIE0vacCOa6CInxVND+/DIaYqv6uKQDPuTfYD1yOpc/02tk/1IdDaHQsLZ8V4y1xrFDZ7f
	dBfK6/iwe30css9YC1799jcQ6TkN2mBozeM8p9ZmU/zqk3Hwl2PICxOGuqeD8Ou03AJsEP/vaApBG
	alrETw7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr0gS-0001iq-3w; Fri, 26 Jul 2019 13:54:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr0de-0007Zo-Ak
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 13:52:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06B9F152D;
 Fri, 26 Jul 2019 06:52:02 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 8C9303F694;
 Fri, 26 Jul 2019 06:52:00 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 10/10] firmware: arm_scmi: Use asynchronous CLOCK_RATE_SET
 when possible
Date: Fri, 26 Jul 2019 14:51:38 +0100
Message-Id: <20190726135138.9858-11-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190726135138.9858-1-sudeep.holla@arm.com>
References: <20190726135138.9858-1-sudeep.holla@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_065202_465729_2FD7A865 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peng Fan <peng.fan@nxp.com>, Etienne Carriere <etienne.carriere@linaro.org>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Bo Zhang <bozhang.zhang@broadcom.com>,
 Jim Quinlan <james.quinlan@broadcom.com>, Sudeep Holla <sudeep.holla@arm.com>,
 Gaku Inami <gaku.inami.xh@renesas.com>,
 Volodymyr Babchuk <volodymyr_babchuk@epam.com>, linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CLOCK_PROTOCOL_ATTRIBUTES provides attributes to indicate the maximum
number of pending asynchronous clock rate changes supported by the
platform. If it's non-zero, then we should be able to use asynchronous
clock rate set for any clocks until the maximum limit is reached.

Tracking the current count of pending asynchronous clock set rate
requests, we can decide if the incoming/new request for clock set rate
can be handled asynchronously or not until the maximum limit is
reached.

Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 drivers/firmware/arm_scmi/clock.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/arm_scmi/clock.c b/drivers/firmware/arm_scmi/clock.c
index dd215bd11a58..4a32ae1822a3 100644
--- a/drivers/firmware/arm_scmi/clock.c
+++ b/drivers/firmware/arm_scmi/clock.c
@@ -56,7 +56,7 @@ struct scmi_msg_resp_clock_describe_rates {
 struct scmi_clock_set_rate {
 	__le32 flags;
 #define CLOCK_SET_ASYNC		BIT(0)
-#define CLOCK_SET_DELAYED	BIT(1)
+#define CLOCK_SET_IGNORE_RESP	BIT(1)
 #define CLOCK_SET_ROUND_UP	BIT(2)
 #define CLOCK_SET_ROUND_AUTO	BIT(3)
 	__le32 id;
@@ -67,6 +67,7 @@ struct scmi_clock_set_rate {
 struct clock_info {
 	int num_clocks;
 	int max_async_req;
+	atomic_t cur_async_req;
 	struct scmi_clock_info *clk;
 };
 
@@ -221,21 +222,33 @@ static int scmi_clock_rate_set(const struct scmi_handle *handle, u32 clk_id,
 			       u64 rate)
 {
 	int ret;
+	u32 flags = 0;
 	struct scmi_xfer *t;
 	struct scmi_clock_set_rate *cfg;
+	struct clock_info *ci = handle->clk_priv;
 
 	ret = scmi_xfer_get_init(handle, CLOCK_RATE_SET, SCMI_PROTOCOL_CLOCK,
 				 sizeof(*cfg), 0, &t);
 	if (ret)
 		return ret;
 
+	if (ci->max_async_req &&
+	    atomic_inc_return(&ci->cur_async_req) < ci->max_async_req)
+		flags |= CLOCK_SET_ASYNC;
+
 	cfg = t->tx.buf;
-	cfg->flags = cpu_to_le32(0);
+	cfg->flags = cpu_to_le32(flags);
 	cfg->id = cpu_to_le32(clk_id);
 	cfg->value_low = cpu_to_le32(rate & 0xffffffff);
 	cfg->value_high = cpu_to_le32(rate >> 32);
 
-	ret = scmi_do_xfer(handle, t);
+	if (flags & CLOCK_SET_ASYNC)
+		ret = scmi_do_xfer_with_response(handle, t);
+	else
+		ret = scmi_do_xfer(handle, t);
+
+	if (ci->max_async_req)
+		atomic_dec(&ci->cur_async_req);
 
 	scmi_xfer_put(handle, t);
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
