Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1381C856B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 11:12:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlItxxSZ8idS17j/29orD2T9eJw5qghg7Iicvve+/xE=; b=ra2i43ndDmeJGI
	QDXbka9hP5fU2yLBl8IfBk6TWozrJSOZ3FSZEiMdnd7t2SEepMi6A61Qa0gZUX81rRrxsS2zLgLoX
	uppkSMhzyfNd/hTQk3OwxG/EbqpLvhroV7Uy89rUNDvF8Oh4dnjIxNaqR+3LMpsj7L34LgB2EYpPU
	bAIvkXqm/3dBRybZWaDO9NRtxQTBJ8FmLSOLwsTmFFQyjijZgPxIa6WpSr0omGaGGgKVcY1a+/pG1
	ILVe6PICsgNmDLzUyht+Z0NYrgiRXi/bxrRIMFiLje/J+jSC36fDW3++8Z5R5lUHNw/lhMjfIX8sJ
	R6Yaiqwy8qROV7aqKjuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWca5-0003t9-QH; Thu, 07 May 2020 09:12:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWcZx-0003sj-Oy
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 09:12:31 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3690D2075E;
 Thu,  7 May 2020 09:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588842749;
 bh=WN/1Sfxv+V0tvhxdgTlgCeCg1I6pk09fr+Q2outjLYM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=xEn4xIitw6ljx3iphcAnTBS31J7adH7kGvMPZJBOtI/6et/4t8DGm63fxk7kQrs7q
 UuGTT3EctUZW7OUyCjY0UECsdWn69vdO5YuMqKC6pIEWJ3dOlSyvWnwFKg2J1Mq3Fm
 whXDqqPBteH4/ScOh7LlQImwViU5JqS+qqE1CHUM=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jWcZu-00ACrT-U4; Thu, 07 May 2020 10:12:27 +0100
Date: Thu, 7 May 2020 10:12:24 +0100
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [RFC PATCH bpf-next 1/3] arm64: insn: Fix two bugs in encoding
 32-bit logical immediates
Message-ID: <20200507101224.33a44d71@why>
In-Reply-To: <20200507082934.GA28215@willie-the-truck>
References: <20200507010504.26352-1-luke.r.nels@gmail.com>
 <20200507010504.26352-2-luke.r.nels@gmail.com>
 <20200507082934.GA28215@willie-the-truck>
Organization: Approximate
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: will@kernel.org, lukenels@cs.washington.edu,
 bpf@vger.kernel.org, luke.r.nels@gmail.com, xi.wang@gmail.com,
 catalin.marinas@arm.com, daniel@iogearbox.net, ast@kernel.org,
 zlim.lnx@gmail.com, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
 andriin@fb.com, john.fastabend@gmail.com, kpsingh@chromium.org,
 mark.rutland@arm.com, gregkh@linuxfoundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, clang-built-linux@googlegroups.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_021229_857530_6B853F06 
