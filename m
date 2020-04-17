Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3191F1ADBA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:55:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3acH0HanzqhF99Bx+JH4pvSTzWixdBpx17A0A1QU2kg=; b=N4uF8gjkA3NtCz
	ZZGd394xzxJhiJbYwRNeO+ffh8aS+C2kcQxCh6te9kD4gK0W4sgvv3bY/WN3wspwBQRiMnImf100v
	aYxJI3VWHQg0BJmLdNUCmOf87opa/uoxKe2awXSie6ekLNwLHlRdFtMRC1Ux8Yc6zih1y14ggpLsR
	owoGFms+SEKtLVFsF+IdSeZ9dAn+tQQmeAB6dKg0ruE2ZckYrlTKtKdeDhLYKUqwIMr14IYySbWRk
	tz6YZf65BzMYrUuqVWI4QuHCbtI/xiif2hvOqm5tYE0sR6d0gohlnmZ/qo3hKB/WrRrURZDfN0b3z
	JfoJHAAwGCuQuxb96N1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOeD-0001oz-3N; Fri, 17 Apr 2020 10:55:01 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOe3-0001o7-Qk
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:54:53 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8087CD7DBF35CF8B1E2F;
 Fri, 17 Apr 2020 18:54:50 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:54:41 +0800
From: John Garry <john.garry@huawei.com>
To: <will@kernel.org>, <mark.rutland@arm.com>
Subject: [RFC PATCH] perf/smmuv3: Support sysfs identifier file
Date: Fri, 17 Apr 2020 18:50:34 +0800
Message-ID: <1587120634-19666-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_035452_020561_46926712 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: jolsa@redhat.com, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, shameerali.kolothum.thodi@huawei.com,
 qiangqing.zhang@nxp.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For the perf tool to know the specific HW implementation, expose a HW
identifier file for the PMU device.

For now, we just support HiSilicon "hip08" through pre-existing ACPI
options quirk framework. A minimalistic approach is used, based on the
hope that a proper identification method will be available in a future
SMMUv3 spec.

Signed-off-by: John Garry <john.garry@huawei.com>

diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
index f01a57e5a5f3..0ed358cff4a7 100644
--- a/drivers/perf/arm_smmuv3_pmu.c
+++ b/drivers/perf/arm_smmuv3_pmu.c
@@ -113,6 +113,7 @@ struct smmu_pmu {
 	u64 counter_mask;
 	u32 options;
 	bool global_filter;
+	const char *identifier;
 };
 
 #define to_smmu_pmu(p) (container_of(p, struct smmu_pmu, pmu))
@@ -552,6 +553,27 @@ static struct attribute_group smmu_pmu_events_group = {
 	.is_visible = smmu_pmu_event_is_visible,
 };
 
+static ssize_t smmu_pmu_identifier_attr_show(struct device *dev,
+					struct device_attribute *attr,
+					char *page)
+{
+	struct smmu_pmu *smmu_pmu = to_smmu_pmu(dev_get_drvdata(dev));
+
+	return sprintf(page, "%s\n", smmu_pmu->identifier);
+}
+
+static struct device_attribute smmu_pmu_identifier_attr =
+	__ATTR(identifier, 0444, smmu_pmu_identifier_attr_show, NULL);
+
+static struct attribute *smmu_pmu_identifier_attrs[] = {
+	&smmu_pmu_identifier_attr.attr,
+	NULL
+};
+
+static struct attribute_group smmu_pmu_identifier_group = {
+	.attrs = smmu_pmu_identifier_attrs,
+};
+
 /* Formats */
 PMU_FORMAT_ATTR(event,		   "config:0-15");
 PMU_FORMAT_ATTR(filter_stream_id,  "config1:0-31");
@@ -575,6 +597,7 @@ static const struct attribute_group *smmu_pmu_attr_grps[] = {
 	&smmu_pmu_cpumask_group,
 	&smmu_pmu_events_group,
 	&smmu_pmu_format_group,
+	&smmu_pmu_identifier_group,
 	NULL
 };
 
@@ -718,7 +741,10 @@ static void smmu_pmu_get_acpi_options(struct smmu_pmu *smmu_pmu)
 	case IORT_SMMU_V3_PMCG_HISI_HIP08:
 		/* HiSilicon Erratum 162001800 */
 		smmu_pmu->options |= SMMU_PMCG_EVCNTR_RDONLY;
+		smmu_pmu->identifier = "hip08";
 		break;
+	default:
+		smmu_pmu->identifier = "none";
 	}
 
 	dev_notice(smmu_pmu->dev, "option mask 0x%x\n", smmu_pmu->options);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
