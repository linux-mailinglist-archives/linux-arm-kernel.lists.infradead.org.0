Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78672AD00D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Sep 2019 18:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D77nG1AmJdv3lqS4hbRu8X8TSA5lBYBPKVo5dE58LYk=; b=qFHBMc517aXkji
	QSUIUKPzSO28wqlC3j1zwyGU+1VEcPcBJUV010PEDHUXuFwHDxZHXCFupMtqPUyBCMK789Qgd162e
	Zu09KY4RqQJA8T+gjgd2mdv1xO9A/KOUFaWdliy1TVCT/X5qchKfCS2dvk4PI5zH5+UZsKD7FSsoS
	r9bPdzXzYJOTRYnmk6CLLYBW6DYjETm3PPSLS+mwu93HahGDjMwCb8FM7VlqX61JCgJEmcgvijFoH
	LN/M7mFxUBvIrtMdzBDHYRuyUXTae5PGc8iN5MXhDzmo5VyxVnz51GT5rYLh3tVMqZG0GcPrIVIlB
	tu9LOb9HCY2K2fs5O9Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i70Vq-0000RB-6a; Sun, 08 Sep 2019 16:58:06 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i70Ur-0006Cb-JS
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Sep 2019 16:57:09 +0000
Received: by mail-pf1-x444.google.com with SMTP id 205so7658188pfw.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Sep 2019 09:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RfHmYWiMThI6XBXa2YE269JhY5zyIOLGivfX/oOORWs=;
 b=DmYpORWJqyzijh72UcrIWdFFAa+ww/GFK6qzQZmnCCIq+YOTGiYhGxXGAJUM66+ViZ
 biwANpSj16S/IWvPLXicptTlojpKqRsl76xoCqv73zpCCmI3Ry414D3qf2XQVJbLRkYz
 MKnJeO0BCQbCSPBcJvHk9ZwcjQJmI1fqHAOJBw/kpdeXEc9zDiUH7BWR7nt5hq2VV4VR
 TAj4QqkEciqMizmYpSv4Bxfifj1yjQ+HWcpbGVpdYl9a40kDFvNZUQAn1t+nqa9RKoq8
 fG0I7ETsqgdcF+2BV6wQGXzS4yhP6Cp/jMrleb7Yt2880pcKUcT3rXZGljbub+Wz2vpU
 Y6Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RfHmYWiMThI6XBXa2YE269JhY5zyIOLGivfX/oOORWs=;
 b=uCqzwLLomInCCVowXM16NO0UPEai1mJuGKLZbrla9kWwrsl1LAtqSPpPu7qDWUgI0w
 c0QZJ9KuBtT175s3zyJA8ENGlBagzYH21jImzptLpyvv8muIQ2VD1RBtJ3wEooXjUYsL
 OGS/4jQOFtaD76DJInlAjXZ7rfuYGgtRyShkkZ2BFP0s8l3ZEr8LWinrviZnXd07KkKc
 CyVbnvaD6INjOtFRlnoHMs3tr51pVZ4DRtPW0e6SG8bXSqXTakB/nsSzWRuN2RUGD0v+
 cACFmcKOQktveDOkbu41erY2icEcQawV2YPxyF+L2tCkhR0OkOw6/ICKb3bQilXXcLoT
 NZuQ==
X-Gm-Message-State: APjAAAUL3syJGxMMtyHU6wM+9DKFnYgFr7W8G0TJx43WarfkErnXPPym
 7qWUs/4S08YdGSolTFyA1uz1Mw==
X-Google-Smtp-Source: APXvYqwb14B4be5Dly+SGA8/U+UtNd3CILzif54GYTzQtR0eqj4U9DtUfUiUL561KlrtajOkqtGwTA==
X-Received: by 2002:a17:90a:28c5:: with SMTP id
 f63mr11263462pjd.67.1567961821142; 
 Sun, 08 Sep 2019 09:57:01 -0700 (PDT)
Received: from localhost.localdomain ([24.244.23.109])
 by smtp.googlemail.com with ESMTPSA id
 f188sm13834631pfa.170.2019.09.08.09.56.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Sep 2019 09:57:00 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V6 1/5] iommu/amd: Remove unnecessary locking from AMD iommu
 driver
