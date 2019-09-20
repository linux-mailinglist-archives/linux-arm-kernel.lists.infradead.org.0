Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E23B8989
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 04:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k8bWce/M5OKtv3evhASBjJugs9rFmn2ozIsTYzC8slY=; b=tlNdnuAVGinGH6
	AHnz0izRoVbwCmMtRudYYOXIXXbtIO1qXga2i+4ibfWtln62nHhfo3UO90pOiYL0lGbq7t+QXZb77
	gN63fiaveRHN88lttGm4jpiMcY3UO66DYnLWdCKWOyl9LqavTf1t9ceOHdJPS3g7hMr4yykqn5TUY
	idS2wW6Mg7xWqIJPC3bdyM6jPaSX5IUiSrZ6aMh1ZuaGsKMD+WjapIFO72VDF/2ilTwY8YZ2/Y58e
	EjrpKoXKI00YFmgZujNKNNyjB1J4LwvwUnAMyOaMA7xGuWzYzAIZ1g+T1gxQEiUoIi7XeTeZtknex
	1iePsLxlu798sdcqlWSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB8zL-0002M4-2y; Fri, 20 Sep 2019 02:49:39 +0000
Received: from mail-by2nam05on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe52::628]
 helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB8zA-0002LE-Sq
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 02:49:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kNn8E1pU6AndJ0u19KtBLYb9OtgUIASsEzMl6vYEYizWHqCPLWRbrj5EpIEi+F0nSrHLwYd8IsIHZg90/zS9aQXBV6WI24Zy8fNuqMOHxiWmSr+ksIka1X1q6cl3sxHnBJboiRFhfXofq5GYRy01q7ahcxr4viFX8hA8egToNHMVnJ49FYmx5KlhunP7uC+vrXIhWNGw67hxfTHxDOwpvV5Jzzc75DmKYz0AdZBg3enjluHCclM4sATbwTki7oZMw+6h3z9zXLDC0IHsZXzXvgQtT4scw3v8RFypSqPssw+75l82znxe+sFfzLcTTI39j4U9gqZqKmK2q2V+ZcHAoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwXrvOmDVmVyq64hMbhAF0PuJaQpuzxzcUF+0Dlr9E8=;
 b=eXOSsjsfmAygq6TysiZqliiYJAdabvDuKNdOz95nA6lPfxTp/NtA3MfmQpahqB0j2/QYL93sKlN9sVfqVc/kVV5efli90L+v2ZhKuqE6KLb8d9BMyXhPcdnJ/tXz03V/iWNRQo1fLF0IUizXoECWZXxkE+QIf11Fr+oiD+Y3lStg+BmWd/pT3BwuxDLTOZ/uTjEgLGMdLpOl7hn07Q9+1Mm3Ca+siIRnryBfLi5efa2oBAyOT0gXZ1Ofg1xb3w2r6ByOro7T5h4S0q5wBhiP1a+QWj67MeU37l//djNf+Xysl9+vPL/IWFinmHRmx5EmHjJPSs3tNEb2u+pkcfzvSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=lists.linux-foundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pwXrvOmDVmVyq64hMbhAF0PuJaQpuzxzcUF+0Dlr9E8=;
 b=OGjrg+CT6iGn9LMrSsrqYcCGNII9FCNslyEanm1GNHABhazaura0sMfvBqszocuZa7qhlgNlivaRlttwhL2mTRy5GDxWlF5CRO6nFQnkn5fwDgCcXF3s74YLD07sabzde+HZv8zpJP24zoDyOrNsazzSDY2wQ2eeNjgAtIe9KXM=
Received: from DM6PR02CA0081.namprd02.prod.outlook.com (2603:10b6:5:1f4::22)
 by SN6PR02MB5264.namprd02.prod.outlook.com (2603:10b6:805:71::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2284.19; Fri, 20 Sep
 2019 02:49:21 +0000
Received: from BL2NAM02FT042.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by DM6PR02CA0081.outlook.office365.com
 (2603:10b6:5:1f4::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2178.19 via Frontend
 Transport; Fri, 20 Sep 2019 02:49:21 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; lists.linux-foundation.org; dkim=none (message not
 signed) header.d=none;lists.linux-foundation.org; dmarc=bestguesspass
 action=none header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 BL2NAM02FT042.mail.protection.outlook.com (10.152.76.193) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2263.17
 via Frontend Transport; Fri, 20 Sep 2019 02:49:19 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:41345
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <dylan.yip@xilinx.com>)
 id 1iB8z0-0002AH-LX; Thu, 19 Sep 2019 19:49:18 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <dylan.yip@xilinx.com>)
 id 1iB8yv-00008U-HI; Thu, 19 Sep 2019 19:49:13 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x8K2n81X014707; 
 Thu, 19 Sep 2019 19:49:08 -0700
Received: from [172.19.2.242] (helo=xsjmadhurki50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <dylan.yip@xilinx.com>)
 id 1iB8yq-00007x-Jl; Thu, 19 Sep 2019 19:49:08 -0700
From: Dylan Yip <dylan.yip@xilinx.com>
To: satishna@xilinx.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org
Subject: [LINUX PATCH] dma-mapping: Control memset operation using gfp flags
Date: Thu, 19 Sep 2019 19:49:02 -0700
Message-Id: <1568947742-21911-1-git-send-email-dylan.yip@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(396003)(376002)(39860400002)(199004)(189003)(6666004)(5660300002)(8676002)(336012)(2906002)(81156014)(305945005)(81166006)(356004)(107886003)(26005)(7696005)(186003)(426003)(106002)(478600001)(47776003)(8936002)(4326008)(70586007)(9786002)(36386004)(14444005)(316002)(70206006)(51416003)(36756003)(126002)(476003)(486006)(48376002)(2616005)(16586007)(50226002)(44832011)(50466002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5264; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:ErrorRetry; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3086eaa1-ed71-4c2b-860f-08d73d7522a5
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(4709080)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328);
 SRVR:SN6PR02MB5264; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB5264:
X-Microsoft-Antispam-PRVS: <SN6PR02MB52648554FBDE165CA49D6566B0880@SN6PR02MB5264.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 0166B75B74
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: vJEQkAGGKFS5mO7Zz0N533bwqxRcbpDvTngAWuec7lVOwB6to2zc1ftJXiRuappMpLU7alRfLQgOkXnMM4Hvn0VhLYgALwqdNil8CMo25eQJ6Vkt7I59ujr8Ak7a/S5SF8bbWtK4cOkDhuza63VfgE3kI6HwTMtHsFylm9iS800HzcHriMPPgOZntnVz18dSrBzzGJ0cPgLo0t6oKiNiamHSc08QzjWQRbEzuwsLMH3mfrc6mAkRRUagH0KKZCQBgNGhKV3ZU5M3FNboPcqVhoAJq/weuRZohYsqwR0am8mfQ06AFEKumbUWVz70kfUxB7VBcXibUzPvrqjnvhrd8mn5u/PYvutB2LFrkeK3g9jEipO97Wn43GvHxPM0wnwkIn2I0OonW7wVDkLhdeu2B/yYcAOJUSmswTKpBZg86M8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2019 02:49:19.5563 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3086eaa1-ed71-4c2b-860f-08d73d7522a5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5264
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_194928_940365_DF92F36A 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
