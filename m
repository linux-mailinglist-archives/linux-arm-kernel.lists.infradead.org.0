Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1663C1A213E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4Rt5cvPrPAalnnYUQXih5cEMcCpSoKy34tZ7llKRnY=; b=rWSNd3+fRtpYOk
	Wkg1jH51u/SBW5Ytdif2Zd9tz9yC8ct7m6x88Gy1SDxJTYW62x2a0wNVb8iiW+CZe318FEWY/QRQJ
	Bh1hzdkPznnAvjm1CHUyaE5vR+nv18nT7htql0NY0EffvNB+lmhsixb9fSRFk+tzJkXy/FuqbJggW
	O5n+NWEk+tUj9D6khPMQlol8AJGfslP/WssvJ5eRB+fxdiMWuwUFacRaHzivI7t53m5JQY9OOedQz
	Vrylh9HUrol8jmUd74F3JO3oG89AUu3/ghjC/TttlEVr2hqv8pkgmq3B2Sq21Jl2cMlLR3+OKGeP0
	UVDquHUrEnHzLyZmYdqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9QN-00087i-6z; Wed, 08 Apr 2020 12:03:19 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9NR-00049e-7q; Wed, 08 Apr 2020 12:00:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 x86@kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Laura Abbott <labbott@redhat.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Minchan Kim <minchan@kernel.org>, Nitin Gupta <ngupta@vflare.org>
Subject: [PATCH 13/28] mm: rename vmap_page_range to map_kernel_range
Date: Wed,  8 Apr 2020 13:59:11 +0200
Message-Id: <20200408115926.1467567-14-hch@lst.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
References: <20200408115926.1467567-1-hch@lst.de>
MIME-Version: 1.0
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linux-arch@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-s390@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linaro-mm-sig@lists.linaro.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, bpf@vger.kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This matches the map_kernel_range_noflush API.  Also change to pass
a size instead of the end, similar to the noflush version.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 mm/vmalloc.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/mm/vmalloc.c b/mm/vmalloc.c
index 55df5dc6a9fc..a3d810def567 100644
--- a/mm/vmalloc.c
+++ b/mm/vmalloc.c
@@ -272,13 +272,13 @@ int map_kernel_range_noflush(unsigned long addr, unsigned long size,
 	return nr;
 }
 
-static int vmap_page_range(unsigned long start, unsigned long end,
+static int map_kernel_range(unsigned long start, unsigned long size,
 			   pgprot_t prot, struct page **pages)
 {
 	int ret;
 
-	ret = map_kernel_range_noflush(start, end - start, prot, pages);
-	flush_cache_vmap(start, end);
+	ret = map_kernel_range_noflush(start, size, prot, pages);
+	flush_cache_vmap(start, start + size);
 	return ret;
 }
 
@@ -1866,7 +1866,7 @@ void *vm_map_ram(struct page **pages, unsigned int count, int node, pgprot_t pro
 
 	kasan_unpoison_vmalloc(mem, size);
 
-	if (vmap_page_range(addr, addr + size, prot, pages) < 0) {
+	if (map_kernel_range(addr, size, prot, pages) < 0) {
 		vm_unmap_ram(mem, count);
 		return NULL;
 	}
@@ -2030,10 +2030,9 @@ void unmap_kernel_range(unsigned long addr, unsigned long size)
 int map_vm_area(struct vm_struct *area, pgprot_t prot, struct page **pages)
 {
 	unsigned long addr = (unsigned long)area->addr;
-	unsigned long end = addr + get_vm_area_size(area);
 	int err;
 
-	err = vmap_page_range(addr, end, prot, pages);
+	err = map_kernel_range(addr, get_vm_area_size(area), prot, pages);
 
 	return err > 0 ? 0 : err;
 }
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
