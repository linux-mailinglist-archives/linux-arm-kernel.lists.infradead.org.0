Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA181FCE19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NbqPbUkQtuJn6WRx9jvY5MRDAhaRRRDle2YkZ7P46HY=; b=aqdgQKTOlL7sMK
	rXLXvYuVetYGQ4b6AYp6A9dnOgLogVT86YvfaEdihQpQHpn2XSyQXkc0rWlSItQkqGWG3LvCF5n73
	2gaLVJtLZZSr3EdLuvMZFBromE9uzPmmITvNU/M6xRjJnxKBOE5dTR6DeJRmTK0ztkZrbP72nPlDD
	PiSRoWHonXxA/2bHemuQ19Pp1Yc8VmnBYDsVFxYAxiJnihhJww2Y1CelN7aRKb9VNHzrw6TEDLya4
	HnigXFEYXe9lHWOUQwyCBsgp87cksPudhS2FdAOxvitJyCv3bjI/IF5KGCQ8xsrgycqKHrf5/vPhO
	5COwlPGn7NlzWjeunUqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXog-00014a-IU; Wed, 17 Jun 2020 13:09:22 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXoY-00013m-Ev
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:09:16 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id A73B09B147F80A4789FE;
 Wed, 17 Jun 2020 21:09:06 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.487.0; Wed, 17 Jun 2020 21:08:58 +0800
From: John Garry <john.garry@huawei.com>
To: <zhangshaokun@hisilicon.com>, <will@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] drivers/perf: hisi: Add identifier sysfs file
Date: Wed, 17 Jun 2020 21:05:11 +0800
Message-ID: <1592399111-134786-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_060915_087883_A5FB126B 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.190 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: qiangqing.zhang@nxp.com, John
 Garry <john.garry@huawei.com>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To allow userspace to identify the specific implementation of the device,
add an "identifier" sysfs file.

Encoding is as follows:
hi1620: 0x0	(aka hip08)
hi1630: 0x30

Signed-off-by: John Garry <john.garry@huawei.com>

diff --git a/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c b/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
index 15713faaa07e..a83d99f2662e 100644
--- a/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
@@ -33,6 +33,7 @@
 #define DDRC_INT_MASK		0x6c8
 #define DDRC_INT_STATUS		0x6cc
 #define DDRC_INT_CLEAR		0x6d0
+#define DDRC_VERSION		0x710
 
 /* DDRC has 8-counters */
 #define DDRC_NR_COUNTERS	0x8
@@ -267,6 +268,8 @@ static int hisi_ddrc_pmu_init_data(struct platform_device *pdev,
 		return PTR_ERR(ddrc_pmu->base);
 	}
 
+	ddrc_pmu->identifier = readl(ddrc_pmu->base + DDRC_VERSION);
+
 	return 0;
 }
 
@@ -308,10 +311,23 @@ static const struct attribute_group hisi_ddrc_pmu_cpumask_attr_group = {
 	.attrs = hisi_ddrc_pmu_cpumask_attrs,
 };
 
+static struct device_attribute hisi_ddrc_pmu_identifier_attr =
+	__ATTR(identifier, 0444, hisi_uncore_pmu_identifier_attr_show, NULL);
+
+static struct attribute *hisi_ddrc_pmu_identifier_attrs[] = {
+	&hisi_ddrc_pmu_identifier_attr.attr,
+	NULL
+};
+
+static struct attribute_group hisi_ddrc_pmu_identifier_group = {
+	.attrs = hisi_ddrc_pmu_identifier_attrs,
+};
+
 static const struct attribute_group *hisi_ddrc_pmu_attr_groups[] = {
 	&hisi_ddrc_pmu_format_group,
 	&hisi_ddrc_pmu_events_group,
 	&hisi_ddrc_pmu_cpumask_attr_group,
+	&hisi_ddrc_pmu_identifier_group,
 	NULL,
 };
 
diff --git a/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c b/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
index dcc5600788a9..4fdaf1d995be 100644
--- a/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
@@ -23,6 +23,7 @@
 #define HHA_INT_MASK		0x0804
 #define HHA_INT_STATUS		0x0808
 #define HHA_INT_CLEAR		0x080C
+#define HHA_VERSION		0x1cf0
 #define HHA_PERF_CTRL		0x1E00
 #define HHA_EVENT_CTRL		0x1E04
 #define HHA_EVENT_TYPE0		0x1E80
@@ -261,6 +262,8 @@ static int hisi_hha_pmu_init_data(struct platform_device *pdev,
 		return PTR_ERR(hha_pmu->base);
 	}
 
+	hha_pmu->identifier = readl(hha_pmu->base + HHA_VERSION);
+
 	return 0;
 }
 
@@ -320,10 +323,23 @@ static const struct attribute_group hisi_hha_pmu_cpumask_attr_group = {
 	.attrs = hisi_hha_pmu_cpumask_attrs,
 };
 
