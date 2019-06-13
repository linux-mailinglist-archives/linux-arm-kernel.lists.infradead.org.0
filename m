Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D92B24351C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 12:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X2e2+EcZUNVl0w28rJRKolcFcA3dopnN7s6kzRsbjzI=; b=rMhCpXPisfCWKBFYSKcB3VuA1K
	tn4bq+E22Etua/ViplcDEFLUWE96vRSFrGfqwjRt0U3bWdWloVUPWwGjX8OEE1Z64uvRhjCUwH69H
	nHf0lI0W/yVtXNLgy4ygY0rcWRnxDawZ0rReuM+PUVRpehZY9AtlH2j8SqDHxiu8W2MfnGF8e/kX0
	Zb1FOx8p3GlEhaO/tlWjGfRX78oOAboB0QGgjRg9m2bxSJjFW0o1NpniuKcooD4wtPAZxHh2onaor
	5m5S9bpWNw9UEcM/QvOKSYI3cASKB4kNd8V4IHHY/tX0UAlT6ZNvq8RjVLTOAtIxFF05vOiWvNpZu
	ipb4pG2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMdL-0005sp-Dl; Thu, 13 Jun 2019 10:07:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMcu-0005iG-0G
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 10:06:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E38253EF;
 Thu, 13 Jun 2019 03:06:33 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 75B2B3F694; Thu, 13 Jun 2019 03:08:16 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/2] coresight: tmc: Smatch: Fix potential NULL pointer
 dereference
Date: Thu, 13 Jun 2019 11:06:26 +0100
Message-Id: <1560420386-4239-2-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560420386-4239-1-git-send-email-suzuki.poulose@arm.com>
References: <1560420386-4239-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_030636_086068_66E89068 
X-CRM114-Status: GOOD (  11.14  )
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
Cc: coresight@lists.linaro.org, Dan Carpenter <dan.carpenter@oracle.com>,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Based on the following report from Smatch, fix the potential
NULL pointer dereference check.

The patch 743256e214e8: "coresight: tmc: Clean up device specific
data" from May 22, 2019, leads to the following Smatch complaint:

    drivers/hwtracing/coresight/coresight-tmc-etr.c:625 tmc_etr_free_flat_buf()
    warn: variable dereferenced before check 'flat_buf' (see line 623)

drivers/hwtracing/coresight/coresight-tmc-etr.c
   622		struct etr_flat_buf *flat_buf = etr_buf->private;
   623		struct device *real_dev = flat_buf->dev->parent;
                                          ^^^^^^^^^^
The patch introduces a new NULL check

   624
   625		if (flat_buf && flat_buf->daddr)
                    ^^^^^^^^
but the existing code assumed it can be NULL.

   626			dma_free_coherent(real_dev, flat_buf->size,
   627					  flat_buf->vaddr, flat_buf->daddr);

Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 5d2bf6d..1700670 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -620,11 +620,13 @@ static int tmc_etr_alloc_flat_buf(struct tmc_drvdata *drvdata,
 static void tmc_etr_free_flat_buf(struct etr_buf *etr_buf)
 {
 	struct etr_flat_buf *flat_buf = etr_buf->private;
-	struct device *real_dev = flat_buf->dev->parent;
 
-	if (flat_buf && flat_buf->daddr)
+	if (flat_buf && flat_buf->daddr) {
+		struct device *real_dev = flat_buf->dev->parent;
+
 		dma_free_coherent(real_dev, flat_buf->size,
 				  flat_buf->vaddr, flat_buf->daddr);
+	}
 	kfree(flat_buf);
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
