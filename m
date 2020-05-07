Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A08D1C9EBE
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 00:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zruqD8xWjMGxDf9K0TFrhRZ4PkLZoWz7XEau1J5IXJA=; b=cPAzSVZqY9MM2n
	YO+X8b9T1huc7pDLMt9vb+5bUza/VRogBUEV4FlaE4jUOHh0l13xgGf1bsj813gh7oSGPSvN3Ys53
	7QH4B9q3WXt7GaZxEFku9TWraVF/rg31CZtKekL3wnKAE8KCcwA19Qg+VwDn/r6Zkn6YYkHl00Izz
	5fLXjZNk9vAt/zeWQ/YnRFSltZF5gxM80/w2c1RHG9Fi101JXcFYPoI5B3u3Vv36xOdTeViAYmbKK
	t1NjsFnqrBfEU+C8EdvD7pi+m2CL8kvyllj+OqCg4Jge6zQsEUAU0T1MrvI5CdLfi2QtYrTSQ04/G
	xXfFo3GMU4+Js91iRJIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWpMP-0006yl-HT; Thu, 07 May 2020 22:51:21 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWpME-0006uz-J4; Thu, 07 May 2020 22:51:12 +0000
IronPort-SDR: ttswIfcYKM6NM2yuiOzlBuQDeCJzBxZ2BHqWeRbgm4KjA1Q6weS+oGS2KFedBLWxepUY29f0i4
 EtkrAUSGcbFw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 15:51:10 -0700
IronPort-SDR: KkjD1YAKdFT3e8D2XZABzY3aQLKnEXKOn0h0SQMKXa5uihRm4jFYYxRo95q/YttHS9mZ9NUdq7
 NTH13HRvGuSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,365,1583222400"; d="scan'208";a="251643272"
Received: from iweiny-desk2.sc.intel.com ([10.3.52.147])
 by fmsmga008.fm.intel.com with ESMTP; 07 May 2020 15:51:09 -0700
Date: Thu, 7 May 2020 15:51:09 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Andrew Morton <akpm@linux-foundation.org>
Subject: Re: [PATCH V3 15/15] kmap: Consolidate kmap_prot definitions
Message-ID: <20200507225109.GB1428632@iweiny-DESK2.sc.intel.com>
References: <20200507150004.1423069-1-ira.weiny@intel.com>
 <20200507150004.1423069-16-ira.weiny@intel.com>
 <20200507135307.4ba10d99c611f17beab31751@linux-foundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507135307.4ba10d99c611f17beab31751@linux-foundation.org>
User-Agent: Mutt/1.11.1 (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_155110_639379_9CF30627 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
 linux-mips@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Paul Mackerras <paulus@samba.org>,
 "H. Peter Anvin" <hpa@zytor.com>, sparclinux@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>, Helge Deller <deller@gmx.de>,
 x86@kernel.org, linux-csky@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Christoph Hellwig <hch@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 linux-snps-arc@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 Borislav Petkov <bp@alien8.de>, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 01:53:07PM -0700, Andrew Morton wrote:
> On Thu,  7 May 2020 08:00:03 -0700 ira.weiny@intel.com wrote:
> 
> > From: Ira Weiny <ira.weiny@intel.com>
> > 
> > Most architectures define kmap_prot to be PAGE_KERNEL.
> > 
> > Let sparc and xtensa define there own and define PAGE_KERNEL as the
> > default if not overridden.
> > 
> 
> checkpatch considered useful ;)

Yes sorry...  V3.1 on it's way...

Ira

> 
> 
> From: Andrew Morton <akpm@linux-foundation.org>
> Subject: kmap-consolidate-kmap_prot-definitions-checkpatch-fixes
> 
> WARNING: macros should not use a trailing semicolon
> #134: FILE: arch/sparc/include/asm/highmem.h:33:
> +#define kmap_prot __pgprot(SRMMU_ET_PTE | SRMMU_PRIV | SRMMU_CACHE);
> 
> total: 0 errors, 1 warnings, 100 lines checked
> 
> NOTE: For some of the reported defects, checkpatch may be able to
>       mechanically convert to the typical style using --fix or --fix-inplace.
> 
> ./patches/kmap-consolidate-kmap_prot-definitions.patch has style problems, please review.
> 
> NOTE: If any of the errors are false positives, please report
>       them to the maintainer, see CHECKPATCH in MAINTAINERS.
> 
> Please run checkpatch prior to sending patches
> 
> Cc: Ira Weiny <ira.weiny@intel.com>
> Signed-off-by: Andrew Morton <akpm@linux-foundation.org>
> ---
> 
>  arch/sparc/include/asm/highmem.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/arch/sparc/include/asm/highmem.h~kmap-consolidate-kmap_prot-definitions-checkpatch-fixes
> +++ a/arch/sparc/include/asm/highmem.h
> @@ -30,7 +30,7 @@
>  /* declarations for highmem.c */
>  extern unsigned long highstart_pfn, highend_pfn;
>  
> -#define kmap_prot __pgprot(SRMMU_ET_PTE | SRMMU_PRIV | SRMMU_CACHE);
> +#define kmap_prot __pgprot(SRMMU_ET_PTE | SRMMU_PRIV | SRMMU_CACHE)
>  extern pte_t *pkmap_page_table;
>  
>  void kmap_init(void) __init;
> _
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
