Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 505C91B8184
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:06:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZiUGtINfElMyYd1gFQN38RnBcelBfzIUEDp7EdyBQ4=; b=crYO36CwWiyRdA
	9QERauULCoelgCMBi32qRidnskIg4TNbS6aln9c59wOjvGzlbmuhcwj6W0/I0Lm5vplxa73gQW9s3
	2goGmMRjZkhbs/J3fUUZzWWjsKR9apXUtZies4dsmg7FZE6UViHBWfC8eZ54GvdcE93pc3jRHFkZm
	TjAVWyH2zmLjn9GgzTcuJS9R00AO7K33cpgsciuOikf1VyxAk5mWTJesYwVlmdEKTvVMzJg5N98U9
	krfz9WjKf99C1qB36mwsLFG2v/fTLipdlsaGv0Be7GAL833wV/VPotkmbgO2ATqfRGQb3Ng/q4HRA
	DsKn0xbQRckX0sKGgATA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Wb-0000DW-DS; Fri, 24 Apr 2020 21:06:17 +0000
Received: from mail-eopbgr760052.outbound.protection.outlook.com
 ([40.107.76.52] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PB-0006U4-1R
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=imyYYECLKB1q92oEKIPK/gd+OYIai8EgE2FT1m2cPUz0K+7b/NH+rIZhDKWTxJE1LiqDWJuUtfa8Zrg2j2zhIIsYrzpEJ6kqEwt/hjE85i+8YagJuxAVQ/W0354DZlqxIrcDP84/AkdTL0VEN04rJEPlUFUzYj/XtXfrUcrQTdJDTOmr8wYGCOsF7aca3mODQ1GXdSg5Mz5fceKQsIaaV87SgtIxkgJGY1qKgctBEc3utIngNFSLq3OaebvX+uUq0iJ7g1YJT3eMqIbLd30RxfbQOBDnVz4Uv28QSXsoj703vlSKJjjVxpEBoqe33xv/p2pGri2F/WWPNiTDm9yuLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8EO8D85y3kp2Eyi2uHgm2xa13zxB3F8jiDLQ5TRv/lM=;
 b=lXKOutCVpLeqAvshoLG7yfYWcIFdu7LcTG4qrcDVhL+CwAvU0K95DPcoqFhi4AoN3wQYpEK+ECr8lFQ4OhoqfGfi31oqCtwpm2Q5MsbkruCSys1sf7Kmvm9r4dnj1OKbpz2x9FcPwVnLm4qBMU3c/3QiT80YQ95Bz96OCVjTAKm+nKUMIft0UBUMoKabGfvBF4XGivUPJufVH/Hzx28MrtbgZaLkI8w973YL4bzJL8edCz0E/V+R+ZtDGuldrclaltiJaI/kbbMwGZtRzU5QXZBIIRReaAQ20X07LNwh2TdmilEoPUv+7vsI5qFilRD6AZJW4w4cpWrr269wqJd4pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8EO8D85y3kp2Eyi2uHgm2xa13zxB3F8jiDLQ5TRv/lM=;
 b=O/z5ujLlQ28Ir0TW2cl8/YFLZke9a9OCrYD6SVq3opB6bRewjiG4ndEwSQILWUtz1pwmF1pDcGK81AQjWQ3dBhuszusFbjg/XfR7ox4S5k4dOMEjMZkB1zJjIfMUs4OVU+e/cWE9GKj6/AXAgzdFby56pOFyKfSY4t7HkUKvkas=
Received: from CY4PR01CA0005.prod.exchangelabs.com (2603:10b6:903:1f::15) by
 BL0PR02MB6548.namprd02.prod.outlook.com (2603:10b6:208:1c5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from CY1NAM02FT029.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:1f:cafe::78) by CY4PR01CA0005.outlook.office365.com
 (2603:10b6:903:1f::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT029.mail.protection.outlook.com (10.152.75.143) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:33
 +0000
Received: from [149.199.38.66] (port=33452 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002Dp-S3; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-RU; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJZt026331; 
 Fri, 24 Apr 2020 13:58:20 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-NZ; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 17/25] firmware: xilinx: Remove eemi ops for release_node
Date: Fri, 24 Apr 2020 13:57:59 -0700
Message-Id: <1587761887-4279-18-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
References: <1587761887-4279-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(46966005)(82310400002)(5660300002)(7416002)(81156014)(9786002)(356005)(70586007)(70206006)(8676002)(81166007)(47076004)(7696005)(2906002)(26005)(36756003)(107886003)(6636002)(426003)(478600001)(54906003)(336012)(82740400003)(2616005)(8936002)(6666004)(186003)(4326008)(316002)(44832011);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ef4d5b52-e877-4fa7-6b62-08d7e8923fef
X-MS-TrafficTypeDiagnostic: BL0PR02MB6548:
X-Microsoft-Antispam-PRVS: <BL0PR02MB6548BC172194FABB92A83C16B8D00@BL0PR02MB6548.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:605;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uTrHlZttL2vRjbbqcFQ2179QNl74e3FoG+XHimKvVB7OcPSgiUu6AEQnmKolZ6ZGRsPNHzx+ZZ2nBOTLLBjcD8juEgfd3EcRoz6vDNoOYxELCd6gECqlaUW4eQXvNc3GUEoTciIGcmpIOvLkWOr/RSgvg7B9WYkhjcAiT4Arh1bMG/wl1eXBpsRuJe/Ebb/IsQAcSypPxGdWpsJA7UNX18+olTBBkD3wrFudSPqQMe5C4GPsfAXdne1Yleca4OeUfB8oUK5Y/OS9qo/YgXG8uvLUHZKoKNamgs9rL0JnLErpYLLFPizJA82w5MMoWhR44yrQHsvQpxBPUOKGaDlqsWDA5PUOTlfzVtxHUu9CmUnAFaOsC8Ij2t5ohK4OngvjdS2sIAKMnanDqMVjsSajCP///tQdNc5NZZoIcD/zYwOWykg06BuPZyHhJ8YjAVmlTIqCaKPSPgWe9+jB6A1xGGbg6BYDXgSWAxHAvLyI4kYszSJZWptDXVRQeq+ZMztmS/UeOVNSWZYNQ4dcGWqVsQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:33.1594 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ef4d5b52-e877-4fa7-6b62-08d7e8923fef
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB6548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135837_126234_5294140C 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.52 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.52 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
