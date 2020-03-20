Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3E018C8D1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 09:12:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hv3lGPAnY0IYTSqfknTk7Hobw43kYtRAKXSD9PdSBUI=; b=KTZEPYbxKFLqCI
	3DhSPA3FG/h30skz41Dxn6C7mkC94PfjjppWKpglB7KiIjQ6zApPepCFEtyJF/s9J3m8vwui8V5Cf
	BoTVrF+Ck2/tQZZeL49TzXescX7NUGTe75w8cMBK0WBtCwvZo0p9sejvdKmEAQuxjcc8Q0yduvpw3
	7q8gdLe002hsiidGa1SuFRSWeCPWmyufYVzQpAezosI8jnT0AKeX02XD89IAEx8N1Dhaq9oPfi/s5
	PocW7xDwRSkGoH6OenGIszXN+7Mb6qXzN4tutxJgc3X/8XxFJkKHljr+SJftv5a9Bo5/jJaEBGouS
	WB8gfzf1rQ8rJJbjNGyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFClT-0003Hv-AD; Fri, 20 Mar 2020 08:12:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFCl5-00037u-FQ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 08:12:01 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 468DE20774;
 Fri, 20 Mar 2020 08:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584691918;
 bh=lYc2Gm2VkbImFr4gBOIFJvxM7EhVPBHGTcj7FeKzS3w=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PDdlrKgENirCgu2oVJbm3EfDyiAqIKWPPWznYZ5hjgLwHgatWQH7p6GHldNSPfvKg
 gqbwJ09k6MWB+cuvPXbAb6dVyg7fB4lnu2iE6zFKlFqO1CUoGqaZaqdCOuoyrlmMd6
 8JPj3aou7wa+X+ia7atNIsY7WmInYlssSUNs0oVs=
Date: Fri, 20 Mar 2020 08:11:54 +0000
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH] arm64: alternative: fix build with clang integrated
 assembler
Message-ID: <20200320081153.GB2549@willie-the-truck>
References: <20200319214530.2046-1-ilie.halip@gmail.com>
 <CAKwvOdneL8F_ZHBAzyb+VoJ+Z1FZp0VW8asGTu=g39TrouqAgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOdneL8F_ZHBAzyb+VoJ+Z1FZp0VW8asGTu=g39TrouqAgA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_011159_599007_220317E1 
X-CRM114-Status: GOOD (  19.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>, Ilie Halip <ilie.halip@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 19, 2020 at 04:43:56PM -0700, Nick Desaulniers wrote:
> On Thu, Mar 19, 2020 at 2:45 PM Ilie Halip <ilie.halip@gmail.com> wrote:
> >
> > Building an arm64 defconfig with clang's integrated assembler, this error
> > occurs:
> >     <instantiation>:2:2: error: unrecognized instruction mnemonic
> >      _ASM_EXTABLE 9999b, 9f
> >      ^
> >     arch/arm64/mm/cache.S:50:1: note: while in macro instantiation
> >     user_alt 9f, "dc cvau, x4", "dc civac, x4", 0
> >     ^
> >
> > While GNU as seems fine with case-sensitive macro instantiations, clang
> > doesn't, so use the actual macro name (_asm_extable) as in the rest of
> > the file.
> >
> > Also checked that the generated assembly matches the GCC output.
> >
> > Fixes: 290622efc76e ("arm64: fix "dc cvau" cache operation on errata-affected core")
> > Link: https://github.com/ClangBuiltLinux/linux/issues/924
> > Signed-off-by: Ilie Halip <ilie.halip@gmail.com>
> > ---
> >  arch/arm64/include/asm/alternative.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> > index 324e7d5ab37e..5e5dc05d63a0 100644
> > --- a/arch/arm64/include/asm/alternative.h
> > +++ b/arch/arm64/include/asm/alternative.h
> > @@ -221,7 +221,7 @@ alternative_endif
> >
> >  .macro user_alt, label, oldinstr, newinstr, cond
> >  9999:  alternative_insn "\oldinstr", "\newinstr", \cond
> > -       _ASM_EXTABLE 9999b, \label
> > +       _asm_extable 9999b, \label
> >  .endm
> 
> Testing a -next defconfig build, if I apply this, apply fixes for
> https://github.com/ClangBuiltLinux/linux/issues/913, then disable
> CONFIG_KVM, I can assemble (with Clang's integrated assembler) and
> boot an aarch64 kernel.  I think that's a first for Clang.  Wow.
> 
> For CONFIG_KVM, I see:
> arch/arm64/kvm/hyp/entry.S:112:87: error: too many positional arguments
>  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
> ((!!1) << 8)), 4, 1
> 
>                ^
> which also uses `alternative_insn`, but not `user_alt`, so another bug
> for us to look into, filed:
> https://github.com/ClangBuiltLinux/linux/issues/939
> 
> Looks like `_asm_extable` itself is a macro, defined in
> arch/arm64/include/asm/assembler.h on line 125.  It's probably easy to
> fix this in clang, but from a consistency with the rest of the file
> (arch/arm64/include/asm/alternative.h) this patch should be accepted.
> 
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>

Thanks, I'll pick this up as a fix.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