X-CRM114-Status: GOOD (  33.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Song Liu <songliubraving@fb.com>,
 Thomas Gleixner <tglx@linutronix.de>, Daniel Borkmann <daniel@iogearbox.net>,
 Luke Nelson <luke.r.nels@gmail.com>, Catalin Marinas <catalin.marinas@arm.com>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 clang-built-linux@googlegroups.com, Luke Nelson <lukenels@cs.washington.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, Zi Shen Lim <zlim.lnx@gmail.com>,
 KP Singh <kpsingh@chromium.org>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Andrii Nakryiko <andriin@fb.com>,
 Martin KaFai Lau <kafai@fb.com>, Xi Wang <xi.wang@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 7 May 2020 09:29:35 +0100
Will Deacon <will@kernel.org> wrote:

Hi Will,

> Hi Luke,
> 
> Thanks for the patches.
> 
> On Wed, May 06, 2020 at 06:05:01PM -0700, Luke Nelson wrote:
> > This patch fixes two issues present in the current function for encoding
> > arm64 logical immediates when using the 32-bit variants of instructions.
> > 
> > First, the code does not correctly reject an all-ones 32-bit immediate
> > and returns an undefined instruction encoding, which can crash the kernel.
> > The fix is to add a check for this case.
> > 
> > Second, the code incorrectly rejects some 32-bit immediates that are
> > actually encodable as logical immediates. The root cause is that the code
> > uses a default mask of 64-bit all-ones, even for 32-bit immediates. This
> > causes an issue later on when the mask is used to fill the top bits of
> > the immediate with ones, shown here:
> > 
> >   /*
> >    * Pattern: 0..01..10..01..1
> >    *
> >    * Fill the unused top bits with ones, and check if
> >    * the result is a valid immediate (all ones with a
> >    * contiguous ranges of zeroes).
> >    */
> >   imm |= ~mask;
> >   if (!range_of_ones(~imm))
> >           return AARCH64_BREAK_FAULT;
> > 
> > To see the problem, consider an immediate of the form 0..01..10..01..1,
> > where the upper 32 bits are zero, such as 0x80000001. The code checks
> > if ~(imm | ~mask) contains a range of ones: the incorrect mask yields
> > 1..10..01..10..0, which fails the check; the correct mask yields
> > 0..01..10..0, which succeeds.
> > 
> > The fix is to use a 32-bit all-ones default mask for 32-bit immediates.
> > 
> > Currently, the only user of this function is in
> > arch/arm64/kvm/va_layout.c, which uses 64-bit immediates and won't
> > trigger these bugs.  
> 
> Ah, so this isn't a fix or a bpf patch ;)
> 
> I can queue it via arm64 for 5.8, along with the bpf patches since there
> are some other small changes pending in the arm64 bpf backend for BTI.
> 
> > We tested the new code against llvm-mc with all 1,302 encodable 32-bit
> > logical immediates and all 5,334 encodable 64-bit logical immediates.
> > 
> > Fixes: ef3935eeebff ("arm64: insn: Add encoder for bitwise operations using literals")
> > Co-developed-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Xi Wang <xi.wang@gmail.com>
> > Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> > ---
> >  arch/arm64/kernel/insn.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> > index 4a9e773a177f..42fad79546bb 100644
> > --- a/arch/arm64/kernel/insn.c
> > +++ b/arch/arm64/kernel/insn.c
> > @@ -1535,7 +1535,7 @@ static u32 aarch64_encode_immediate(u64 imm,
> >  				    u32 insn)
> >  {
> >  	unsigned int immr, imms, n, ones, ror, esz, tmp;
> > -	u64 mask = ~0UL;
> > +	u64 mask;
> >  
> >  	/* Can't encode full zeroes or full ones */
> >  	if (!imm || !~imm)  
> 
> It's a bit grotty spreading the checks out now. How about we tweak things
> slightly along the lines of:
> 
> 
> diff --git a/arch/arm64/kernel/insn.c b/arch/arm64/kernel/insn.c
> index 4a9e773a177f..60ec788eaf33 100644
> --- a/arch/arm64/kernel/insn.c
> +++ b/arch/arm64/kernel/insn.c
> @@ -1535,16 +1535,10 @@ static u32 aarch64_encode_immediate(u64 imm,
>  				    u32 insn)
>  {
>  	unsigned int immr, imms, n, ones, ror, esz, tmp;
> -	u64 mask = ~0UL;
> -
> -	/* Can't encode full zeroes or full ones */
> -	if (!imm || !~imm)
> -		return AARCH64_BREAK_FAULT;
> +	u64 mask;
>  
>  	switch (variant) {
>  	case AARCH64_INSN_VARIANT_32BIT:
> -		if (upper_32_bits(imm))
> -			return AARCH64_BREAK_FAULT;
>  		esz = 32;
>  		break;
>  	case AARCH64_INSN_VARIANT_64BIT:
> @@ -1556,6 +1550,12 @@ static u32 aarch64_encode_immediate(u64 imm,
>  		return AARCH64_BREAK_FAULT;
>  	}
>  
> +	mask = GENMASK(esz - 1, 0);
> +
> +	/* Can't encode full zeroes or full ones */

... nor a value wider than the mask.

> +	if (imm & ~mask || !imm || imm == mask)
> +		return AARCH64_BREAK_FAULT;
> +
>  	/*
>  	 * Inverse of Replicate(). Try to spot a repeating pattern
>  	 * with a pow2 stride.
> 
> 
> What do you think?

I'd be pretty happy with that.

Reviewed-by: Marc Zyngier <maz@kernel.org>

Thanks,

	M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
