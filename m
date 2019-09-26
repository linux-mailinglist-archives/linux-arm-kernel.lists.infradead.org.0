Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EBE7BEBCC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 08:03:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k8bWce/M5OKtv3evhASBjJugs9rFmn2ozIsTYzC8slY=; b=B5Bfzgi3PhKvsj
	daGMp5hh1ko//7cWJ+LqeA3bA9Dp+jne0D07bWcyIltHnnbMm0Sg08oQI+PEbh1kscZL2E5AswQp7
	GMfcb23iTGqEmztIIBHQgFWR/P9It2SpjySeNVOHeZrS+Wu9E0ZEsctP3QiILQcpBdMXxPixlPJmX
	UaK34MN+5sY/kNzFuWxVE0fOTbaJcJltCfLGiRonkTyv88TIzZK22W9siQyV+A+RRd8chGUHU1kpL
	Skzsn3+/wewt9MBn+bD9YHhvLx7s70z3Jz3EgbpNavogAP/A0vi5fMp88v02M0Q/fJhaEy60macSH
	guBTuDRhpe2UO+HaUIGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDMsQ-0001qH-IG; Thu, 26 Sep 2019 06:03:42 +0000
Received: from mail-eopbgr710069.outbound.protection.outlook.com
 ([40.107.71.69] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDMs8-0001pi-TX
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 06:03:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EIr/w8NNsN09WGpgTt+5SSFYBGpEUVvBDXXU4GKVeWspCd3wEoNM1pWZS0KzJ0vpLSrp8NrEAUv99zY/JuVFUpL6NK3zPzWjArHyq0E6JQdqSWcGCx79oaaCkwiknZ+mOnR4STCVeecPtMi97xdo8mrnvRhOt7u2HgzXfDZfx7kiQN95o2R8xeWEqL8jh+CnGUgXWKTJSbBpQVXNRrdqyNPPTHVaoUkB7jjlhNoQd0NvGid9TQkXFXNm2tfBatpoLn9RH8S/dBq0xMghIqsKT0lo619V10tqv1rWOjPasdLtG/hNV+JMrZ/IHiiwRw0ZgYCmvLfddqWp+CcEFBrH6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwXrvOmDVmVyq64hMbhAF0PuJaQpuzxzcUF+0Dlr9E8=;
 b=dJ2iUhogewgqIFmzA8PUHGKW8jpT8m7Hr8fNq44Al/G6bo6527MR+7lo0x1YT+On05xI4t8kNRV2yozenL7PMuVF0hjHfHI4FQxA/Pe5ZRiqdPhu1l4LMnYQPqYO0zghZkNVLjas2y80w2eYfH9Zx2NEbIu6pfFTZDoFg9rRACOj2sr3qNb895HZ5yRdd13Zz+VvuzGLdwlYcwpXcjeDxMG1Yl1yp9jD9jjFaqmhK5mXG/YmBU2Qyhch/rrZCCyMNi+kJVFPKTNx8jKuNchgqYGrMmIjvD+Q0+8ZG+wtaQHaF2lrU7bPyjCxM4+9EokLqKr7P31Skc4Vb3WMJx5d0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwXrvOmDVmVyq64hMbhAF0PuJaQpuzxzcUF+0Dlr9E8=;
 b=p8d+RChPlOd9HtXOWI9cdKZbEVPZ0TsBLndpa49sci97T3nZUl78GZcSboY1Ye0OkglX3vsq3yhLam5zjTgEt4QAsfynklGdYu37JQBQXgHszmmccIMsmrMm1yxwdu1YkSE0FIc/M43BBUwiyhSwM3977K+ePcmvSnarB96+bVM=
Received: from BYAPR02CA0063.namprd02.prod.outlook.com (2603:10b6:a03:54::40)
 by BYAPR02MB5253.namprd02.prod.outlook.com (2603:10b6:a03:61::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.26; Thu, 26 Sep
 2019 06:03:19 +0000
Received: from CY1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by BYAPR02CA0063.outlook.office365.com
 (2603:10b6:a03:54::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2199.15 via Frontend
 Transport; Thu, 26 Sep 2019 06:03:19 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; lists.linux-foundation.org; dkim=none (message not
 signed) header.d=none;lists.linux-foundation.org; dmarc=bestguesspass
 action=none header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT061.mail.protection.outlook.com (10.152.75.30) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Thu, 26 Sep 2019 06:03:19 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <dylan.yip@xilinx.com>)
 id 1iDMs2-0006pm-Kl; Wed, 25 Sep 2019 23:03:18 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <dylan.yip@xilinx.com>)
 id 1iDMrx-0005Jp-IA; Wed, 25 Sep 2019 23:03:13 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x8Q6393F025367; 
 Wed, 25 Sep 2019 23:03:10 -0700
Received: from [172.19.2.242] (helo=xsjmadhurki50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <dylan.yip@xilinx.com>)
 id 1iDMrt-0005JK-TZ; Wed, 25 Sep 2019 23:03:09 -0700
From: Dylan Yip <dylan.yip@xilinx.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 iommu@lists.linux-foundation.org, satishna@xilinx.com
Subject: [LINUX PATCH] dma-mapping: Control memset operation using gfp flags
Date: Wed, 25 Sep 2019 23:03:08 -0700
Message-Id: <1569477788-28290-1-git-send-email-dylan.yip@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(39860400002)(396003)(199004)(189003)(70586007)(70206006)(107886003)(336012)(426003)(14444005)(36756003)(186003)(7696005)(26005)(478600001)(356004)(4326008)(51416003)(9786002)(106002)(47776003)(50226002)(81156014)(8676002)(6636002)(81166006)(16586007)(316002)(50466002)(5660300002)(486006)(44832011)(48376002)(2616005)(476003)(36386004)(305945005)(126002)(8936002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5253; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 62e1ad14-0e18-4c28-5f8e-08d742473ad9
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:BYAPR02MB5253; 
X-MS-TrafficTypeDiagnostic: BYAPR02MB5253:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5253367D158C926526222DD0B0860@BYAPR02MB5253.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0172F0EF77
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: aBZE7xdA9CLBU7xfXE2Gk5sJv25xjVAWscQzRhOM59+5yTIQN9/dDl34IEOuiAel8vdrUe/w7n+RQd+Id7l8BIfjI9wTeULbsYubTzxYthagmAvwQsAqxJwD8UMgaw7vLN5+qaUT7+beWeu1WwH8Y3U7dZK9V3QGuJMMue/anfaoOF92JAQq9+O9138E4/r0xfa3MfNUh9Qi0RWqh15UFK44id+P3khKWaUNBi7PhqggeooN6Igem2Ch1TpQGu2U7zaWoK/LjYE+kNSh0Si1LUf7qc33WTwcu3GQV0leB3S1iDL8aVFpZtuRZnnYRi1srhxP4NdIdzUJCd5uALXv3b7mZrN8wvGKz6ZCgszNPjzbodynDjzCDDAWA0DdfCqhl/Mp9iabSgRvSU9P1X+o9TlQewzZSUqXezP3GkSaopM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2019 06:03:19.1267 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 62e1ad14-0e18-4c28-5f8e-08d742473ad9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5253
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_230324_960183_6CB65335 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.69 listed in list.dnswl.org]
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
Cc: Dylan Yip <dylan.yip@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of 4k video buffer, the allocation from a reserved memory is
taking a long time, ~500ms. This is root caused to the memset()
operations on the allocated memory which is consuming more cpu cycles.
Due to this delay, we see that initial frames are being dropped.

To fix this, we have wrapped the default memset, done when allocating
coherent memory, under the __GFP_ZERO flag. So, we only clear
allocated memory if __GFP_ZERO flag is enabled. We believe this
should be safe as the video decoder always writes before reading.
This optimizes decoder initialization as we do not set the __GFP_ZERO
flag when allocating memory for decoder. With this optimization, we
don't see initial frame drops and decoder initialization time is
~100ms.

This patch adds plumbing through dma_alloc functions to pass gfp flag
set by user to __dma_alloc_from_coherent(). Here gfp flag is checked
for __GFP_ZERO. If present, we memset the buffer to 0 otherwise we
skip memset.

Signed-off-by: Dylan Yip <dylan.yip@xilinx.com>
---
 arch/arm/mm/dma-mapping-nommu.c |  2 +-
 include/linux/dma-mapping.h     | 11 +++++++----
 kernel/dma/coherent.c           | 15 +++++++++------
 kernel/dma/mapping.c            |  2 +-
 4 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
index 52b8255..242b2c3 100644
--- a/arch/arm/mm/dma-mapping-nommu.c
+++ b/arch/arm/mm/dma-mapping-nommu.c
@@ -35,7 +35,7 @@ static void *arm_nommu_dma_alloc(struct device *dev, size_t size,
 				 unsigned long attrs)
 
 {
-	void *ret = dma_alloc_from_global_coherent(size, dma_handle);
+	void *ret = dma_alloc_from_global_coherent(size, dma_handle, gfp);
 
 	/*
 	 * dma_alloc_from_global_coherent() may fail because:
diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index f7d1eea..b715c9f 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -160,24 +160,27 @@ static inline int is_device_dma_capable(struct device *dev)
  * Don't use them in device drivers.
  */
 int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,
-				       dma_addr_t *dma_handle, void **ret);
+				       dma_addr_t *dma_handle, void **ret,
+				       gfp_t flag);
 int dma_release_from_dev_coherent(struct device *dev, int order, void *vaddr);
 
 int dma_mmap_from_dev_coherent(struct device *dev, struct vm_area_struct *vma,
 			    void *cpu_addr, size_t size, int *ret);
 
