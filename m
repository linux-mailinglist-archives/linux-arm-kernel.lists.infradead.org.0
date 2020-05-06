Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D6E1C67F6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 08:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EWd8bODoKGYRqkr9P72IqPUYDMHEhu2WnWGi+KeY0vk=; b=mY5QFmdDFDpquB
	GpiZBA2sL+l+f4CHKaJPusztkyxGJW33kv3sJeU90h67NLMKVDUIOZ295T120eN8VuDKF/wkqXOlz
	BFxx9ZJ39lRPcPVLwHpg09oHySnsCAD9kiu8LZ86dA/fAv8IgqwAJ1mopxZq0vr0Kjl017Ai+uQ4J
	C2LWGSSNXDrh/LaAgbodiKvtFJ8U+7LiGNKKmtFsr2z41VC4Fkura49bANgmuThwKEgJjvjWe1YMW
	RoYqS0mWrLp7hLwIZC1yMWriIEW1v6wqZUMAFnXwgXAjcZwZAWHTNuc875UuNPiDC+D1CUkhPlC1F
	lJ452I1VYWZ1BxgVQQGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWDHC-0003zw-7n; Wed, 06 May 2020 06:11:26 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jWDGz-0003zA-SZ; Wed, 06 May 2020 06:11:13 +0000
Date: Tue, 5 May 2020 23:11:13 -0700
From: Christoph Hellwig <hch@infradead.org>
To: ira.weiny@intel.com
Subject: Re: [PATCH V2 05/11] {x86,powerpc,microblaze}/kmap: Move preempt
 disable
Message-ID: <20200506061113.GA5192@infradead.org>
References: <20200504010912.982044-1-ira.weiny@intel.com>
 <20200504010912.982044-6-ira.weiny@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504010912.982044-6-ira.weiny@intel.com>
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
 "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
 Max Filippov <jcmvbkbc@gmail.com>, Huang Rui <ray.huang@amd.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Helge Deller <deller@gmx.de>, x86@kernel.org, linux-csky@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, linux-snps-arc@lists.infradead.org,
 linux-xtensa@linux-xtensa.org, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Chris Zankel <chris@zankel.net>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Christian Koenig <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, May 03, 2020 at 06:09:06PM -0700, ira.weiny@intel.com wrote:
> From: Ira Weiny <ira.weiny@intel.com>
> 
> During this kmap() conversion series we must maintain bisect-ability.
> To do this, kmap_atomic_prot() in x86, powerpc, and microblaze need to
> remain functional.
> 
> Create a temporary inline version of kmap_atomic_prot within these
> architectures so we can rework their kmap_atomic() calls and then lift
> kmap_atomic_prot() to the core.
> 
> Signed-off-by: Ira Weiny <ira.weiny@intel.com>
> 
> ---
> Changes from V1:
> 	New patch
> ---
>  arch/microblaze/include/asm/highmem.h | 11 ++++++++++-
>  arch/microblaze/mm/highmem.c          | 10 ++--------
>  arch/powerpc/include/asm/highmem.h    | 11 ++++++++++-
>  arch/powerpc/mm/highmem.c             |  9 ++-------
>  arch/x86/include/asm/highmem.h        | 11 ++++++++++-
>  arch/x86/mm/highmem_32.c              | 10 ++--------
>  6 files changed, 36 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/microblaze/include/asm/highmem.h b/arch/microblaze/include/asm/highmem.h
> index 0c94046f2d58..ec9954b091e1 100644
> --- a/arch/microblaze/include/asm/highmem.h
> +++ b/arch/microblaze/include/asm/highmem.h
> @@ -51,7 +51,16 @@ extern pte_t *pkmap_page_table;
>  #define PKMAP_NR(virt)  ((virt - PKMAP_BASE) >> PAGE_SHIFT)
>  #define PKMAP_ADDR(nr)  (PKMAP_BASE + ((nr) << PAGE_SHIFT))
>  
> -extern void *kmap_atomic_prot(struct page *page, pgprot_t prot);
> +extern void *kmap_atomic_high_prot(struct page *page, pgprot_t prot);
> +void *kmap_atomic_prot(struct page *page, pgprot_t prot)

Shouldn't this be marked inline?

The rest looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
