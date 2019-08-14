Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF158E05A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 00:08:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=umQSr1hpTctkcvFF8TS9LnWJjXUiCTYpds7VW8vlpl0=; b=XWeESEY/tjBxop
	bW0cpfgg/1QvmlvPfpYRmXew9h8DMx0ul1m0cnzMOvAvDz9Xw5AmxsBbFZ1CSUzS/8W4CwqA7+I+R
	AKFoFG1ETAgPumjohO7wouxD1igqXr++RbKIib/vL/Jdp+hKTmXSAY1bT/ZImT5cPDVGKyEgYa1gb
	DAab03GMk1y3bCIVr9Axy24CseBGG0u8o8u0kMj0dqCvNwv38JjErXGo0Xmn/8PKj3z+vx+rWtBjH
	xcEomwSVyuh+xq3qS5ByOcTRrFujdXRfhhE/XPPIdE1/A6UkZuvXvzvVhk0Akv9cefT98u/BcJOqK
	N6O0zOldJFBiW0AntFmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy1RE-0004GK-S0; Wed, 14 Aug 2019 22:08:12 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy1Qn-00047f-G2
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 22:07:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id 129so188706pfa.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 15:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fm+XMGdKo1qLDwMEPJoOd+67atBUmC1hzfZly9LEwV0=;
 b=sgPCxVPDpH9l2X4SPUlx10kZFVi9IyEGQZCYZYSp7q2+1HYZUvT2BP02kXdHCDxuQe
 ovLGoEDRejVtZkJFak27XXUav3OaPEikhGNchX4l2i6fwcPxTxbG+IuniEBAnuJs1Wnn
 vE3XrY4NLX8lQ0cXESW4Dhc9SO9SwnUyFax0vMAwqj1rzBIWXFt0FeSvTdRUc4l3NpvN
 jX3+ZqLSgrLGCWOssPanOkD0fstz6U6ag9S/JUBDg1jCWNYg1kaWU8QYMgT+SvMMzzb2
 dX82zkunQSsga8PbpkqwG1h5iYhdx/yxUvNXdd7H192iWYxzh/ZNrGhBHqmcDohBWF4H
 +wGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fm+XMGdKo1qLDwMEPJoOd+67atBUmC1hzfZly9LEwV0=;
 b=Sq+sp8v+HMlxZykwmqmQeQsMy2+TWRpJoCeDOvPq1sPkkRM3fs7cYeUMiUDjbwFtqL
 S+ipeeXu3xXYOkpSVxgp6nIzU9NzTVBGSIv8Ys5DQKKTepfyRVBk8p1lVSZRG5sLlAav
 h3rRFOowf/5/07Oz8bwIFR8XT1LRlETb9hcuMeEEGJX49TAiMv3R8QZj8uPgIGkRSsyh
 rbVa76sIkPfnzQIQ4GYQQu7V90oWAyrtxnuzYTmtlr8wkOvHKINQ/FiODtXMitJ16ZZ3
 ij9xbpYGBQDcp1rxMSlQ2Vig29/p+kC9UxZD39HYzpKDLV/dvOXRRj85hew47EZfIvwJ
 ZXKg==
X-Gm-Message-State: APjAAAWACXVL3rQb7sfSt+X8ltJTV0JYJX+Ti2P/bkHRNIorCW9tvJoQ
 JtOqZb3yi6aFUEp4JcQRTdk=
X-Google-Smtp-Source: APXvYqxEANCpUtYQ+5OhPEAzs37rqT2wBBhN570Sw5KrEeNXbOBWwWt7Xo763dhxGWxso/PvNN7UjA==
X-Received: by 2002:a17:90a:eb05:: with SMTP id j5mr87119pjz.102.1565820464819; 
 Wed, 14 Aug 2019 15:07:44 -0700 (PDT)
Received: from localhost ([100.118.89.196])
 by smtp.gmail.com with ESMTPSA id i9sm659836pgo.46.2019.08.14.15.07.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Aug 2019 15:07:44 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 2/6] mips: export arch_sync_dma_for_*()
Date: Wed, 14 Aug 2019 14:59:57 -0700
Message-Id: <20190814220011.26934-3-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190814220011.26934-1-robdclark@gmail.com>
References: <20190814220011.26934-1-robdclark@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_150745_582506_EA39D3F8 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rob Clark <robdclark@chromium.org>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, Hauke Mehrtens <hauke@hauke-m.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Sean Paul <sean@poorly.run>,
 Paul Burton <paul.burton@mips.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, James Hogan <jhogan@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Clark <robdclark@chromium.org>

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 arch/arm64/mm/flush.c          |  2 ++
 arch/mips/mm/dma-noncoherent.c |  2 ++
 drivers/gpu/drm/drm_cache.c    | 20 +++++++++++++++++---
 include/drm/drm_cache.h        |  4 ++++
 4 files changed, 25 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/mm/flush.c b/arch/arm64/mm/flush.c