-void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle);
+void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle,
+				     gfp_t flag);
 int dma_release_from_global_coherent(int order, void *vaddr);
 int dma_mmap_from_global_coherent(struct vm_area_struct *vma, void *cpu_addr,
 				  size_t size, int *ret);
 
 #else
-#define dma_alloc_from_dev_coherent(dev, size, handle, ret) (0)
+#define dma_alloc_from_dev_coherent(dev, size, handle, ret, flag) (0)
 #define dma_release_from_dev_coherent(dev, order, vaddr) (0)
 #define dma_mmap_from_dev_coherent(dev, vma, vaddr, order, ret) (0)
 
 static inline void *dma_alloc_from_global_coherent(ssize_t size,
-						   dma_addr_t *dma_handle)
+						   dma_addr_t *dma_handle,
+						   gfp_t flag)
 {
 	return NULL;
 }
diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
index 29fd659..d85fab5 100644
--- a/kernel/dma/coherent.c
+++ b/kernel/dma/coherent.c
@@ -136,7 +136,7 @@ void dma_release_declared_memory(struct device *dev)
 EXPORT_SYMBOL(dma_release_declared_memory);
 
 static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
-		ssize_t size, dma_addr_t *dma_handle)
+		ssize_t size, dma_addr_t *dma_handle, gfp_t gfp_flag)
 {
 	int order = get_order(size);
 	unsigned long flags;
@@ -158,7 +158,8 @@ static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
 	*dma_handle = mem->device_base + (pageno << PAGE_SHIFT);
 	ret = mem->virt_base + (pageno << PAGE_SHIFT);
 	spin_unlock_irqrestore(&mem->spinlock, flags);
-	memset(ret, 0, size);
+	if (gfp_flag & __GFP_ZERO)
+		memset(ret, 0, size);
 	return ret;
 err:
 	spin_unlock_irqrestore(&mem->spinlock, flags);
@@ -172,6 +173,7 @@ static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
  * @dma_handle:	This will be filled with the correct dma handle
  * @ret:	This pointer will be filled with the virtual address
  *		to allocated area.
+ * @flag:      gfp flag set by user
  *
  * This function should be only called from per-arch dma_alloc_coherent()
  * to support allocation from per-device coherent memory pools.
@@ -180,24 +182,25 @@ static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
  * generic memory areas, or !0 if dma_alloc_coherent should return @ret.
  */
 int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,
-		dma_addr_t *dma_handle, void **ret)
+		dma_addr_t *dma_handle, void **ret, gfp_t flag)
 {
 	struct dma_coherent_mem *mem = dev_get_coherent_memory(dev);
 
 	if (!mem)
 		return 0;
 
-	*ret = __dma_alloc_from_coherent(mem, size, dma_handle);
+	*ret = __dma_alloc_from_coherent(mem, size, dma_handle, flag);
 	return 1;
 }
 
-void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle)
+void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle,
+				     gfp_t flag)
 {
 	if (!dma_coherent_default_memory)
 		return NULL;
 
 	return __dma_alloc_from_coherent(dma_coherent_default_memory, size,
-			dma_handle);
+			dma_handle, flag);
 }
 
 static int __dma_release_from_coherent(struct dma_coherent_mem *mem,
diff --git a/kernel/dma/mapping.c b/kernel/dma/mapping.c
index b0038ca..bfea1d2 100644
--- a/kernel/dma/mapping.c
+++ b/kernel/dma/mapping.c
@@ -272,7 +272,7 @@ void *dma_alloc_attrs(struct device *dev, size_t size, dma_addr_t *dma_handle,
 
 	WARN_ON_ONCE(!dev->coherent_dma_mask);
 
-	if (dma_alloc_from_dev_coherent(dev, size, dma_handle, &cpu_addr))
+	if (dma_alloc_from_dev_coherent(dev, size, dma_handle, &cpu_addr, flag))
 		return cpu_addr;
 
 	/* let the implementation decide on the zone to allocate from: */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
