Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FA21A3A5D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:16:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lCkR7dKZjGoIzKH+j9zu9Sy+ltsVDryvmhsF5FhLHiM=; b=qi8kf7SUchZ9C5
	Ouca9KJher0zPgyVZ00VJlqW9tfH3DsriDKBGBSvwE25X4rR52gSgXrnWCVPkeM0KK6vsnqcqH7ju
	rGbtimvAfXIpzlMVs5/QF0K88gropj/lZwOc9EoA1FuzICNgQeUPtXswfI7xIGi3/mkimAEZzq5U1
	OzgT1x1IkuuG0RPuVDZkisLHxA/Po0mUNQ08etcPZnxnI/876Jj8bgnNlA4Mz0hzzQZlUxCaFAeLi
	LLH9DctQ1P3AxWIifTtMFB0bmbcNUXrrFWw5P3BtuZZi0ePJsTQce74pSg+DERJSTQD+AbsGjyJmf
	tqH4xhBnHR4Sj7xcpXZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcfE-0004O3-Ux; Thu, 09 Apr 2020 19:16:36 +0000
Received: from mail-bn8nam12on2043.outbound.protection.outlook.com
 ([40.107.237.43] helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbe-0007Kw-8b
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:13:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JOTNWcvE4J+xJHKWLOzzgNAH9yBoEelcNhoF6PlikYZDD7gyuxRkrRhdaGbf+/dFU+sUkXDI7A9uhwhjwo4bEmGHRJhdI2e90t2VNjcm9GZiOD3lGpALQWqDo7FAFbF7C/6Bv6wSbwJ1bjGJGshh98VWj2yUj+W3pI7PhWsmgLXGCT3X9NQ6/My6bo2rQdD1UMzLTsQIkGTPYdzWMYuYFi8r2kqzdes15tJBZ1yyEKLQGvAdzOIor1rC0K2wil0euRwW/w1VJZ/oOEx/eOdyKb0wMBgFi+gq693cYDrFyytc/DNktw+6steX9ZuiHauuKYpUJWkxxMxAmY+3bU0NUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ycWjZ2wWRxXkyvkiFOo2XJrTwIQY4gNkXIKVdi4TvV8=;
 b=CB0e1Qb/3t9qwkLGviHIuKJ1JwbLmqeNkR3/S7cjb25ua08fNgEPfiE4QwSrZhmKn7fw1SBWKsbRXGZvHEH+NieV3aaONQFX7NbxOo+6A+n0cJ1zhLlzihxa4Z6bm0NoehZZ1FbCqhS+imeCp8F6iKty+dNeLIfzjJxxo7Isp10e+ctnI2pqndA+nolG7NeBCv5iQokZ7WJYyMNGapnZJYM2DlUX1pXvsdRWJYMOzEo7gRZOGL3zF0JBLxMsOIATWu+sRJ+FJ38nPiFoeFngj6qMb0WuYCQo/MU5095yREQQ83979QVsU9i7IJVbL5j8I2z6fMpagN6Ei0gz51KBOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ycWjZ2wWRxXkyvkiFOo2XJrTwIQY4gNkXIKVdi4TvV8=;
 b=OLT2cM0CkDty8YK6PU/J7GlnmIVXZCapWxhl6Bz7u6FMPGDVbdATZ2TPEIB2wyMtQXPOC1ybBz0ZYx7mcheZqvLYweKcxPBCOc8C695jDr0Tvaea8RlZjYgTizFHzqbVfydBQIM9FzVc6LHu4zFOkgUyU0WhIaM+A5IH6gg6JeM=
Received: from BL0PR02CA0086.namprd02.prod.outlook.com (2603:10b6:208:51::27)
 by SN6PR02MB4831.namprd02.prod.outlook.com (2603:10b6:805:94::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.21; Thu, 9 Apr
 2020 19:12:50 +0000
Received: from BL2NAM02FT026.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:51:cafe::7c) by BL0PR02CA0086.outlook.office365.com
 (2603:10b6:208:51::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15 via Frontend
 Transport; Thu, 9 Apr 2020 19:12:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT026.mail.protection.outlook.com (10.152.77.156) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:50
 +0000
Received: from [149.199.38.66] (port=44307 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-00060G-Bf; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-QE; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-V3; Thu, 09 Apr 2020 12:12:43 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 20/25] firmware: xilinx: Remove eemi ops for fpga related
 APIs
Date: Thu,  9 Apr 2020 12:12:09 -0700
Message-Id: <1586459534-8997-21-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(46966005)(316002)(478600001)(70206006)(81156014)(7696005)(9786002)(70586007)(54906003)(6666004)(8936002)(107886003)(426003)(4326008)(2616005)(186003)(336012)(2906002)(5660300002)(26005)(356004)(44832011)(47076004)(7416002)(36756003)(6636002)(81166007)(82740400003)(8676002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d7a83e6b-46b8-4b56-bbdd-08d7dcb9ff0e
X-MS-TrafficTypeDiagnostic: SN6PR02MB4831:
X-Microsoft-Antispam-PRVS: <SN6PR02MB4831FD39C6829D16B67A0FABB8C10@SN6PR02MB4831.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:115;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9IjMHs4y2iHejWmTKkDVaXuygVdERxRlZthSTZCz5oHHEdz+sRApt4HvLF3apwFJwKaLXUhdBWrUoQ2cVQDjjsqgKUPi60FgX0hcQmQm7dpKAiAxqL4EAlj3uLs4tqu6XYsvT58tsve/Rd+sZmcxEIW8z9mj/QDnY6M7PsLAmcAJht9P+SW+un1f4SLh2JaF6tF9tcXwJWE4bA2r/ZIXcOdr2rDWRnUKgDll5hgfue4miBlhg+ivjheLNLFHH5m+3at23y6XzkutCVCB9O9AejCKdJDrbd3v7eTf6uw7F6gM3sL1gw7ielV9udZ/UNEW+2xLLE2Z91+mFxg38T2x9rEci79bvIQS8l00fVJvLHYuG/bM9f20yeb4wtWFuTvH94MPIriyc653RrGDXma+k8i/pH8RlQjyjSlp5DO9HONc9ZCC4yhtjPQyozRVEX004t8WZAP3PN0WVguZID54q+b6MGN9l3f0FuaPBEgz9AKdYwv3v6sZWIHhFjMjzkhLDoolHUTrAHCWH1nIy5uFbA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:50.2270 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d7a83e6b-46b8-4b56-bbdd-08d7dcb9ff0e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4831
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121254_302847_8BA7712E 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.237.43 listed in list.dnswl.org]
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

Use direct function call instead of using eemi ops for fpga related
APIs. Also remove eemi ops structure.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 30 ++----------------------------
 drivers/fpga/zynqmp-fpga.c           | 12 ++----------
 drivers/spi/spi-zynqmp-gqspi.c       |  5 -----
 include/linux/firmware/xlnx-zynqmp.h | 16 +++++++++++-----
 4 files changed, 15 insertions(+), 48 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index e6e7b63..ef7ba32 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -24,8 +24,6 @@
 #include <linux/firmware/xlnx-zynqmp.h>
 #include "zynqmp-debug.h"
 
-static const struct zynqmp_eemi_ops *eemi_ops_tbl;
-
 static bool feature_check_enabled;
 static u32 zynqmp_pm_features[PM_API_MAX];
 
@@ -671,8 +669,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_reset_get_status);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_fpga_load(const u64 address, const u32 size,
-			       const u32 flags)
+int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags)
 {
 	return zynqmp_pm_invoke_fn(PM_FPGA_LOAD, lower_32_bits(address),
 				   upper_32_bits(address), size, flags, NULL);
@@ -687,7 +684,7 @@ static int zynqmp_pm_fpga_load(const u64 address, const u32 size,
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_fpga_get_status(u32 *value)
+int zynqmp_pm_fpga_get_status(u32 *value)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -812,26 +809,6 @@ int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
 
-static const struct zynqmp_eemi_ops eemi_ops = {
-	.fpga_load = zynqmp_pm_fpga_load,
-	.fpga_get_status = zynqmp_pm_fpga_get_status,
-};
-
-/**
- * zynqmp_pm_get_eemi_ops - Get eemi ops functions
- *
- * Return: Pointer of eemi_ops structure
- */
-const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
-{
-	if (eemi_ops_tbl)
-		return eemi_ops_tbl;
-	else
-		return ERR_PTR(-EPROBE_DEFER);
-
-}
-EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
-
 static int zynqmp_firmware_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -878,9 +855,6 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
 	pr_info("%s Trustzone version v%d.%d\n", __func__,
 		pm_tz_version >> 16, pm_tz_version & 0xFFFF);
 
-	/* Assign eemi_ops_table */
-	eemi_ops_tbl = &eemi_ops;
-
 	zynqmp_pm_api_debugfs_init();
 
 	ret = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE, firmware_devs,
diff --git a/drivers/fpga/zynqmp-fpga.c b/drivers/fpga/zynqmp-fpga.c
index b8a88d2..5be8685 100644
--- a/drivers/fpga/zynqmp-fpga.c
+++ b/drivers/fpga/zynqmp-fpga.c
@@ -40,16 +40,12 @@ static int zynqmp_fpga_ops_write_init(struct fpga_manager *mgr,
 static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
 				 const char *buf, size_t size)
 {
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 	struct zynqmp_fpga_priv *priv;
 	dma_addr_t dma_addr;
 	u32 eemi_flags = 0;
 	char *kbuf;
 	int ret;
 
-	if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_load)
-		return -ENXIO;
-
 	priv = mgr->priv;
 
 	kbuf = dma_alloc_coherent(priv->dev, size, &dma_addr, GFP_KERNEL);
@@ -63,7 +59,7 @@ static int zynqmp_fpga_ops_write(struct fpga_manager *mgr,
 	if (priv->flags & FPGA_MGR_PARTIAL_RECONFIG)
 		eemi_flags |= XILINX_ZYNQMP_PM_FPGA_PARTIAL;
 
-	ret = eemi_ops->fpga_load(dma_addr, size, eemi_flags);
+	ret = zynqmp_pm_fpga_load(dma_addr, size, eemi_flags);
 
 	dma_free_coherent(priv->dev, size, kbuf, dma_addr);
 
@@ -78,13 +74,9 @@ static int zynqmp_fpga_ops_write_complete(struct fpga_manager *mgr,
 
 static enum fpga_mgr_states zynqmp_fpga_ops_state(struct fpga_manager *mgr)
 {
-	const struct zynqmp_eemi_ops *eemi_ops = zynqmp_pm_get_eemi_ops();
 	u32 status;
 
-	if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_get_status)
-		return FPGA_MGR_STATE_UNKNOWN;
-
-	eemi_ops->fpga_get_status(&status);
+	zynqmp_pm_fpga_get_status(&status);
 	if (status & IXR_FPGA_DONE_MASK)
 		return FPGA_MGR_STATE_OPERATING;
 
diff --git a/drivers/spi/spi-zynqmp-gqspi.c b/drivers/spi/spi-zynqmp-gqspi.c
index 7412a30..811c97a 100644
--- a/drivers/spi/spi-zynqmp-gqspi.c
+++ b/drivers/spi/spi-zynqmp-gqspi.c
@@ -135,7 +135,6 @@
 
 #define SPI_AUTOSUSPEND_TIMEOUT		3000
 enum mode_type {GQSPI_MODE_IO, GQSPI_MODE_DMA};
-static const struct zynqmp_eemi_ops *eemi_ops;
 
 /**
  * struct zynqmp_qspi - Defines qspi driver instance
@@ -1015,10 +1014,6 @@ static int zynqmp_qspi_probe(struct platform_device *pdev)
 	struct zynqmp_qspi *xqspi;
 	struct device *dev = &pdev->dev;
 
-	eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(eemi_ops))
-		return PTR_ERR(eemi_ops);
-
 	master = spi_alloc_master(&pdev->dev, sizeof(*xqspi));
 	if (!master)
 		return -ENOMEM;
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 11d7aef..44ffb4f 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -293,16 +293,11 @@ struct zynqmp_pm_query_data {
 	u32 arg3;
 };
 
-struct zynqmp_eemi_ops {
-	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
-	int (*fpga_get_status)(u32 *value);
-};
 
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
 #if IS_REACHABLE(CONFIG_ZYNQMP_FIRMWARE)
-const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
 int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
@@ -333,6 +328,8 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 			      const u32 qos,
 			      const enum zynqmp_pm_request_ack ack);
 int zynqmp_pm_aes_engine(const u64 address, u32 *out);
+int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags);
+int zynqmp_pm_fpga_get_status(u32 *value);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -450,6 +447,15 @@ static inline int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_fpga_load(const u64 address, const u32 size,
+				      const u32 flags)
+{
+	return -ENODEV;
+}
+static inline int zynqmp_pm_fpga_get_status(u32 *value)
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
