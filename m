Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 475278B7FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1/vccIe+J7Xcx4k8tfz3IkKDezMfqAg10mJ6pbbuxI=; b=S5ce7YAduDu8Ot
	RapojiaOb46bvP8/NDWOYZErnTmM3N5gP4rvEkY2SmTnaTnc3wUcCNcgxQvb+ynRW1UBaTpLkBEDa
	HNKCZj/b/aDU1MbR9TcE1I59kVv7dRJhGWtHYF2m/GWjtaI+6mzQAzM7U9bnAqbyaYYuENluaR388
	xoVOp997GLFwY7y6sfvG87Zryb1aVNwBw4x9fge79D9Atg2iaoONnznG7jlY0IqMx/JoMK7EIIkbL
	5KBdrXP2I8RC6ZDfmk2j+s6ujbaltRMqjosPvlyvRWlgSLjVQaK/AFdLq7625C0OMT5Slnp29M3k1
	T29KGCP5o7MwSA5J2CLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxVZt-0007Yt-Bn; Tue, 13 Aug 2019 12:07:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxVZg-0007YW-AI
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:06:49 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DE6D020578;
 Tue, 13 Aug 2019 12:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565698008;
 bh=TET6WjOQahzKuCbEBc/ELlWuL5zy2JXUgDdm39iIfKE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vOqcEo9DN08hqiKR3LQUsdgfppxOeTWnE/FRtSeNk8YDI9lY1+JQfiHsqAVoTl10M
 ZfyAt2ot6Gxj0JNN7DgFCftwU/8DuU4lmOWdTryiULq9CV+n1lSIH8/jmyt/IQ3jgc
 AlTFjS71ifJBWAOsSwnmMjIvLYg9WBe94TywDnjI=
Date: Tue, 13 Aug 2019 13:06:44 +0100
From: Will Deacon <will@kernel.org>
To: Qian Cai <cai@lca.pw>
Subject: Re: "arm64/for-next/core" causes boot panic
Message-ID: <20190813120643.25y5px4andu6cfwp@willie-the-truck>
References: <1565646695.8572.6.camel@lca.pw>
 <20190813090200.h2rz4xphgnb5j5bc@willie-the-truck>
 <20190813105852.ovk5gtzddwlsm4ly@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190813105852.ovk5gtzddwlsm4ly@willie-the-truck>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_050648_395590_9539B39F 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, steve.capper@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[+Steve]

On Tue, Aug 13, 2019 at 11:58:52AM +0100, Will Deacon wrote:
> On Tue, Aug 13, 2019 at 10:02:01AM +0100, Will Deacon wrote:
> > On Mon, Aug 12, 2019 at 05:51:35PM -0400, Qian Cai wrote:
> > > Booting today's linux-next on an arm64 server triggers a panic with
> > > CONFIG_KASAN_SW_TAGS=y pointing to this line,
> > 
> > Is this the only change on top of defconfig? If not, please can you share
> > your full .config?
> > 
> > > kfree()->virt_to_head_page()->compound_head()
> > > 
> > > unsigned long head = READ_ONCE(page->compound_head);
> > > 
> > > The bisect so far indicates one of those could be bad,
> > 
> > I guess that means the issue is reproducible on the arm64 for-next/core
> > branch. Once I have your .config, I'll give it a go.
> 
> FWIW, I've managed to reproduce this using defconfig + SW_TAGS on
> for-next/core, so I'll keep investigating.

Right, hacky diff below seems to resolve this, so I'll split this up into
some proper patches as there is more than one bug here.

Thanks,

Will

--->8

diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index afaf512c0e1b..541e8dcb5ab3 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -244,7 +244,7 @@ static inline const void *__tag_set(const void *addr, u8 tag)
 /*
  * The linear kernel range starts in the middle of the virtual adddress
  * space. Testing the top bit for the start of the region is a
- * sufficient check.
+ * sufficient check and avoids having to worry about the tag.
  */
 #define __is_lm_address(addr)	(!((addr) & BIT(vabits_actual - 1)))
 
@@ -252,7 +252,7 @@ static inline const void *__tag_set(const void *addr, u8 tag)
 #define __kimg_to_phys(addr)	((addr) - kimage_voffset)
 
 #define __virt_to_phys_nodebug(x) ({					\
-	phys_addr_t __x = (phys_addr_t)(x);				\
+	phys_addr_t __x = (phys_addr_t)(__tag_reset(x));		\
 	__is_lm_address(__x) ? __lm_to_phys(__x) :			\
 			       __kimg_to_phys(__x);			\
 })
@@ -301,8 +301,8 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define __pa_nodebug(x)		__virt_to_phys_nodebug((unsigned long)(x))
 #define __va(x)			((void *)__phys_to_virt((phys_addr_t)(x)))
 #define pfn_to_kaddr(pfn)	__va((pfn) << PAGE_SHIFT)
-#define virt_to_pfn(x)      __phys_to_pfn(__virt_to_phys((unsigned long)(x)))
-#define sym_to_pfn(x)	    __phys_to_pfn(__pa_symbol(x))
+#define virt_to_pfn(x)		__phys_to_pfn(__virt_to_phys((unsigned long)(x)))
+#define sym_to_pfn(x)		__phys_to_pfn(__pa_symbol(x))
 
 /*
  *  virt_to_page(k)	convert a _valid_ virtual address to struct page *
@@ -311,7 +311,7 @@ static inline void *phys_to_virt(phys_addr_t x)
 #define ARCH_PFN_OFFSET		((unsigned long)PHYS_PFN_OFFSET)
 
 #if !defined(CONFIG_SPARSEMEM_VMEMMAP) || defined(CONFIG_DEBUG_VIRTUAL)
-#define virt_to_page(kaddr)	pfn_to_page(__pa(kaddr) >> PAGE_SHIFT)
+#define virt_to_page(kaddr)	pfn_to_page(virt_to_pfn(kaddr))
 #else
 #define __virt_to_pgoff(kaddr)	(((u64)(kaddr) - PAGE_OFFSET) / PAGE_SIZE * sizeof(struct page))
 #define __page_to_voff(kaddr)	(((u64)(kaddr) - VMEMMAP_START) * PAGE_SIZE / sizeof(struct page))
@@ -324,15 +324,17 @@ static inline void *phys_to_virt(phys_addr_t x)
 	((void *)__addr_tag);						\
 })
 
-#define virt_to_page(vaddr)	((struct page *)((__virt_to_pgoff(vaddr)) + VMEMMAP_START))
+#define virt_to_page(kaddr)	({					\
+	unsigned long __addr = __tag_reset((unsigned long)kaddr);	\
+	(struct page *)((__virt_to_pgoff(__addr) + VMEMMAP_START));	\
+})
 #endif
 #endif
 
-#define _virt_addr_is_linear(kaddr)	\
-	(__tag_reset((u64)(kaddr)) >= PAGE_OFFSET)
-
-#define virt_addr_valid(kaddr)		\
-	(_virt_addr_is_linear(kaddr) && pfn_valid(virt_to_pfn(kaddr)))
+#define virt_addr_valid(kaddr)	({					\
+	unsigned long __addr = (unsigned long)kaddr;			\
+	__is_lm_address(__addr) && pfn_valid(virt_to_pfn(__addr));	\
+})
 
 /*
  * Given that the GIC architecture permits ITS implementations that can only be

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
