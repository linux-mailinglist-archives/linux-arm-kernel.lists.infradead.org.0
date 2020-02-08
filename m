Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A87A15637E
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 09:55:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BspV1e+8MM30GzkG/xXmvF1/++Nja8dUKWA2+QEwusE=; b=YC3MWyl3Ur4PrH
	+C8FfNTwegKMOhXjl0G7b9vYx2EexQiQ1drb/ay2OVwuyzyhVB+wGPPK27VgjMUjzjcEqiT2fGnJe
	Q03JAMxtpxXbCjYNRTpHltDwtiNlfixe6666kmAEHk+NB32sd2gegoshPgpAI/VJBs71JkbuRP6hN
	A8jx+kCuvwqmKtMdkofTP82HOGy4VjpSERmAdowU4eAZRLtuVH0o3CTBvCQIZmgX9JZ1QMyIsvh/b
	vJjEk4lCCUM+TZGp+zPynSGSFUoXOAj2v71dzJGm8ykpdi/UqgxOLOuE3HiLFXxSWlDng4ID1nmyc
	jOTJfOuJqTxZ5DggmEkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Lta-0006r9-SA; Sat, 08 Feb 2020 08:55:22 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0LtU-0006qj-2Z
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 08:55:17 +0000
Received: by mail-oi1-x242.google.com with SMTP id c16so4529474oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 08 Feb 2020 00:55:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=mYQGK6YXfcZc98jtf4E/uGifjg8qJuSxlB3RUf5LzII=;
 b=SO93iRw417Yoski/EyoEHUBuzH4+hduutcUTwTVnt6bZfgQ2f0QSp/1fS+w7xvyL7a
 H6ANRscSn1szpp3VfSBq3vWHi+IrHLGmTTqqUz7YHd+1h8wMNpEGbz7eUN6u61Jk69+3
 hy69FvKnhSqSWLxHtnaPjX9Wo20zQ/exzSfCE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=mYQGK6YXfcZc98jtf4E/uGifjg8qJuSxlB3RUf5LzII=;
 b=FtdcDbKCLOV9ZQAz49Za3Nd0ArI5AWQVngXAYa0Ek3jk0jas7gPb20bTTij+UK9Bnk
 EaY4G4ooJ7OQZk0LdfsWv2E6TCIgQz53xbtDW0BxTLQCHeYRmeQantUbI9OlLjjC4xla
 YLA++GWx5a8OUYU4YLcjjs0aoGlQ0071duyc09LpOBZ4oaOx8cDErU5nR8DjxTxfN1EB
 YKQA3MC8fvhysdYxuTGvDLfSv3U83XFukOEG5qphM467eHuhVkT+EDtm9T7JmL45MI3I
 ggFdwUNh77MXoMFJHww262CYSv6BFHNb8X+SP2R+osD+XBVxcrOTdq3XkmpNBJhWuniZ
 saig==
X-Gm-Message-State: APjAAAVAJm3HaVjq7dU1Jinmlq7q8ywt8X0AZrc6N8fUvDdcZkcciEY8
 YFVlnHocJDlXng8wqCz8IMfx+Q==
X-Google-Smtp-Source: APXvYqzR893+XUAT+CRl88sAB98jXGqIGMtzSW1DZHEa2pjtSW1v5WRpxBzEmQHXJ8CYw5h1l5C2Rg==
X-Received: by 2002:aca:c70b:: with SMTP id x11mr4907987oif.29.1581152114456; 
 Sat, 08 Feb 2020 00:55:14 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id n17sm2063897otq.46.2020.02.08.00.55.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Feb 2020 00:55:13 -0800 (PST)
Date: Sat, 8 Feb 2020 00:55:10 -0800
From: Kees Cook <keescook@chromium.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH] ARM: rename missed uaccess .fixup section
Message-ID: <202002080054.CBBE423@keescook>
References: <202002071754.F5F073F1D@keescook>
 <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu8Wt-QX1+9E+QCk30CAttkXP2P5ZKQACqeMDFGeQ9FCKA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_005516_142559_DDE54540 
X-CRM114-Status: GOOD (  21.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Pitre <nico@fluxnic.net>,
 Nick Desaulniers <ndesaulniers@google.com>,
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

On Sat, Feb 08, 2020 at 07:54:39AM +0000, Ard Biesheuvel wrote:
> On Sat, 8 Feb 2020 at 02:02, Kees Cook <keescook@chromium.org> wrote:
> >
> > When the uaccess .fixup section was renamed to .text.fixup, one case was
> > missed. Under ld.bfd, the orphaned section was moved close to .text
> > (since they share the "ax" bits), so things would work normally on
> > uaccess faults. Under ld.lld, the orphaned section was placed outside
> > the .text section, making it unreachable. Rename the missed section.
> >
> > Link: https://github.com/ClangBuiltLinux/linux/issues/282
> > Link: https://bugs.chromium.org/p/chromium/issues/detail?id=1020633#c44
> > Link: https://lore.kernel.org/r/nycvar.YSQ.7.76.1912032147340.17114@knanqh.ubzr
> > Fixes: c4a84ae39b4a5 ("ARM: 8322/1: keep .text and .fixup regions closer together")
> > Cc: stable@vger.kernel.org
> > Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> > Reported-by: Manoj Gupta <manojgupta@google.com>
> > Debugged-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> 
> Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

Thanks!

> As Nick points out, the *(.fixup) line still appears in the
> decompressor's linker script, but this is harmless, given that we
> don't ever emit anything into that section. But while we're at it, we
> might just remove it as well.

Agreed. I'll send a separate patch for that.

-Kees

> 
> 
> > ---
> > I completely missed this the first several times I looked at this
> > problem. Thank you Nicolas for pushing back on the earlier patch!
> > Manoj or Nathan, can you test this?
> > ---
> >  arch/arm/lib/copy_from_user.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/lib/copy_from_user.S b/arch/arm/lib/copy_from_user.S
> > index 95b2e1ce559c..f8016e3db65d 100644
> > --- a/arch/arm/lib/copy_from_user.S
> > +++ b/arch/arm/lib/copy_from_user.S
> > @@ -118,7 +118,7 @@ ENTRY(arm_copy_from_user)
> >
> >  ENDPROC(arm_copy_from_user)
> >
> > -       .pushsection .fixup,"ax"
> > +       .pushsection .text.fixup,"ax"
> >         .align 0
> >         copy_abort_preamble
> >         ldmfd   sp!, {r1, r2, r3}
> > --
> > 2.20.1
> >
> >
> > --
> > Kees Cook

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