index dc19300309d2..f0eb6320c979 100644
--- a/arch/arm64/mm/flush.c
+++ b/arch/arm64/mm/flush.c
@@ -93,3 +93,5 @@ void arch_invalidate_pmem(void *addr, size_t size)
 }
 EXPORT_SYMBOL_GPL(arch_invalidate_pmem);
 #endif
+
+EXPORT_SYMBOL_GPL(__flush_dcache_area);
diff --git a/arch/mips/mm/dma-noncoherent.c b/arch/mips/mm/dma-noncoherent.c
index ed56c6fa7be2..bd5debe1b423 100644
--- a/arch/mips/mm/dma-noncoherent.c
+++ b/arch/mips/mm/dma-noncoherent.c
@@ -131,6 +131,7 @@ void arch_sync_dma_for_device(struct device *dev, phys_addr_t paddr,
 {
 	dma_sync_phys(paddr, size, dir);
 }
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_device);
 
 #ifdef CONFIG_ARCH_HAS_SYNC_DMA_FOR_CPU
 void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
@@ -139,6 +140,7 @@ void arch_sync_dma_for_cpu(struct device *dev, phys_addr_t paddr,
 	if (cpu_needs_post_dma_flush(dev))
 		dma_sync_phys(paddr, size, dir);
 }
+EXPORT_SYMBOL_GPL(arch_sync_dma_for_cpu);
 #endif
 
 void arch_dma_cache_sync(struct device *dev, void *vaddr, size_t size,
diff --git a/drivers/gpu/drm/drm_cache.c b/drivers/gpu/drm/drm_cache.c
index 3bd76e918b5d..90105c637797 100644
--- a/drivers/gpu/drm/drm_cache.c
+++ b/drivers/gpu/drm/drm_cache.c
@@ -69,6 +69,14 @@ static void drm_cache_flush_clflush(struct page *pages[],
 }
 #endif
 
+#if defined(__powerpc__)
+static void __flush_dcache_area(void *addr, size_t len)
+{
+	flush_dcache_range((unsigned long)addr,
+			   (unsigned long)addr + PAGE_SIZE);
+}
+#endif
+
 /**
  * drm_clflush_pages - Flush dcache lines of a set of pages.
  * @pages: List of pages to be flushed.
@@ -90,7 +98,7 @@ drm_clflush_pages(struct page *pages[], unsigned long num_pages)
 	if (wbinvd_on_all_cpus())
 		pr_err("Timed out waiting for cache flush\n");
 
-#elif defined(__powerpc__)
+#elif defined(__powerpc__) || defined(CONFIG_ARM64)
 	unsigned long i;
 	for (i = 0; i < num_pages; i++) {
 		struct page *page = pages[i];
@@ -100,8 +108,7 @@ drm_clflush_pages(struct page *pages[], unsigned long num_pages)
 			continue;
 
 		page_virtual = kmap_atomic(page);
-		flush_dcache_range((unsigned long)page_virtual,
-				   (unsigned long)page_virtual + PAGE_SIZE);
+		__flush_dcache_area(page_virtual, PAGE_SIZE);
 		kunmap_atomic(page_virtual);
 	}
 #else
@@ -135,6 +142,13 @@ drm_clflush_sg(struct sg_table *st)
 
 	if (wbinvd_on_all_cpus())
 		pr_err("Timed out waiting for cache flush\n");
+#elif defined(CONFIG_ARM64)
+	struct sg_page_iter sg_iter;
+
+	for_each_sg_page(st->sgl, &sg_iter, st->nents, 0) {
+		struct page *p = sg_page_iter_page(&sg_iter);
+		drm_clflush_pages(&p, 1);
+	}
 #else
 	pr_err("Architecture has no drm_cache.c support\n");
 	WARN_ON_ONCE(1);
diff --git a/include/drm/drm_cache.h b/include/drm/drm_cache.h
index 987ff16b9420..f94e7bd3eca4 100644
--- a/include/drm/drm_cache.h
+++ b/include/drm/drm_cache.h
@@ -40,6 +40,10 @@ void drm_clflush_sg(struct sg_table *st);
 void drm_clflush_virt_range(void *addr, unsigned long length);
 bool drm_need_swiotlb(int dma_bits);
 
+#if defined(CONFIG_X86) || defined(__powerpc__) || defined(CONFIG_ARM64)
+#define HAS_DRM_CACHE 1
+#endif
+
 
 static inline bool drm_arch_can_wc_memory(void)
 {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
