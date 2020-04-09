Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D051A3A4F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 21:14:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JT0/GHhXoMX32zNBnG6257KFnguBaNjGz93BnbGxSw0=; b=gp4rPG7ZSBAC0O
	OTDV3bLKC1x4UtJywRUQHTbmjGdcIJx+QqbkWdATvpPReEzrgbm22jqiq4ZHR2rJoDqP57dgWrOlA
	lPuw3YL1DIAi47FfB+h25jHZe85s7aDgjs9zSqyekg1PPGCK+S7z8X6g8e+i3rh5CWJ0HzFxW/a61
	6GCxU4EuV4j5olOOAPTW4b7cFyCGuczRQx/c25CWvjpq5ycVjBifUab6u9NHOPBLl6mdtQrloetI/
	MSisIM3H+l8S1J9EDH72GSOobn2XXZDsaoVnspBIuC220zG5bIQQAtBVVolv+bRsL9nf83BdwjOX/
	VsGQcJfX2giuBAfPhTyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMcdB-0008Ol-8o; Thu, 09 Apr 2020 19:14:29 +0000
Received: from mail-bn8nam12on20601.outbound.protection.outlook.com
 ([2a01:111:f400:fe5b::601]
 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMcbd-0007K9-9R
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 19:12:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jUjEalFtgVkRTRy4CaIWEnTEl6MRawzXCn0ksroflmcDmRN/pd7xOya6NXiDC8hG7vzIklqHmhnyeeS3dcVubu1/pu/mgCIu9cwSYboZKGuUEgySTd45r81QfYiATt+GBjhcOe4lcQV9SLLipBwitYHdmXbS2QU6B4d5KmsEPLepGo0mksCVGkBDdq0yfQpeiSxpnm3pMt+PvnZ7myLcfeu7HkAQSe10IU93ov67aYFZJ3gvwfMdYrO2myyEyE72UmJUP8kN6NX8iPnxruX8Bl8vSxqsd4rwFAx94pt3kVJrIMCCmHzTwD/iaPt2zUkOS9/BKZHKNbZhRV33TZBtFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwRy8/T3fxWwmhKsZAFolTJKQC7Khnz3KsaxOL02S7Q=;
 b=NnWChOodT+YudgNgcJy5bCkaO2jQEJy5sN7mVYvL/3qD5lWtMc9zKOrRet+e0JgyelZIhrpcsn7HjNkMDpUM+Nvwhxf6xYoVXQ7fCQRUmhmh9saoUmJFqBcXCECqzFV9ycczTpwjiCCnfyKoc8ukTpQwoFSa9LewUh5lqkdrCLSJxPvdaGRuNEZDcPfXuCqrO1tZRzGsc8vqbXadwRpTSzHAfB53aSJc6gqJ1p0Ir6kcdibND0ORN6/XJpj4cv1b+GruwDqRaPVJp2HRrqXsJlp+/qhM6/io1ytvD3a1UtrVIfKRUHY4zTt2tr+ZadXxQIVe9VkUJhoLX5mE4c6ZBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwRy8/T3fxWwmhKsZAFolTJKQC7Khnz3KsaxOL02S7Q=;
 b=DfTTJjSge/xfHB8+9kpGvtRj/agDC00UptbpiLogfjCYu5UMuTEfdMmQVSCUQkLEzP0Rfm5OaOlVS/9CHqKFpPx5krKqiCZWLeRSsFbq2KlOH4E46e8qRDxpQYRVYXZ1P8QuuD5x/4uUTIc+Yasy0lWUkenP0O83Nyd8mueuoWU=
Received: from DM5PR15CA0046.namprd15.prod.outlook.com (2603:10b6:4:4b::32) by
 CY4PR02MB3176.namprd02.prod.outlook.com (2603:10b6:910:7c::33) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2878.16; Thu, 9 Apr 2020 19:12:50 +0000
Received: from CY1NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2603:10b6:4:4b:cafe::53) by DM5PR15CA0046.outlook.office365.com
 (2603:10b6:4:4b::32) with Microsoft SMTP Server (version=TLS1_2,
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
 CY1NAM02FT060.mail.protection.outlook.com (10.152.74.252) with Microsoft SMTP
 Server id 15.20.2900.15 via Frontend Transport; Thu, 9 Apr 2020 19:12:49
 +0000
Received: from [149.199.38.66] (port=44287 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcb9-000604-5b; Thu, 09 Apr 2020 12:12:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbZ-0007NV-KE; Thu, 09 Apr 2020 12:12:49 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jMcbS-0007La-T1; Thu, 09 Apr 2020 12:12:42 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v4 19/25] firmware: xilinx: Remove eemi ops for aes engine
Date: Thu,  9 Apr 2020 12:12:08 -0700
Message-Id: <1586459534-8997-20-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(346002)(376002)(396003)(39860400002)(46966005)(336012)(8936002)(186003)(4326008)(107886003)(7416002)(316002)(47076004)(82740400003)(7696005)(9786002)(6666004)(356004)(54906003)(70586007)(5660300002)(26005)(36756003)(478600001)(2616005)(6636002)(81156014)(70206006)(426003)(8676002)(2906002)(81166007)(44832011);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 42d0e7a2-6b01-479d-10bf-08d7dcb9fee7
X-MS-TrafficTypeDiagnostic: CY4PR02MB3176:
X-Microsoft-Antispam-PRVS: <CY4PR02MB317639B80EA09607500BDC68B8C10@CY4PR02MB3176.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:644;
X-Forefront-PRVS: 0368E78B5B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b8nPCjStqqG8kqvuRzfeXM6oF1PY5PxOE2vRsIIu8c4dBN6PYJTxAGa6LBHUVkKjUEkwSVQp+2ZXtgxFnki9uOzKi96VUjQzAcKfDAW0RROLGVoNF6zDQIEWeMylwsZaeSgHVMsS+OqvUEXpx05eGhiOCRF3rD0aTqRNww8lnWen5SKWV1kn0IO3+DsK5zj0I+Yo9QfCbKwUVuSRhfbAmsvjjBJWJssnKY99hpr7gfvkt1oERdK+ubWMkax56kDoLor3qzYp5orXlsi3GMqTu4UaDGLry9P+FiwI9GxWa7G0fnLMpmyO1yinpRDBsvpgTRMq/stMNPytCO79GSU7b7RTSOJkFuCIfHHYFNlQqG8B4uqiT6A93cAgUt9/shOFyuHQ8fpQ/+oenKDBipk8HwRcvgvposvryxyVriZ4VR0NHLjcsA1KSKgLrt4fP2q8Bc1V36GiG5Z3M0jLHzneVsCEzoV00jfuxYUKtFSD1mC+KSO4SL11jPZJsTqcZaxPF/aGR9HP+C1VAg1veJyIMQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2020 19:12:49.9681 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 42d0e7a2-6b01-479d-10bf-08d7dcb9fee7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB3176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_121253_355151_76BF580A 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Use direct function call for aes engine instead of using eemi ops.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/crypto/xilinx/zynqmp-aes-gcm.c | 12 +-----------
 drivers/firmware/xilinx/zynqmp.c       |  4 ++--
 include/linux/firmware/xlnx-zynqmp.h   |  6 +++++-
 3 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/crypto/xilinx/zynqmp-aes-gcm.c b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
index 09f7f46..d0a0daf 100644
--- a/drivers/crypto/xilinx/zynqmp-aes-gcm.c
+++ b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
@@ -46,7 +46,6 @@ struct zynqmp_aead_drv_ctx {
 	} alg;
 	struct device *dev;
 	struct crypto_engine *engine;
-	const struct zynqmp_eemi_ops *eemi_ops;
 };
 
 struct zynqmp_aead_hw_req {
@@ -92,9 +91,6 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 
 	drv_ctx = container_of(alg, struct zynqmp_aead_drv_ctx, alg.aead);
 
-	if (!drv_ctx->eemi_ops->aes)
-		return -ENOTSUPP;
-
 	if (tfm_ctx->keysrc == ZYNQMP_AES_KUP_KEY)
 		dma_size = req->cryptlen + ZYNQMP_AES_KEY_SIZE
 			   + GCM_AES_IV_SIZE;
@@ -136,7 +132,7 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 		hwreq->key = 0;
 	}
 
