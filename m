Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A811B8186
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 23:06:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JT0/GHhXoMX32zNBnG6257KFnguBaNjGz93BnbGxSw0=; b=UiTHxPAAOCgKOh
	4nuuXt6CvT9HVOQqBaf3khlZjQ0/f1NLk9qjJFR6UQEiplMzq9sT7R0icPH65pJ+qQGfuTqCEjSS5
	nUzrfMncXABYskdQ3H1/7hQmqJpydcXSDbFcyjxJloaTXAIryqu/jqSjKmw7C3Ga4b7GAFHF++UWZ
	U+qjmxSxtGneG9DThsYhpRhUmdsUwGQxxvCtfXnHQaCW6jOYRSGW3K3YdCSXqwfxJxJyqKUqjUdA2
	58A1HolStbGydXFcKuLbcsMlgidb12hlk7wtl1K696AfhE2nMoHrNeIoLA8Bn9SqptUYLcE0rv92G
	MTjRG5CK53VPLDYEIADQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS5Wy-0000TU-CQ; Fri, 24 Apr 2020 21:06:40 +0000
Received: from mail-eopbgr770079.outbound.protection.outlook.com
 ([40.107.77.79] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS5PB-0006TT-6H
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 20:58:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hlr3O6umgjhxFQzLm1SI0RDRtbmRf+dn0ztdIVkv8GfWZbxN2T6yVJe54S2qzsqFNQTOtLK5b/Gn6vDhSJoOiXuuvQIa54losWy+oqMNjYBOPQx7PTb0teRK6cpvsOSXgRUHt4gI9qQH04Z3pkeAN4yahe0X+X7a3AhZVIjNBcn3OJMWbD/bJo7dlZleO8C+7LWsegvDXXpXh0VUI15L88Fh9rly+0YQSaW+iUcQpC33MLZAY6gexQGgjC1ooV0M79NiErGKpHbi4DusenTwueOf7iFT5r/7x90VHgPuox0k8e4u/RnLGJIpD9yMPYaTSuuCL0CP9yY0GreazIYsiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwRy8/T3fxWwmhKsZAFolTJKQC7Khnz3KsaxOL02S7Q=;
 b=iBsxX26YI+2jzOu27XT4fiyDytygV0nZiWpW/Ye2/NBxSEolpsx6ZBnd4Cqf8pMeQ9wttU1sEoNy+F7EAoAWW4s7TCHjo89rRBkpRLPLlV0La/xbIsuemfrs/3ajpv96WoT/GIXHrfXe1CwveUcU1x40yu7/CNk5CaIajxky+KL5fBRaYLf3G7T57KtadzNnm2sL2AqhPVP8BYSCQNgO/owQlXBDZdLvKy0oO7FGouPc5/gUdubyABrKtOkKjKZJvN+Qudu8z/+a6YnX3dJzjalO9or56Jh7pfZ6OzQ6rC7aei7vG9TOOeFnNtdH1gF2BdBn3LFITkFL+a9QZbw/RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cwRy8/T3fxWwmhKsZAFolTJKQC7Khnz3KsaxOL02S7Q=;
 b=Hkikb3gefiFri3nWMdltI5nMmu4piaHkpAT2ZOMPsWTPf6kCyMKuLThRYUTMAHrMQ1agqY48TQqD/B8DSX26yziMSuF6fQtQkP2QdVeBgfYdXBitdPHLSD3nT3W7wlSknpG7jDxl+MbAtM73y09DkfrP5EC+sIhJ/Z/m1G4mAkY=
Received: from MN2PR13CA0021.namprd13.prod.outlook.com (2603:10b6:208:160::34)
 by MWHPR02MB3360.namprd02.prod.outlook.com (2603:10b6:301:64::39)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Fri, 24 Apr
 2020 20:58:33 +0000
Received: from BL2NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:160:cafe::d2) by MN2PR13CA0021.outlook.office365.com
 (2603:10b6:208:160::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.10 via Frontend
 Transport; Fri, 24 Apr 2020 20:58:33 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT042.mail.protection.outlook.com (10.152.76.193) with Microsoft SMTP
 Server id 15.20.2937.19 via Frontend Transport; Fri, 24 Apr 2020 20:58:32
 +0000
Received: from [149.199.38.66] (port=33427 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Nx-0002Df-Hk; Fri, 24 Apr 2020 13:57:21 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5P6-0007Pe-Gy; Fri, 24 Apr 2020 13:58:32 -0700
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 03OKwJh1026339; 
 Fri, 24 Apr 2020 13:58:20 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1jS5Ot-0007Lo-Rv; Fri, 24 Apr 2020 13:58:19 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH v5 19/25] firmware: xilinx: Remove eemi ops for aes engine
Date: Fri, 24 Apr 2020 13:58:01 -0700
Message-Id: <1587761887-4279-20-git-send-email-jolly.shah@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(39860400002)(346002)(376002)(396003)(46966005)(70586007)(36756003)(70206006)(47076004)(186003)(81166007)(356005)(316002)(82740400003)(54906003)(7416002)(44832011)(26005)(9786002)(478600001)(2616005)(82310400002)(4326008)(426003)(8676002)(8936002)(336012)(2906002)(6636002)(107886003)(6666004)(5660300002)(7696005)(81156014);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 79bbaf2f-4ef8-4165-7d04-08d7e8923fcd
X-MS-TrafficTypeDiagnostic: MWHPR02MB3360:
X-Microsoft-Antispam-PRVS: <MWHPR02MB3360FA37F4248F0F0F5F4C8EB8D00@MWHPR02MB3360.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:644;
X-Forefront-PRVS: 03838E948C
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KfnMwIvzYem82oTW7z1OTx1e87yxFiVIih1j/5zEOuDZcJlzuzOpH3Lv9Le3HltixLn+LpbH15RgY4r9gNf43kVT7px/VFRFp6PS4TspoS92mbffWU5YifqYGO1KvGkXmojLTv1j3zzxsC7OJKkGSU5ihlHlO7wC3el0bakMyuJ8AVLVFnPFLUTQDGPuKhtqMf3MtO3FZvO55W1VH/splUuBiXg52jDyM1TBk8CqyJ/50Fvonf/w83PIT2U/GnToyfxafBiEuKL6LwKmMWbyxuUMjBmkzyZdzPk8GCj7N2lGSEdn64GhlpJcr+AN1Ru2uoxOa0kQvs84/RSzlgNNRoHnZJcfH8o1iloZXjdsFY6yLB2Nhbjkg37iKAWlgTy6coh1kMd9Ry1WG7abSpteYgN0mxHr71enT84XIZpJuc5862pGz3WkGXX2LnydHn2S8jTxKR80LCoxWQL+3+fisRaj/KkyUVpF0f1FYWLMUyCHTQaPepzXCJui8+yj6Hrsnl6lk9HKcxDHi/a+wg4ZVA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2020 20:58:32.9365 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 79bbaf2f-4ef8-4165-7d04-08d7e8923fcd
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR02MB3360
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_135837_244032_21B5C974 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.79 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.77.79 listed in wl.mailspike.net]
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
