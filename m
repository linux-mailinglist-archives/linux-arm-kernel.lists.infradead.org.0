Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A7F2C66F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 14:26:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WPrS639TjvvD+YiNbVR5p5bZmW6sIEZamFT0vubLS04=; b=i59cFFhMOg4/um
	tzFdjlJ5qo1wvHtCMrBG97enNoA1DRaAG0Q2gSv9k1rVb0eut4BnawJ+V8NmK/N1PjSvgXnJYj+OE
	s8VVpB57Wfxc+00g0eRuA+WXe6vr1GFwMHkMnJvwrTzYMJdV1pzT6wx6AMBWbCPRhxAp6RTvotdLX
	eY6i4WboE6bdhzVitCXitZl2ew2B5JF2oATDzF82aZ5sqPXJmDI9g94zBrzyrn70MSAoRsqUzdHsB
	DoEJzNaKp7O9Hawp6aUCZ7WkPAoON54zt9g3AYcZ/WKqWLfRpTO0O5UQ5GW/OR11lstR3HTLOcdnd
	paJVhyJwdQjz5Jllxx0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVbBS-0001DL-0k; Tue, 28 May 2019 12:26:26 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVbBJ-0001Cq-C4
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 12:26:19 +0000
Received: by mail-it1-x143.google.com with SMTP id m140so3577871itg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 05:26:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mJ7DACdPq+goy6HFxzq35t6WT+dFq4SoxJLrLB2XR0k=;
 b=xA8xILqneIkFBkSEQQvxWqtlPWO1aDQjlQfMv6EACA43+Xh1xH7ut1+JdQPmLCfCJB
 unzlaKFXSS/s+y3yDfYa5+Tg9/3vt20RoRBnw5ON4gLiTLiDUVude170KhYzMjAhUthS
 Epv3L/jk+XYlbSQpTEOYIy38yrjj5ZtrQcXsQ9JCk016ciDzSRNveHMCMXhjJz89l9sa
 XBg3AjrIUT/WnmTKuLMJ7EgnWQC0ByU2jJwPftGj46zXhQa1/2aLn5Ckx7o2gdzFyz2U
 vjdEVMHrASMBaTvVMCm9N8SyhnUjBN4KxmGQYop3K3P3ZgNkx2InVHYxcQP1mYmy0dW4
 57CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mJ7DACdPq+goy6HFxzq35t6WT+dFq4SoxJLrLB2XR0k=;
 b=osKYUOqCWoadyQRoIbDz6fHCI3EHmaWwmrFm+JJyzVKuacBE2ddY6qmO+/9uc3ucxZ
 a88BK2r5+iO4ut7CeBy+WP5riUJq9uWjWXPHVnUyZxGPD4VLhfBK7wvqNYxVn1xAQUTQ
 52om9nxtnTFXyq4Ti+o2qooEeqEEAiT9Vt1nduIFu6CikwrQ8OnaTsOIgsfCUOmWURVd
 4pK7qL6U1lJKySyikppRlzg+F0xn1QWDS4AR6QI5S3NWvBfS5gTJHtiPwpmVpQ67LOwy
 7GXYfWniruZ8ZtTEB56K9I1+ivQ1n7OmEZPDUV0KgWRaA0KgoPjx6/mvpYbxopBDfAIn
 fPLA==
X-Gm-Message-State: APjAAAVLbRhjOR/j/no5C9b7QYEJ5vAyU6iAriEGwEghSua6AQggbrZl
 y3/w7h1GwT78XP7amOI2o5er59v4N7oNFfSMa+XCgw==
X-Google-Smtp-Source: APXvYqxyxS0njaJuxzI/mKylPpeygP6JwCUfMzZbbgS3zxc8SLA47hNYOgPzUQZxcp6cXC8j2L1LQ4ZOzV54gEMLrkE=
X-Received: by 2002:a24:ca84:: with SMTP id k126mr2709850itg.104.1559046376095; 
 Tue, 28 May 2019 05:26:16 -0700 (PDT)
