Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7510FA3F3A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 22:58:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTl+kcEJRn7tDwJHiGclgQRSs/cdGD2ZMV+1To3DaHA=; b=r5IPdC++i6p6yQ
	HmIRYw26go+a4OC+Uyg3YT6IdORUxJ9IJEXBW3wRfDGyXfhvi5rmYBPob02FprDzUDnEFpP8hvOvN
	ZR9mHrNW3zuooKOIHIKtuR4btO8IVSlT8GSAdCVaJkLjmYV5kFreo+Eyxsyc5s8VIyKIP2seG5Pzs
	LlPuYkByxLxGIRLAsBO89SZsMWQqQwOOIylxV5mb+RUH8Th1ElkkuGLtK/dQLbjfP696RzQEO0Tf7
	OIgp8QnTSAkDOWiSlHR28Jf62Fi0JCxPNQuaS89Ir4b7Da4PFOxHG45B1llQRm/g7eH/Ir9QwbYqZ
	e7l6olfOe2bAt7qwbu6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3nyL-0000rC-Ge; Fri, 30 Aug 2019 20:58:17 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3nyA-0000ql-Sj
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 20:58:08 +0000
Received: by mail-pl1-x642.google.com with SMTP id d3so3901948plr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 13:58:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mFxD0MZFYY42RaJBDLF2GUwHXm8serVqmuEey6UlVzc=;
 b=qVkbQO/bnO2wUTgnzZBpolohEmUMkuPGvQfUfIoDu6D6fK/F3ymP2WyYqFFawzPLM7
 L6T1i+ulXO0nxQLbnTR27ZLqlwybt7R0O+AxE/HsxQkU6JXrEEFxghZyQvjH7cCsYb2h
 DpvtBiWzTBngh8OODfmaK58cBG3qHtMBi71XZObz/YOspvdPovP1fsfyNAhgnD0FNUNE
 YgerOxatvWM3Pqgajqq0lZQxmJrUCSoFX48rJCgZeDHPX9IHa/d6I+kV2ds1fB7DUc6Q
 AowerXpB6jiniNeowtGQfJTARSuQXg7D1Ej/jw7un4sex4z+6SP1sUBx1ikYEc7K/ijP
 4+dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mFxD0MZFYY42RaJBDLF2GUwHXm8serVqmuEey6UlVzc=;
 b=FAbNqsOUfem1MSRHXrxCKpyJHtXkmaTxbunPL6XcNC7RPXVAcY1oSGY5+a83QEjMYp
 YKTRgbc1pGYEE9ACxe1QmJ+1ehky5GTY/85SMpXsXxWmmr4jI4J069z0DkP3i6dWrvoY
 yiRAZ3Xf+GzWwicSChJoL6S0L+SzoMWRNjd+z3sUk116QeC81WRZC++g4+W/+tsT3NBk
 Ce/yKdxRh3e6UDxFKrBMMeV43bgOfsKfdhsEGOYiT4boU8tXAVB4j6T+0DQfiEb3ofh6
 9JO7GpvQrHX1uIlfg/hN0KOfAXQPOs/sw0pJ5V9FUuuuCHB/yQeX7TSk8HErNSteZXOx
 8X8Q==
X-Gm-Message-State: APjAAAWBj5c1lr2ZrJUQ4wab/Gn1o53KgCYJ+L0v47Y7TJs+rEByyAEc
 f5sfqpps6mKcNo91EizT6/Mv1x2pbjSnG2iLA6tbJQ77FJ4=
X-Google-Smtp-Source: APXvYqyP/8DiBmLKF87W6JpgVn6TuJxLivCLp5MpVOGpP9aBHJ0wDjfiNGtZqU9WqFTeeR89HKguuorK5nEM5zvw+YE=
X-Received: by 2002:a17:902:a9c3:: with SMTP id
 b3mr17522272plr.179.1567198682077; 
 Fri, 30 Aug 2019 13:58:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190829154834.26547-1-will@kernel.org>
 <20190829154834.26547-11-will@kernel.org>
 <20190829165457.grindfmgpdpsbt4i@willie-the-truck>
 <CAKwvOdkaCTQ92hUe823Y14xo_Gft4vsRGgimHc8QPUBCbbAOrQ@mail.gmail.com>
 <20190829215347.GB2404@brain-police>
In-Reply-To: <20190829215347.GB2404@brain-police>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Fri, 30 Aug 2019 13:57:50 -0700
Message-ID: <CAKwvOdnxssMgeYKpEHJ-k5Ahhah=3qny7zvwBmXJsUyCKShMiw@mail.gmail.com>
Subject: Re: [PATCH v5 10/10] arm64: atomics: Use K constraint when toolchain
 appears to support it
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_135806_955666_558B6A0E 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Ard.Biesheuvel@arm.com,
 andrew.murray@arm.com, Nathan Chancellor <natechancellor@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 2:53 PM Will Deacon <will@kernel.org> wrote:
>
> On Thu, Aug 29, 2019 at 10:45:57AM -0700, Nick Desaulniers wrote:
> > On Thu, Aug 29, 2019 at 9:55 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Thu, Aug 29, 2019 at 04:48:34PM +0100, Will Deacon wrote:
> > > > diff --git a/arch/arm64/include/asm/atomic_ll_sc.h b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > index 95091f72228b..7fa042f5444e 100644
> > > > --- a/arch/arm64/include/asm/atomic_ll_sc.h
> > > > +++ b/arch/arm64/include/asm/atomic_ll_sc.h
> > > > @@ -23,6 +23,10 @@ asm_ops "\n"                                                               \
> > > >  #define __LL_SC_FALLBACK(asm_ops) asm_ops
> > > >  #endif
> > > >
> > > > +#ifndef CONFIG_CC_HAS_K_CONSTRAINT
> > > > +#define K
> > > > +#endif
> > >
> > > Bah, I need to use something like __stringify when the constraint is used
> > > in order for this to get expanded properly. Updated diff below.
> > >
> > > Will
> >
> > Hi Will, thanks for cc'ing me on the patch set.  I'd be happy to help
> > test w/ Clang.  Would you mind pushing this set with the below diff to
> > a publicly available tree+branch I can pull from?  (I haven't yet
> > figured out how to download multiple diff's from gmail rather than 1
> > by 1, and TBH I'd rather just use git).
>
> Sorry, of course. I should've mentioned this in the cover letter:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/atomics
>
> FWIW, I did test (defconfig + boot) with clang, but this does mean that LSE
> atomics are disabled for that configuration when asm goto is not supported.
>
> Will

Thanks, just curious if you (or anyone else on the list) has the QEMU
recipe handy to test on a virtual machine that has ll/sc instructions,
and one that does not?  I'm guessing testing the default machine would
not exercise the code path where these instructions have been added?

-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
