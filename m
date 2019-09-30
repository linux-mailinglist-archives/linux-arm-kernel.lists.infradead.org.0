Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1615EC2376
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:38:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bn/X59uQqFqIf4McKZtU+vJIkhdBmmhf0JbTkXaqNV8=; b=HlSENRPreBT3Bu
	J7yRjB7/Sksuk2gUQwdCFEUJStGa6S5wpJNWJJ0CbHQdWpeDbNFcVt7v3ktsSZe7KqWsAKJ8VpyOm
	XfHRjloBIlD5JGOSNT5lPkZgt6jnLQHKe/8VJLOfUP60m8iEdsOfSD9kvVn+bXpy8G8MZK8td1Baa
	46tJJtsMr7NTE/ME8grSlSTW3AgI+pb4JIonJSe45FifhXRrpwXJ/5mcOPR50ESHFifqYr0n6a05d
	7kwMQe6Wii6qgiFaD7WDPFglgOG4jbcfqwnT1WWcL18JENQ5XwQNfPJ7pGE7FqtbVpwgXA7poRuUZ
	NXgRgJ2+reMlswTbM9oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwoB-0007uN-IX; Mon, 30 Sep 2019 14:37:51 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwnT-0007OC-Ar
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:37:08 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 63F89242D57370195736;
 Mon, 30 Sep 2019 22:36:58 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 30 Sep 2019 22:36:49 +0800
From: John Garry <john.garry@huawei.com>
To: <lorenzo.pieralisi@arm.com>, <guohanjun@huawei.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
Subject: [RFC PATCH 3/6] perf/smmuv3: Retrieve parent SMMUv3 IIDR
Date: Mon, 30 Sep 2019 22:33:48 +0800
Message-ID: <1569854031-237636-4-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073707_540602_5887B73C 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: nleeder@codeaurora.org, John Garry <john.garry@huawei.com>,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 shameerali.kolothum.thodi@huawei.com, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To support IMP DEF events per PMCG, retrieve the parent SMMUv3 IIDR. This
will be used as a lookup for the IMP DEF events supported, under the
assumption that a PMCG implementation has the same uniqueness as the
parent SMMUv3. In this, we assume that any PMCG associated with the same
SMMUv3 will have the same IMP DEF events - otherwise, some other
secondary matching would need to be done.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/perf/arm_smmuv3_pmu.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index da71c741cb46..f702898c695d 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -115,6 +115,7 @@ struct smmu_pmu {
 	bool global_filter;
 	u32 global_filter_span;
 	u32 global_filter_sid;
+	u32 parent_iidr;
 };
 
 #define to_smmu_pmu(p) (container_of(p, struct smmu_pmu, pmu))
@@ -551,6 +552,11 @@ static const struct attribute_group *smmu_pmu_attr_grps[] = {
 	NULL
 };
 
+static const struct attribute_group **smmu_pmu_lookup_attr_groups(u32 parent_smmu_iidr)
+{
+	return smmu_pmu_attr_grps;
+}
+
 /*
  * Generic device handlers
  */
@@ -706,11 +712,21 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 	int irq, err;
 	char *name;
 	struct device *dev = &pdev->dev;
+	struct device *parent = dev->parent;
 
 	smmu_pmu = devm_kzalloc(dev, sizeof(*smmu_pmu), GFP_KERNEL);
 	if (!smmu_pmu)
 		return -ENOMEM;
 
+	if (parent) {
+		void *parent_drvdata;
+
+		parent_drvdata = platform_get_drvdata(to_platform_device(parent));
+		if (!parent_drvdata)
+			return -EPROBE_DEFER;
+		smmu_pmu->parent_iidr = *(u32 *)parent_drvdata;
+	}
+
 	smmu_pmu->dev = dev;
 	platform_set_drvdata(pdev, smmu_pmu);
 
@@ -724,7 +740,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 		.start		= smmu_pmu_event_start,
 		.stop		= smmu_pmu_event_stop,
 		.read		= smmu_pmu_event_read,
-		.attr_groups	= smmu_pmu_attr_grps,
+		.attr_groups	= smmu_pmu_lookup_attr_groups(smmu_pmu->parent_iidr),
 		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
