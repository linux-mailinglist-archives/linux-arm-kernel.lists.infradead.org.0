Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9A765B27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 18:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fhPwiDvXtfTPR2E/ttSKyoelvd3MrwYQL+x3G1sDMNU=; b=F49/RFJvSS+/6C
	NiSzWZNTPmNxJhRLGTdim6Fth5yafeaLSGrg8Tu2MKrk9JaCnhEuWTbV4FE2YhbXrJ77cxmCdAaJo
	NJEhh95SDJ2kabC7S5PM1krM/U0jrT4rQUv9bvrQTSlTujorIBriit9bMOe/vXqcmo49Edkn2iDoB
	KTm1j9XlUeGAt0+NKxEiC/W4MHdTU1d0YsqHFR9GSKKB3jS46ehoVqUc7NbSIg0joHIiOLAyOd9DX
	6hLIY3V4VkKo/k+2bgIXHa6QAQNm+J451Z8WfnFpt+EGEPvKa3r6DrVyVW5m0CibFxANz7IsAO3vL
	RD8BluE5RIKWqq9XDmZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbWJ-0004Dx-Pz; Thu, 11 Jul 2019 16:02:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbVh-0003xd-13
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 16:01:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 86D041424;
 Thu, 11 Jul 2019 09:01:28 -0700 (PDT)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CFF973F71F;
 Thu, 11 Jul 2019 09:01:26 -0700 (PDT)
From: Andrew Murray <andrew.murray@arm.com>
To: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>
Subject: [PATCH v3 2/6] coresight: etm4x: use explicit barriers on
 enable/disable
Date: Thu, 11 Jul 2019 17:01:10 +0100
Message-Id: <20190711160114.634-3-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711160114.634-1-andrew.murray@arm.com>
References: <20190711160114.634-1-andrew.murray@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_090129_119682_54051FEC 
X-CRM114-Status: GOOD (  13.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: coresight@lists.linaro.org, Leo Yan <leo.yan@linaro.org>,
 stable@vger.kernel.org, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Synchronization is recommended before disabling the trace registers
to prevent any start or stop points being speculative at the point
of disabling the unit (section 7.3.77 of ARM IHI 0064D).

Synchronization is also recommended after programming the trace
registers to ensure all updates are committed prior to normal code
resuming (section 4.3.7 of ARM IHI 0064D).

Let's ensure these syncronization points are present in the code
and clearly commented.

Note that we could rely on the barriers in CS_LOCK and
coresight_disclaim_device_unlocked or the context switch to user
space - however coresight may be of use in the kernel.

On armv8 the mb macro is defined as dsb(sy) - Given that the etm4x is
only used on armv8 let's directly use dsb(sy) instead of mb(). This
removes some ambiguity and makes it easier to correlate the code with
the TRM.

Signed-off-by: Andrew Murray <andrew.murray@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
CC: stable@vger.kernel.org
---
 drivers/hwtracing/coresight/coresight-etm4x.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index c89190d464ab..3825a39e9a49 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -188,6 +188,13 @@ static int etm4_enable_hw(struct etmv4_drvdata *drvdata)
 		dev_err(etm_dev,
 			"timeout while waiting for Idle Trace Status\n");
 
+	/*
+	 * As recommended by section 4.3.7 ("Synchronization when using the
+	 * memory-mapped interface") of ARM IHI 0064D
+	 */
+	dsb(sy);
+	isb();
+
 done:
 	CS_LOCK(drvdata->base);
 
@@ -453,8 +460,12 @@ static void etm4_disable_hw(void *info)
 	/* EN, bit[0] Trace unit enable bit */
 	control &= ~0x1;
 
-	/* make sure everything completes before disabling */
-	mb();
+	/*
+	 * Make sure everything completes before disabling, as recommended
+	 * by section 7.3.77 ("TRCVICTLR, ViewInst Main Control Register,
+	 * SSTATUS") of ARM IHI 0064D
+	 */
+	dsb(sy);
 	isb();
 	writel_relaxed(control, drvdata->base + TRCPRGCTLR);
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
