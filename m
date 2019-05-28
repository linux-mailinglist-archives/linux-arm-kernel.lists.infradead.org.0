Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CE42C63C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mso03WDm5lobUDyp5xF1oJX70QVps1mhp+vZZS+M+C4=; b=GcvYbFIutPGY4j
	BkVxx0OKWfj8FL5Vi7wVBpMko+hjBWvgfLpv0F3XENWf5Y2RNLokR+akL12Z3HbP95fhJaQ+0+3Wv
	2YstOQTKTTHPWPKMv3P3ODV7fVbkm9VREDs8asZ79q6kY828jHMOFzkAly2CH68SmxjifHt6Bl5Ur
	wHQMsjHYrHiSAZYarROUjAYn6+Im5NgiivqUsXdCBz99dIvRsHH0Be2CEwlpblcGmkHmZ7d6tEd9C
	hbU1ZAQD0KPJKAF3ZmWCk4qfYdcWxSYJ1bf6EaOfh3B7I3ce2TgYx7Z/6lSNCU897Bt+3qjkEll0L
	2Hqjc40682OyQt9LJJZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVazR-0004U1-GY; Tue, 28 May 2019 12:14:01 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVazK-0004Th-Ra
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:13:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7E57A78;
 Tue, 28 May 2019 05:13:53 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9800C3F5AF;
 Tue, 28 May 2019 05:13:52 -0700 (PDT)
Date: Tue, 28 May 2019 13:13:43 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] arm64/module: revert to unsigned interpretation of
 ABS16/32 relocations
Message-ID: <20190528121343.GA20758@fuggles.cambridge.arm.com>
References: <20190527064413.21304-1-ard.biesheuvel@linaro.org>
 <20190528101147.GB20809@fuggles.cambridge.arm.com>
 <CAKv+Gu8q1ABorbhL7yBjdKP=xt0gkFn2-BSntifkbx8w=bE=bg@mail.gmail.com>
 <20190528115205.GH20809@fuggles.cambridge.arm.com>
 <CAKv+Gu8QXFB2eN8FJWtx0kRPa-DCZvEV2u8avsZJqT8vWc_N0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8QXFB2eN8FJWtx0kRPa-DCZvEV2u8avsZJqT8vWc_N0Q@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_051354_905711_7809CA4C 
