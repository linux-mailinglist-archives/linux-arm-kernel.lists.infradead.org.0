Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D08511AF4B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 16:12:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE3jfs7OmlDuZRvWrWxeaKAJVPWHAuviUOFn/ufQbps=; b=UZd83i4UIzZh4N
	W6u4CafI4JxPdPOpSOYdNXNIkqlPxNNWhjJzpnjXQHPh7eoc3sAp7WE7D+z2dBa8OFzUtkaKmVeNC
	noBP8nBP89Flj1cUe55NLjxl667xO8qSm5AA1zFw76+Hul+rQypNCPPsDl6mxGSxXPCisLgnV2FrH
	HBJxSYIsecEKs1H2S/TXoHjyyEo5vraii5TVfR/BdX1il9WTc7LTftv+PQzvejJ9m/UcP81kyU5qY
	BT9WSXm9eZY+x6xaZHNj3tViTBZyuFtbFglRNB5kbKSvHHEsQ7QXhXchszTfHwsPdxyWfd64ziNnU
	M5L6rAhIpcjouUNCS30Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3fQ-0002cF-Mj; Wed, 11 Dec 2019 15:12:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3f6-0002Rn-NS
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 15:12:27 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82CD62465C;
 Wed, 11 Dec 2019 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576077143;
 bh=hlOVCucT8KQDZPTtqqt3AstmcgO+lKwoR7CKhjwYEB0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jOyXABVWuCmej/AdhwfremDRhxsxbHAuKHhOak0wu5XuVssEVk+Io2D3Yd2/4kgz0
 Ht3dhLMjZoXUgjqVRsOncIOcQ3MCSh+Hiih4+RWj2N07bp+FKNQM84Yt184al5bEkC
 nvWApzPnTGPO6QBmZrrCBMfh6OJ37/unQLQ3Ptw0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 030/134] dma-mapping: fix handling of dma-ranges
 for reserved memory (again)
Date: Wed, 11 Dec 2019 10:10:06 -0500
Message-Id: <20191211151150.19073-30-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191211151150.19073-1-sashal@kernel.org>
References: <20191211151150.19073-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_071225_001457_937EA97B 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Daniele Alessandrelli <daniele.alessandrelli@gmail.com>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vladimir Murzin <vladimir.murzin@arm.com>

[ Upstream commit a445e940ea686fc60475564009821010eb213be3 ]

Daniele reported that issue previously fixed in c41f9ea998f3
("drivers: dma-coherent: Account dma_pfn_offset when used with device
tree") reappear shortly after 43fc509c3efb ("dma-coherent: introduce
interface for default DMA pool") where fix was accidentally dropped.

Lets put fix back in place and respect dma-ranges for reserved memory.

Fixes: 43fc509c3efb ("dma-coherent: introduce interface for default DMA pool")

Reported-by: Daniele Alessandrelli <daniele.alessandrelli@gmail.com>
Tested-by: Daniele Alessandrelli <daniele.alessandrelli@gmail.com>
Tested-by: Alexandre Torgue <alexandre.torgue@st.com>
Signed-off-by: Vladimir Murzin <vladimir.murzin@arm.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mm/dma-mapping-nommu.c |  2 +-
 include/linux/dma-mapping.h     |  4 ++--
 kernel/dma/coherent.c           | 16 +++++++++-------
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mm/dma-mapping-nommu.c b/arch/arm/mm/dma-mapping-nommu.c
index db92478983005..287ef898a55e1 100644
--- a/arch/arm/mm/dma-mapping-nommu.c
+++ b/arch/arm/mm/dma-mapping-nommu.c
@@ -35,7 +35,7 @@ static void *arm_nommu_dma_alloc(struct device *dev, size_t size,
 				 unsigned long attrs)
 
 {
-	void *ret = dma_alloc_from_global_coherent(size, dma_handle);
+	void *ret = dma_alloc_from_global_coherent(dev, size, dma_handle);
 
 	/*
 	 * dma_alloc_from_global_coherent() may fail because:
diff --git a/include/linux/dma-mapping.h b/include/linux/dma-mapping.h
index 0aad641d662c3..4d450672b7d66 100644
--- a/include/linux/dma-mapping.h
+++ b/include/linux/dma-mapping.h
@@ -162,7 +162,7 @@ int dma_release_from_dev_coherent(struct device *dev, int order, void *vaddr);
 int dma_mmap_from_dev_coherent(struct device *dev, struct vm_area_struct *vma,
 			    void *cpu_addr, size_t size, int *ret);
 
-void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle);
+void *dma_alloc_from_global_coherent(struct device *dev, ssize_t size, dma_addr_t *dma_handle);
 int dma_release_from_global_coherent(int order, void *vaddr);
 int dma_mmap_from_global_coherent(struct vm_area_struct *vma, void *cpu_addr,
 				  size_t size, int *ret);
@@ -172,7 +172,7 @@ int dma_mmap_from_global_coherent(struct vm_area_struct *vma, void *cpu_addr,
 #define dma_release_from_dev_coherent(dev, order, vaddr) (0)
 #define dma_mmap_from_dev_coherent(dev, vma, vaddr, order, ret) (0)
 
-static inline void *dma_alloc_from_global_coherent(ssize_t size,
+static inline void *dma_alloc_from_global_coherent(struct device *dev, ssize_t size,
 						   dma_addr_t *dma_handle)
 {
 	return NULL;
diff --git a/kernel/dma/coherent.c b/kernel/dma/coherent.c
index 545e3869b0e32..551b0eb7028a3 100644
--- a/kernel/dma/coherent.c
+++ b/kernel/dma/coherent.c
@@ -123,8 +123,9 @@ int dma_declare_coherent_memory(struct device *dev, phys_addr_t phys_addr,
 	return ret;
 }
 
-static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
-		ssize_t size, dma_addr_t *dma_handle)
+static void *__dma_alloc_from_coherent(struct device *dev,
+				       struct dma_coherent_mem *mem,
+				       ssize_t size, dma_addr_t *dma_handle)
 {
 	int order = get_order(size);
 	unsigned long flags;
@@ -143,7 +144,7 @@ static void *__dma_alloc_from_coherent(struct dma_coherent_mem *mem,
 	/*
 	 * Memory was found in the coherent area.
 	 */
-	*dma_handle = mem->device_base + (pageno << PAGE_SHIFT);
+	*dma_handle = dma_get_device_base(dev, mem) + (pageno << PAGE_SHIFT);
 	ret = mem->virt_base + (pageno << PAGE_SHIFT);
 	spin_unlock_irqrestore(&mem->spinlock, flags);
 	memset(ret, 0, size);
@@ -175,17 +176,18 @@ int dma_alloc_from_dev_coherent(struct device *dev, ssize_t size,
 	if (!mem)
 		return 0;
 
-	*ret = __dma_alloc_from_coherent(mem, size, dma_handle);
+	*ret = __dma_alloc_from_coherent(dev, mem, size, dma_handle);
 	return 1;
 }
 
-void *dma_alloc_from_global_coherent(ssize_t size, dma_addr_t *dma_handle)
+void *dma_alloc_from_global_coherent(struct device *dev, ssize_t size,
+				     dma_addr_t *dma_handle)
 {
 	if (!dma_coherent_default_memory)
 		return NULL;
 
-	return __dma_alloc_from_coherent(dma_coherent_default_memory, size,
-			dma_handle);
+	return __dma_alloc_from_coherent(dev, dma_coherent_default_memory, size,
+					 dma_handle);
 }
 
 static int __dma_release_from_coherent(struct dma_coherent_mem *mem,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
