Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7331CD40A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:34:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RfBKxTo7arVOIU99tytFP+8dKvR7jgmCdjFqvtSWVOM=; b=I3Bm0iyS1AdtNq
	wuSlL/h51zEpYVVQxzJRfLLWDc/XougQn6Snzb85Oj2HWoWqxfTS9lIrMox3+L0DhJdyxNNJqFNRu
	oPksKv0szW+lPWQv76M3166G6EpWDcuVuU1gy0DVcFHQaO7t4Wiuhfhw7FOGsZ+UNRZ19fMRnxC0P
	L67RXbLBc1YTbjzG4K4wXGiKp/xKPO53A3dJP8Dh3Eb2qrilp+DV7T+8kIxcuOZCTPUxi8MvwA0UC
	rWlVrfdn52E+Yo3FDNUu7lxYR7a64VcLUvHeMaaRfJ3uH4ohjuHMEsWsc7gE+ezx52oALOqfcZu46
	4FyXpFvijStGn4uKotxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3tY-0001Zd-3u; Mon, 11 May 2020 08:34:40 +0000
Received: from mail27.static.mailgun.info ([104.130.122.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3tP-0001YW-I3
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:34:33 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt; 
 s=smtp; t=1589186071; h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=HW3utqtp4BWVdYE+diHc7x+j4fFpQqSh4h84hivsY/I=;
 b=TWJOj2EtTJaFzju1UjZyvZdQ45TdikvwGy0LiPL/dg+tNXnSEHdrjUGmyKfykFYbhTcBk79O
 cfGWkQ8G+SXW4dqXoKMxZv8VD+GhQoKBSWBrqROeMa+w+ORbYUwUvq9mH88o36IteJlTyrVN
 RLz8oOQ6W7PTkwr0P5QgLSC3Re8=
X-Mailgun-Sending-Ip: 104.130.122.27
X-Mailgun-Sid: WyJiYzAxZiIsICJsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmciLCAiYmU5ZTRhIl0=
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171])
 by mxa.mailgun.org with ESMTP id 5eb90e0c.7f88f63e7ab0-smtp-out-n01;
 Mon, 11 May 2020 08:34:20 -0000 (UTC)
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
 id C4243C43636; Mon, 11 May 2020 08:34:20 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=2.0 tests=ALL_TRUSTED,SPF_NONE
 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from blr-ubuntu-311.qualcomm.com
 (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: saiprakash.ranjan)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 54B11C432C2;
 Mon, 11 May 2020 08:34:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 54B11C432C2
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org; spf=none
 smtp.mailfrom=saiprakash.ranjan@codeaurora.org
From: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH] coresight: replicator: Reset replicator if context is lost
Date: Mon, 11 May 2020 14:04:00 +0530
Message-Id: <20200511083400.26554-1-saiprakash.ranjan@codeaurora.org>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_013431_970244_01CC11B6 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [104.130.122.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [104.130.122.27 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
 linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On some QCOM SoCs, replicators in Always-On domain loses its
context as soon as the clock is disabled. Currently as a part
of pm_runtime workqueue, clock is disabled after the replicator
is initialized by amba_pm_runtime_suspend assuming that context
is not lost which is not true for replicators with such
limitations. Hence check the replicator idfilter registers
in dynamic_replicator_enable() and reset again.

Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
---

More info here - https://lore.kernel.org/patchwork/patch/1231182/

---
 drivers/hwtracing/coresight/coresight-replicator.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index e7dc1c31d20d..11df63f51071 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -68,6 +68,17 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
 	int rc = 0;
 	u32 reg;
 
+	/*
+	 * On some QCOM SoCs with replicators in Always-On domain, disabling
+	 * clock will result in replicator losing its context. Currently
+	 * as a part of pm_runtime workqueue, amba_pm_runtime_suspend disables
+	 * clock assuming the context is not lost which is not true for cases
+	 * with hardware limitations as the above.
+	 */
+	if ((readl_relaxed(drvdata->base + REPLICATOR_IDFILTER0) == 0) &&
+	    (readl_relaxed(drvdata->base + REPLICATOR_IDFILTER1) == 0))
+		dynamic_replicator_reset(drvdata);
+
 	switch (outport) {
 	case 0:
 		reg = REPLICATOR_IDFILTER0;
-- 
QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
of Code Aurora Forum, hosted by The Linux Foundation

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
