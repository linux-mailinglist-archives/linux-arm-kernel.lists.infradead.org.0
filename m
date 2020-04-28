Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C5F1BBCB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 13:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTToG/5vk6EKt5dyIW3iD+pv2sTPcTKMhjwGCR6CE2k=; b=k8VpuZXKwlp2Ws
	sMtUsAhd4N5UXZZnTa0ygF8Juj8GThNzWgDEUjVun0/ZAMkHJyynW+rTe++I6faYC7RwW+CiSayBa
	L2jRjP0kEh+M1EHFB8oJORhkfmdDMdMNORD7YD5fWJD6G+SS6NfdxlRLPeMqPeHg3NquLEMyuZMLV
	klc4WIg/mhZaRkpNitScFOJY/2vHasJWF/pmJES1UZ8SurJp+WOph1Pj4b+rhwn+NpdlTAdsrBrAg
	yZo0oeCTjzsiSDuNkSiwBoWBjvhGURghjSBBgSLs7CSItNtV5CsfReyWgDeNMWE+U3wWBnHHORqxK
	Ivu4q/nzxZQkLx3FKimQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTOf1-0004pw-Rb; Tue, 28 Apr 2020 11:44:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTOed-0004fU-HF
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 11:44:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7BE9430E;
 Tue, 28 Apr 2020 04:43:58 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE3BB3F73D;
 Tue, 28 Apr 2020 04:43:56 -0700 (PDT)
Date: Tue, 28 Apr 2020 12:43:54 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <dave.martin@arm.com>
Subject: Re: [PATCH v3 01/23] arm64: alternative: Allow alternative_insn to
 always issue the first instruction
Message-ID: <20200428114354.GE3868@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-2-catalin.marinas@arm.com>
 <20200427165737.GD15808@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427165737.GD15808@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_044359_660896_776FD727 
X-CRM114-Status: GOOD (  25.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Will Deacon <will@kernel.org>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dave,

On Mon, Apr 27, 2020 at 05:57:37PM +0100, Dave P Martin wrote:
> On Tue, Apr 21, 2020 at 03:25:41PM +0100, Catalin Marinas wrote:
> > There are situations where we do not want to disable the whole block
> > based on a config option, only the alternative part while keeping the
> > first instruction. Improve the alternative_insn assembler macro to take
> > a 'first_insn' argument, default 0, to preserve the current behaviour.
> > 
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> >  arch/arm64/include/asm/alternative.h | 8 +++++++-
> >  1 file changed, 7 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/include/asm/alternative.h b/arch/arm64/include/asm/alternative.h
> > index 5e5dc05d63a0..67d7cc608336 100644
> > --- a/arch/arm64/include/asm/alternative.h
> > +++ b/arch/arm64/include/asm/alternative.h
> > @@ -111,7 +111,11 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
> >  	.byte \alt_len
> >  .endm
> >  
> > -.macro alternative_insn insn1, insn2, cap, enable = 1
> > +/*
> > + * Disable the whole block if enable == 0, unless first_insn == 1 in which
> > + * case insn1 will always be issued but without an alternative insn2.
> > + */
> > +.macro alternative_insn insn1, insn2, cap, enable = 1, first_insn = 0
> >  	.if \enable
> >  661:	\insn1
> >  662:	.pushsection .altinstructions, "a"
> > @@ -122,6 +126,8 @@ static inline void apply_alternatives_module(void *start, size_t length) { }
> >  664:	.popsection
> >  	.org	. - (664b-663b) + (662b-661b)
> >  	.org	. - (662b-661b) + (664b-663b)
> > +	.elseif \first_insn
> > +	\insn1
> 
> This becomes quite unreadable at the invocation site, especially when
> invoked as "alternative_insn ..., 1".  "... first_insn=1" is not much
> better either).

That I agree.

The reason I didn't leave the alternative in place here is that if gas
doesn't support MTE, it will fail to compile. I wanted to avoid the
several #ifdef's.

> I'm struggling to find non-trivial users of this that actually want the
> whole block to be deleted dependent on the config.

Some of the errata stuff like CONFIG_ARM64_REPEAT_TLBI ends up with
unnecessary nops. Similarly for CONFIG_ARM64_UAO/PAN and maybe a few
others (it's all additional nops). We also have a few errata workaround
where we didn't bother with the config enable option at all.

While this is C code + inline asm, I'd like to have a consistent
behaviour of ALTERNATIVE between C and .S files. Now, given that some of
them (like UAO/PAN) are on by default, it probably doesn't make any
difference if we always keep the first block (non-alternative).

We could add a new macro ALTERNATIVE_OR_NOP.

> Can we instead just always behave as if first_insn=1 instead?  This this
> works intuitively as an alternative, not the current weird 3-way choice
> between insn1, insn2 and nothing at all.  The only time that makes sense
> is when one of the insns is a branch that skips the block, but that's
> handled via the alternative_if macros instead.
> 
> Behaving always like first_insn=1 provides an if-else that is statically
> optimised if the relevant feature is configured out, which I think is
> the only thing people are ever going to want.
> 
> Maybe something depends on the current behaviour, but I can't see it so
> far...

I'll give it a go in v4 and see how it looks.

Another option would be an alternative_else which takes an enable
argument.

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
