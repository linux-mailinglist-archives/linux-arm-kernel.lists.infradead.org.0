Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86FBB28FD6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 06:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AShumUl3Ce/ac2oMvn3zxERqzLS6A8I9SCIXG9p5fmY=; b=k6LTyrEWBDwBsNg9n2Rqu+LAg3
	i2uJI9GXgINeuybATnmWZccZ5+o2FCTDj4siGqsCZIm+uSXN8tRCoBnow94A7sV2jdnWKQPPk2ULW
	N4Sjt7EoXEq1hp0daiBdjbXvJaJ7yiVpZjHwHTwYyPFXG0Gv6aNAFzw1wyR4mnmB0vXB2olnuvdC0
	/MAkBqHI6yusMSrtJpPlCiwwTVAmlFB8bv80aMH15XfJg8N7AORsC8HmD2m8yZXRTEHP2VCrF69Cv
	gb5JoBbmux6UGC0x5dfkRpq04/tpYo67N5NIft7LZL/VaOYrfW/pS9SyNYMOfjdONqCl7lJnd7771
	8MW748hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1VJ-00013O-BD; Fri, 24 May 2019 04:08:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Uz-0000r7-Ve
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 04:08:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id 33so1309707pgv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 23 May 2019 21:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vxeV9ft42Z9weuRQsncwqOnoZhf6GFp447KDcblUrfk=;
 b=uEOS4vpSHdvXshyeyQ0iD5vi/t5HfXMC3vH5rAwA3MkTTMmV9SwBcKO6u2MgfwD9Qv
 rg1ur842IMCEA0od5Kz1Bv0neEZVP1EFQ2hnPy6aqnCPu5vv/305N8orS5j1TIBm7RZr
 DKlEvNF10U80id4FfPyCmZCEINE1FFalSGEjnvRo6BfpitC35mWn0iQrw5vn7AiTBhif
 Kxp6iu6brjDoyH44Gsj4iu6eW63mCBq11PMUMbdOAIsgMjTC3mx8K4KwGv1R93lWGzOB
 ZYth9SqRBCknZjn4lf5D7bcJSLyfsIhameDrjsQYZHjABq4YfuC8DW9+L0WJQsVTOnVj
 SZVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vxeV9ft42Z9weuRQsncwqOnoZhf6GFp447KDcblUrfk=;
 b=Fs/9CJsHo5m2tT3oQJIfdD3O70quzsKTwxRSLXIJK0sco6OB2gX7yXBI5Gybeos3CJ
 zKoG4QqqC9lovg6PkbzrgjFwX0ENhyz59RVBBgfRBjGOfthHVeMDLLCSxBogJTq/nYaF
 cz8FZYLmXrHKvb2keFqnwh+IsHYCgu9H6xM04ZBNfJNcypWjLhug7fa7RhU2wIdoGgUL
 HrlQg0DgBfcI0UyTdkMYo+sc3UmQA+sC97ZiBkxz40uMKhNL7o043bbhxEYZeKvrgq/W
 0tP8aMFWpSpd5l0nOMZOVk69fFxApF1STqIbNtXmAuG/Xpp7CQpiwbmsAZ6lRhqJxwGs
 wz0g==
X-Gm-Message-State: APjAAAWOVNlZM8zPUOFeu6RXldZt/Kr7/V5DvoyhP9y1NZBBed6P9G1u
 ELPj9Rc4CfgLPBrSNOh9WFE=
X-Google-Smtp-Source: APXvYqz3rANqBcGuU0hMuqFXJhoStKwnDv8T7RVd97CjQ1RaDUTPIv1XEAw8pA1ErKVwCpbE/Uq31g==
X-Received: by 2002:a62:3605:: with SMTP id d5mr89150670pfa.28.1558670884755; 
 Thu, 23 May 2019 21:08:04 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id e123sm786412pgc.29.2019.05.23.21.08.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 21:08:04 -0700 (PDT)
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: hch@lst.de,
	robin.murphy@arm.com,
	m.szyprowski@samsung.com
Subject: [PATCH v3 2/2] dma-contiguous: Use fallback alloc_pages for single
 pages
Date: Thu, 23 May 2019 21:06:33 -0700
Message-Id: <20190524040633.16854-3-nicoleotsuka@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524040633.16854-1-nicoleotsuka@gmail.com>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_210806_015666_23288CF9 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 dann.frazier@canonical.com, akpm@linux-foundation.org, treding@nvidia.com,
 dwmw2@infradead.org, iamjoonsoo.kim@lge.com,
 linux-arm-kernel@lists.infradead.org
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