Date: Sun,  8 Sep 2019 09:56:37 -0700
Message-Id: <20190908165642.22253-2-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190908165642.22253-1-murphyt7@tcd.ie>
References: <20190908165642.22253-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190908_095705_656213_C384927C 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, virtualization@lists.linux-foundation.org,
 linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 Will Deacon <will@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-rockchip@lists.infradead.org, Andy Gross <agross@kernel.org>,
 Gerald Schaefer <gerald.schaefer@de.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 linux-kernel@vger.kernel.org, Tom Murphy <murphyt7@tcd.ie>,
 Rob Clark <robdclark@gmail.com>, Kukjin Kim <kgene@kernel.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With or without locking it doesn't make sense for two writers to be
writing to the same IOVA range at the same time. Even with locking we
still have a race condition, whoever gets the lock first, so we still
can't be sure what the result will be. With locking the result will be
more sane, it will be correct for the last writer, but still useless
because we can't be sure which writer will get the lock last. It's a
fundamentally broken design to have two writers writing to the same
IOVA range at the same time.

So we can remove the locking and work on the assumption that no two
writers will be writing to the same IOVA range at the same time.

The only exception is when we have to allocate a middle page in the page
tables, the middle page can cover more than just the IOVA range a writer
has been allocated. However this isn't an issue in the AMD driver
because it can atomically allocate middle pages using "cmpxchg64()".

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/amd_iommu.c       | 10 +---------
 drivers/iommu/amd_iommu_types.h |  1 -
 2 files changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/iommu/amd_iommu.c b/drivers/iommu/amd_iommu.c
index 008da21a2592..1948be7ac8f8 100644
--- a/drivers/iommu/amd_iommu.c
+++ b/drivers/iommu/amd_iommu.c
@@ -2858,7 +2858,6 @@ static void protection_domain_free(struct protection_domain *domain)
 static int protection_domain_init(struct protection_domain *domain)
 {
 	spin_lock_init(&domain->lock);
-	mutex_init(&domain->api_lock);
 	domain->id = domain_id_alloc();
 	if (!domain->id)
 		return -ENOMEM;
@@ -3045,9 +3044,7 @@ static int amd_iommu_map(struct iommu_domain *dom, unsigned long iova,
 	if (iommu_prot & IOMMU_WRITE)
 		prot |= IOMMU_PROT_IW;
 
-	mutex_lock(&domain->api_lock);
 	ret = iommu_map_page(domain, iova, paddr, page_size, prot, GFP_KERNEL);
-	mutex_unlock(&domain->api_lock);
 
 	domain_flush_np_cache(domain, iova, page_size);
 
@@ -3058,16 +3055,11 @@ static size_t amd_iommu_unmap(struct iommu_domain *dom, unsigned long iova,
 			   size_t page_size)
 {
 	struct protection_domain *domain = to_pdomain(dom);
-	size_t unmap_size;
 
 	if (domain->mode == PAGE_MODE_NONE)
 		return 0;
 
-	mutex_lock(&domain->api_lock);
-	unmap_size = iommu_unmap_page(domain, iova, page_size);
-	mutex_unlock(&domain->api_lock);
-
-	return unmap_size;
+	return iommu_unmap_page(domain, iova, page_size);
 }
 
 static phys_addr_t amd_iommu_iova_to_phys(struct iommu_domain *dom,
diff --git a/drivers/iommu/amd_iommu_types.h b/drivers/iommu/amd_iommu_types.h
index 9ac229e92b07..b764e1a73dcf 100644
--- a/drivers/iommu/amd_iommu_types.h
+++ b/drivers/iommu/amd_iommu_types.h
@@ -468,7 +468,6 @@ struct protection_domain {
 	struct iommu_domain domain; /* generic domain handle used by
 				       iommu core code */
 	spinlock_t lock;	/* mostly used to lock the page table*/
-	struct mutex api_lock;	/* protect page tables in the iommu-api path */
 	u16 id;			/* the domain id written to the device table */
 	int mode;		/* paging mode (0-6 levels) */
 	u64 *pt_root;		/* page table root pointer */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
