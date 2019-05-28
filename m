Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1095C2C42A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 12:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s65wlNvIDpC8pg/OjQp/+V1OO7SYocG5zVEqloMbUok=; b=rsyRvkx7qDr/9S
	ujU2OCe3wu86VnB7vgRuQX+DGw/2TTCAC7sdUL/TrzXRZYc43TD4WwqIvJ0yooNxpW5j5USrohnrW
	T/345iY9m8N+lxWtWQsbjt3u6/WdSbIHqeO9rrQwjrZ1jSDNkOoX97YGg+AOVh/LOcXCRSGjrMjaI
	No9HPnWDzR2DZxSEtjG8ZILQ2tzSiP4reDrRV5xCKpGIYJKY6ANHXwnOVwEkHcocMgPKeF99qHCSF
	ADX5q09SCkmKmZZTzLQrGdSH80luDCBdVQDNAxIfucMUgewzUKBJsdGm5fIF0cEIMZ531XGXkOQ6G
	I++AaFbsB8PhQKQhhkWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVZEI-0002Nj-NA; Tue, 28 May 2019 10:21:14 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVZEB-0002NO-SU
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 10:21:09 +0000
Received: by mail-it1-x142.google.com with SMTP id m3so3407792itl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 28 May 2019 03:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=95qgbzEm192Xpkh+n2cq8P2TlxzyG/CZ3sfwg/xCkQs=;
 b=BGJhSfhJuaaEH7HiqZioLuzktiuC3wHVDZoBUaQwxHnMOjDVwRaBAMErO+SiiyVqsQ
 Y/+/CMVHyMvRZPsdeaHR31vKG00931Ot6hDFfx3in+NnQWLJ8kK/W01zaUlccRbKiWbm
 nXo6JCmfHnJWx5HJnRvzUFoCJZ8gPQAYg7CIe3LA7jCNidISuBPHRR9CAEahEvDcSQAP
 JCN1ZYWVrBnNZfJyODG/vQ7QDeqv7yKiam035CN4P/lsnwoVm3pLroFHYGIYwunWHI4O
 c9V03XSQUn+f404mtd3nz0PnGxZApXCbjZklRrIvvQR4AZ/F8n+F42ZvQMrSqNplHihx
 hnYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=95qgbzEm192Xpkh+n2cq8P2TlxzyG/CZ3sfwg/xCkQs=;
 b=BlMxoNVMMI92G/p+K8kB+JJgHmji1mPbkxggg6NjuyUWRsw4GgIHQwH4r6iHnjNMcu
 N0PTb+givI8N1heBs4u3+VumLrmf9CQE4XONHsUf7ofZY+GrfXQKmAWoDMxI/XiAcA7M
 QwsTqsg+Oi3a7mIKmnwbhVSTPvIUz6p2OYdajsMxA/1qv38sOV1REgMlGaxA9xKaHHAq
 vMflcjOH19xRujh50+wTqFRTlRrumf5qdxkSA15+DXUDLTel+wMnAFbuRqLGGShkM0UO
 Rslv9iHErIa8f/NucWkRb8ZHxxPQFBq1zz0QugL5eWGutPzGzpipvyuAvJdOmQkJR0rz
 ZHGw==
X-Gm-Message-State: APjAAAWnayt7NcPUA05D/7EdFvbubZEreCRpYamAxzm6TMRQA8fbz5sv
 2WgTkvwTZWGIs95JVc1sxO01d1fyaioI32z44ogERQ==
X-Google-Smtp-Source: APXvYqwSTjjuC7+XRBfp3KWkJ+qZNi3c8daU1VP82tS9htyhRcIxY9UlP4oqQzhuslJDoLh4MSzRS0wmTO46b+WAfHM=
X-Received: by 2002:a24:d00e:: with SMTP id m14mr2299274itg.153.1559038866381; 
 Tue, 28 May 2019 03:21:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190527064413.21304-1-ard.biesheuvel@linaro.org>
 <20190528101147.GB20809@fuggles.cambridge.arm.com>
In-Reply-To: <20190528101147.GB20809@fuggles.cambridge.arm.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue, 28 May 2019 12:20:53 +0200
Message-ID: <CAKv+Gu8q1ABorbhL7yBjdKP=xt0gkFn2-BSntifkbx8w=bE=bg@mail.gmail.com>
Subject: Re: [PATCH] arm64/module: revert to unsigned interpretation of
 ABS16/32 relocations
