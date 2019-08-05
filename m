Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608A3826B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 23:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=liK0D7u+ZqSCuiGPZrNcfTOfn78U16FvDu9nbENeEsI=; b=HT4X86KQt7YDJQ
	hOadV5EPH/PEwh9j0b86fHj/SZcrbfij4hpHVoap6eP1THWDgf2Xs/YFaxVMvIiCosID4uv7vKz6L
	0WTUFaQJviZ/hKwFBEoymZm/kfzhB8ozas4NgANGR5vH5HWKyx3tioFXXhq7ic6zVutKa36yBAc3Z
	n/l6IS3L6f9vBk0qXTrF33oN8ZnoplG0Bm7x0mdj1o+AJfSv6HAZRmnU0c6q9hZYYzi+Ed33bLWls
	bN9wjxYGaEJXSZJEhTIgWgmayGu4zeEkS1hJAylljnjZCu/PV/fnA5OtTDU3Y2pXLbjDZi917UNeQ
	QF/CbqI1lRwZYE0dzkaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hukM3-0003Ts-0s; Mon, 05 Aug 2019 21:17:19 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hukLq-0003RM-KX
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 21:17:08 +0000
Received: by mail-pf1-x444.google.com with SMTP id m30so40276447pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 14:17:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=btriHWYQu73nHxyRj0uULDI0WFupXKYE8nFpqRhUi5E=;
 b=a62gzBHN8zDS50OBhnDV1V4x7nXoRywHSroTQoVByDczAGXV3BipxjPTq01SrkbTub
 agEwfMmn44cmWjaxwPjM6J6JZpjx8WmyJxEXRnDXjNclOKeWLXUkdJVEX/MQCLvJBqtC
 K1ZxpmOSHoJ9dVfT1c362g+35YgZNJ24X+8fEyjxPJRcu8l+xY8PVNESw9BGEXx1nU94
 wqiQun9OUEuGzEM7cth+AU5ej7W/2Q3sElHfUdFCQU068818rs5agvFXmicnwPaMJR6t
 5IAlapgFz9ED0//3XPA1KmOrrKMINrpJTfgOu4sGbvQe4C1K91C5/vchqTWaSGlR7ZtT
 i/gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=btriHWYQu73nHxyRj0uULDI0WFupXKYE8nFpqRhUi5E=;
 b=ujGXDyX9+RFLizOq4WkIZ9TwlkvQ0Yda1EKbrFq1uwiTYR+sxaVMU/Gg5I5rM1GHKw
 WCJYyKo9mNNOpdJw47Jd308u+9vEsqqwWNDrzOJ5ZatckcsEnGJbezrfn0ZY2cI1/KWX
 t9tUJOednZOPDO4p76Tvqtj5UjSnHKTPy8/CrwP3h6SIzpf25DSxFohfzK+a4O1W2MG5
 XhwAK2RDQEeX8miaEjlmhPSsqXUfra4rtECzkdtaOtTXReVmpJ6YQlpVzjNAjzJzs3P5
 xWWUbggxeRy0yx2UlH37T+eW6nLKPFyd3R9i1LP8Rsh+F5k8urXNVaejGYygWDbogVqh
 5SVA==
X-Gm-Message-State: APjAAAXw/716pL/CyfUOnU7h5pxOSNvgCgk9b/l3c5inU9BiUlMYdxCl
 QYXPPgVFjH47j2TP8lJMEEk=
X-Google-Smtp-Source: APXvYqyoYl+h7ZIawCU+3W64OfYJakM+Xfc++m5kBgD7zKEdWhgVKG1NxI4zroBuK4W+iWzBAmRtUg==
X-Received: by 2002:a17:90b:8c8:: with SMTP id
 ds8mr20553606pjb.89.1565039825384; 
 Mon, 05 Aug 2019 14:17:05 -0700 (PDT)
Received: from localhost ([100.118.89.196])
 by smtp.gmail.com with ESMTPSA id j15sm97068547pfe.3.2019.08.05.14.17.04
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 14:17:04 -0700 (PDT)
From: Rob Clark <robdclark@gmail.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH 1/2] drm: add cache support for arm64
Date: Mon,  5 Aug 2019 14:14:33 -0700
Message-Id: <20190805211451.20176-1-robdclark@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_141706_711235_756DBE56 
X-CRM114-Status: GOOD (  13.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robdclark[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Rob Clark <robdclark@chromium.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-kernel@vger.kernel.org, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rob Clark <robdclark@chromium.org>

This will let drm/msm stop abusing DMA API for cache ops, at least for
arm64.

Signed-off-by: Rob Clark <robdclark@chromium.org>
---
 arch/arm64/mm/flush.c       |  2 ++
 drivers/gpu/drm/drm_cache.c | 20 +++++++++++++++++---
 include/drm/drm_cache.h     |  4 ++++
 3 files changed, 23 insertions(+), 3 deletions(-)

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
