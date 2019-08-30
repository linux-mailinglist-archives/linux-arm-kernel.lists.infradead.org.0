Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 162D0A3621
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 13:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kc60WX3GlFXH+BCZiFeUbui6RPQydw5kv3l1ec4t6JU=; b=rh8dpY7IZ2gnrv
	9PhB3U9XpuHZ1xQe67Rpk62MVo8YG7BunaQqIY/6Ni5BOH6syT+oWgHwullfTuvlea0ZJQfp7ZtDF
	+zoN4k9hRpNVU8z5rvzGspfTomCca8nmSWO/CijJ6YiZdYuaNK6OMa13A/sNhSmQr1ruGbY4wWsas
	ma416iabveJNEe0lmw6yJVCqmnY+pjGNV6ijkfZOFe5wOWY1QHT33LQZyLtTi2f2Ojl9G9qHkr2V4
	1ThpPEg+6wGX53AuSdWwOaosXxdm+8W4IrjVCHAxbzjirUJGV6q7a4/fyC9XTlzrZsqhmuhc4nZeV
	d4hK23hf7wQ65rqi2TxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3fXU-0000UL-94; Fri, 30 Aug 2019 11:58:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i3fXM-0000Tx-LY
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 11:57:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2D1D337;
 Fri, 30 Aug 2019 04:57:51 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 37F633F246;
 Fri, 30 Aug 2019 04:57:51 -0700 (PDT)
Date: Fri, 30 Aug 2019 12:57:49 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190830115749.GU14582@e119886-lin.cambridge.arm.com>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
 <20190830000803.GR14582@e119886-lin.cambridge.arm.com>
 <20190830075220.6xyyctvgd2ssrsjf@willie-the-truck>
 <20190830091155.GS14582@e119886-lin.cambridge.arm.com>
 <20190830101716.b4orwol66q4l2kxy@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830101716.b4orwol66q4l2kxy@willie-the-truck>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_045752_799111_96C3B03F 
X-CRM114-Status: GOOD (  30.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, natechancellor@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 11:17:16AM +0100, Will Deacon wrote:
> On Fri, Aug 30, 2019 at 10:11:55AM +0100, Andrew Murray wrote:
> > On Fri, Aug 30, 2019 at 08:52:20AM +0100, Will Deacon wrote:
> > > On Fri, Aug 30, 2019 at 01:08:03AM +0100, Andrew Murray wrote:
> > > > On Thu, Aug 29, 2019 at 05:54:58PM +0100, Will Deacon wrote:
> > > > > On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > > > > > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > > index 95091f72228b..7fa042f5444e 100644
> > > > > > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > > > @@ -23,6 +23,10 @@ asm_ops "\n"								\
> > > > > >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> > > > > >  #endif
> > 
> > I downloaded your original patches and tried them, and also got the
> > build error. After playing with this I think something isn't quite right...
> > 
> > This is your current test:
> > 
> >  echo 'int main(void) {asm volatile("and w0, w0, %w0" :: "K" (4294967295)); return 0; }' |  aarch64-linux-gnu-gcc -S -x c  - ; echo $?
> > 
> > But on my machine this returns 0, i.e. no error. If I drop the -S:
> > 
> >  echo 'int main(void) {asm volatile("and w0, w0, %w0" :: "K" (4294967295)); return 0; }' |  aarch64-linux-gnu-gcc -x c  - ; echo $?
> > 
> > Then this returns 1.
> > 
> > So I guess the -S flag or something similar is needed.
> 
> This seems correct to me, and is the reason we pass -S in the Makefile. Why
> are you dropping it?
> 
> In the first case, the (broken) compiler is emitted an assembly file
> containing "and w0, w0, 4294967295", and so we will not define
> CONFIG_CC_HAS_K_CONSTRAINT.
> 
> In the second case, you're passing the bad assembly file to GAS, which
> rejects it.
> 
> > > > > > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > > > > > +#define K
> > > > > > +#endif
> > 
> > Also, isn't this the wrong way around?
> 
> No. If the compiler doesn't support the K constraint, then we get:
> 
> 	[old] "" "r" (old)
> 
> because we've defined K as being nothing. Otherwise, we get:
> 
> 	[old] "K" "r" (old)
> 
> because K isn't defined as anything.
> 
> > It looks like when using $(call try-run,echo - it's the last argument that is
> > used when the condition is false. Thus at present we seem to be setting 
> > CONFIG_CC_HAS_K_CONSTRAINT when 'K' is broken.
> 
> No. We set CONFIG_CC_HAS_K_CONSTRAINT when the compiler fails to generate
> an assembly file with the invalid immediate.
> 
> > > Without the __stringify I get a compilation failure when building
> > > kernel/panic.o because it tries to cmpxchg a 32-bit variable with -1
> > > (PANIC_CPU_INVALID). Looking at panic.s, I see that constraint parameter
> > > isn't being expanded. For example if I do:
> > > 
> > >   #ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > >   #define INVALID_CONSTRAINT
> > >   #else
> > >   #define INVALID_CONSTRAINT	K
> > >   #endif
> > > 
> > > and then pass INVALID_CONSTRAINT to the generator macros, we'll end up
> > > with INVALID_CONSTRAINT in the .s file and gas will barf.
> > 
> > This still isn't an issue for me. Your patches cause the build to fail because
> > it's using the K flag - if I invert the CONFIG_CC_HAS_K_CONSTRAINT test then
> > it builds correctly (because it expands the K to nothing).
> 
> That doesn't make any sense :/ Is this after you've dropped the -S
> parameter?

As discussed on IRC, all my issues were due to not applying the extra
__stringify patch of yours and getting confused about intermediates. Thanks
for your time and patience!

I'm satisfied this works (with your extra patch), so again:

Reviewed-by: Andrew Murray <andrew.murray@arm.com>


> 
> If you think there's a bug, please can you send a patch? However, inverting
> the check breaks the build for me. Which toolchain are you using?
> 
> > If there is an issue with the expansion of constraint, shouldn't we also
> > __stringify 'asm_op'?
> 
> It would be harmless, but there's no need because asm_op doesn't ever
> require further expansion.
> 
> Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
