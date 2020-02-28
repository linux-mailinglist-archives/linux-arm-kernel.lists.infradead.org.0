Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6B6173999
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:16:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSHU5UNVx9/xTIcz2fPkV4V7My502POUO3eRyTvhwW4=; b=pr4g43dOA2kYfp
	X3u5a3Uj9M7Noh/WPiywntLFi/dEUvtz2AA/QH1qIr2cLOvyFuOUtXjNPTwNNh5XFPfz0Oq2BVTDN
	ognkvaL5BZZ4cto65u5JNLLVVNJqFY8mrQWkEEBiFvqfvIr0lzJyW2Lk/A8+SOQTYD+3YEW9Ww6u9
	3MiODj0ID2YTG8wqemOHit8X4Kbk/FRgGqHfvEZg9zU8Bnya1wzQoZl6sRBbSPOcyGae+zf34Sm1N
	WwhFlpyF9+yZrjvmCSoDObCXmjHDDmhRVevwouvROAhh+RWwa9a9+8hJ8AhFP088o4NRlxl9k5Ost
	2R3cNf+E8QW88IKwc1tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7gRJ-0007wA-FO; Fri, 28 Feb 2020 14:16:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gRB-0007vi-8K
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:16:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7AC9B31B;
 Fri, 28 Feb 2020 06:16:20 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E542C3F7B4;
 Fri, 28 Feb 2020 06:16:19 -0800 (PST)
Date: Fri, 28 Feb 2020 14:16:17 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: mm: convert cpu_do_switch_mm() to C
Message-ID: <20200228141617.GG36089@lakrids.cambridge.arm.com>
References: <20200213121452.23205-1-mark.rutland@arm.com>
 <20200227142946.GG3281767@arrakis.emea.arm.com>
 <20200228111350.GA2941@willie-the-truck>
 <20200228124731.GA4179@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228124731.GA4179@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_061621_385148_C3B48664 
X-CRM114-Status: GOOD (  29.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 12:47:32PM +0000, Will Deacon wrote:
> On Fri, Feb 28, 2020 at 11:13:50AM +0000, Will Deacon wrote:
> > On Thu, Feb 27, 2020 at 02:29:46PM +0000, Catalin Marinas wrote:
> > > On Thu, Feb 13, 2020 at 12:14:52PM +0000, Mark Rutland wrote:
> > > > There's no reason that cpu_do_switch_mm() needs to be written as an
> > > > assembly function, and having it as a C function would make it easier to
> > > > maintain.
> > > > 
> > > > This patch converts cpu_do_switch_mm() to C, removing code that this
> > > > change makes redundant (e.g. the mmid macro). Since the header comment
> > > > was stale and the prototype now implies all the necessary information,
> > > > this comment is removed. The 'pgd_phys' argument is made a phys_addr_t
> > > > to match the return type of virt_to_phys().
> > > > 
> > > > At the same time, post_ttbr_update_workaround() is updated to use
> > > > IS_ENABLED(), which allows the compiler to figure out it can elide calls
> > > > for !CONFIG_CAVIUM_ERRATUM_27456 builds.
> > > > 
> > > > There should be no functional change as a result of this patch.
> > > > 
> > > > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > > > Cc: Will Deacon <will@kernel.org>
> > > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > 
> > > I'll queue this for 5.7. Does not seem to have any functional change (I
> > > changed the comments to C-style ones /* */).
> > 
> > Can you also update the comment in asm/mmu.h for the ASID() macro please?
> 
> Ah, I see this is already queued (I'm catching up with email after a trip
> to the US) so here's a patch.
> 
> Will

Thanks for the fixup; sorry for missing that in the first place!

Mark.

> 
> --->8
> 
> From 2528094854c3b56ad3fe49d2164c9a920a251f05 Mon Sep 17 00:00:00 2001
> From: Will Deacon <will@kernel.org>
> Date: Fri, 28 Feb 2020 12:43:55 +0000
> Subject: [PATCH] arm64: Update comment for ASID() macro
> 
> Commit 25b92693a1b6 ("arm64: mm: convert cpu_do_switch_mm() to C") added
> a new use of the ASID() macro, so update the comment in asm/mmu.h which
> reasons about why an atomic reload of 'mm->context.id.counter' is not
> required.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Will Deacon <will@kernel.org>
> ---
>  arch/arm64/include/asm/mmu.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index e4d862420bb4..21a4bcfdb378 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -23,9 +23,9 @@ typedef struct {
>  } mm_context_t;
>  
>  /*
> - * This macro is only used by the TLBI code, which cannot race with an
> - * ASID change and therefore doesn't need to reload the counter using
> - * atomic64_read.
> + * This macro is only used by the TLBI and low-level switch_mm() code,
> + * neither of which can race with an ASID change. We therefore don't
> + * need to reload the counter using atomic64_read().
>   */
>  #define ASID(mm)	((mm)->context.id.counter & 0xffff)
>  
> -- 
> 2.25.1.481.gfbce0eb801-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
