Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0073EC237B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwGbHfzf9+XfEOvkVOZFXIomUMl8E0gVkU+JetT5X4Y=; b=Zp8D7D1FvMV4gJ
	5R6BA9ZvUG3kfopWE9G4Ws03q4hmqvM2VZNoVCMJLHQhvIRZWDmoZIR/8XxuYFGcvs2VlcvqG4hsv
	Dr9iDP/Kdgx2sRrqq9cT0hSjukyt63/57Ik+txdeTR1pKMq60zYjahN6a6SVvR+xGUFTFxq+90DNo
	MRRQ6opKlben6lvmHUHR5pgGhIAHeHP6UUqorLGayo6vuDAPpSqEB9R7IuZI/0UnHKmtbH/8q+hBz
	oH+kQn3VbKSDgE9FUHIsyqk1TUzy3YQv5h2mKwvf1doy+hlL6OxfhNLVGAJChVLj5BwPR3cRY4sXg
	N+fwKWKz49HTW6FvRBPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwoy-0000Mx-5C; Mon, 30 Sep 2019 14:38:40 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwnY-0007OH-1U
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:37:13 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 324169B4856EE48EF227;
 Mon, 30 Sep 2019 22:36:58 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 30 Sep 2019 22:36:49 +0800
From: John Garry <john.garry@huawei.com>
To: <lorenzo.pieralisi@arm.com>, <guohanjun@huawei.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
Subject: [RFC PATCH 5/6] perf/smmuv3: Match implementation options based on
 parent SMMU IIDR
Date: Mon, 30 Sep 2019 22:33:50 +0800
Message-ID: <1569854031-237636-6-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073712_290371_AC7CC237 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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

Currently we match the implementation options based on the ACPI PLATFORM
OEM ID.

Since we can now match based on the parent SMMUv3 IIDR, switch to this
method.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/perf/arm_smmuv3_pmu.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index 11f28ba5fae0..33d1379ae525 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -739,14 +739,10 @@ static void smmu_pmu_reset(struct smmu_pmu *smmu_pmu)
 		       smmu_pmu->reloc_base + SMMU_PMCG_OVSCLR0);
 }
 
-static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
+static void smmu_pmu_get_implementation_options(struct smmu_pmu *smmu_pmu)
 {
-	u32 model;
-
-	model = *(u32 *)dev_get_platdata(smmu_pmu->dev);
-
-	switch (model) {
-	case IORT_SMMU_V3_PMCG_HISI_HIP08:
+	switch (smmu_pmu->parent_iidr) {
+	case PARENT_SMMU_IIDR_HISI_HIP08:
 		/* HiSilicon Erratum 162001800 */
 		smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
 		break;
@@ -844,7 +840,7 @@ static int smmu_pmu_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	smmu_pmu_get_acpi_options(smmu_pmu);
+	smmu_pmu_get_implementation_options(smmu_pmu);
 
 	/* Pick one CPU to be the preferred one to use */
 	smmu_pmu->on_cpu = raw_smp_processor_id();
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
