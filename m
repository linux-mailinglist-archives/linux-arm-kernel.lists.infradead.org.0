Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474048D2A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHUSNTjbK2k5u3p63BghrTQS77ufGyZWMZQ//N1fehU=; b=sP/OieGF8lxG7x
	Ttd1du6HLVBhd19igKZXVddHNbuS7qkkBetSOPYuCg+hEsrLsXayBsQ4GvcNhQ89df0GAGnOdP3vP
	BCE1NEYrWz3dexRPYEBT80sR/H/1H/LZtehAeK2/JNhrd78gQ7GwqCirIt98K/XU8hRV/1NErToGk
	SnDjB5aJGMeVPE5w0FhVfUCtRAkzT/VDdeX49VNXrWBmNMG/ATPCSExiLveaf/V/fQpfZqGjeNT9d
	uCYckPdxhhDMuZ3K31BrBjoyzGsacPlKyhHa/VLtge7G5hKch2pfoNZm50KNzCVGpetC5K69Y34ox
	woxl1gJHHGQiTbw0wa4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxrx0-000341-KN; Wed, 14 Aug 2019 12:00:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxrwj-0002Oz-5r
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:00:06 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECA592083B;
 Wed, 14 Aug 2019 12:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565784004;
 bh=ZluCO9gwDZksctlwNdr8Ly8ceVpQfCpDoGpu957UvXY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=SnC7h5bAcLaAH5g/YStWfKEocVz0znk3TV3RSut5n2d0q+Es09B0Up365a4P0sajW
 TAnaIHy9JsNPsikMgwZwicSviHqZQwIYtuSWo4HxaDh/EsintL3MtKCF2DoXxUU9yd
 g7gY3bIuweWSSS4d7/R/2f3n27fgtuxb0mQa1xBg=
Date: Wed, 14 Aug 2019 13:00:00 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 5/8] arm64: memory: Simplify _VA_START and _PAGE_OFFSET
 definitions
Message-ID: <20190814115959.7epzszx53bidti7m@willie-the-truck>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-6-will@kernel.org>
 <20190814112337.GB17931@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814112337.GB17931@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_050005_248506_200C9271 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 12:23:39PM +0100, Mark Rutland wrote:
> On Tue, Aug 13, 2019 at 06:01:46PM +0100, Will Deacon wrote:
> > Rather than subtracting from -1 and then adding 1, we can simply
> > subtract from 0.
> > 
> > Cc: Steve Capper <steve.capper@arm.com>
> > Signed-off-by: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/include/asm/memory.h | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > index 56be462c69ce..5552c8cba1e2 100644
> > --- a/arch/arm64/include/asm/memory.h
> > +++ b/arch/arm64/include/asm/memory.h
> > @@ -44,8 +44,7 @@
> >   * VA_START - the first kernel virtual address.
> >   */
> >  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> > -#define _PAGE_OFFSET(va)	(UL(0xffffffffffffffff) - \
> > -					(UL(1) << (va)) + 1)
> > +#define _PAGE_OFFSET(va)	(-(UL(1) << (va)))
> >  #define PAGE_OFFSET		(_PAGE_OFFSET(VA_BITS))
> >  #define KIMAGE_VADDR		(MODULES_END)
> >  #define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
> > @@ -63,8 +62,7 @@
> >  #else
> >  #define VA_BITS_MIN		(VA_BITS)
> >  #endif
> > -#define _VA_START(va)		(UL(0xffffffffffffffff) - \
> > -				(UL(1) << ((va) - 1)) + 1)
> > +#define _VA_START(va)		(-(UL(1) << ((va) - 1)))
> 
> This didn't make any sense to me until I realised that we changed the
> meaning of VA_START when flippnig the VA space. Given that, this cleanup
> looks sound to me.
> 
> However...
> 
> VA_START used to be the start of the TTBR1 address space, which was what
> the "first kernel virtual address" comment was trying to say. Now it's
> the first non-linear kernel virtual addres, which I think is very
> confusing.
> 
> AFAICT, that change breaks at least:
> 
> * is_ttbr1_addr() -- now returns false for linear map addresses
> * ptdump_check_wx() -- now skips the linear map
> * ptdump_init() -- initialises start_address inccorrectly.
> 
> ... so could we please find a new name for the first non-linear address,
> e.g. PAGE_END, and leave VA_START as the first TTBR1 address?

I think VA_START becomes PAGE_END and then things like is_ttbr1_addr()
just refer to PAGE_OFFSET instead. ptdump_init() looks ok to me, but I could
be missing something.

Anyway, these seem to be comments on the original patches from Steve rather
than my fixes, so please send additional fixes on top. I'll push out an
updated branch for you to work with...

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
