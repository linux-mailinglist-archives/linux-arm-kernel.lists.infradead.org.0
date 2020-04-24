Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5461B8180
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:05:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vay3I7JYLvplzGRy2zIsAdBMyvMuEkncXPfybVXahYg=; b=AFcM8DZdgRGnUO
	S4XDChLMkTuXBxkG+ddRvaboacRkrOC6fnm+4wf6zSAtxM+wBoXbQmzmtbHz2t895X19gq1hhx+mb
	OqzcalG1JQ9kxFJw9oulSRyxfGyiRnKiWgJTAkPbbDLRbvZS44S8cQZ6NzYbpboQ059VzxvvBvre+
	WtuEShvqeP13NhNSUUgEYuptmbKT8V1opux6phKqphNqcsR/Pk5CEY+Ajy7VJtOhtjy8a7fJFmJ/l
	mcMVbq3MP/UPEwV0yRcmfDkhtTgDB7A7ED5vn5hJb6z9gVemN3fI+RmPZMfH0uUrskmImdAUX6r3B
	/cnaemT71WhtEsPyzvcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Vy-00089n-TG; Fri, 24 Apr 2020 21:05:38 +0000
Received: from mail-eopbgr760075.outbound.protection.outlook.com
 ([40.107.76.75] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PA-0006T4-SX
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GSxTaFuqj0sAwulWucLCQtvB239WJpCT6E2D63K5+c22sHEkzNfgauuhwtbqif47OrB+0koTuJBDr3ZPfMVsZ4eoDouz0DLC3RGluZL/bQzN7GwjTqA3SZbJxlXeR4oDfHkciLerdG9k4ZaDebDSJi7N9Z8UkUdu6BU4ZNQQJZTy0NBCJ5WAicrrBtp7aOLq4ZCPtADnepqMH9/IPymDuXu3oIs4UmapSD9bEPAYe2OB/oy2QTCY4YJTbP8OsFn3mk9apj9rKwrdf/w13vCSNU58vjD41F3CzGHsiKfbQWwFqFPNqZqw3qs3B+vq0mWcKkSFItIjdr/qkJJ3EcQzOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3F0QzgffHEwAyhvWZOLskfgO/Ec0CtEhk/s1U8GCy3Q=;
 b=GIxZb/tgBFmj8F0eKMCDnd4/Q/LaeTrxpdlDlCWs+vCYnWyniC/7muMkY7619k5ayv7uqakgCcYqqm8cbr+gD8fOAuAS28YE33rFpN94RSB02FI2wmiztPqO4103U6U4rUWO543YGDtVFOOdqjquP5MvKUiZQMqPKwr/zG28j6gTaaYecSycFvisnqhO5b4Z7g7ndhgAbBundknGOTd2kkoBBX23rhkp2yYNHJG59EFQeRWrC0LZZmVDL7IAe/qkJZS4lrh4xMmPIa2fCNmSGgVIQQIoYyvs9YImNmq1q91A3olgLIrOspyb+kaxwGBKx2imipca8VO1JsM5SJ9R+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3F0QzgffHEwAyhvWZOLskfgO/Ec0CtEhk/s1U8GCy3Q=;
 b=oBQo5p3ipAT4Dz+xZboJr5KAtqtcl6zbQEippPDiIF/u4IcvfE9Kc4YFoglZ1D379Uz8yJiW8gQ14qvUrqC+MDS1Ad0AGpCCM4cxcikRj1jL0tpFtqfwFh9U+PnDEvW2WevlfwmKaJ/LNNjKXAb+5JVX5PGN4zOBt+DFJugVHrQ=
Received: from CY4PR16CA0020.namprd16.prod.outlook.com (2603:10b6:903:102::30)
 by CY4PR02MB2230.namprd02.prod.outlook.com (2603:10b6:903:f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from CY1NAM02FT007.eop-nam02.prod.protection.outlook.com
 (2603:10b6:903:102:cafe::a8) by CY4PR16CA0020.outlook.office365.com
 (2603:10b6:903:102::30) with Microsoft SMTP Server (version=TLS1_2,
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
 CY1NAM02FT007.mail.protection.outlook.com (10.152.75.5) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:33
 +0000
Received: from [149.199.38.66] (port=33463 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ny-0002Ds-0Q; Fri, 24 Apr 2020 13:57:22 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-W0; Fri, 24 Apr 2020 13:58:33 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwK9p030399; 
 Fri, 24 Apr 2020 13:58:20 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-UA; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 20/25] firmware: xilinx: Remove eemi ops for fpga related
 APIs
Date: Fri, 24 Apr 2020 13:58:02 -0700
Message-Id: <1587761887-4279-21-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(4636009)(39860400002)(396003)(346002)(376002)(136003)(46966005)(36756003)(44832011)(54906003)(426003)(336012)(107886003)(7416002)(316002)(9786002)(2906002)(4326008)(7696005)(82740400003)(26005)(81156014)(478600001)(47076004)(8936002)(356005)(5660300002)(2616005)(8676002)(81166007)(70206006)(6666004)(70586007)(186003)(82310400002)(6636002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fb39cf2b-1cab-4367-0633-08d7e8923ffe
X-MS-TrafficTypeDiagnostic: CY4PR02MB2230:
X-Microsoft-Antispam-PRVS: <CY4PR02MB22308C09E1655BA481DC3CAFB8D00@CY4PR02MB2230.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:115;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RsgFfk+2CnPT2yErspK1E8Ok5Ch60/7NCNILVE5U/mcwclwrLJFSTK8gInZ0RTqK7s6zIwYD3zLxYPSgCqb4CgEvHT1YxDqaU6I7BpTtDMWoszZZSeqXtfYDLb3YPP/MmNuuW6bYRzi80wsjd0S+cktZDBzKpqn8NwgLHhKSx+MjEo8rLlhHQSXEO1JMLL1i/RE7F90Nik0E76EMj8noZl8/8NRkn1wGi0111bYfjlsN2lx43eAkQUdbYLwpcjXOfQpZ6PtiHhot5nFQI0QzIpXNphRBm/zh1pgD1EFtPSo+kKFdz9EfHV1pWwytqNmipHoaa1KeyCzbqiJLsoBN5JUKR/yyJiLPAAwqmFY54SNxEoYQe30PHRFuHfG5S4sG2foLuuCJlz6+5lmrahcJk8VfYLG+IgMCX12jLprhbZoPjSiGEy1Ez5xb7APMi58xQc1tc/tdU8Q795xq4oJziuJ/oZrloU6e9Xuk8bXullMjk3Q/9Ki9pMqJJbRv4jdPFjpYKjdbKMmIt/6y+JcUPw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:33.2546 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fb39cf2b-1cab-4367-0633-08d7e8923ffe
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135836_935647_C27FB036 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.75 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.75 listed in wl.mailspike.net]
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

Use direct function call instead of using eemi ops for fpga related
APIs. Also remove eemi ops structure.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c     | 30 ++----------------------------
 drivers/fpga/zynqmp-fpga.c           | 14 +++-----------
 drivers/spi/spi-zynqmp-gqspi.c       |  5 -----
 include/linux/firmware/xlnx-zynqmp.h | 16 +++++++++++-----
 4 files changed, 16 insertions(+), 49 deletions(-)

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
index b8a88d2..4a1139e 100644
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
-	u32 status;
-
-	if (IS_ERR_OR_NULL(eemi_ops) || !eemi_ops->fpga_get_status)
-		return FPGA_MGR_STATE_UNKNOWN;
+	u32 status = 0;
 
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
