Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E2E18875F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 15:22:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQq019pPHE2a03Nhju5hlEdXwYp9UTws3IXPFnJcrNY=; b=EG9RXKs/a69M2m
	6ooZLJGQgGnv+9rll1rjuswnnewbuWyyKAZVUc9q8eIpzlRVNCqcLdAlGk0T3Xnqg9FJ/lUEz3oM4
	QkBcL4OOQX4Ow8WP/4/9YZdZOiSCtq52b24V6Gzhnd/sMSBhnQru16X36hbP300eaC9woyQd9U4Yx
	DBH5p0Nugt9rXpzVbiwLFgnkvMDuaXd4Cpgqe0ISdlBtc2l7e1fg0Atu+Fk9HrdPq5SLwOtHb4Z2m
	qcVywB1R6ZBxq4SSHjBVdO1/GROkgLRHMLqumHvs1HCEQK8ZWWotW5xLu2d6JHS0YMTEBpkzEOyKi
	sVonBVSO+fPilDwZPHUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jED6b-0004WO-Ln; Tue, 17 Mar 2020 14:22:05 +0000
Received: from mail-db8eur05on2045.outbound.protection.outlook.com
 ([40.107.20.45] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jED60-00046k-AQ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 14:21:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/2/ytwnyFlcZJg4rdBS57pYiOAJKrjnZk6uMyCeppUTc7to8Wb6zXIIUpkl/O+4jUsnIugnBF40sIbpIGJhl51yd5uS09/PxV/l5wpLMDqMfN8HvhGLIgCpWYmdEd8y0fTFMpj47e4dSMh0eg2kiR1Lw3SY7dXSVMzv9zpWJtBva3vqX3VVvuiKCrufHw2z+RxWrl4Jxsc/LzXGJCor7F8jNdE4wjXSQ/qLSDmZ5AQQOLyUEMrq83gcN3T8FRNCxrMf+Reyl1ue7W+VMhv0QADn8k+z9XUhqmxxvgH/2Ab4jAMleqUJU8SmKAJ7TNCyVPkL69y6IuU4aAd+uilQ0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Djcm5V8bjNo83thQa/s2NrOFIaFUP/l4uLu/hBwKPu8=;
 b=K4CFNwyya7oW9P06biwxBBzWV2eU9nXxi/RaE2WYZUg0PhxHA0htdMzqU3nHZkafqlh9RrikXT2AUL8oFvlSvs60UTEsHSbPzh49/UmJVUA3TZoQq0xw++OXjrFZzzOIFdygtrHiydL0sBrudbgXRZMw8f6Fci746go1d2+bz6iDkDH6K6W+25jG+6wg/65Xt3I/HUmhbYKFeunbB/PGndhFW721hJR4LK3jaJoQj3cjdrjZGdJiCLrM4hXEadh4oQzwFW5Nx1Ak8NUmodCmuLf8+HWm9pwu81jlGY+ViQtuUUQmSgxxfD/ZLPWhVaFpUG2UXNX4C5+rlATCmXxgQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Djcm5V8bjNo83thQa/s2NrOFIaFUP/l4uLu/hBwKPu8=;
 b=fT3LGjSz8GVsn5R6T/KwU0umks9B6Lgyzb2QuHCmJt02BNgigchLUq9ykNiludiLYzKn3+SVphCUA1ahZYrNQnHd9hJ6Ejqn1vMlggsp74UFaDsdrer+6ziD6Pd1k/l+uknU6BTyjEXw9hdQnp0ndWvVwnPCUz53jd5LQmb4RwU=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=laurentiu.tudor@nxp.com; 
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com (20.179.2.147) by
 AM6PR04MB5416.eurprd04.prod.outlook.com (20.178.94.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18; Tue, 17 Mar 2020 14:21:20 +0000
Received: from AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818]) by AM6PR04MB5925.eurprd04.prod.outlook.com
 ([fe80::fdd6:55d:c03e:5818%4]) with mapi id 15.20.2814.021; Tue, 17 Mar 2020
 14:21:20 +0000