X-CRM114-Status: GOOD (  38.26  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 James Morse <james.morse@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 02:03:37PM +0200, Ard Biesheuvel wrote:
> On Tue, 28 May 2019 at 13:52, Will Deacon <will.deacon@arm.com> wrote:
> >
> > On Tue, May 28, 2019 at 12:20:53PM +0200, Ard Biesheuvel wrote:
> > > On Tue, 28 May 2019 at 12:11, Will Deacon <will.deacon@arm.com> wrote:
> > > >
> > > > On Mon, May 27, 2019 at 08:44:13AM +0200, Ard Biesheuvel wrote:
> > > > > Commit 1cf24a2cc3fd
> > > > >
> > > > >   ("arm64/module: deal with ambiguity in PRELxx relocation ranges")
> > > > >
> > > > > updated the overflow checking logic in the relocation handling code to
> > > > > ensure that PREL16/32 relocations don't overflow signed quantities.
> > > > >
> > > > > However, the same code path is used for absolute relocations, where the
> > > > > interpretation is the opposite: the only current use case for absolute
> > > > > relocations operating on non-native word size quantities is the CRC32
> > > > > handling in the CONFIG_MODVERSIONS code, and these CRCs are unsigned
> > > > > 32-bit quantities, which are now being rejected by the module loader
> > > > > if bit 31 happens to be set.
> > > > >
> > > > > So let's use different ranges for quanties subject to absolute vs.
> > > > > relative relocations:
> > > > > - ABS16/32 relocations should be in the range [0, Uxx_MAX)
> > > > > - PREL16/32 relocations should be in the range [Sxx_MIN, Sxx_MAX)
> > > > >
> > > > > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > > > ---
> > > > >  arch/arm64/kernel/module.c | 14 ++++++++------
> > > > >  1 file changed, 8 insertions(+), 6 deletions(-)
> > > > >
> > > > > diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
> > > > > index f32359cffb01..85fb63c1ba3a 100644
> > > > > --- a/arch/arm64/kernel/module.c
> > > > > +++ b/arch/arm64/kernel/module.c
> > > > > @@ -98,10 +98,10 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
> > > > >
> > > > >       /*
> > > > >        * The ELF psABI for AArch64 documents the 16-bit and 32-bit place
> > > > > -      * relative relocations as having a range of [-2^15, 2^16) or
> > > > > -      * [-2^31, 2^32), respectively. However, in order to be able to detect
> > > > > -      * overflows reliably, we have to choose whether we interpret such
> > > > > -      * quantities as signed or as unsigned, and stick with it.
> > > > > +      * relative and absolute relocations as having a range of [-2^15, 2^16)
> > > > > +      * or [-2^31, 2^32), respectively. However, in order to be able to
> > > > > +      * detect overflows reliably, we have to choose whether we interpret
> > > > > +      * such quantities as signed or as unsigned, and stick with it.
> > > > >        * The way we organize our address space requires a signed
> > > > >        * interpretation of 32-bit relative references, so let's use that
> > > > >        * for all R_AARCH64_PRELxx relocations. This means our upper
> > > > > @@ -111,12 +111,14 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
> > > > >       switch (len) {
> > > > >       case 16:
> > > > >               *(s16 *)place = sval;
> > > > > -             if (sval < S16_MIN || sval > S16_MAX)
> > > > > +             if ((op == RELOC_OP_ABS && (sval < 0 || sval > U16_MAX)) ||
> > > > > +                 (op == RELOC_OP_PREL && (sval < S16_MIN || sval > S16_MAX)))
> > > > >                       return -ERANGE;
> > > > >               break;
> > > > >       case 32:
> > > > >               *(s32 *)place = sval;
> > > > > -             if (sval < S32_MIN || sval > S32_MAX)
> > > > > +             if ((op == RELOC_OP_ABS && (sval < 0 || sval > U32_MAX)) ||
> > > > > +                 (op == RELOC_OP_PREL && (sval < S32_MIN || sval > S32_MAX)))
> > > > >                       return -ERANGE;
> > > > >               break;
> > > > >       case 64:
> > > >
> > > > Hmm. I worry that this isn't the last time we're going to be tweaking this,
> > > > so I'm wondering whether or not we should just revert 1cf24a2cc3fd instead.
> > > >
> > >
> > > Both absolute and relative 32-bit references can really only be
> > > emitted using assembler code, since C code only uses the former, and
> > > only uses it to resolve symbol addresses not bare values.
> > >
> > > ABS32 is only used by the CONFIG_MODVERSIONS code, and PREL32 is only
> > > used by the few data structures where we deliberately use relative
> > > references to get rid of the RELA entries associated with absolute
> > > references.
> > >
> > > So I don't share your concern here, although I understand where it is
> > > coming from.
> >
> > Fair enough, although I'm not claiming that there's a bug in your patch
> > (it looks fine), just more that I dislike the deviation we're introducing
> > here.
> >
> > > *However*, not being able to detect overflow is *really* bad, so even
> > > if there is another tweak behind the horizon, this is still better
> > > than silent data corruption because your data reference is off by 4
> > > GB.
> >
> > Agreed.
> >
> > > > However, if you still want to pursue this, please can you restructure the
> > > > check so that we do:
> > > >
> > > >         if (op == RELOC_OP_PREL) {
> > > >                 /* Comment about deviation from ELF ABI */
> > > >                 if (signed overflow check)
> > > >                         return -ERANGE;
> > > >         } else if (unsigned overflow check) {
> > > >                 return -ERANGE;
> > > >         }
> > > >
> > > > i.e. drop the explicit check of ABS so that the default behaviour follows
> > > > the ELF spec?
> > > >
> > >
> > > My patch does not follow the ELF spec for either ABS16/32 or PREL16/32
> > > relocations. It chooses an unsigned interpretation for the former, and
> > > a signed one for the latter, and I think this is the only way to deal
> > > with this properly.
> > >
> > > This is why I updated the comment as well: we should apply a strict
> > > (but different) interpretation to both kinds of relocations, not just
> > > the relative ones.
> >
> > Ah, apologies, I missed that you'd changed the ABS behaviour from what it
> > was prior to 1cf24a2cc3fd. My main gripe is that our (currently unused)
> > fallthrough case (for op != PREL or ABS) is to elide the check altogether,
> > whereas I would prefer that we do our special casing with the comment, and
> > then keep the old overflow check for everything else, even though it's
> > really just there for documentation purposes.
> >
> 
> Something like this perhaps?
> 
> s64 min = (op != RELOC_OP_ABS ? S32_MIN : 0);
> s64 max = (op != RELOC_OP_PREL ? U32_MAX : S32_MAX);
> if (sval < min || sval > max)
>     return -ERANGE;
> 
> Or is that too obfuscated?

It's a bit too smart for me ;)

I think I'd just switch on the op and duplicate the check, tbh.

Will


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
