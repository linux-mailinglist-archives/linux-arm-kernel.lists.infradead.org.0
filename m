Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FCD1682C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 17:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6YElcgSApThkGPcycQZ7wTxwSc+4UD83pJqM66uFrY=; b=aWg4tw7jYnplkB
	/e6yksU0wjBjVw99jtL30CQQoRmWvjh1XSHo87d/Bz6QdaEdxtqYCCvEZ4YDQ/bERAgpdVVMZVGte
	hhdJatZczU3nvW5RJYCCS2EEd8cmtSh48jEp1kBcIM1MgZbCf6nDUuzDxYrhZmeXonRfrk5wvkLDc
	Fyy7HKRghCZ8seUP9tSxNRZNdO4XnO6ZNPTsoxqoe5bf2q0poDEo4z3QIntPXj7RvCYJrOaeiHtBb
	FR1OHHJNLDo80XEKFlSovKoHk957or0RPBjlVae5RjYEZ9iDyRdaK795EX8xdbc8fL1ifx55KumtE
	E23eogMPzgm7ESIuVwYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AoT-0002oA-Bq; Fri, 21 Feb 2020 16:06:01 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Ana-0001PX-5T
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 16:05:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 76A5F30E;
 Fri, 21 Feb 2020 08:05:05 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AA0933F68F;
 Fri, 21 Feb 2020 08:05:04 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com,
	mark.rutland@arm.com
Subject: [PATCH 3/3] arm64: perf: Support new DT compatibles
Date: Fri, 21 Feb 2020 16:04:58 +0000
Message-Id: <6dbd695863346bda1e5d2133643ffade6227bd9a.1582300927.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
In-Reply-To: <cover.1582300927.git.robin.murphy@arm.com>
References: <cover.1582300927.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_080506_256831_C35A1997 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for matching the new PMUs. For now, this just wires them up
as generic PMUv3 such that people writing DTs for new SoCs can do the
right thing, and at least have architectural and raw events be usable.
We can come back and fill in event maps for sysfs and/or perf tools at
a later date.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/kernel/perf_event.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index e40b65645c86..28ce582e049e 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -1105,11 +1105,19 @@ static int armv8_vulcan_pmu_init(struct arm_pmu *cpu_pmu)
 
 static const struct of_device_id armv8_pmu_of_device_ids[] = {
 	{.compatible = "arm,armv8-pmuv3",	.data = armv8_pmuv3_init},
+	{.compatible = "arm,cortex-a34-pmu",	.data = armv8_pmuv3_init},
 	{.compatible = "arm,cortex-a35-pmu",	.data = armv8_a35_pmu_init},
 	{.compatible = "arm,cortex-a53-pmu",	.data = armv8_a53_pmu_init},
+	{.compatible = "arm,cortex-a55-pmu",	.data = armv8_pmuv3_init},
 	{.compatible = "arm,cortex-a57-pmu",	.data = armv8_a57_pmu_init},
+	{.compatible = "arm,cortex-a65-pmu",	.data = armv8_pmuv3_init},
 	{.compatible = "arm,cortex-a72-pmu",	.data = armv8_a72_pmu_init},
 	{.compatible = "arm,cortex-a73-pmu",	.data = armv8_a73_pmu_init},
+	{.compatible = "arm,cortex-a75-pmu",	.data = armv8_pmuv3_init},
+	{.compatible = "arm,cortex-a76-pmu",	.data = armv8_pmuv3_init},
+	{.compatible = "arm,cortex-a77-pmu",	.data = armv8_pmuv3_init},
+	{.compatible = "arm,neoverse-e1-pmu",	.data = armv8_pmuv3_init},
+	{.compatible = "arm,neoverse-n1-pmu",	.data = armv8_pmuv3_init},
 	{.compatible = "cavium,thunder-pmu",	.data = armv8_thunder_pmu_init},
 	{.compatible = "brcm,vulcan-pmu",	.data = armv8_vulcan_pmu_init},
 	{},
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
