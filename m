Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 742BF15609
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 00:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AShumUl3Ce/ac2oMvn3zxERqzLS6A8I9SCIXG9p5fmY=; b=Uznz9qjYx5h0cOAbcOBQb5lyq4
	DqWglAvmrLC5ws52iJIuXuwS+Y9l9OzOMqaJLnbj0MImrtYsMAYyz054jQgKmQpjqk2wmfcNkA3Vz
	+MLQtgXBreuGoe2H1wZjigXQyGJsGUmdG4hzf28Xb7L/fvxSj54ZfFhhO9eKqw3EB+EyRQiUow+YQ
	VrXPg0pBjZOUxYUedgtn9WKTbaFemmdF8LPs438o9LbTTKylKcQ1QYsgYgrKcKg99CFd9kH5YZp3Q
	t5DWAZMFnB8ouE6KxLo2BQL6wJewIvoErcCA++4tdo7flrjemC+CVjy6NTsbv1buHG7JXMtCXGcLa
	KNgxuYfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmCk-0006af-US; Mon, 06 May 2019 22:35:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmCe-0006Yb-AW
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 22:35:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id t22so7161067pgi.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 15:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vxeV9ft42Z9weuRQsncwqOnoZhf6GFp447KDcblUrfk=;
 b=RAhDVIwCMHTCtsbl6YiM3wbt/Ww204Kft83qmMlh/oZk9oVNu59qGWNZ0UtZ4Z6xjI
 Q5HZYvn49VUI6276rjq0/6vBnBUdCDmcNWylc0XNVdiESz96iOfliR9JnLtfwE0EB+Hi
 SLGnP4s1MhZGHBPr6S/W6rD+APYuTpblhdS/80+S9+QJ7/A7nQ0UgE4itiNQk8P2aga8
 /35qi+RzmiJyjAwz0HSF9I8iFsPq+Ba8+SLTzCMwwemheDGzlCKFaSj94Ew7qFDw7m41
 bmOSw/5frMORTko6m7KwCjdyi3jm+rqPWpZ34IEjX8AGApo/Igp34KxZM1FN1NzgMVxA
 EnaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vxeV9ft42Z9weuRQsncwqOnoZhf6GFp447KDcblUrfk=;
 b=oi1Xtk/DV88sOft9SiXCI3x7tfzGpcZ9g15dBR4xaRZpgCZ9TdCdQl5anWxSJMBFoR
 4Bta9nhcUowYYBJvG+QC3/XTqQDNuiNPby94vHfrxm5kQwerpqla+G/SA87w8owA/4Kl
 IeXbahG8HGBXQWquEqW+0Csg1XQze6PDnL6G2KFtLL+QDTASmzw9XsJBdjg7ZZgi38nu
 hiiubXlWAInJxJfuGl/KDqd/D9BX3YBf8D+XtEKZ4xJTqM/RTNgAmYWesVqk5S0b5hsH
 6NTjmSqFjg+Z+Y5VaGagp7GIB5vMwfLNsc7Sy/RID4deS8JiTQhCTUgSMv+x2FZfYXo4
 auFA==
X-Gm-Message-State: APjAAAUwlvp64CfbHItzwgMJNZc0HkFAY1Ls1PJfyM7bQZgBL/oBfo/2
 PbzDDm10UWwXa06GNACq66U=
X-Google-Smtp-Source: APXvYqzYdAWKFIs+VsCPM+aRKfv4xdzOF68ZHdwgvThexqcw/HGkkiQVMrGZrh7oe8WQqm2t7rS0EA==
X-Received: by 2002:a65:610a:: with SMTP id z10mr35758284pgu.54.1557182116975; 
 Mon, 06 May 2019 15:35:16 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id c19sm14254976pgi.42.2019.05.06.15.35.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 15:35:16 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [PATCH v2 2/2] dma-contiguous: Use fallback alloc_pages for single
 pages
Date: Mon,  6 May 2019 15:33:34 -0700
Message-Id: <20190506223334.1834-3-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506223334.1834-1-nicoleotsuka@gmail.com>
References: <20190506223334.1834-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_153520_361904_311A2C94 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: chris@zankel.net, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 sfr@canb.auug.org.au, tony@atomide.com, catalin.marinas@arm.com,
 joro@8bytes.org, will.deacon@arm.com, linux@armlinux.org.uk,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 jcmvbkbc@gmail.com, wsa+renesas@sang-engineering.com,
 akpm@linux-foundation.org, treding@nvidia.com, dwmw2@infradead.org,
 iamjoonsoo.kim@lge.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The addresses within a single page are always contiguous, so it's
not so necessary to always allocate one single page from CMA area.
Since the CMA area has a limited predefined size of space, it may
run out of space in heavy use cases, where there might be quite a
lot CMA pages being allocated for single pages.

However, there is also a concern that a device might care where a
page comes from -- it might expect the page from CMA area and act
differently if the page doesn't.

This patch tries to use the fallback alloc_pages path, instead of
one-page size allocations from the global CMA area in case that a
device does not have its own CMA area. This'd save resources from
the CMA global area for more CMA allocations, and also reduce CMA
fragmentations resulted from trivial allocations.

Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
---
 kernel/dma/contiguous.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 21f39a6cb04f..6914b92d5c88 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -223,14 +223,23 @@ bool dma_release_from_contiguous(struct device *dev, struct page *pages,
  * This function allocates contiguous memory buffer for specified device. It
  * first tries to use device specific contiguous memory area if available or
  * the default global one, then tries a fallback allocation of normal pages.
+ *
+ * Note that it byapss one-page size of allocations from the global area as
+ * the addresses within one page are always contiguous, so there is no need
+ * to waste CMA pages for that kind; it also helps reduce fragmentations.
  */
 struct page *dma_alloc_contiguous(struct device *dev, size_t size, gfp_t gfp)
 {
 	int node = dev ? dev_to_node(dev) : NUMA_NO_NODE;
 	size_t count = PAGE_ALIGN(size) >> PAGE_SHIFT;
 	size_t align = get_order(PAGE_ALIGN(size));
-	struct cma *cma = dev_get_cma_area(dev);
 	struct page *page = NULL;
+	struct cma *cma = NULL;
+
+	if (dev && dev->cma_area)
+		cma = dev->cma_area;
+	else if (count > 1)
+		cma = dma_contiguous_default_area;
 
 	/* CMA can be used only in the context which permits sleeping */
 	if (cma && gfpflags_allow_blocking(gfp)) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