MIME-Version: 1.0
References: <20190527064413.21304-1-ard.biesheuvel@linaro.org>
 <20190528101147.GB20809@fuggles.cambridge.arm.com>
 <CAKv+Gu8q1ABorbhL7yBjdKP=xt0gkFn2-BSntifkbx8w=bE=bg@mail.gmail.com>
 <20190528115205.GH20809@fuggles.cambridge.arm.com>
 <CAKv+Gu8QXFB2eN8FJWtx0kRPa-DCZvEV2u8avsZJqT8vWc_N0Q@mail.gmail.com>
 <20190528121343.GA20758@fuggles.cambridge.arm.com>
In-Reply-To: <20190528121343.GA20758@fuggles.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 28 May 2019 14:26:04 +0200
Message-ID: <CAKv+Gu_=FiY-onBC4Bq64QC3_pRL7AFGz3WQ1t99iqz3N4219w@mail.gmail.com>
Subject: Re: [PATCH] arm64/module: revert to unsigned interpretation of
 ABS16/32 relocations
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_052617_419243_B49134A4 
X-CRM114-Status: GOOD (  36.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Tue, 28 May 2019 at 14:13, Will Deacon <will.deacon@arm.com> wrote:
>
> On Tue, May 28, 2019 at 02:03:37PM +0200, Ard Biesheuvel wrote:
> > On Tue, 28 May 2019 at 13:52, Will Deacon <will.deacon@arm.com> wrote:
> > >
> > > On Tue, May 28, 2019 at 12:20:53PM +0200, Ard Biesheuvel wrote:
> > > > On Tue, 28 May 2019 at 12:11, Will Deacon <will.deacon@arm.com> wrote:
> > > > >
> > > > > On Mon, May 27, 2019 at 08:44:13AM +0200, Ard Biesheuvel wrote:
> > > > > > Commit 1cf24a2cc3fd
> > > > > >
> > > > > >   ("arm64/module: deal with ambiguity in PRELxx relocation ranges")
> > > > > >
> > > > > > updated the overflow checking logic in the relocation handling code to
> > > > > > ensure that PREL16/32 relocations don't overflow signed quantities.
> > > > > >
> > > > > > However, the same code path is used for absolute relocations, where the
> > > > > > interpretation is the opposite: the only current use case for absolute
> > > > > > relocations operating on non-native word size quantities is the CRC32
> > > > > > handling in the CONFIG_MODVERSIONS code, and these CRCs are unsigned
> > > > > > 32-bit quantities, which are now being rejected by the module loader
> > > > > > if bit 31 happens to be set.
> > > > > >
> > > > > > So let's use different ranges for quanties subject to absolute vs.
> > > > > > relative relocations:
> > > > > > - ABS16/32 relocations should be in the range [0, Uxx_MAX)
> > > > > > - PREL16/32 relocations should be in the range [Sxx_MIN, Sxx_MAX)
> > > > > >
> > > > > > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > > > > > ---
> > > > > >  arch/arm64/kernel/module.c | 14 ++++++++------
> > > > > >  1 file changed, 8 insertions(+), 6 deletions(-)
> > > > > >
> > > > > > diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
> > > > > > index f32359cffb01..85fb63c1ba3a 100644
> > > > > > --- a/arch/arm64/kernel/module.c
> > > > > > +++ b/arch/arm64/kernel/module.c
> > > > > > @@ -98,10 +98,10 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
> > > > > >
> > > > > >       /*
> > > > > >        * The ELF psABI for AArch64 documents the 16-bit and 32-bit place
> > > > > > -      * relative relocations as having a range of [-2^15, 2^16) or
> > > > > > -      * [-2^31, 2^32), respectively. However, in order to be able to detect
> > > > > > -      * overflows reliably, we have to choose whether we interpret such
> > > > > > -      * quantities as signed or as unsigned, and stick with it.
> > > > > > +      * relative and absolute relocations as having a range of [-2^15, 2^16)
> > > > > > +      * or [-2^31, 2^32), respectively. However, in order to be able to
> > > > > > +      * detect overflows reliably, we have to choose whether we interpret
> > > > > > +      * such quantities as signed or as unsigned, and stick with it.
> > > > > >        * The way we organize our address space requires a signed
> > > > > >        * interpretation of 32-bit relative references, so let's use that
> > > > > >        * for all R_AARCH64_PRELxx relocations. This means our upper
> > > > > > @@ -111,12 +111,14 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
> > > > > >       switch (len) {
> > > > > >       case 16:
> > > > > >               *(s16 *)place = sval;
> > > > > > -             if (sval < S16_MIN || sval > S16_MAX)
> > > > > > +             if ((op == RELOC_OP_ABS && (sval < 0 || sval > U16_MAX)) ||
> > > > > > +                 (op == RELOC_OP_PREL && (sval < S16_MIN || sval > S16_MAX)))
> > > > > >                       return -ERANGE;
> > > > > >               break;
> > > > > >       case 32:
> > > > > >               *(s32 *)place = sval;
> > > > > > -             if (sval < S32_MIN || sval > S32_MAX)
> > > > > > +             if ((op == RELOC_OP_ABS && (sval < 0 || sval > U32_MAX)) ||
> > > > > > +                 (op == RELOC_OP_PREL && (sval < S32_MIN || sval > S32_MAX)))
> > > > > >                       return -ERANGE;
> > > > > >               break;
> > > > > >       case 64:
> > > > >
> > > > > Hmm. I worry that this isn't the last time we're going to be tweaking this,
> > > > > so I'm wondering whether or not we should just revert 1cf24a2cc3fd instead.
> > > > >
> > > >
> > > > Both absolute and relative 32-bit references can really only be
> > > > emitted using assembler code, since C code only uses the former, and
> > > > only uses it to resolve symbol addresses not bare values.
> > > >
> > > > ABS32 is only used by the CONFIG_MODVERSIONS code, and PREL32 is only
> > > > used by the few data structures where we deliberately use relative
> > > > references to get rid of the RELA entries associated with absolute
> > > > references.
> > > >
> > > > So I don't share your concern here, although I understand where it is
> > > > coming from.
> > >
> > > Fair enough, although I'm not claiming that there's a bug in your patch
> > > (it looks fine), just more that I dislike the deviation we're introducing
> > > here.
> > >
> > > > *However*, not being able to detect overflow is *really* bad, so even
> > > > if there is another tweak behind the horizon, this is still better
> > > > than silent data corruption because your data reference is off by 4
> > > > GB.
> > >
> > > Agreed.
> > >
> > > > > However, if you still want to pursue this, please can you restructure the
> > > > > check so that we do:
> > > > >
> > > > >         if (op == RELOC_OP_PREL) {
> > > > >                 /* Comment about deviation from ELF ABI */
> > > > >                 if (signed overflow check)
> > > > >                         return -ERANGE;
> > > > >         } else if (unsigned overflow check) {
> > > > >                 return -ERANGE;
> > > > >         }
> > > > >
> > > > > i.e. drop the explicit check of ABS so that the default behaviour follows
> > > > > the ELF spec?
> > > > >
> > > >
> > > > My patch does not follow the ELF spec for either ABS16/32 or PREL16/32
> > > > relocations. It chooses an unsigned interpretation for the former, and
> > > > a signed one for the latter, and I think this is the only way to deal
> > > > with this properly.
> > > >
> > > > This is why I updated the comment as well: we should apply a strict
> > > > (but different) interpretation to both kinds of relocations, not just
> > > > the relative ones.
> > >
> > > Ah, apologies, I missed that you'd changed the ABS behaviour from what it
> > > was prior to 1cf24a2cc3fd. My main gripe is that our (currently unused)
> > > fallthrough case (for op != PREL or ABS) is to elide the check altogether,
> > > whereas I would prefer that we do our special casing with the comment, and
> > > then keep the old overflow check for everything else, even though it's
> > > really just there for documentation purposes.
> > >
> >
> > Something like this perhaps?
> >
> > s64 min = (op != RELOC_OP_ABS ? S32_MIN : 0);
> > s64 max = (op != RELOC_OP_PREL ? U32_MAX : S32_MAX);
> > if (sval < min || sval > max)
> >     return -ERANGE;
> >
> > Or is that too obfuscated?
>
> It's a bit too smart for me ;)
>
> I think I'd just switch on the op and duplicate the check, tbh.
>

So like this?

switch (op) {
case RELOC_OP_ABS:
    if (sval < 0 || sval > U32_MAX)
         return -ERANGE;
    break;
case RELOC_OP_PREL:
    if (sval < S32_MIN || sval > S32_MAX)
        return -ERANGE;
    break;
default:
    if (sval < S32_MIN || sval > U32_MAX)
        return -ERANGE;
}

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
