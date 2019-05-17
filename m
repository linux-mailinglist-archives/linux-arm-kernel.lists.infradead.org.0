Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7312B216B5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 12:08:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7AfJxFWA4ckmrwRlwkw+hPlXLkXVGCNKRDpAesQ2f8=; b=d2w92gKdeb+eyq
	frRkqRydVABE/jcfZ861/gH0/hx2+KJen92dP+vBOLLXIHrdpoMA2tTO9NZ1DdLB7+pBR3xeWyjYP
	QfGuq8e0uqkFnNQAfz0ckWF2G1XqnfscHjx5YcIdZTFSnQ0ffWIeW0tDEQ2WMmA0CBUFUBXIny/lB
	y5KAZYk+pbBzKovDTbctNEb0UnobRWtMwZI6B4TAn+cmexmHwOLJDsfSV3M0I0225VZYPlOGxClgE
	62D6bsPsyH7ga3WTY3JMp4NpHfQTFPCW0rZz2LHIhhBhfZGfXd5XjkZ63KiCg69P870r5XJboCBZz
	8Xdj66ekH5jMoGcrrr9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZmf-0008Sm-Q0; Fri, 17 May 2019 10:08:13 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZmY-0008SL-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 10:08:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AF7C680D;
 Fri, 17 May 2019 03:08:05 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 44B683F575;
 Fri, 17 May 2019 03:08:05 -0700 (PDT)
Date: Fri, 17 May 2019 11:08:03 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v1 0/5] arm64: avoid out-of-line ll/sc atomics
Message-ID: <20190517100802.GS8268@e119886-lin.cambridge.arm.com>
References: <20190516155344.24060-1-andrew.murray@arm.com>
 <20190517072401.GI2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517072401.GI2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_030806_995817_1CD054DF 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Boqun Feng <boqun.feng@gmail.com>, Will Deacon <will.deacon@arm.com>,
 linux-arm-kernel@lists.infradead.org, Ard.Biesheuvel@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 09:24:01AM +0200, Peter Zijlstra wrote:
> On Thu, May 16, 2019 at 04:53:39PM +0100, Andrew Murray wrote:
> > When building for LSE atomics (CONFIG_ARM64_LSE_ATOMICS), if the hardware
> > or toolchain doesn't support it the existing code will fallback to ll/sc
> > atomics. It achieves this by branching from inline assembly to a function
> > that is built with specical compile flags. Further this results in the
> > clobbering of registers even when the fallback isn't used increasing
> > register pressure.
> > 
> > Let's improve this by providing inline implementatins of both LSE and
> > ll/sc and use a static key to select between them. This allows for the
> > compiler to generate better atomics code.
> 
> Don't you guys have alternatives? That would avoid having both versions
> in the code, and thus significantly cuts back on the bloat.

Yes we do.

Prior to patch 3 of this series, the ARM64_LSE_ATOMIC_INSN macro used
ALTERNATIVE to either bl to a fallback ll/sc function (and nops) - or execute
some LSE instructions.

But this approach limits the compilers ability to optimise the code due to
the asm clobber list being the superset of both ll/sc and LSE - and the gcc
compiler flags used on the ll/sc functions.

I think the alternative solution (excuse the pun) that you are suggesting
is to put the body of the ll/sc or LSE code in the ALTERNATIVE oldinstr/newinstr
blocks (i.e. drop the fallback branches). However this still gives us some
bloat (but less than my current solution) because we're still now inlining the
larger fallback ll/sc whereas previously they were non-inline'd functions. We
still end up with potentially unnecessary clobbers for LSE code with this
approach.

Approach prior to this series:

   BL 1 or NOP <- single alternative instruction
   LSE
   LSE
   ...

1: LL/SC <- LL/SC fallback not inlined so reused
   LL/SC
   LL/SC
   LL/SC

Approach proposed by this series:

   BL 1 or NOP <- single alternative instruction
   LSE
   LSE
   BL 2
1: LL/SC <- inlined LL/SC and thus duplicated
   LL/SC
   LL/SC
   LL/SC
2: ..

Approach using alternative without braces:

   LSE
   LSE
   NOP
   NOP

or

   LL/SC <- inlined LL/SC and thus duplicated
   LL/SC
   LL/SC
   LL/SC

I guess there is a balance here between bloat and code optimisation.

> 
> > These changes add a small amount of bloat on defconfig according to
> > bloat-o-meter:
> > 
> > text:
> >   add/remove: 1/108 grow/shrink: 3448/20 up/down: 272768/-4320 (268448)
> >   Total: Before=12363112, After=12631560, chg +2.17%
> 
> I'd say 2% is quite significant bloat.

Thanks,

Andrew Murray

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
