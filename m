Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C72C237A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 16:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJpThHfX1F0GwnpSd3iKmQ253aU64UoDpgBQQceBpJ0=; b=QRnbykKVAOirE1
	dwJX2bNVWhVFwhybsaP7AWAuFH8oJCW2pCgYG0yJKKlNAT97PTTzMzG2G2oDq51iHKy7AVO2/i64B
	CyUlG1vg1rwsGnx4E0lgl3rHLNdxO5wDE76gechXaftPATnH+cnqIYx45b3m2I3H+xp4zyCNVk0zZ
	mFqO4fmnRBEyiAOl/ajBevzXKGJ3W/s1HAv+vROb4YfCJ5hqdNA/PYE/AjqcKWsrmX6DO7B01/0Ib
	ImZ1VqptJncjjVnatfGi/K+cEjyzwaujvfMHln3v9tXQqiGqQyztY71tzYeATWiR+LEq+XrlnIdVd
	aU8/4zGDXx0s2/NH+NEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEwoo-00005k-Sd; Mon, 30 Sep 2019 14:38:30 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEwnT-0007OD-8b
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 14:37:10 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 3920A100FDCBCDE5F8DC;
 Mon, 30 Sep 2019 22:36:58 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 30 Sep 2019 22:36:49 +0800
From: John Garry <john.garry@huawei.com>
To: <lorenzo.pieralisi@arm.com>, <guohanjun@huawei.com>,
 <sudeep.holla@arm.com>, <robin.murphy@arm.com>, <mark.rutland@arm.com>,
 <will@kernel.org>
Subject: [RFC PATCH 4/6] perf/smmuv3: Support HiSilicon hip08 (hi1620) IMP DEF
 events
Date: Mon, 30 Sep 2019 22:33:49 +0800
Message-ID: <1569854031-237636-5-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
References: <1569854031-237636-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_073707_905139_522B8EC8 
X-CRM114-Status: GOOD (  15.10  )
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

Now that we can identify an PMCG implementation through the parent SMMUv3
implementation, add support for IMP DEF events.

For each new implementation supported, we add a new attr_grps structure
for a particular implementation and do lookup matching based on the
parent SMMUv3 IIDR. This could maybe be optimised in future to reduce
structures required.

For now, only the l1_tlb event is added for HiSilicon hip08 platform.

This platform supports many more IMP DEF events, but I need something
better than the electronically translated description of the event to
support.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 drivers/perf/arm_smmuv3_pmu.c | 54 ++++++++++++++++++++++++++++++++++-
 1 file changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index f702898c695d..11f28ba5fae0 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -132,6 +132,8 @@ SMMU_PMU_EVENT_ATTR_EXTRACTOR(filter_stream_id, config1, 0, 31);
 SMMU_PMU_EVENT_ATTR_EXTRACTOR(filter_span, config1, 32, 32);
 SMMU_PMU_EVENT_ATTR_EXTRACTOR(filter_enable, config1, 33, 33);
 
+#define PARENT_SMMU_IIDR_HISI_HIP08 (0x30736)
+
 static inline void smmu_pmu_enable(struct pmu *pmu)
 {
 	struct smmu_pmu *smmu_pmu = to_smmu_pmu(pmu);
@@ -505,6 +507,21 @@ static struct attribute *smmu_pmu_events[] = {
 	NULL
 };
 
+SMMU_EVENT_ATTR(l1_tlb, 0x8a);
+
+static struct attribute *smmu_pmu_events_hip08[] = {
+	&smmu_event_attr_cycles.attr.attr,
+	&smmu_event_attr_transaction.attr.attr,
+	&smmu_event_attr_tlb_miss.attr.attr,
+	&smmu_event_attr_config_cache_miss.attr.attr,
+	&smmu_event_attr_trans_table_walk_access.attr.attr,
+	&smmu_event_attr_config_struct_access.attr.attr,
+	&smmu_event_attr_pcie_ats_trans_rq.attr.attr,
+	&smmu_event_attr_pcie_ats_trans_passed.attr.attr,
+	&smmu_event_attr_l1_tlb.attr.attr,
+	NULL
+};
+
 static umode_t smmu_pmu_event_is_visible(struct kobject *kobj,
 					 struct attribute *attr, int unused)
 {
@@ -514,7 +531,10 @@ static umode_t smmu_pmu_event_is_visible(struct kobject *kobj,
 
 	pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr.attr);
 
-	if (test_bit(pmu_attr->id, smmu_pmu->supported_events))
+	if (pmu_attr->id < SMMU_PMCG_ARCH_MAX_EVENTS &&
+	    test_bit(pmu_attr->id, smmu_pmu->supported_events))
+		return attr->mode;
+	else if (pmu_attr->id >= SMMU_PMCG_ARCH_MAX_EVENTS)
 		return attr->mode;
 
 	return 0;
@@ -526,6 +546,12 @@ static struct attribute_group smmu_pmu_events_group = {
 	.is_visible = smmu_pmu_event_is_visible,
 };
 
+static struct attribute_group smmu_pmu_events_group_hip08 = {
+	.name = "events",
+	.attrs = smmu_pmu_events_hip08,
+	.is_visible = smmu_pmu_event_is_visible,
+};
+
 /* Formats */
 PMU_FORMAT_ATTR(event,		   "config:0-15");
 PMU_FORMAT_ATTR(filter_stream_id,  "config1:0-31");
@@ -552,8 +578,34 @@ static const struct attribute_group *smmu_pmu_attr_grps[] = {
 	NULL
 };
 
+static const struct attribute_group *smmu_pmu_attr_grps_hip08[] = {
+	&smmu_pmu_cpumask_group,
+	&smmu_pmu_events_group_hip08,
+	&smmu_pmu_format_group,
+	NULL
+};
+
+struct smmu_pmu_attr_grps_custom {
+	u32 parent_smmu_iidr;
+	const struct attribute_group **attr_grps;
+} smmu_pmu_attr_custom_grps[] = {
+	{
+		.parent_smmu_iidr = PARENT_SMMU_IIDR_HISI_HIP08,
+		.attr_grps = smmu_pmu_attr_grps_hip08,
+	},
+};
+
 static const struct attribute_group **smmu_pmu_lookup_attr_groups(u32 parent_smmu_iidr)
 {
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(smmu_pmu_attr_custom_grps); i++) {
+		struct smmu_pmu_attr_grps_custom *c = &smmu_pmu_attr_custom_grps[i];
+
+		if (c->parent_smmu_iidr == parent_smmu_iidr)
+			return c->attr_grps;
+	}
+
 	return smmu_pmu_attr_grps;
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
