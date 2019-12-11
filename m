Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0D211A4B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 07:49:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QZUS2YlMmoPnnDnFVztYZ6LaeORxRLyKcDHHQASHgsc=; b=NizF7aOWjFd+hn
	EOwKStP5Wpn9OlnEQl53KFV1A0d8XqPBv10GdXEZbre+S8IuHzLs8XhgIiHUJ57lUovmtNfdWy8Vr
	BtMc42IMsFO6VklgjWKCmsGdBVvHmc32ZJ3fi0asscUGtWXALz3g+lmUxhBkDbBlhvI6XwKC+recB
	QBRF2YSTzSOK1dtokyG/+u+JrZ4QWkmAyJ8IIxHh7yZBOI+pnuXwaUepVvHkvEjbRJ2sK8H747Ge0
	XGEaquk8oBepYGcUUXHSnom6Ny1HowmNi6IUWL4g6nZI7sxj2ZunxwJ1O6us1R+SQWZp92hODTH/V
	JCuH6L7EbjxEG/pZQwmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ievoW-0003BX-HT; Wed, 11 Dec 2019 06:49:36 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ievoQ-0003B0-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 06:49:31 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 324AE32A130ACAFC2811;
 Wed, 11 Dec 2019 14:49:24 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Wed, 11 Dec 2019 14:49:14 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2] perf/smmuv3: Remove the leftover put_cpu() in error path
Date: Wed, 11 Dec 2019 14:43:06 +0800
Message-ID: <1576046586-59145-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_224930_399543_019A457E 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Hanjun Guo <guohanjun@huawei.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In smmu_pmu_probe(), there is put_cpu() in the error path,
which is wrong because we use raw_smp_processor_id() to
get the cpu ID, not get_cpu(), remove it.

While we are at it, kill 'out_cpuhp_err' altogether and
just return err if we fail to add the hotplug instance.

Acked-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 drivers/perf/arm_smmuv3_pmu.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index 773128f..d704ecc 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -814,7 +814,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 	if (err) {
 		dev_err(dev, "Error %d registering hotplug, PMU @%pa\n",
 			err, &res_0->start);
-		goto out_cpuhp_err;
+		return err;
 	}
 
 	err = perf_pmu_register(&smmu_pmu->pmu, name, -1);
@@ -833,8 +833,6 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 
 out_unregister:
 	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &smmu_pmu->node);
-out_cpuhp_err:
-	put_cpu();
 	return err;
 }
 
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
