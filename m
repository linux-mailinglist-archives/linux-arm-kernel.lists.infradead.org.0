Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F17121C0859
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:41:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uFkGI7dr3KWURXXgtSWjP9wsrEIoi5keJVjWsMML0U8=; b=imyyPLl/O8/Hga
	jLW+wJGDddd+ozvekeNQE2sAlYq58vmTdtfMLfDd+sO4uPlXdta4pDPUnrDiLcayqAyB+0rXnYIkn
	8Vo+DvcDKl3QVvZM3efnstA9tkas7Sa9ESF5SD5r7Fzt41wC35wqq+d1KalXawWM8iUCjBkypqHEK
	diTkUUpwzB+5mrDLupNHTKG+qDtmHis2LmAIyHQv+VTWH+qSaW9mbD1f50RyfVwqJXX2BwFJvR3Tq
	LYAvjsCtDRksSDNi+5h5YGYtznHzURi2nD83JG21tCUHRCAa8fxYzSo8E+hayd7TFlPlykz+ls08u
	bLFpRSWLuOo0Dm6G11dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUG0B-0004Po-Kw; Thu, 30 Apr 2020 20:41:47 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUFxR-0000Gs-PZ; Thu, 30 Apr 2020 20:39:00 +0000
IronPort-SDR: TnozStrzB0vkFHLcw6Kh2JJX4yiQ9CGA2QBgJ6i+OBFBDrJPCNrTBL6I6PxwedkBJd1248A3/0
 2I+v5+srfKwQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:57 -0700
IronPort-SDR: C4RA7+N+Z0t2/pJbTFIWDU06VS9ozwC1Zx/UO2JjJBFPB7fq6xNHtmETl3nkUIRZMaPPJI6cCx
 oD4RjRyPVceA==
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="261902829"
Received: from iweiny-desk2.sc.intel.com (HELO localhost) ([10.3.52.147])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:38:56 -0700
From: ira.weiny@intel.com
To: linux-kernel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>
Subject: [PATCH V1 10/10] drm: Remove drm specific kmap_atomic code
Date: Thu, 30 Apr 2020 13:38:45 -0700
Message-Id: <20200430203845.582900-11-ira.weiny@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200430203845.582900-1-ira.weiny@intel.com>
References: <20200430203845.582900-1-ira.weiny@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_133857_919785_F5A0E45E 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, dri-devel@lists.freedesktop.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, Thomas Gleixner <tglx@linutronix.de>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ira Weiny <ira.weiny@intel.com>

kmap_atomic_prot() is now exported by all architectures.  Use this
function rather than open coding a driver specific kmap_atomic.

Signed-off-by: Ira Weiny <ira.weiny@intel.com>
---
 drivers/gpu/drm/ttm/ttm_bo_util.c    | 56 ++--------------------------
 drivers/gpu/drm/vmwgfx/vmwgfx_blit.c | 16 ++++----
 include/drm/ttm/ttm_bo_api.h         |  4 --
 3 files changed, 12 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c b/drivers/gpu/drm/ttm/ttm_bo_util.c
index 52d2b71f1588..f09b096ba4fd 100644
--- a/drivers/gpu/drm/ttm/ttm_bo_util.c
+++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
@@ -257,54 +257,6 @@ static int ttm_copy_io_page(void *dst, void *src, unsigned long page)
 	return 0;
 }
 
-#ifdef CONFIG_X86
-#define __ttm_kmap_atomic_prot(__page, __prot) kmap_atomic_prot(__page, __prot)
-#define __ttm_kunmap_atomic(__addr) kunmap_atomic(__addr)
-#else
-#define __ttm_kmap_atomic_prot(__page, __prot) vmap(&__page, 1, 0,  __prot)
-#define __ttm_kunmap_atomic(__addr) vunmap(__addr)
-#endif
-
-
-/**
- * ttm_kmap_atomic_prot - Efficient kernel map of a single page with
- * specified page protection.
- *
- * @page: The page to map.
- * @prot: The page protection.
- *
- * This function maps a TTM page using the kmap_atomic api if available,
- * otherwise falls back to vmap. The user must make sure that the
- * specified page does not have an aliased mapping with a different caching
- * policy unless the architecture explicitly allows it. Also mapping and
- * unmapping using this api must be correctly nested. Unmapping should
- * occur in the reverse order of mapping.
- */
-void *ttm_kmap_atomic_prot(struct page *page, pgprot_t prot)
-{
-	if (pgprot_val(prot) == pgprot_val(PAGE_KERNEL))
-		return kmap_atomic(page);
-	else
-		return __ttm_kmap_atomic_prot(page, prot);
-}
-EXPORT_SYMBOL(ttm_kmap_atomic_prot);
-
-/**
- * ttm_kunmap_atomic_prot - Unmap a page that was mapped using
- * ttm_kmap_atomic_prot.
- *
- * @addr: The virtual address from the map.
- * @prot: The page protection.
- */
-void ttm_kunmap_atomic_prot(void *addr, pgprot_t prot)
-{
-	if (pgprot_val(prot) == pgprot_val(PAGE_KERNEL))
-		kunmap_atomic(addr);
-	else
-		__ttm_kunmap_atomic(addr);
-}
-EXPORT_SYMBOL(ttm_kunmap_atomic_prot);
-
 static int ttm_copy_io_ttm_page(struct ttm_tt *ttm, void *src,
 				unsigned long page,
 				pgprot_t prot)
