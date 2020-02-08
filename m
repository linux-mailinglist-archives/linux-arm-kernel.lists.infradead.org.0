Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7773C1563BE
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 11:05:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WLDijydeuRf/pczjI0sSpCMncFlgEocRGnr+RnC+7Y=; b=faUCj3hvI4NEiX
	Q1BBfAay/yxX9awCvaSs/eWs1ROt9/4KO5LZHMgC3cguZnWCMpNcEdSbezWwhcAcP3hpuuKSimM4x
	R9Tcaw7K/4ok+clbuoxOMToTrfw5U+EQFm+MqbLrBL0OdbzSkr+IZeRXPEzjpYc36XBcvfy76WT0r
	fHyXUK6qmEOf6e+qmXFkLU+9czk9P7N2qyHYx4dlmo6FkRbb6lyLjW9kl+X8XtcUUEFaFXf/9htl4
	Y9n07zLgJCK9r2iBi0JzswPHe7xmiRu6lIua9m7sPqpjPkYa3fMWsWLlFkvw+ZoO/+2tCWqULsQHL
	QkEWKhuIlcZzV67KA+kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0MzC-0002yY-Uu; Sat, 08 Feb 2020 10:05:14 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Mz4-0002aG-Dl
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 10:05:08 +0000
Received: by mail-pj1-x1044.google.com with SMTP id e9so2008516pjr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 02:05:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H0xgMzVvnquxmSoa8b2un9FhUW2CIcx5JEQW64zzoig=;
 b=PZ4fq6KOA2eSPnd8W1jJK5kxEPyXhpQZdTSgiW9rPSj7pjzydNU4g4mL3m0aSpop3p
 eCrxeox3Bi/EKLVS6i6WlTUEf0cmzdtTUbm6VtjaXVx2qDKM529O5dYcHj8qru6dDStg
 LfLirUhLJ6HiRByfmjyF46wF+itXbGMcs/8uCAqFLX6/xHd8eXc1BqU3wBnCEhLmx3mv
 VuAFnYUM4cZwPbY+iFrJS65cndVXbI0VP22VBDfPeXvKPtxi9VHX39h/tqXagI7ORcbd
 l9w/jTVBhsGT1zNjRWkQ4xbaAn2z3Ot9S8AYiWjd0u1KkCGqssyiU5lZPNPbWi5WaORV
 QvZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H0xgMzVvnquxmSoa8b2un9FhUW2CIcx5JEQW64zzoig=;
 b=tiNmoUjopS1wdgRLfHyk2KtsRODmsltzWCQnf1sCK5p0LHSLDt4ReCrLbvWFINHQnm
 Jz+5Wq/KqQMWbZZex5QmVCkSMCVtuyh1NWvBsggoB23u/ynXLMpvypJyskaLtJx52W6i
 f/z/u7QerwVuVlDQwux2Q5WFCOnYsrn93MxZOOqRJthX+FRudqDG4KABvS0srCSLF4jY
 7njojc8kSsnmYASW+ElO5Jz0OMYfNoJz9BNW6s4BaNuzbYQialAuQuhSCSiSzohJYoSe
 9ULWdUj8eJwqdXzNtDtvDseawXDWHgmLdZ1symKrfc+ex82lZXJgYvfXBRkBRmQkm3h7
 NEFQ==
X-Gm-Message-State: APjAAAUin+l03ho4jGgiRpxl3r8WkyZZVyvbrwdza5w7nhTVYdOTwRQr
 wohjHcQoOJIGD+5zCla3l8FSK6zNAHmcqtUNntne3A==
X-Google-Smtp-Source: APXvYqxXWxSlNnqFbe1ZxZDLLlJsZxLfb+81FRMw436skzvn6kDV8tMhJX7FfWNtEj0p1I676ybBxWjSlGtlqEv7XqA=
X-Received: by 2002:a17:90a:7784:: with SMTP id
 v4mr9439882pjk.134.1581156305061; 
 Sat, 08 Feb 2020 02:05:05 -0800 (PST)
MIME-Version: 1.0
References: <202002071754.F5F073F1D@keescook>
 <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
 <202002080054.CBBE423@keescook>
In-Reply-To: <202002080054.CBBE423@keescook>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Sat, 8 Feb 2020 10:04:53 +0000
Message-ID: <CAKwvOdmchUkLLQMjagJ1cxa3CwFaAgH8gZcMVNny9Fb0iDVi8A@mail.gmail.com>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_020506_552934_8139B9CC 
X-CRM114-Status: GOOD (  22.17  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nicolas Pitre <nico@fluxnic.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Russell King - ARM Linux <linux@armlinux.org.uk>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 8, 2020 at 9:55 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Sat, Feb 08, 2020 at 07:54:39AM +0000, Ard Biesheuvel wrote:
> > On Sat, 8 Feb 2020 at 02:02, Kees Cook <keescook@chromium.org> wrote:
> > >
> > > When the uaccess .fixup section was renamed to .text.fixup, one case was
> > > missed. Under ld.bfd, the orphaned section was moved close to .text
> > > (since they share the "ax" bits), so things would work normally on
> > > uaccess faults. Under ld.lld, the orphaned section was placed outside
> > > the .text section, making it unreachable. Rename the missed section.
> > >
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/282
> > > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> > > Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> > > Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
> > > Cc: stable@vger.kernel.org
> > > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Reported-by: Manoj Gupta <manojgupta@google.com>
> > > Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> >
> > Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
>
> Thanks!
>
> > As Nick points out, the *(.fixup) line still appears in the
> > decompressor's linker script, but this is harmless, given that we
> > don't ever emit anything into that section. But while we're at it, we
> > might just remove it as well.
>
> Agreed. I'll send a separate patch for that.

Sure, in that case
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> -Kees
>
> >
> >
> > > ---
> > > I completely missed this the first several times I looked at this
> > > problem. Thank you Nicolas for pushing back on the earlier patch!
> > > Manoj or Nathan, can you test this?
> > > ---
> > >  arch/arm/lib/copy_from_user.S | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> > > index 95b2e1ce559c..f8016e3db65d 100644
> > > --- a/arch/arm/lib/copy_from_user.S
> > > +++ b/arch/arm/lib/copy_from_user.S
> > > @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
> > >
> > >  ENDPROC(arm_copy_from_user)
> > >
> > > -       .pushsection .fixup,"ax"
> > > +       .pushsection .text.fixup,"ax"
> > >         .align 0
> > >         copy_abort_preamble
> > >         ldmfd   sp!, {r1, r2, r3}
> > > --
> > > 2.20.1
> > >
> > >
> > > --
> > > Kees Cook
>
> --
> Kees Cook



-- 
Thanks,
~Nick Desaulniers

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