From: laurentiu.tudor@nxp.com
To: thierry.reding@gmail.com, robin.murphy@arm.com, will@kernel.org,
 iommu@lists.linux-foundation.org
Subject: [RFC PATCH v2 2/2] iommu: arm-smmu: Add support for early direct
 mappings
Date: Tue, 17 Mar 2020 16:21:07 +0200
Message-Id: <20200317142107.28776-3-laurentiu.tudor@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200317142107.28776-1-laurentiu.tudor@nxp.com>
References: <20200317142107.28776-1-laurentiu.tudor@nxp.com>
X-ClientProxiedBy: AM3PR05CA0105.eurprd05.prod.outlook.com
 (2603:10a6:207:1::31) To AM6PR04MB5925.eurprd04.prod.outlook.com
 (2603:10a6:20b:ab::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from fsr-ub1864-101.ea.freescale.net (89.37.124.34) by
 AM3PR05CA0105.eurprd05.prod.outlook.com (2603:10a6:207:1::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.15 via Frontend Transport; Tue, 17 Mar 2020 14:21:19 +0000
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [89.37.124.34]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: efb6c648-82c1-45d1-195d-08d7ca7e7664
X-MS-TrafficTypeDiagnostic: AM6PR04MB5416:|AM6PR04MB5416:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB541672ED60A0EF39C744AD34ECF60@AM6PR04MB5416.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0345CFD558
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(199004)(52116002)(1076003)(8676002)(81156014)(66556008)(8936002)(9686003)(81166006)(66946007)(66476007)(6512007)(7416002)(5660300002)(6506007)(6486002)(4326008)(16526019)(186003)(26005)(316002)(86362001)(956004)(2616005)(36756003)(6666004)(2906002)(478600001)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5416;
 H:AM6PR04MB5925.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /ISswulygMsp4v1BlVY+ROyaUS3NtoWBDwW5F1x/3zDSGWujCwSYIVRx/Zz723NLaSDcRbLnXG4dkmOK3lImdeOW65v41jNsfPwTHuTBKcjhJ0jqtb0plpV2MBEzNHNuBvPBJe8x94av5CxVL4BS0KOGel2uk/j8nF07Ln9uVwb4XerqHGny82FEL5Gs1eH/NK7FX5NyaSXHABuBZnknwk8Wy6lTFET/FApzeFT5UIenYVvEilm5yFoR8F3bNPV1swGM8M6PqrVKv3L3zVJ9vMXeolTZtsi4ITmNifjpsu6m1biU4KcRhRulRRmJJrPhnJuCPqcLPfj8MmOzEO6zClLJrtyjbEbGztdBzIGRnEEm6c4VkU1bhc4EnHFWUKcciXxg6dnEXPp/Ri8SWNiO4s5HM3WS56LwETYrrIV+RmGrpOgqPJPQ/+qjT9Sfj0nF
X-MS-Exchange-AntiSpam-MessageData: yoKbnRszYbsoDWP9s10dMZXZFtjYyyMmhzbr8FIIpTZjT4gKmPYBu0jB3uddAX7jUHVeSneKCcWX/OHrsu11hldH0Gt/v0b8cKTuz+BOi4r5blEglIGMFU5sD0pf08HTvb24eRgLo4304avkU9zIfA==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efb6c648-82c1-45d1-195d-08d7ca7e7664
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 14:21:19.9224 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZUb2o3nS7S/vkHrYn3kDpXFCEe44j+88EtwuzAMskY1R+lvJtReaCi6nsZJQMfOALr1OFF3/cYMXpLANM0t8rg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5416
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_072128_411502_5BFF4FD5 
X-CRM114-Status: GOOD (  22.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.45 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.45 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: saravanak@google.com, pdaly@codeaurora.org, kernel-team@android.com,
 diana.craciun@nxp.com, linux-tegra@vger.kernel.org,
 Thierry Reding <treding@nvidia.com>, pratikp@codeaurora.org,
 linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

On platforms, the firmware will setup hardware to read from a given
region of memory. One such example is a display controller that is
scanning out a splash screen from physical memory.

During Linux's boot process, the ARM SMMU will configure all contexts to
fault by default. This means that memory accesses that happen by an SMMU
master before its driver has had a chance to properly set up the IOMMU
will cause a fault. This is especially annoying for something like the
display controller scanning out a splash screen because the faults will
result in the display controller getting bogus data (all-ones on Tegra)
and since it repeatedly scans that framebuffer, it will keep triggering
such faults and spam the boot log with them.

In order to work around such problems, scan the device tree for IOMMU
masters and set up a special identity domain that will map 1:1 all of
the reserved regions associated with them. This happens before the SMMU
is enabled, so that the mappings are already set up before translations
begin.

Signed-off-by: Thierry Reding <treding@nvidia.com>
Signed-off-by: Laurentiu Tudor <laurentiu.tudor@nxp.com>
---
 drivers/iommu/arm-smmu.c | 257 ++++++++++++++++++++++++++++++++++++++-
 drivers/iommu/arm-smmu.h |   3 +
 2 files changed, 259 insertions(+), 1 deletion(-)

diff --git a/drivers/iommu/arm-smmu.c b/drivers/iommu/arm-smmu.c
index 8a238d5a4b51..083566a27eef 100644
--- a/drivers/iommu/arm-smmu.c
+++ b/drivers/iommu/arm-smmu.c
@@ -1158,6 +1158,135 @@ static int arm_smmu_domain_add_master(struct arm_smmu_domain *smmu_domain,
 	return 0;
 }
 
+static int arm_smmu_identity_map_regions(struct iommu_domain *dom,
+					 struct arm_smmu_device *smmu,
+					 struct device_node *np)
+{
+	struct device *dev = smmu->dev;
+	struct of_phandle_iterator it;
+	unsigned long page_size;
+	unsigned int count = 0;
+	int ret;
+
+	page_size = 1UL << __ffs(dom->pgsize_bitmap);
+
+	/* parse memory regions and add them to the identity mapping */
+	of_for_each_phandle(&it, ret, np, "memory-region", NULL, 0) {
+		int prot = IOMMU_READ | IOMMU_WRITE;
+		dma_addr_t start, limit, iova;
+		struct resource res;
+
+		ret = of_address_to_resource(it.node, 0, &res);
+		if (ret < 0) {
+			dev_err(dev, "failed to parse memory region %pOF: %d\n",
+				it.node, ret);
+			continue;
+		}
+
+		/* check that region is not empty */
+		if (resource_size(&res) == 0) {
+			dev_dbg(dev, "skipping empty memory region %pOF\n",
+				it.node);
+			continue;
+		}
+
+		start = ALIGN(res.start, page_size);
+		limit = ALIGN(res.start + resource_size(&res), page_size);
+
+		for (iova = start; iova < limit; iova += page_size) {
+			phys_addr_t phys;
+
+			/* check that this IOVA isn't already mapped */
+			phys = iommu_iova_to_phys(dom, iova);
+			if (phys)
+				continue;
+
+			ret = iommu_map(dom, iova, iova, page_size,
+					prot);
+			if (ret < 0) {
+				dev_err(dev, "failed to map %pad for %pOF: %d\n",
+					&iova, it.node, ret);
+				continue;
+			}
+		}
+
+		dev_dbg(dev, "identity mapped memory region %pR\n", &res);
+		count++;
+	}
+
+	return count;
+}
+
+static bool arm_smmu_identity_unmap_regions(struct arm_smmu_device *smmu,
+					    struct device_node *np)
+{
+	struct device *dev = smmu->dev;
+	struct of_phandle_iterator it;
+	unsigned long page_size;
+	int ret;
+	bool unmapped = false;
+
+	page_size = 1UL << __ffs(smmu->identity->pgsize_bitmap);
+
+	/* parse memory regions and add them to the identity mapping */
+	of_for_each_phandle(&it, ret, np, "memory-region", NULL, 0) {
+		dma_addr_t start, limit, iova;
+		struct resource res;
+
+		ret = of_address_to_resource(it.node, 0, &res);
+		if (ret < 0) {
+			dev_err(dev, "failed to parse memory region %pOF: %d\n",
+				it.node, ret);
+			continue;
+		}
+
+		/* check that region is not empty */
+		if (resource_size(&res) == 0) {
+			dev_dbg(dev, "skipping empty memory region %pOF\n",
+				it.node);
+			continue;
+		}
+
+		start = ALIGN(res.start, page_size);
+		limit = ALIGN(res.start + resource_size(&res), page_size);
+
+		for (iova = start; iova < limit; iova += page_size) {
+			if (!iommu_unmap(smmu->identity, iova, page_size)) {
+				dev_err(dev,
+					"failed to unmap %pad for %pOF\n",
+					&iova, it.node);
+				continue;
+			}
+		}
+
+		dev_dbg(dev, "identity unmapped memory region %pR\n", &res);
+		unmapped = true;
+	}
+
+	return unmapped;
+}
+
+static void arm_smmu_identity_free_master(struct arm_smmu_device *smmu,
+					  u32 fwid)
+{
+	u16 sid, mask;
+	int ret;
+
+	sid = FIELD_GET(ARM_SMMU_SMR_ID, fwid);
+	mask = FIELD_GET(ARM_SMMU_SMR_MASK, fwid);
+
+	ret = arm_smmu_find_sme(smmu, sid, mask);
+	if (ret >= 0) {
+		arm_smmu_free_sme(smmu, ret);
+		if (--smmu->num_identity_masters)
+			arm_smmu_domain_free(smmu->identity);
+		return;
+	}
+
+	pr_err("failed to free identity mapped master: no SME for fwid 0x%x: %d\n",
+	       fwid, ret);
+}
+
 static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 {
 	int ret;
@@ -1203,9 +1332,20 @@ static int arm_smmu_attach_dev(struct iommu_domain *domain, struct device *dev)
 		goto rpm_put;
 	}
 
+	/* Recreate indentity mappings in the device's freshly created group */
+	ret = arm_smmu_identity_map_regions(domain, smmu, dev->of_node);
+	if (ret < 0) {
+		dev_err(dev, "failed to map identity regions (err=%d)\n", ret);
+		goto rpm_put;
+	}
+
 	/* Looks ok, so add the device to the domain */
 	ret = arm_smmu_domain_add_master(smmu_domain, fwspec);
 
+	/* Remove identity mappings from the original identity domain */
+	if (arm_smmu_identity_unmap_regions(smmu, dev->of_node))
+		arm_smmu_identity_free_master(smmu, fwspec->ids[0]);
+
 	/*
 	 * Setup an autosuspend delay to avoid bouncing runpm state.
 	 * Otherwise, if a driver for a suspended consumer device
@@ -1928,6 +2068,117 @@ static int arm_smmu_device_cfg_probe(struct arm_smmu_device *smmu)
 	return 0;
 }
 
+static int arm_smmu_identity_add_master(struct arm_smmu_device *smmu,
+					struct of_phandle_args *args)
+{
+	struct arm_smmu_domain *identity = to_smmu_domain(smmu->identity);
+	struct arm_smmu_smr *smrs = smmu->smrs;
+	struct device *dev = smmu->dev;
+	unsigned int index;
+	u16 sid, mask;
+	u32 fwid;
+	int ret;
+
+	/* skip masters that aren't ours */
+	if (args->np != dev->of_node)
+		return 0;
+
+	fwid = arm_smmu_of_parse(args->np, args->args, args->args_count);
+	sid = FIELD_GET(ARM_SMMU_SMR_ID, fwid);
+	mask = FIELD_GET(ARM_SMMU_SMR_MASK, fwid);
+
+	ret = arm_smmu_find_sme(smmu, sid, mask);
+	if (ret < 0) {
+		dev_err(dev, "failed to find SME: %d\n", ret);
+		return ret;
+	}
+
+	index = ret;
+
+	if (smrs && smmu->s2crs[index].count == 0) {
+		smrs[index].id = sid;
+		smrs[index].mask = mask;
+		smrs[index].valid = true;
+	}
+
+	smmu->s2crs[index].type = S2CR_TYPE_TRANS;
+	smmu->s2crs[index].privcfg = S2CR_PRIVCFG_DEFAULT;
+	smmu->s2crs[index].cbndx = identity->cfg.cbndx;
+	smmu->s2crs[index].count++;
+
+	smmu->num_identity_masters++;
+
+	return 0;
+}
+
+static int arm_smmu_identity_add_device(struct arm_smmu_device *smmu,
+					struct device_node *np)
+{
+	struct of_phandle_args args;
+	unsigned int index = 0;
+	int ret;
+
+	/* add stream IDs to the identity mapping */
+	while (!of_parse_phandle_with_args(np, "iommus", "#iommu-cells",
+					   index, &args)) {
+		ret = arm_smmu_identity_add_master(smmu, &args);
+		if (ret < 0)
+			return ret;
+
+		index++;
+	}
+
+	return 0;
+}
+
+static int arm_smmu_setup_identity(struct arm_smmu_device *smmu)
+{
+	struct arm_smmu_domain *identity;
+	struct device *dev = smmu->dev;
+	struct device_node *np;
+	int ret;
+
+	/* create early identity mapping */
+	smmu->identity = arm_smmu_domain_alloc(IOMMU_DOMAIN_UNMANAGED);
+	if (!smmu->identity) {
+		dev_err(dev, "failed to create identity domain\n");
+		return -ENOMEM;
+	}
+
+	smmu->identity->pgsize_bitmap = smmu->pgsize_bitmap;
+	smmu->identity->type = IOMMU_DOMAIN_UNMANAGED;
+	smmu->identity->ops = &arm_smmu_ops;
+
+	ret = arm_smmu_init_domain_context(smmu->identity, smmu);
+	if (ret < 0) {
+		dev_err(dev, "failed to initialize identity domain: %d\n", ret);
+		return ret;
+	}
+
+	smmu->num_identity_masters = 0;
+
+	identity = to_smmu_domain(smmu->identity);
+
+	for_each_node_with_property(np, "iommus") {
+		ret = arm_smmu_identity_map_regions(smmu->identity, smmu, np);
+		if (ret < 0)
+			continue;
+
+		/*
+		 * Do not add devices to the early identity mapping if they
+		 * do not define any memory-regions.
+		 */
+		if (ret == 0)
+			continue;
+
+		ret = arm_smmu_identity_add_device(smmu, np);
+		if (ret < 0)
+			continue;
+	}
+
+	return 0;
+}
+
 struct arm_smmu_match_data {
 	enum arm_smmu_arch_version version;
 	enum arm_smmu_implementation model;
@@ -2185,6 +2436,10 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	if (err)
 		return err;
 
+	err = arm_smmu_setup_identity(smmu);
+	if (err)
+		return err;
+
 	if (smmu->version == ARM_SMMU_V2) {
 		if (smmu->num_context_banks > smmu->num_context_irqs) {
 			dev_err(dev,
@@ -2227,8 +2482,8 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
 	}
 
 	platform_set_drvdata(pdev, smmu);
-	arm_smmu_device_reset(smmu);
 	arm_smmu_test_smr_masks(smmu);
+	arm_smmu_device_reset(smmu);
 
 	/*
 	 * We want to avoid touching dev->power.lock in fastpaths unless
diff --git a/drivers/iommu/arm-smmu.h b/drivers/iommu/arm-smmu.h
index 8d1cd54d82a6..607a637cf948 100644
--- a/drivers/iommu/arm-smmu.h
+++ b/drivers/iommu/arm-smmu.h
@@ -305,6 +305,9 @@ struct arm_smmu_device {
 
 	/* IOMMU core code handle */
 	struct iommu_device		iommu;
+
+	struct iommu_domain		*identity;
+	int				num_identity_masters;
 };
 
 enum arm_smmu_context_fmt {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
