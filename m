Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B48A5D458E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 18:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/kJ5mliOMcDaiEL7csT7fP0uMlYZcVQ4rF0wDhuHZA=; b=AHOITeuRnbxhhY
	UdVU2ZPdmItKV2YEl65wUl08lJwep7O3kBswika62a7FW6vnnw+MFXWTn1T5IhEYVCgNwFWTDMAqv
	+t11I8jpcokq70No37lli5Ntd9aMCuciLg5dMuCNn11hjrmtvifnBGfGraaAHFvKMBNOmdl0Pejxz
	+PXELZGPS0pWqQibkovJIHz23ZVKgRBKyWBnykRgNauVN3wEARDW+CeNkX7o0ZMnuKSgoLZ4Jbm11
	MCh9fc7xngOS30Gwq26FubyTjTxWUXo69mleJFYspLhenFXovxqvcYVQzP6NIHmbLAj9PChKHxaU2
	9XwMU8Vud2nYG5s8OMaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIxvv-0002gN-W5; Fri, 11 Oct 2019 16:38:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIxvm-0002g3-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 16:38:19 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8868D2089F;
 Fri, 11 Oct 2019 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570811897;
 bh=Z1WNH11V09OmMgWXsvR+Nz3mQW08Gbe85JWuOSo4Z+Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=oxiBgLBGJenAMCwKDVEgqHs8twj8biZSawyx/SUdwcTcFXbU6N3p16M0bEkCv5K2n
 apJ3mt+TX+c7RoPpVM6745kxh/S2vEMEbZr1++pbYMS8EktbttmaKKC71nYYj9js0S
 al/KYFxvwwTc51uEb281j7nGt1YFtYVuBc4b+Leg=
Date: Fri, 11 Oct 2019 17:38:13 +0100
From: Will Deacon <will@kernel.org>
To: Chris von Recklinghausen <crecklin@redhat.com>
Subject: Re: [PATCH v2] arm64: fix kcore macros 52-bit va fallout
Message-ID: <20191011163812.yh4fty2az7x3fp4l@willie-the-truck>
References: <20191010172247.19033-1-crecklin@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010172247.19033-1-crecklin@redhat.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_093818_115212_34797041 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: catalin.marinas@arm.com, james.morse@arm.com,
 linux-arm-kernel@lists.infradead.org, steve.capper@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 01:22:47PM -0400, Chris von Recklinghausen wrote:
> We export the entire kernel address space (i.e. the whole of the TTBR1
> address range) via /proc/kcore. The kc_vaddr_to_offset() and
> kc_offset_to_vaddr() macros are intended to convert between a kernel
> virtual address and its offset relative to the start of the TTBR1
> address space.
> 
> Prior to commit:
> 
>   14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> 
> ... the offset was calculated relative to VA_START, which at the time
> was the start of the TTBR1 address space. At this time, PAGE_OFFSET
> pointed to the high half of the TTBR1 address space where arm64's
> linear map lived.
> 
> That commit swapped the position of VA_START and PAGE_OFFSET, but
> failed to update kc_vaddr_to_offset() or kc_offset_to_vaddr(), so
> since then the two macros behave incorrectly.
> 
> Note that VA_START was subsequently renamed to PAGE_END in commit:
> 
>   77ad4ce69321abbe ("arm64: memory: rename VA_START to PAGE_END")
> 
> As the generic implementations of the two macros calculate the offset
> relative to PAGE_OFFSET (which is now the start of the TTBR1 address
> space), we can delete the arm64 implementation and use those.
> 
> Fixes: 14c127c957c1c607 ("arm64: mm: Flip kernel VA space")
> 
> Signed-off-by: Chris von Recklinghausen <crecklin@redhat.com>
> ---
> v1 -> v2
>    reword commit comment to to what Mark Rutland suggested
>    add Signed-off-by
>    no code changes
> 
>  arch/arm64/include/asm/pgtable.h | 3 ---
>  1 file changed, 3 deletions(-)

Thanks. Queued as a fix with James and Mark's reviewed-by tags.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
