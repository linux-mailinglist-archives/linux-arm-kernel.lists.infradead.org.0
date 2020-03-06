Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FAD417C8DE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Mar 2020 00:48:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fxt7KOG1O1OJcnGNrilACWiH4eWBEjx7Hd8kc3P2Js0=; b=E+QIxSz5ktYaAP
	C2VrbD4f7QW3qGFupxjLxI7yr49QavAMtWqt5mVWcYxRKle+HoRXWxPOOATeX0RSk48K1b3L726Ao
	sR9JSHOh15S90sDibhrA6+qJszOxO0QEWrJVX+R8gKPrDHovY/2o49GMSJN5LxChMcwyZZllQcr+w
	fikjhg2jfcfaw1T8dYIoPGgmL4GtrkQxWzavVNaKL1kHFJEiChIM7C1CTMykoLgD3GQWW+GNjb5r9
	1mM4iEK1qTrKBRsdENvmo6xZWI+TEo413jubVZpuOJ1Am9CfjVdyQWJmMcloNUC4I9Uai1SzeRcvc
	AnNy7CT6bjVf/SotLCig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAMht-0006F7-4p; Fri, 06 Mar 2020 23:48:41 +0000
Received: from mail-dm6nam10on2047.outbound.protection.outlook.com
 ([40.107.93.47] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAMhE-0005yX-B8
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 23:48:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZ4kWpJT8DK7C1MHeNaESa1N+Q85lTL6JrpO9faomu5cbRzzsqyV12ozEpDHUmb6r/jyLetcFU38cZQ7heaLgygOxjQH26jGy1lM0otdebDUengqgZiT7viFh4MDosxpDZEJgk1AZIvGlR1hlyZM1xAYdZlCFQAKXhMtqESHsICYUTrIVmug+NRal9XJiCKho7RPBpL+tXsxP0JueC8n7ET3Z0VwoyWvww5iSl5KD+fs5dHPkyQfJCftxs4gJ69jb8gTTH9mj3qH1CMqcRS8bFTES7ShbwnhN4aCIp7QLet92BowCk6nftwj092iE8OEP5kerIcA6l4qI7beomzOqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zQJv3bA85lbOn4f9viX84EuNNa1XDBWLNQKlx7ulF/E=;
 b=YGzHj4BSIDi3pVyoyJ3bUJLYhGMxOXlhbMPIJ2e+Zj4tWoYBAnugNoQIZUt3DM1YNPjzuUFQ9eHFdSua4fot+lXKrmN45dzGFsSa57ZruBlD3oZvQrL/M3wIvflwS6wCJva2b2ZPmx/wNcD6VvVUry0lgEsrKdhQef16u5VgYGZOe2c/ZSbOprO2NxcQJm3VhgrXTD4shftAYSN70SeRLNHh3bILO68AXLaYhcNppq+2NT99a3RPmBTh7QiFB7FRWew1Q4EuAW+kg3ljwMENBrLA1qZ7PB/x2MP8hHbnH3U7IlDsWKDkVPU96czc9tZFhw34Bwl0cqfSGCX/gxqkhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zQJv3bA85lbOn4f9viX84EuNNa1XDBWLNQKlx7ulF/E=;
 b=GJBw6ZrhRSW+sN5DyoLUGC7t6O4EtWibORsBD3y/nmWHn2Qv8sCYe+h9peM7VbSW/EQPaBo6McwAiVpY5IMY0f4HIB9tY+WvlN1a2T5VotyGYQryUA3CrOkEFCOvArIQF1R5ucqGUFsjDJMnOD3A+vwLP7nle99K1rcko2wWQ+0=
Received: from SN2PR01CA0001.prod.exchangelabs.com (2603:10b6:804:2::11) by
 DM6PR02MB4524.namprd02.prod.outlook.com (2603:10b6:5:20::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Fri, 6 Mar 2020 23:47:58 +0000
Received: from SN1NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:804:2:cafe::d0) by SN2PR01CA0001.outlook.office365.com
 (2603:10b6:804:2::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.16 via Frontend
 Transport; Fri, 6 Mar 2020 23:47:58 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT057.mail.protection.outlook.com (10.152.73.105) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2793.11
 via Frontend Transport; Fri, 6 Mar 2020 23:47:58 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMhB-0003Q8-PK; Fri, 06 Mar 2020 15:47:57 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh6-0002g8-M5; Fri, 06 Mar 2020 15:47:52 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 026Nlkij002418; 
 Fri, 6 Mar 2020 15:47:47 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jAMh0-0002eg-O1; Fri, 06 Mar 2020 15:47:46 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v3 19/24] firmware: xilinx: Remove eemi ops for fpga related
 APIs
Date: Fri,  6 Mar 2020 15:47:27 -0800
Message-Id: <1583538452-1992-20-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
References: <1583538452-1992-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(136003)(199004)(189003)(4326008)(8676002)(81166006)(356004)(107886003)(2906002)(8936002)(81156014)(6666004)(7416002)(478600001)(5660300002)(6636002)(36756003)(7696005)(9786002)(186003)(44832011)(54906003)(2616005)(316002)(426003)(26005)(336012)(70586007)(70206006)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB4524; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2208ff8c-42ec-40e4-8b5c-08d7c228cc9b
X-MS-TrafficTypeDiagnostic: DM6PR02MB4524:
X-Microsoft-Antispam-PRVS: <DM6PR02MB4524745AF5119EC962FA2601B8E30@DM6PR02MB4524.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:115;
X-Forefront-PRVS: 0334223192
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v6hW04gVi5YM2gNIFk4FSoEebr4+wsxQqaz/plOXkvc2igHf2z0LSdttHWupzEr606HPRXjdz7pomw8AVqF90lXK5L/ZwwNTUwBU01Yb7SHLruEkfgR6+eYSJYfoMFNKsjamw8niUolvLiUGe4uYl9MDy3/mgEhXURR5MV8Huu8GZedCAysVdplGW0HhS6ehmpbqbVPfnb1ZXCKPt8gmWcaq2glMlaN7wTvv0RRpdUcLDJNfQLZIxN+xOYABKuNn8u86X8KOhewQwi1Z3PTJgc8eMPFulL2LS1ApKKIRyhJNtbenCD1fHmHeU032kXxxOjhx10kjf2wbvYTrcmSqfzZRmkFOr7n57oRamC7gBjBiCZULLF8Q2Ch0lwMI3WXzc9Fgehnb7cMJwmueMWigGI7LVQbPL3/bMkrcdX9GzVVw4Cz98jZRajhZtYUizbOI+VNPRo1VcIK5tTSQOqMrBTUeDsZLQNLkeWLzHUTo3ITEG3ycZIRFd2Z7S5tRSr+2
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2020 23:47:58.1959 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2208ff8c-42ec-40e4-8b5c-08d7c228cc9b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB4524
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_154800_386504_5DB89A90 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 drivers/fpga/zynqmp-fpga.c           | 12 ++----------
 drivers/spi/spi-zynqmp-gqspi.c       |  5 -----
 include/linux/firmware/xlnx-zynqmp.h | 16 ++--------------
 4 files changed, 6 insertions(+), 57 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 7426533..36d5a3e 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -24,8 +24,6 @@
 #include <linux/firmware/xlnx-zynqmp.h>
 #include "zynqmp-debug.h"
 
-static const struct zynqmp_eemi_ops *eemi_ops_tbl;
-
 static bool feature_check_enabled;
 static u32 zynqmp_pm_features[PM_API_MAX];
 
@@ -654,8 +652,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_reset_get_status);
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_fpga_load(const u64 address, const u32 size,
-			       const u32 flags)
+int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags)
 {
 	return zynqmp_pm_invoke_fn(PM_FPGA_LOAD, lower_32_bits(address),
 				   upper_32_bits(address), size, flags, NULL);
@@ -670,7 +667,7 @@ static int zynqmp_pm_fpga_load(const u64 address, const u32 size,
  *
  * Return: Returns status, either success or error+reason
  */
-static int zynqmp_pm_fpga_get_status(u32 *value)
+int zynqmp_pm_fpga_get_status(u32 *value)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -770,26 +767,6 @@ int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 }
 EXPORT_SYMBOL_GPL(zynqmp_pm_set_requirement);
 
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
@@ -836,9 +813,6 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
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
index 3135d62..1734d12 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -285,11 +285,6 @@ struct zynqmp_pm_query_data {
 	u32 arg3;
 };
 
-struct zynqmp_eemi_ops {
-	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
-	int (*fpga_get_status)(u32 *value);
-};
-
 int zynqmp_pm_get_api_version(u32 *version);
 int zynqmp_pm_get_chipid(u32 *idcode, u32 *version);
 int zynqmp_pm_query_data(struct zynqmp_pm_query_data qdata, u32 *out);
@@ -318,16 +313,9 @@ int zynqmp_pm_release_node(const u32 node);
 int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 			      const u32 qos,
 			      const enum zynqmp_pm_request_ack ack);
+int zynqmp_pm_fpga_load(const u64 address, const u32 size, const u32 flags);
+int zynqmp_pm_fpga_get_status(u32 *value);
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
 			u32 arg2, u32 arg3, u32 *ret_payload);
 
-#if IS_REACHABLE(CONFIG_ARCH_ZYNQMP)
-const struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void);
-#else
-static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
-{
-	return ERR_PTR(-ENODEV);
-}
-#endif
-
 #endif /* __FIRMWARE_ZYNQMP_H__ */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
