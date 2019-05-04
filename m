Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B6513A57
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 15:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hlp+4NGUzHXK1GwSWnxa2xFqnQ/30WmJnnHrtVtd+F0=; b=FSadZRbPmY7LQoKAg7dsVYFU41
	WqhkO/dWJpRALUdC/PbMfr6oW/7H8EV4L94TeJkaonhv6VJV+3HD38PDPFgfBwMi4fr6kApXqC7Fu
	ZRIFo2R3v0W4v/13QFKvyBUbBahhUBE40PcdjCD+OCYBCDIV16sLSmqsQP2rRisLCrP5ieV5Dx4M1
	rmEjzm48TPJ1ZVzTEe5Bz4Ja988ppediHFaHpDLyhDS3lo+0KjDvA64RxGUczKB0AS3oVDKAA1ODC
	1quWiGtHS8/rM71Ir+zPn53InSh6F71vuYfrDaXT8AUBCHwvNH0/yptAzMNO42lYknqgfrEtS2YKS
	9iYy0W+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMufz-0008Jt-Jb; Sat, 04 May 2019 13:26:03 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMueb-0005mW-FE
 for linux-arm-kernel@lists.infradead.org; Sat, 04 May 2019 13:24:57 +0000
Received: by mail-ed1-x544.google.com with SMTP id b8so9413431edm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 04 May 2019 06:24:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=sb2VTb4udp+6GTieqmLKKDw9TvPkS7RxQiDXi2VcIW4=;
 b=SnT8zaBJiObAYRFxhwtf+f/3VQmGBoZAW3SXxdaI8INxvtillslvLUr45ZRXKZzPye
 qeBxqU9FVyVNPgCPbMbG1fDhERaiF0fSUX6TDQM2R3HzISi8EMKjlAXnxyZ73TxUcY46
 sNEtcpHMUApJ4Hw0ZrFVtwjXDIHFzKSH8Gqkla9Iv2OH2IzuyEEX1kVTrdxUD6zAjcJl
 3XnaLQ+5cp9HGMd6Yu1uCVl74tiR6UUkfedEmmX7pcpQdb+6ccONauEWazSnRzGVcVbH
 pif5JdcAsR8S1i+fbqrcR2pQNVGPw8Xip/4LsTN4STVK4Fskhy7IG3cVdw1ociHZeUWj
 JJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=sb2VTb4udp+6GTieqmLKKDw9TvPkS7RxQiDXi2VcIW4=;
 b=gERqgooHAY0Iv6vvFJdPf1uwN9DLV11jd1upSU0bwMGgASvnSBP1w15E9SeeUQPtws
 EccdOmgpVOldw/b4df+twZu6LbdQHawMT8rBtg61mWXAnHT97evAJgISk1kuUXSn56hL
 h8xS5Tr3zDXN7CkWMwJTkBxKK58Ai5RJaBkqYPxSk5LAJMbzIViKOmfVATsLwc0EFuXc
 9OKR416KENVssYGOyhLnYeuBeKjkgY3okHGPYdm0K5jzEM6GcymHE3qt5O52J2boRtk4
 ULoU8YL1rkjh/ILyHy55FoATd69fW40/IxosTcgMM6Fc8h6faEvplY1Ph8j8FKk48YEH
 dwgQ==
X-Gm-Message-State: APjAAAUYLNBwFS8EqVvNkbrp+Ph/Koke3jGPLvkV2e+76NX3FBGEgJXH
 x0rNNsM5EjBLdI+9oYpeKeWmqg==
X-Google-Smtp-Source: APXvYqwaSzRWqBEJqGRH69WRSRi1pj7zvXUKCrAKxtGUDVsuP7u9eej8NsqK5DROxcMotEQb7gEQ/Q==
X-Received: by 2002:aa7:c387:: with SMTP id k7mr14732853edq.73.1556976275602; 
 Sat, 04 May 2019 06:24:35 -0700 (PDT)
Received: from localhost.localdomain ([79.97.203.116])
 by smtp.gmail.com with ESMTPSA id s53sm1391106edb.20.2019.05.04.06.24.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 04 May 2019 06:24:34 -0700 (PDT)