To: Will Deacon <will.deacon@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_032107_946353_38E36525 
X-CRM114-Status: GOOD (  28.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
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

On Tue, 28 May 2019 at 12:11, Will Deacon <will.deacon@arm.com> wrote:
>
> On Mon, May 27, 2019 at 08:44:13AM +0200, Ard Biesheuvel wrote:
> > Commit 1cf24a2cc3fd
> >
> >   ("arm64/module: deal with ambiguity in PRELxx relocation ranges")
> >
> > updated the overflow checking logic in the relocation handling code to
> > ensure that PREL16/32 relocations don't overflow signed quantities.
> >
> > However, the same code path is used for absolute relocations, where the
> > interpretation is the opposite: the only current use case for absolute
> > relocations operating on non-native word size quantities is the CRC32
> > handling in the CONFIG_MODVERSIONS code, and these CRCs are unsigned
> > 32-bit quantities, which are now being rejected by the module loader
> > if bit 31 happens to be set.
> >
> > So let's use different ranges for quanties subject to absolute vs.
> > relative relocations:
> > - ABS16/32 relocations should be in the range [0, Uxx_MAX)
> > - PREL16/32 relocations should be in the range [Sxx_MIN, Sxx_MAX)
> >
> > Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> > ---
> >  arch/arm64/kernel/module.c | 14 ++++++++------
> >  1 file changed, 8 insertions(+), 6 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
> > index f32359cffb01..85fb63c1ba3a 100644
> > --- a/arch/arm64/kernel/module.c
> > +++ b/arch/arm64/kernel/module.c
> > @@ -98,10 +98,10 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
> >
> >       /*
> >        * The ELF psABI for AArch64 documents the 16-bit and 32-bit place
> > -      * relative relocations as having a range of [-2^15, 2^16) or
> > -      * [-2^31, 2^32), respectively. However, in order to be able to detect
> > -      * overflows reliably, we have to choose whether we interpret such
> > -      * quantities as signed or as unsigned, and stick with it.
> > +      * relative and absolute relocations as having a range of [-2^15, 2^16)
> > +      * or [-2^31, 2^32), respectively. However, in order to be able to
> > +      * detect overflows reliably, we have to choose whether we interpret
> > +      * such quantities as signed or as unsigned, and stick with it.
> >        * The way we organize our address space requires a signed
> >        * interpretation of 32-bit relative references, so let's use that
> >        * for all R_AARCH64_PRELxx relocations. This means our upper
> > @@ -111,12 +111,14 @@ static int reloc_data(enum aarch64_reloc_op op, void *place, u64 val, int len)
> >       switch (len) {
> >       case 16:
> >               *(s16 *)place = sval;
> > -             if (sval < S16_MIN || sval > S16_MAX)
> > +             if ((op == RELOC_OP_ABS && (sval < 0 || sval > U16_MAX)) ||
> > +                 (op == RELOC_OP_PREL && (sval < S16_MIN || sval > S16_MAX)))
> >                       return -ERANGE;
> >               break;
> >       case 32:
> >               *(s32 *)place = sval;
> > -             if (sval < S32_MIN || sval > S32_MAX)
> > +             if ((op == RELOC_OP_ABS && (sval < 0 || sval > U32_MAX)) ||
> > +                 (op == RELOC_OP_PREL && (sval < S32_MIN || sval > S32_MAX)))
> >                       return -ERANGE;
> >               break;
> >       case 64:
>
> Hmm. I worry that this isn't the last time we're going to be tweaking this,
> so I'm wondering whether or not we should just revert 1cf24a2cc3fd instead.
>

Both absolute and relative 32-bit references can really only be
emitted using assembler code, since C code only uses the former, and
only uses it to resolve symbol addresses not bare values.

ABS32 is only used by the CONFIG_MODVERSIONS code, and PREL32 is only
used by the few data structures where we deliberately use relative
references to get rid of the RELA entries associated with absolute
references.

So I don't share your concern here, although I understand where it is
coming from.

*However*, not being able to detect overflow is *really* bad, so even
if there is another tweak behind the horizon, this is still better
than silent data corruption because your data reference is off by 4
GB.

> However, if you still want to pursue this, please can you restructure the
> check so that we do:
>
>         if (op == RELOC_OP_PREL) {
>                 /* Comment about deviation from ELF ABI */
>                 if (signed overflow check)
>                         return -ERANGE;
>         } else if (unsigned overflow check) {
>                 return -ERANGE;
>         }
>
> i.e. drop the explicit check of ABS so that the default behaviour follows
> the ELF spec?
>

My patch does not follow the ELF spec for either ABS16/32 or PREL16/32
relocations. It chooses an unsigned interpretation for the former, and
a signed one for the latter, and I think this is the only way to deal
with this properly.

This is why I updated the comment as well: we should apply a strict
(but different) interpretation to both kinds of relocations, not just
the relative ones.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
