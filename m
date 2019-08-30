Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40A99A319B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 09:52:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bAvyxFMe4XS0e3lDdLkknC1Qj/Rv8+N/VFGVsFBEExQ=; b=vAWGqEOX9UUslv
	FizFZLjIOJ1wdRU+Kaj9wwYsz73PsvcrD7Xcovls2YnjVVnab4+yUYlR4eFaw8wZuTqb8oJf4mtlJ
	gdnmbw7AgpSxee/3z2bHvHh/bbEtIrYsVQ3ZMIufr1aApSs1DKXAkP5Gt1wwzhtcNAha73qsX8RMA
	xR+/NAUJzZ8DR3aLmi62ADyjBwhT3qJTy6XKZlPvruNVuIlTZu5VUj787LxmXmEoNB/C6N1idX17N
	0UK9YreVn4bJf9+JkM88UImPyZlsZVZP3lAs+UDc5dALeMtQ6a528v8iw6ltN6r6hTWW53G59sqau
	mFyFPy17dHjh5lNB/vLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3bi0-0001OJ-Eg; Fri, 30 Aug 2019 07:52:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3bhq-0001O0-8Y
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 07:52:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D61CA2070B;
 Fri, 30 Aug 2019 07:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567151545;
 bh=XxIlB6heV8zthfQt9IfztarXS2aRQzwh39zufHV/Dag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dEJHifiMfkPyJnTbidakpqp2Z5zTv7GwrL7aZJ0NL8AUk+boccjaFt4Pw8XE1Nemf
 YoUNja3y/rmyo/UsRPuj/VP6vxD/YBlzhV/vlnendD3MfGbEW4VaMGXffvRmJ6oX7Z
 Yu05kP+JDBRmPhfLkGWwusNSCzFFK5cJGMe0+rAA=
Date: Fri, 30 Aug 2019 08:52:20 +0100
From: Will Deacon <will@kernel.org>
To: Andrew Murray <andrew.murray@arm.com>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
Message-ID: <20190830075220.6xyyctvgd2ssrsjf@willie-the-truck>
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
 <20190830000803.GR14582@e119886-lin.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830000803.GR14582@e119886-lin.cambridge.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_005226_347909_43FDDCC4 
X-CRM114-Status: GOOD (  21.03  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 ndesaulniers@google.com, Ard.Biesheuvel@arm.com, natechancellor@gmail.com,
 robin.murphy@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 01:08:03AM +0100, Andrew Murray wrote:
> On Thu, Aug 29, 2019 at 05:54:58PM +0100, Will Deacon wrote:
> > On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > > index 95091f72228b..7fa042f5444e 100644
> > > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > > @@ -23,6 +23,10 @@ asm_ops "\n"								\
> > >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> > >  #endif
> > >  
> > > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > > +#define K
> > > +#endif
> > 
> > Bah, I need to use something like __stringify when the constraint is used
> > in order for this to get expanded properly. Updated diff below.
> 
> I don't think the changes in your updated diff are required. We successfully
> combine 'asm_op' with the remainder of the assembly string without using
>  __stringify, and this is no different to how the original patch combined
> 'constraint' with "r".

It's a hack: __stringify expands its arguments, so I figured I may as well
use that rather than do it manually with an extra macro.

> You can verify this by looking at the preprocessed .i files generated with
> something like:
> 
> make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- drivers/spi/spi-rockchip.i
> 
> I see no difference (with GCC 7.3.1) between the original approach and your
> use of __stringify. Incidentally you end up with "K" "r" instead of "Kr" but
> it seems to have the desired effect (e.g. supress/emit out of range errors).
> I have a couple of macros that resolves this to "Kr" but I don't think it's
> necessary.
> 
> Did you find that it didn't work without your changes? I found it hard to
> reproduce the out-of-range errors until I made the following change, I could
> then easily see the effect of changing the constraint:
> 
>         : "=&r" (result), "=&r" (tmp), "+Q" (v->counter)                \
> -       : #constraint "r" (i));                                         \
> +       : #constraint) "r" (4294967295));                                               \
>  }

Without the __stringify I get a compilation failure when building
kernel/panic.o because it tries to cmpxchg a 32-bit variable with -1
(PANIC_CPU_INVALID). Looking at panic.s, I see that constraint parameter
isn't being expanded. For example if I do:

  #ifndef CONFIG_CC_HAS_K_CONSTRAINT
  #define INVALID_CONSTRAINT
  #else
  #define INVALID_CONSTRAINT	K
  #endif

and then pass INVALID_CONSTRAINT to the generator macros, we'll end up
with INVALID_CONSTRAINT in the .s file and gas will barf.

The reason I didn't see this initially is because my silly testcase had
a typo and was using atomic_add instead of atomic_and.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