@@ -316,13 +268,13 @@ static int ttm_copy_io_ttm_page(struct ttm_tt *ttm, void *src,
 		return -ENOMEM;
 
 	src = (void *)((unsigned long)src + (page << PAGE_SHIFT));
-	dst = ttm_kmap_atomic_prot(d, prot);
+	dst = kmap_atomic_prot(d, prot);
 	if (!dst)
 		return -ENOMEM;
 
 	memcpy_fromio(dst, src, PAGE_SIZE);
 
-	ttm_kunmap_atomic_prot(dst, prot);
+	kunmap_atomic(dst);
 
 	return 0;
 }
@@ -338,13 +290,13 @@ static int ttm_copy_ttm_io_page(struct ttm_tt *ttm, void *dst,
 		return -ENOMEM;
 
 	dst = (void *)((unsigned long)dst + (page << PAGE_SHIFT));
-	src = ttm_kmap_atomic_prot(s, prot);
+	src = kmap_atomic_prot(s, prot);
 	if (!src)
 		return -ENOMEM;
 
 	memcpy_toio(dst, src, PAGE_SIZE);
 
-	ttm_kunmap_atomic_prot(src, prot);
+	kunmap_atomic(src);
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/vmwgfx/vmwgfx_blit.c b/drivers/gpu/drm/vmwgfx/vmwgfx_blit.c
index bb46ca0c458f..94d456a1d1a9 100644
--- a/drivers/gpu/drm/vmwgfx/vmwgfx_blit.c
+++ b/drivers/gpu/drm/vmwgfx/vmwgfx_blit.c
@@ -374,12 +374,12 @@ static int vmw_bo_cpu_blit_line(struct vmw_bo_blit_line_data *d,
 		copy_size = min_t(u32, copy_size, PAGE_SIZE - src_page_offset);
 
 		if (unmap_src) {
-			ttm_kunmap_atomic_prot(d->src_addr, d->src_prot);
+			kunmap_atomic(d->src_addr);
 			d->src_addr = NULL;
 		}
 
 		if (unmap_dst) {
-			ttm_kunmap_atomic_prot(d->dst_addr, d->dst_prot);
+			kunmap_atomic(d->dst_addr);
 			d->dst_addr = NULL;
 		}
 
@@ -388,8 +388,8 @@ static int vmw_bo_cpu_blit_line(struct vmw_bo_blit_line_data *d,
 				return -EINVAL;
 
 			d->dst_addr =
-				ttm_kmap_atomic_prot(d->dst_pages[dst_page],
-						     d->dst_prot);
+				kmap_atomic_prot(d->dst_pages[dst_page],
+						 d->dst_prot);
 			if (!d->dst_addr)
 				return -ENOMEM;
 
@@ -401,8 +401,8 @@ static int vmw_bo_cpu_blit_line(struct vmw_bo_blit_line_data *d,
 				return -EINVAL;
 
 			d->src_addr =
-				ttm_kmap_atomic_prot(d->src_pages[src_page],
-						     d->src_prot);
+				kmap_atomic_prot(d->src_pages[src_page],
+						 d->src_prot);
 			if (!d->src_addr)
 				return -ENOMEM;
 
@@ -499,9 +499,9 @@ int vmw_bo_cpu_blit(struct ttm_buffer_object *dst,
 	}
 out:
 	if (d.src_addr)
-		ttm_kunmap_atomic_prot(d.src_addr, d.src_prot);
+		kunmap_atomic(d.src_addr);
 	if (d.dst_addr)
-		ttm_kunmap_atomic_prot(d.dst_addr, d.dst_prot);
+		kunmap_atomic(d.dst_addr);
 
 	return ret;
 }
diff --git a/include/drm/ttm/ttm_bo_api.h b/include/drm/ttm/ttm_bo_api.h
index 0a9d042e075a..de1ccdcd5703 100644
--- a/include/drm/ttm/ttm_bo_api.h
+++ b/include/drm/ttm/ttm_bo_api.h
@@ -668,10 +668,6 @@ int ttm_bo_mmap_obj(struct vm_area_struct *vma, struct ttm_buffer_object *bo);
 int ttm_bo_mmap(struct file *filp, struct vm_area_struct *vma,
 		struct ttm_bo_device *bdev);
 
-void *ttm_kmap_atomic_prot(struct page *page, pgprot_t prot);
-
-void ttm_kunmap_atomic_prot(void *addr, pgprot_t prot);
-
 /**
  * ttm_bo_io
  *
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
