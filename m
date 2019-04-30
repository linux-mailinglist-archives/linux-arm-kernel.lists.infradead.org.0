Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4774EEEA2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 03:57:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pK9g/tKPkagaC676qNfu08cL180JRKp74+mkp11LkBA=; b=Qvja3Z1r4vxM16Px5GhAzdzJPG
	x/hMm+GB8Ddc4IG/EPXSs0KZb2tfd7iNHwZnrnx5g4gunfr5C2MU8KfK9DM6kVqweDjFxOrFNAn9W
	xUHNp/rtetLUk3N+avuWtuFx7d2pbW+rGxZRE/Y7geA+876GoanZuDH7o1eYXQoIc9PoU1P76NStG
	33cXa6/sr28QW3Bx3Hjzy0rJU2x8H97UIUeQnC3AV2Grjw5sen1iKrunhKn6n6akNlW5yxEafnLpA
	5j5tSkHYws4564w54WBJoUKeIJZjf7frlToQMr6W98BBzlYtCp8JV+H9Gkxaxk6yuyU5rZM8xmMgz
	KcGmYV3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLI1Y-0006ii-9Q; Tue, 30 Apr 2019 01:57:36 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLI12-0006IT-Jr
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 01:57:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id v80so1667070pfa.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 29 Apr 2019 18:57:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=s8UYDA0A35ZvIDjqUXHlnj64LOZDrFMTPlT84kyIZ/A=;
 b=M87On/OVQyBg+MT1fVPE7dKNwirCzXjLqib8e9Rziw1Ivr/4fR4X+fNYh7Z6Q7F582
 9l6GJBGPMqJqDugoryFUtON6Rziuv8o26pwNLS1Gkeqe4XaanoSK/EuQcmYltcUFjj1j
 rApDbk9/KkrxFqAqefRKrCatfUmoW/xFrSBF5Zl6ZaCffNYX4fuHXBSllNEcbp1fyXSy
 XY//ob5MYUHZZ6zVoCf+wezYjw9eeQNrLgq0Y+YMCYYbPnrh9scxIyGMB0cp+3R1f6nV
 r+mw+cUCZj0+/w5ylx8X+5oXwyKyvtA87jgmz5NmzWWzw7bGJL94m5dvcxkkFAjNucsm
 gHuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=s8UYDA0A35ZvIDjqUXHlnj64LOZDrFMTPlT84kyIZ/A=;
 b=n/VpYF6p+WHaekPmUfOxK7ALrlhCvtYKGAzv0yS/btN6+14M7N7em9EibLtt8tL6Tm
 RYDx8ANXkPgKZtiajhfhbGaOKZiciFvg+5TCRDA/55+QWZz5ZDCVlFuHc1sitCC34tkE
 1yLhfzWPidREkl4JASzovPOWSl2rZsktY7l4kgD5E/iEFF2wEUIPuoBDsrRO5ITm9j2o
 Nm/qgEmo40xb6lcLuogl3G7WBvITrPlqARw2SJwTbswNdq4NJ/9ZtwS3FDa1iyHjb0ij
 C/1nqakGkKukH7d+fTRcv7l29FAacaxTT0Pesvurj3ew6RsFN66lRkgVYXJk8GFs7TYh
 1yyw==
X-Gm-Message-State: APjAAAWD5asSlh56pZBTJCFP5EV93yJm7ndM5cJodacxSdTYS/ufsq4D
 4E2S0cayattLlDn5+sDqo5w=
X-Google-Smtp-Source: APXvYqzD4hPvjqmWE2q801NZMH8qACSDt5uAhDTlNqVfP4C95RfP3OVEnzocGAEnXIXXblyEUKqGYg==
X-Received: by 2002:a63:8741:: with SMTP id i62mr12431618pge.313.1556589423757; 
 Mon, 29 Apr 2019 18:57:03 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id a12sm36918995pgq.21.2019.04.29.18.57.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 18:57:03 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [RFC/RFT PATCH 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
Date: Mon, 29 Apr 2019 18:55:21 -0700
Message-Id: <20190430015521.27734-3-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430015521.27734-1-nicoleotsuka@gmail.com>
References: <20190430015521.27734-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_185704_648868_AF2B0EB6 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index afe5a673668e..71aba1551275 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -186,14 +186,23 @@ int __init dma_contiguous_reserve_area(phys_addr_t size, phys_addr_t base,
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
