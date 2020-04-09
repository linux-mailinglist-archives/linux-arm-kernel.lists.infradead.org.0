Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48C161A3A42
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:13:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZiUGtINfElMyYd1gFQN38RnBcelBfzIUEDp7EdyBQ4=; b=BC+kx8Qi5ln6Oq
	k4oUPcydV/qAHYrqu7A1fBb1Y83ZDKxYx5U9F90R1YDstIs2e1mZAgAdnYLhoeELrw/UMV9iWoUHL
	fGnzR5DKFWxVwF6AqGeXooPlFQzO4JvOEDlnwQ3YKmIefEujEHhwWI1i95+t9bcctVsdv1AyHJSFg
	Ay332ExpIElHW1LgS5DDQxH4EwXl7puULcd42BM5N57c5c3bUzdfZHVmlIBN7ndVqgiDKuv926LPz
	LRq4BWof+Y9gaoxEQ8EQ8BgDAw7JRHuG86rJ+UAttUz8a0IUBfKdij4Tw+C/0X3G8aqrjI9iigW5v
	YR1HwqkOtHtAbIVYmrRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMccM-0007e2-Gf; Thu, 09 Apr 2020 19:13:38 +0000
Received: from mail-co1nam11on2049.outbound.protection.outlook.com
 ([40.107.220.49] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007KF-6F
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:12:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHRguVI/gfST7MTM6UPUSmb0j9HD7ntmzfvs5EkChVFqjur2GrsYl0z41wH+U7BBJz1flxzczZM23aAKrXgqXQU27cAGelCm84lzUj27vinp5zkD3qDZrXZV/vsrEes0lk8EexKv4x6vI8yf1zEaHP+qRsnNR9MpHu4Wri5tRpb/93+/5K8ScycLJiBW6Eop2A6O8RswflYA9M1Fh9SWCbFXpH4sktJHBD8/p2y0DrHaEv0EsCWAa3EeX8LjqRwX41ROYUPO6HQ0uASpZLlp4u7lRFWhMyJomZCnuU/iAlMLO+uagS/o2RFHU9DmS08EMb0VZdNsvtSTtBNvXpJFdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8EO8D85y3kp2Eyi2uHgm2xa13zxB3F8jiDLQ5TRv/lM=;
 b=l5aQutscHbEvTdtHDToVUU4fJFTRB+j9juaSpmbFfTgvi46Ja0BYACTPrKEN66oN3xTf4svbkCb8HHPQ9/L0tTxFHMjp0i2FH9JrhnFaH1GWhPcmJlgBdyVUwgIOJpkSMcrIOJcGUwAjBqljsr7Pkg6ZoamSqw7FiVwpktfCQmmk9Rf5muvvwTfniXuLNn8IUgsmlnDw4bEy/DvAiqm+j5DpOGt6CnuCAeQ7GKnR5+ztu8K1F43UI4oi6xMttRx1e2xVOYn1Zq8FYpHXtHrSSLUHFdD5jKt1PC5I9hx3SJTj7zW3qs58R2qTbE+HZ5BBuNkW+Xm7ovh411QjxmRICQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8EO8D85y3kp2Eyi2uHgm2xa13zxB3F8jiDLQ5TRv/lM=;
 b=slhIUNaOAZMrkzmCA3zgNJ+YkCJZjami6F1OytNBIfJBy3cF0TltZghk9dbzYsGWR3ETADeVq5uDRS6k0e1Hnyr4WP+x4Gn99kxpxFnqYkT+VlppCWkVFjEeZTZj1Ww0pFhEqy3PiUVGTCROJXUlK2ktQ9miSH/g+1kVYRu8l2M=
Received: from MN2PR19CA0021.namprd19.prod.outlook.com (2603:10b6:208:178::34)
 by BN8PR02MB5764.namprd02.prod.outlook.com (2603:10b6:408:bc::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Thu, 9 Apr
 2020 19:12:50 +0000
Received: from BL2NAM02FT044.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:178:cafe::53) by MN2PR19CA0021.outlook.office365.com
 (2603:10b6:208:178::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.16 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT044.mail.protection.outlook.com (10.152.77.35) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:49
 +0000
Received: from [149.199.38.66] (port=44272 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-0005zz-0e; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-FO; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-OY; Thu, 09 Apr 2020 12:12:42 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 17/25] firmware: xilinx: Remove eemi ops for release_node
Date: Thu,  9 Apr 2020 12:12:06 -0700
Message-Id: <1586459534-8997-18-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
References: <1586459534-8997-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(396003)(39860400002)(136003)(346002)(376002)(46966005)(47076004)(82740400003)(44832011)(478600001)(9786002)(7696005)(8936002)(107886003)(6636002)(7416002)(8676002)(81156014)(5660300002)(4326008)(81166007)(70206006)(6666004)(336012)(356004)(426003)(2616005)(186003)(316002)(36756003)(26005)(2906002)(70586007)(54906003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b048f09-e131-4d65-bc6a-08d7dcb9fed5
X-MS-TrafficTypeDiagnostic: BN8PR02MB5764:
X-Microsoft-Antispam-PRVS: <BN8PR02MB5764FF9FE48EF543F151CBF8B8C10@BN8PR02MB5764.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:605;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jsi1jnOWt7gYgOiVcxVI94lLhy+X0aZwDe+eJq16UoUl40jR4sXQo1LmHmZfZZ4x9BDhFHbLWhAIzul5gkkzhG5Tj7yBgpYEl5ZvAJOj5Ufqfr/07jqwXG+vjlqxEAdCofEdxNczksHB7r4A0Z8dHIxGApi4qJDXMt7UswW0rh3AKwbXr6b/tn03hmGbpmLr+naWUk8yjIl+vaD1DHcyOet202H8pvKDl6hjqi1T0Jlov16YJlKSwSQO5u3lBvmM9YnfScQmaABrAWwcOiQxYNKfJMwdC3BWH0LzCqPlyTqHnkVckte88cpbYqJ6wId6ysopBClERHfqv907LUebEEsEY5RMvrAgOcHnv5+h7z/2ttSXH67m12w3d27nwCaVI0/2DbgSfivl8Bq+7r6NRE9jdPkslwwo1ThlDRYyGgHrla/MLb3eBMR7TCH7smonuD6c+LWBJuN8ncjDFlkc1NP2A1XVO75ekpAOpvFNoIwZ6huTjJhfib0f//A/xTcjw4Fhfpk5VDssuT69/ZykCw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:49.8540 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b048f09-e131-4d65-bc6a-08d7dcb9fed5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5764
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_234829_A60E982B 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.49 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.49 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Use direct function call instead of using eemi ops for release_node.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c       | 4 ++--
 drivers/soc/xilinx/zynqmp_pm_domains.c | 5 +----
 include/linux/firmware/xlnx-zynqmp.h   | 6 +++++-
 3 files changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index e65ee76..ce65bafd 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -760,10 +760,11 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_request_node);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_release_node(const u32 node)
+int zynqmp_pm_release_node(const u32 node)
 {
 	return zynqmp_pm_invoke_fn(PM_RELEASE_NODE, node, 0, 0, 0, NULL);
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_release_node);
 
 /**
  * zynqmp_pm_set_requirement() - PM call to set requirement for PM slaves
@@ -810,7 +811,6 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 
 static const struct zynqmp_eemi_ops eemi_ops = {
-	.release_node = zynqmp_pm_release_node,
 	.set_requirement = zynqmp_pm_set_requirement,
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
diff --git a/drivers/soc/xilinx/zynqmp_pm_domains.c b/drivers/soc/xilinx/zynqmp_pm_domains.c
index cf4eed0..20bee26 100644
--- a/drivers/soc/xilinx/zynqmp_pm_domains.c
+++ b/drivers/soc/xilinx/zynqmp_pm_domains.c
@@ -196,16 +196,13 @@ static void zynqmp_gpd_detach_dev(struct generic_pm_domain *domain,
 	int ret;
 	struct zynqmp_pm_domain *pd;
 
-	if (!eemi_ops->release_node)
-		return;
-
 	pd = container_of(domain, struct zynqmp_pm_domain, gpd);
 
 	/* If this is not the last device to detach there is nothing to do */
 	if (domain->device_count)
 		return;
 
-	ret = eemi_ops->release_node(pd->node_id);
+	ret = zynqmp_pm_release_node(pd->node_id);
 	/* If releasing a node fails print the error and return */
 	if (ret) {
 		pr_err("%s() %s release failed for node %d: %d\n",
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index fb7e5c9..bfa8cca 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*release_node)(const u32 node);
 	int (*set_requirement)(const u32 node,
 			       const u32 capabilities,
 			       const u32 qos,
@@ -334,6 +333,7 @@ int zynqmp_pm_init_finalize(void);
 int zynqmp_pm_set_suspend_mode(u32 mode);
 int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
 			   const u32 qos, const enum zynqmp_pm_request_ack ack);
+int zynqmp_pm_release_node(const u32 node);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -436,6 +436,10 @@ static inline int zynqmp_pm_request_node(const u32 node, const u32 capabilities,
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_release_node(const u32 node)
+{
+	return -ENODEV;
+}
 #endif
 
 #endif /* __FIRMWARE_ZYNQMP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
