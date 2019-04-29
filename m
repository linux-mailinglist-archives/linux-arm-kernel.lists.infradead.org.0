Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAAE2E816
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 18:49:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rHE887eT0jtRUbKWoSYBFY9sns9WDPen1e+hbkorlk4=; b=OJzRWQvXnBKV0F
	Ky1/3AIRFBiBKdL0aIWXNC4ecbmaiamFBzLzQCWJYZAtSblLEp2rFEAGfx3w8VdZ7NH7P0vKC/K+Q
	l5nhHmORYbs//wbTcqdVRIRtfpHDp5Z5es5zoxQ8HznE1ilCt2QEpKkudnDgB+H7KnF/dblRajepH
	SsPxLlahxy1Uyjp2XcpLL7pDEb/cKFxclWamyw9WIGykFz/95YN4aWsPN4BwvTfuB6NW8D8yJ+gYg
	kD7ykdJ3Br9qUVotyVptMqN2u8Qkd2krAmP/a3jUrapNfyA2bkudnLYm/SZf9femvHGsnU8+GYiSV
	1bjXUHFYp2nsNuX0bGxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL9TF-0004M0-2S; Mon, 29 Apr 2019 16:49:37 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL9T7-0004La-S5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 16:49:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1F89C80D;
 Mon, 29 Apr 2019 09:49:29 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2938F3F5AF;
 Mon, 29 Apr 2019 09:49:28 -0700 (PDT)
Date: Mon, 29 Apr 2019 17:49:23 +0100
From: Will Deacon <will.deacon@arm.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] arm64: fix pte_unmap() -Wunused-but-set-variable
Message-ID: <20190429164923.GA26912@fuggles.cambridge.arm.com>
References: <20190427012842.93737-1-cai@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190427012842.93737-1-cai@lca.pw>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_094929_917178_0BD42DD5 
X-CRM114-Status: GOOD (  17.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 26, 2019 at 09:28:42PM -0400, Qian Cai wrote:
> Many compilation warnings due to pte_unmap() compiles away. Fixed it by
> making it an static inline function.
> 
> mm/gup.c: In function 'gup_pte_range':
> mm/gup.c:1727:16: warning: variable 'ptem' set but not used
> [-Wunused-but-set-variable]
> mm/gup.c: At top level:
> mm/memory.c: In function 'copy_pte_range':
> mm/memory.c:821:24: warning: variable 'orig_dst_pte' set but not used
> [-Wunused-but-set-variable]
> mm/memory.c:821:9: warning: variable 'orig_src_pte' set but not used
> [-Wunused-but-set-variable]
> mm/swap_state.c: In function 'swap_ra_info':
> mm/swap_state.c:641:15: warning: variable 'orig_pte' set but not used
> [-Wunused-but-set-variable]
> mm/madvise.c: In function 'madvise_free_pte_range':
> mm/madvise.c:318:9: warning: variable 'orig_pte' set but not used
> [-Wunused-but-set-variable]
> 
> Also, remove pte_unmap_nested() as nobody uses it anymore since the
> commit ece0e2b6406a ("mm: remove pte_*map_nested()").

Can you post that as a separate patch which also removes
pte_offset_map_nested(), please?

> Signed-off-by: Qian Cai <cai@lca.pw>
> ---
>  arch/arm64/include/asm/pgtable.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index de70c1eabf33..7543e345e078 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -478,6 +478,8 @@ static inline phys_addr_t pmd_page_paddr(pmd_t pmd)
>  	return __pmd_to_phys(pmd);
>  }
>  
> +static inline void pte_unmap(pte_t *pte) { }

Hmm, is this guaranteed to stop the compiler from warning? Assuming the
pte_unmap() call is inlined, I'd expect it to keep complaining. What
compiler are you using?

Also, there are a bunch of other architectures that I would expect to have
this same issue because they defined pte_unmap() exactly the same way.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
