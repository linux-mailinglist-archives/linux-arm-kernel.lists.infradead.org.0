Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695567A4D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 11:42:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LD+4b0U+G4hkBGuPGPvNf/IIApxvT/laIIm3jT0EeY0=; b=dl0WUjAAB6EkGB
	BlLXYQJdtOvteo8jo3yqk9PlNGdjJXmjK3UBQnctFDQkHsHc1+nkZL0JC2dg8I21DkvYxnuDf6Xi7
	2Ob4UxAcZBc8+TaHXGXiR0HVdSVMGDFDMwZlJBKMTmp4Tc2/xrnBV7ZgPHo6dWkjAiVxuTbu+9Xn/
	MZ8G0izkqCynDXbP483X4oUlPzmfJdyzHw2KgwZeofmNk0AxmGLnILrkEZH8YmFrYib/0B9Go9eHw
	F0p8LN7U74NUS+EILcmXZcxzln2bAfR52zWcjCahrpn782pOKI4kwz3i//stejIjd5v7PVcBQ/0Rt
	CPxf6Ly24bUVf8rtDLUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsOeA-00051T-0A; Tue, 30 Jul 2019 09:42:18 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hsOZl-00006X-7k
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 09:37:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DC528344;
 Tue, 30 Jul 2019 02:37:42 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 35E163F575;
 Tue, 30 Jul 2019 02:37:42 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/5] [UPDATED] coresight: Convert pr_warn to dev_warn for
 obsolete bindings
Date: Tue, 30 Jul 2019 10:37:33 +0100
Message-Id: <20190730093733.31861-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190729170035.GB26214@xps15>
References: <20190729170035.GB26214@xps15>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_023745_440148_44C44233 
X-CRM114-Status: GOOD (  10.47  )
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
Cc: linux-kernel@vger.kernel.org, mathieu.poirier@linaro.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We warn the users of obsolete bindings in the DT for coresight replicator
and funnel drivers. However we use pr_warn_once() which doesn't give a clue
about which device it is bound to. Let us use dev_warn_once() to give the
context.

Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---

Changes since previous version:
 - Update replicator driver too.
---
 drivers/hwtracing/coresight/coresight-funnel.c     | 2 +-
 drivers/hwtracing/coresight/coresight-replicator.c | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index fa97cb9ab4f9..84ca30f4e5ec 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -192,7 +192,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
-		pr_warn_once("Uses OBSOLETE CoreSight funnel binding\n");
+		dev_warn_once(dev, "Uses OBSOLETE CoreSight funnel binding\n");
 
 	desc.name = coresight_alloc_device_name(&funnel_devs, dev);
 	if (!desc.name)
diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index b7d6d59d56db..b29ba640eb25 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -184,7 +184,8 @@ static int replicator_probe(struct device *dev, struct resource *res)
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
-		pr_warn_once("Uses OBSOLETE CoreSight replicator binding\n");
+		dev_warn_once(dev,
+			      "Uses OBSOLETE CoreSight replicator binding\n");
 
 	desc.name = coresight_alloc_device_name(&replicator_devs, dev);
 	if (!desc.name)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