From: Tom Murphy <tmurphy@arista.com>
To: iommu@lists.linux-foundation.org
Subject: [RFC 4/7] iommu/dma-iommu: Handle freelists in the dma-iommu api path
Date: Sat,  4 May 2019 14:23:20 +0100
Message-Id: <20190504132327.27041-5-tmurphy@arista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190504132327.27041-1-tmurphy@arista.com>
References: <20190504132327.27041-1-tmurphy@arista.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190504_062438_038697_83A959B4 
X-CRM114-Status: GOOD (  20.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, kvm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, David Brown <david.brown@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>, linux-s390@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Kukjin Kim <kgene@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>,
 Andy Gross <andy.gross@linaro.org>, linux-tegra@vger.kernel.org,
 Marc Zyngier <marc.zyngier@arm.com>, linux-arm-msm@vger.kernel.org,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Tom Murphy <tmurphy@arista.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-kernel@vger.kernel.org, murphyt7@tcd.ie, Rob Clark <robdclark@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently the iova flush queue implementation in the dma-iommu api path
doesn't handle freelists. Change the unmap_fast code to allow it to
return any freelists which need to be handled.

Signed-off-by: Tom Murphy <tmurphy@arista.com>
---
 drivers/iommu/dma-iommu.c       | 39 +++++++++++++++++++++++----------
 drivers/iommu/iommu.c           | 10 +++++----
 drivers/vfio/vfio_iommu_type1.c |  2 +-
 include/linux/iommu.h           |  3 ++-
 4 files changed, 36 insertions(+), 18 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index fa5713a4f6f8..82ba500886b4 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -49,6 +49,18 @@ struct iommu_dma_cookie {
 	struct iommu_domain		*fq_domain;
 };
 
+static void iommu_dma_entry_dtor(unsigned long data)
+{
+	struct page *freelist = (struct page *)data;
+
+	while (freelist != NULL) {
+		unsigned long p = (unsigned long)page_address(freelist);
+
+		freelist = freelist->freelist;
+		free_page(p);
+	}
+}
+
 static inline size_t cookie_msi_granule(struct iommu_dma_cookie *cookie)
 {
 	if (cookie->type == IOMMU_DMA_IOVA_COOKIE)
@@ -313,7 +325,8 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 	if (!cookie->fq_domain && !iommu_domain_get_attr(domain,
 			DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE, &attr) && attr) {
 		cookie->fq_domain = domain;
-		init_iova_flush_queue(iovad, iommu_dma_flush_iotlb_all, NULL);
+		init_iova_flush_queue(iovad, iommu_dma_flush_iotlb_all,
+				iommu_dma_entry_dtor);
 	}
 
 	if (!dev)
@@ -393,7 +406,7 @@ static dma_addr_t iommu_dma_alloc_iova(struct iommu_domain *domain,
 }
 
 static void iommu_dma_free_iova(struct iommu_dma_cookie *cookie,
-		dma_addr_t iova, size_t size)
+		dma_addr_t iova, size_t size, struct page *freelist)
 {
 	struct iova_domain *iovad = &cookie->iovad;
 
@@ -402,7 +415,8 @@ static void iommu_dma_free_iova(struct iommu_dma_cookie *cookie,
 		cookie->msi_iova -= size;
 	else if (cookie->fq_domain)	/* non-strict mode */
 		queue_iova(iovad, iova_pfn(iovad, iova),
-				size >> iova_shift(iovad), 0);
+				size >> iova_shift(iovad),
+				(unsigned long) freelist);
 	else
 		free_iova_fast(iovad, iova_pfn(iovad, iova),
 				size >> iova_shift(iovad));
@@ -414,14 +428,15 @@ static void __iommu_dma_unmap(struct iommu_domain *domain, dma_addr_t dma_addr,
 	struct iommu_dma_cookie *cookie = domain->iova_cookie;
 	struct iova_domain *iovad = &cookie->iovad;
 	size_t iova_off = iova_offset(iovad, dma_addr);
+	struct page *freelist;
 
 	dma_addr -= iova_off;
 	size = iova_align(iovad, size + iova_off);
 
-	WARN_ON(iommu_unmap_fast(domain, dma_addr, size) != size);
+	WARN_ON(iommu_unmap_fast(domain, dma_addr, size, &freelist) != size);
 	if (!cookie->fq_domain)
-		iommu_tlb_sync(domain);
-	iommu_dma_free_iova(cookie, dma_addr, size);
+		iommu_flush_iotlb_range(domain, dma_addr, size, freelist);
+	iommu_dma_free_iova(cookie, dma_addr, size, freelist);
 }
 
 static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
@@ -441,7 +456,7 @@ static dma_addr_t __iommu_dma_map(struct device *dev, phys_addr_t phys,
 		return DMA_MAPPING_ERROR;
 
 	if (iommu_map(domain, iova, phys - iova_off, size, prot)) {
-		iommu_dma_free_iova(cookie, iova, size);
+		iommu_dma_free_iova(cookie, iova, size, NULL);
 		return DMA_MAPPING_ERROR;
 	}
 	return iova + iova_off;
@@ -600,7 +615,7 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 	struct iova_domain *iovad = &cookie->iovad;
 	bool coherent = dev_is_dma_coherent(dev);
 	int ioprot = dma_info_to_prot(DMA_BIDIRECTIONAL, coherent, attrs);
-	pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
+	pgprot_t prot = pgprot_noncached(PAGE_KERNEL);
 	unsigned int count, min_size, alloc_sizes = domain->pgsize_bitmap;
 	struct page **pages;
 	struct sg_table sgt;
@@ -659,7 +674,7 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 out_free_sg:
 	sg_free_table(&sgt);
 out_free_iova:
-	iommu_dma_free_iova(cookie, iova, size);
+	iommu_dma_free_iova(cookie, iova, size, NULL);
 out_free_pages:
 	__iommu_dma_free_pages(pages, count);
 	return NULL;
@@ -668,7 +683,7 @@ static void *iommu_dma_alloc_remap(struct device *dev, size_t size,
 static void *iommu_dma_alloc_contiguous_remap(struct device *dev, size_t size,
 		dma_addr_t *dma_handle, gfp_t gfp, unsigned long attrs)
 {
-	pgprot_t prot = arch_dma_mmap_pgprot(dev, PAGE_KERNEL, attrs);
+	pgprot_t prot = pgprot_noncached(PAGE_KERNEL);
 	struct page *page;
 	void *addr;
 
@@ -1009,7 +1024,7 @@ static int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg,
 	return __finalise_sg(dev, sg, nents, iova);
 
 out_free_iova:
-	iommu_dma_free_iova(cookie, iova, iova_len);
+	iommu_dma_free_iova(cookie, iova, iova_len, NULL);
 out_restore_sg:
 	__invalidate_sg(sg, nents);
 	return 0;
@@ -1115,7 +1130,7 @@ static int iommu_dma_mmap(struct device *dev, struct vm_area_struct *vma,
 	unsigned long pfn;
 	int ret;
 
-	vma->vm_page_prot = arch_dma_mmap_pgprot(dev, vma->vm_page_prot, attrs);
+	vma->vm_page_prot = pgprot_noncached(vma->vm_page_prot);
 
 	if (dma_mmap_from_dev_coherent(dev, vma, cpu_addr, size, &ret))
 		return ret;
diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 23918e7a0094..c7a7d9adb753 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -1654,7 +1654,7 @@ EXPORT_SYMBOL_GPL(iommu_map);
 
 static size_t __iommu_unmap(struct iommu_domain *domain,
 			    unsigned long iova, size_t size,
-			    bool sync)
+			    bool sync, struct page **freelist)
 {
 	const struct iommu_ops *ops = domain->ops;
 	size_t unmapped_page, unmapped = 0;
@@ -1710,6 +1710,8 @@ static size_t __iommu_unmap(struct iommu_domain *domain,
 	if (sync && ops->flush_iotlb_range)
 		ops->flush_iotlb_range(domain, orig_iova, unmapped,
 				freelist_head);
+	else if (freelist)
+		*freelist = freelist_head;
 
 	trace_unmap(orig_iova, size, unmapped);
 	return unmapped;
@@ -1718,14 +1720,14 @@ static size_t __iommu_unmap(struct iommu_domain *domain,
 size_t iommu_unmap(struct iommu_domain *domain,
 		   unsigned long iova, size_t size)
 {
-	return __iommu_unmap(domain, iova, size, true);
+	return __iommu_unmap(domain, iova, size, true, NULL);
 }
 EXPORT_SYMBOL_GPL(iommu_unmap);
 
 size_t iommu_unmap_fast(struct iommu_domain *domain,
-			unsigned long iova, size_t size)
+			unsigned long iova, size_t size, struct page **freelist)
 {
-	return __iommu_unmap(domain, iova, size, false);
+	return __iommu_unmap(domain, iova, size, false, freelist);
 }
 EXPORT_SYMBOL_GPL(iommu_unmap_fast);
 
diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index 26c3f519b01a..5f58fcb1c2e1 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -710,7 +710,7 @@ static size_t unmap_unpin_fast(struct vfio_domain *domain,
 	struct vfio_regions *entry = kzalloc(sizeof(*entry), GFP_KERNEL);
 
 	if (entry) {
-		unmapped = iommu_unmap_fast(domain->domain, *iova, len);
+		unmapped = iommu_unmap_fast(domain->domain, *iova, len, NULL);
 
 		if (!unmapped) {
 			kfree(entry);
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 7e084eb1725f..f472cfee1c8c 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -310,7 +310,8 @@ extern int iommu_map(struct iommu_domain *domain, unsigned long iova,
 extern size_t iommu_unmap(struct iommu_domain *domain, unsigned long iova,
 			  size_t size);
 extern size_t iommu_unmap_fast(struct iommu_domain *domain,
-			       unsigned long iova, size_t size);
+			       unsigned long iova, size_t size,
+			       struct page **freelist);
 extern size_t iommu_map_sg(struct iommu_domain *domain, unsigned long iova,
 			   struct scatterlist *sg,unsigned int nents, int prot);
 extern phys_addr_t iommu_iova_to_phys(struct iommu_domain *domain, dma_addr_t iova);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