-	drv_ctx->eemi_ops->aes(dma_addr_hw_req, &status);
+	zynqmp_pm_aes_engine(dma_addr_hw_req, &status);
 
 	if (status) {
 		switch (status) {
@@ -388,12 +384,6 @@ static int zynqmp_aes_aead_probe(struct platform_device *pdev)
 	else
 		return -ENODEV;
 
-	aes_drv_ctx.eemi_ops = zynqmp_pm_get_eemi_ops();
-	if (IS_ERR(aes_drv_ctx.eemi_ops)) {
-		dev_err(dev, "Failed to get ZynqMP EEMI interface\n");
-		return PTR_ERR(aes_drv_ctx.eemi_ops);
-	}
-
 	err = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(ZYNQMP_DMA_BIT_MASK));
 	if (err < 0) {
 		dev_err(dev, "No usable DMA configuration\n");
diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index 0c5c8bc..e6e7b63 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -795,7 +795,7 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_set_requirement);
  *
  * Return:	Returns status, either success or error code.
  */
-static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
+int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 {
 	u32 ret_payload[PAYLOAD_ARG_CNT];
 	int ret;
@@ -810,11 +810,11 @@ static int zynqmp_pm_aes_engine(const u64 address, u32 *out)
 
 	return ret;
 }
+EXPORT_SYMBOL_GPL(zynqmp_pm_aes_engine);
 
 static const struct zynqmp_eemi_ops eemi_ops = {
 	.fpga_load = zynqmp_pm_fpga_load,
 	.fpga_get_status = zynqmp_pm_fpga_get_status,
-	.aes = zynqmp_pm_aes_engine,
 };
 
 /**
diff --git a/include/linux/firmware/xlnx-zynqmp.h b/include/linux/firmware/xlnx-zynqmp.h
index 5927f6f..11d7aef 100644
--- a/include/linux/firmware/xlnx-zynqmp.h
+++ b/include/linux/firmware/xlnx-zynqmp.h
@@ -296,7 +296,6 @@ struct zynqmp_pm_query_data {
 struct zynqmp_eemi_ops {
 	int (*fpga_load)(const u64 address, const u32 size, const u32 flags);
 	int (*fpga_get_status)(u32 *value);
-	int (*aes)(const u64 address, u32 *out);
 };
 
 int zynqmp_pm_invoke_fn(u32 pm_api_id, u32 arg0, u32 arg1,
@@ -333,6 +332,7 @@ int zynqmp_pm_release_node(const u32 node);
 int zynqmp_pm_set_requirement(const u32 node, const u32 capabilities,
 			      const u32 qos,
 			      const enum zynqmp_pm_request_ack ack);
+int zynqmp_pm_aes_engine(const u64 address, u32 *out);
 #else
 static inline struct zynqmp_eemi_ops *zynqmp_pm_get_eemi_ops(void)
 {
@@ -446,6 +446,10 @@ static inline int zynqmp_pm_set_requirement(const u32 node,
 {
 	return -ENODEV;
 }
+static inline int zynqmp_pm_aes_engine(const u64 address, u32 *out)
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