+static struct device_attribute hisi_hha_pmu_identifier_attr =
+	__ATTR(identifier, 0444, hisi_uncore_pmu_identifier_attr_show, NULL);
+
+static struct attribute *hisi_hha_pmu_identifier_attrs[] = {
+	&hisi_hha_pmu_identifier_attr.attr,
+	NULL
+};
+
+static struct attribute_group hisi_hha_pmu_identifier_group = {
+	.attrs = hisi_hha_pmu_identifier_attrs,
+};
+
 static const struct attribute_group *hisi_hha_pmu_attr_groups[] = {
 	&hisi_hha_pmu_format_group,
 	&hisi_hha_pmu_events_group,
 	&hisi_hha_pmu_cpumask_attr_group,
+	&hisi_hha_pmu_identifier_group,
 	NULL,
 };
 
diff --git a/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c b/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
index 7719ae4e2c56..0e7477220be1 100644
--- a/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
@@ -25,6 +25,7 @@
 #define L3C_INT_STATUS		0x0808
 #define L3C_INT_CLEAR		0x080c
 #define L3C_EVENT_CTRL	        0x1c00
+#define L3C_VERSION		0x1cf0
 #define L3C_EVENT_TYPE0		0x1d00
 /*
  * Each counter is 48-bits and [48:63] are reserved
@@ -264,6 +265,8 @@ static int hisi_l3c_pmu_init_data(struct platform_device *pdev,
 		return PTR_ERR(l3c_pmu->base);
 	}
 
+	l3c_pmu->identifier = readl(l3c_pmu->base + L3C_VERSION);
+
 	return 0;
 }
 
@@ -310,10 +313,23 @@ static const struct attribute_group hisi_l3c_pmu_cpumask_attr_group = {
 	.attrs = hisi_l3c_pmu_cpumask_attrs,
 };
 
+static struct device_attribute hisi_l3c_pmu_identifier_attr =
+	__ATTR(identifier, 0444, hisi_uncore_pmu_identifier_attr_show, NULL);
+
+static struct attribute *hisi_l3c_pmu_identifier_attrs[] = {
+	&hisi_l3c_pmu_identifier_attr.attr,
+	NULL
+};
+
+static struct attribute_group hisi_l3c_pmu_identifier_group = {
+	.attrs = hisi_l3c_pmu_identifier_attrs,
+};
+
 static const struct attribute_group *hisi_l3c_pmu_attr_groups[] = {
 	&hisi_l3c_pmu_format_group,
 	&hisi_l3c_pmu_events_group,
 	&hisi_l3c_pmu_cpumask_attr_group,
+	&hisi_l3c_pmu_identifier_group,
 	NULL,
 };
 
diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.c b/drivers/perf/hisilicon/hisi_uncore_pmu.c
index 97aff877a4e7..023e247634db 100644
--- a/drivers/perf/hisilicon/hisi_uncore_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_pmu.c
@@ -119,6 +119,16 @@ int hisi_uncore_pmu_get_event_idx(struct perf_event *event)
 }
 EXPORT_SYMBOL_GPL(hisi_uncore_pmu_get_event_idx);
 
+ssize_t hisi_uncore_pmu_identifier_attr_show(struct device *dev,
+					     struct device_attribute *attr,
+					     char *page)
+{
+	struct hisi_pmu *hisi_pmu = to_hisi_pmu(dev_get_drvdata(dev));
+
+	return sprintf(page, "0x%x\n", hisi_pmu->identifier);
+}
+EXPORT_SYMBOL_GPL(hisi_uncore_pmu_identifier_attr_show);
+
 static void hisi_uncore_pmu_clear_event_idx(struct hisi_pmu *hisi_pmu, int idx)
 {
 	if (!hisi_uncore_pmu_counter_valid(hisi_pmu, idx)) {
diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.h b/drivers/perf/hisilicon/hisi_uncore_pmu.h
index 25b0c97b3eb0..14ecaf763153 100644
--- a/drivers/perf/hisilicon/hisi_uncore_pmu.h
+++ b/drivers/perf/hisilicon/hisi_uncore_pmu.h
@@ -74,6 +74,7 @@ struct hisi_pmu {
 	int counter_bits;
 	/* check event code range */
 	int check_event;
+	u32 identifier;
 };
 
 int hisi_uncore_pmu_counter_valid(struct hisi_pmu *hisi_pmu, int idx);
@@ -96,4 +97,10 @@ ssize_t hisi_cpumask_sysfs_show(struct device *dev,
 				struct device_attribute *attr, char *buf);
 int hisi_uncore_pmu_online_cpu(unsigned int cpu, struct hlist_node *node);
 int hisi_uncore_pmu_offline_cpu(unsigned int cpu, struct hlist_node *node);
+
+ssize_t hisi_uncore_pmu_identifier_attr_show(struct device *dev,
+					     struct device_attribute *attr,
+					     char *page);
+
+
 #endif /* __HISI_UNCORE_PMU_H__ */
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
