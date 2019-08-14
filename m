Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9728D475
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:19:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FFwGDser1YR1V/J0a9h+dNOxZh8N9ESPC3uz+XGelBs=; b=nnjxktyJIaAH6i
	RZFMqkbWDje0G4hFaiiB9J+yjYzXy+jvoRsvDBk1WjrXPh1IMsUAeWCOiPvNV0rKEhhTAn0/w5sXW
	fwhJ9IZk0B1/b+puAaLse+X3YTwQZQ9c/8MM1l2ip+izdg24dnxXF9RseDCfQXWA8XJSD+Y8rEfTs
	39v32DAHb1zmwK9+NMkYoWLpsGi1NPELdfSmXf7hIX4d2UgXcB/ECI/GYWxys/emXuc9uFOPoMD/v
	9ojQ04mmkyczbNFy09Lr8Dq3FQ9zt9cCkBW4XTmZrDadioGywgBvD0XWtcztscqAndqPcBpVVNo6u
	OKRLXZlnIAHWLWX/qXDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtBI-0000ee-89; Wed, 14 Aug 2019 13:19:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtB5-0000eL-Hp
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:19:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 216DF28;
 Wed, 14 Aug 2019 06:18:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1D7723F706;
 Wed, 14 Aug 2019 06:18:58 -0700 (PDT)
Date: Wed, 14 Aug 2019 14:18:51 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 5/8] arm64: memory: Simplify _VA_START and _PAGE_OFFSET
 definitions
Message-ID: <20190814131850.GA51963@lakrids.cambridge.arm.com>
References: <20190813170149.26037-1-will@kernel.org>
 <20190813170149.26037-6-will@kernel.org>
 <20190814112337.GB17931@lakrids.cambridge.arm.com>
 <20190814115959.7epzszx53bidti7m@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190814115959.7epzszx53bidti7m@willie-the-truck>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_061859_636251_74F528FF 
X-CRM114-Status: GOOD (  21.44  )
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
Cc: Steve Capper <steve.capper@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Qian Cai <cai@lca.pw>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 01:00:00PM +0100, Will Deacon wrote:
> On Wed, Aug 14, 2019 at 12:23:39PM +0100, Mark Rutland wrote:
> > On Tue, Aug 13, 2019 at 06:01:46PM +0100, Will Deacon wrote:
> > > Rather than subtracting from -1 and then adding 1, we can simply
> > > subtract from 0.
> > > 
> > > Cc: Steve Capper <steve.capper@arm.com>
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > > ---
> > >  arch/arm64/include/asm/memory.h | 6 ++----
> > >  1 file changed, 2 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
> > > index 56be462c69ce..5552c8cba1e2 100644
> > > --- a/arch/arm64/include/asm/memory.h
> > > +++ b/arch/arm64/include/asm/memory.h
> > > @@ -44,8 +44,7 @@
> > >   * VA_START - the first kernel virtual address.
> > >   */
> > >  #define VA_BITS			(CONFIG_ARM64_VA_BITS)
> > > -#define _PAGE_OFFSET(va)	(UL(0xffffffffffffffff) - \
> > > -					(UL(1) << (va)) + 1)
> > > +#define _PAGE_OFFSET(va)	(-(UL(1) << (va)))
> > >  #define PAGE_OFFSET		(_PAGE_OFFSET(VA_BITS))
> > >  #define KIMAGE_VADDR		(MODULES_END)
> > >  #define BPF_JIT_REGION_START	(KASAN_SHADOW_END)
> > > @@ -63,8 +62,7 @@
> > >  #else
> > >  #define VA_BITS_MIN		(VA_BITS)
> > >  #endif
> > > -#define _VA_START(va)		(UL(0xffffffffffffffff) - \
> > > -				(UL(1) << ((va) - 1)) + 1)
> > > +#define _VA_START(va)		(-(UL(1) << ((va) - 1)))
> > 
> > This didn't make any sense to me until I realised that we changed the
> > meaning of VA_START when flippnig the VA space. Given that, this cleanup
> > looks sound to me.
> > 
> > However...
> > 
> > VA_START used to be the start of the TTBR1 address space, which was what
> > the "first kernel virtual address" comment was trying to say. Now it's
> > the first non-linear kernel virtual addres, which I think is very
> > confusing.
> > 
> > AFAICT, that change breaks at least:
> > 
> > * is_ttbr1_addr() -- now returns false for linear map addresses
> > * ptdump_check_wx() -- now skips the linear map
> > * ptdump_init() -- initialises start_address inccorrectly.
> > 
> > ... so could we please find a new name for the first non-linear address,
> > e.g. PAGE_END, and leave VA_START as the first TTBR1 address?
> 
> I think VA_START becomes PAGE_END and then things like is_ttbr1_addr()
> just refer to PAGE_OFFSET instead. ptdump_init() looks ok to me, but I could
> be missing something.

Yes; you're right about ptdump_init().

> Anyway, these seem to be comments on the original patches from Steve rather
> than my fixes, so please send additional fixes on top. I'll push out an
> updated branch for you to work with...

Sure, I'll post a couple of patches momentarily...

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
