Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA84D2F0A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 18:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dpd5omheQwB2AHYEb0c7t95BIZQ/6ysq5VpkOdFo3jg=; b=Hof4y+KPYB6hRd
	IJsyV9tQ74y6leeJWPKRfylIQYE9rPCoZ6u6Q7pxRpTw+vQe34PmQ2BLBgLgHc2sM54Fqk5J4gQCx
	yabDvYaP3pJ1oQ/BqG0dVQyiGZ2+K0FllS39clHE0UDnd5utruJnhmoNzGrVH7ZkZZC0xdyc+6qKP
	KuAh+gFMx+nZajPZdJ9/U/2ea03pUREpz9cOMdtmYvzcBXn8MYa1tIgpLjSgZC4SfnuoUZuepqob7
	Wjs/ollYMmCxcxw2y75hrKCVxai/mp+8UqGU42vF6jrklrY2uPUPp2SBPpCgKq2iw6lTm3xSZBSuW
	iek0vqnEA2WpYNOLtx2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbjF-0007jm-O1; Thu, 10 Oct 2019 16:55:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbj6-0007jQ-Hx
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 16:55:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5555828;
 Thu, 10 Oct 2019 09:55:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C5CE3F71A;
 Thu, 10 Oct 2019 09:55:42 -0700 (PDT)
Date: Thu, 10 Oct 2019 17:55:37 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Chris von Recklinghausen <crecklin@redhat.com>
Subject: Re: [PATCH] arm64: remove arm64 definitions of kc_vaddr_to_offset
 and kc_offset_to_vaddr.
Message-ID: <20191010165537.GA27584@lakrids.cambridge.arm.com>
References: <20191008175434.27434-1-crecklin@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191008175434.27434-1-crecklin@redhat.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_095544_682177_7F0BFAB3 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: will@kernel.org, james.morse@arm.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

[Roping in the arm64 maintainers]

On Tue, Oct 08, 2019 at 01:54:34PM -0400, Chris von Recklinghausen wrote:
> With the reshuffling of kernel VA space to support 52 bits, the
> kc_vaddr_to_offset and kc_offset_to_vaddr macros are broken, since they are
> based on VA_START, but VA_START no longer points to the base of the kernel
> virtual address space, (PAGE_OFFSET does now). fs/proc/kcore.c already has
> default definitions of kc_vaddr_to_offset and kc_offset_to_vaddr based on
> PAGE_OFFSET, so simply remove the arm64 definitions of them.
> 
> Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")

I think this patch is correct, but it's missing a Signed-off-by. Can you
please provide that here?

As James said in another reply, the commit message should describe the
intended semantic, what broke, and how this patch fixes the issue. As
VA_START got renamed (and no longer exists), it's also a bit unclear.

How about:

| arm64: fix kcore macros 52-bit va fallout
|
| We export the entire kernel address space (i.e. the whole of the TTBR1
| address range) via /proc/kcore. The kc_vaddr_to_offset() and
| kc_offset_to_vaddr() macros are intended to convert between a kernel
| virtual address and its offset relative to the start of the TTBR1
| address space.
|
| Prior to commit:
|
|   14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
|
| ... the offset was calculated relative to VA_START, which at the time
| was the start of the TTBR1 address space. At this time, PAGE_OFFSET
| pointed to the high half of the TTBR1 address space where arm64's
| linear map lived.
|
| That commit swapped the position of VA_START and PAGE_OFFSET, but
| failed to update kc_vaddr_to_offset() or kc_offset_to_vaddr(), so
| since then the two macros behave incorrectly.
|
| Note that VA_START was subsequently renamed to PAGE_END in commit:
|
|   77ad4ce69321abbe ("arm64: memory: rename VA_START to PAGE_END")
|
| As the generic implementations of the two macros calculate the offset
| relative to PAGE_OFFSET (which is now the start of the TTBR1 address
| space), we can delete the arm64 implementation and use those.
|
| Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")

With that wording (and your Signed-off-by):

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Thanks,
Mark.

> ---
>  arch/arm64/include/asm/pgtable.h | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/pgtable.h b/arch/arm64/include/asm/pgtable.h
> index 7576df00eb50..8330810f699e 100644
> --- a/arch/arm64/include/asm/pgtable.h
> +++ b/arch/arm64/include/asm/pgtable.h
> @@ -876,9 +876,6 @@ static inline void update_mmu_cache(struct vm_area_struct *vma,
>  
>  #define update_mmu_cache_pmd(vma, address, pmd) do { } while (0)
>  
> -#define kc_vaddr_to_offset(v)	((v) & ~PAGE_END)
> -#define kc_offset_to_vaddr(o)	((o) | PAGE_END)
> -
>  #ifdef CONFIG_ARM64_PA_BITS_52
>  #define phys_to_ttbr(addr)	(((addr) | ((addr) >> 46)) & TTBR_BADDR_MASK_52)
>  #else
> -- 
> 2.18.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
