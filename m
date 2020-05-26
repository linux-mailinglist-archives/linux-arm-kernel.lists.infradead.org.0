Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 702C21E29AE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 20:08:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOboTZFjPMlfqYra/lXH6gxSu9CnV7sVW70bc0wNbtQ=; b=KAhZngVRwnHKwM
	gF3XUWcrm80UrNPypl3+ciC/yEfdldKqe5m6jE5XljdRALgJYrgloaJebMyAG3InmHeD3y9ifsp4Z
	fv5vZ5naDdiKJIClDDECq0COGo4F2GS6A8yy2oulVElKcrpXb/7mOv4ZXH7BaluRITXgokOTgR6OG
	FknNomE+LiTdgiPiJGzRgefWT/DluLYeBOyDoz6vr6rCkqGWT54uYIBolTHA8ZVphBl+5iBqbm2t2
	1xm9+DzpmubIC73OkltXPhMTpbsVsU2Xn1BvwV9Zc1ZYgtnu8ZGQdahdl67rA4+EbPRh0JK30PvNO
	ZJBEVu7LvzOC6XAMf8zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jde0O-0004ud-2T; Tue, 26 May 2020 18:08:48 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jde0E-0004u4-7p
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 18:08:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id z18so25652281lji.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 11:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tut0XA5XKxIMhFBWdZ3W9Uc6NQYP3S4Hbp9jSJ1o/fg=;
 b=LwIdFE1N/Z9rwKc2SZNrXUMkx8wEyiP5uK881C5dtYz2KamE5ZZHRBmu4WMpO4HHwY
 UbDph8YeFqlLgb9HjQcb4zKP7o1fQkD3fMfTj2mNP+YfgtMhJDArBVYvaNhtSD5ZIsmP
 RB5jsluNVQnSNSiybINEr7hDjIdsEp5CMaJiaIuRxgf570GXL77a610SpE4wV0eP4KO/
 4U+bqmCEF90+/nev2vGoUgk97+58oD5l4DPLknNX9ySexbZha8+ULdAHoJmR7ndLmHGm
 090WCAyZUzjo1MLypPx0Dw0sb8VI+H/4RDqnGepc6ne7Lo/fa0xHhTL40GfEM71Vsr1x
 twiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tut0XA5XKxIMhFBWdZ3W9Uc6NQYP3S4Hbp9jSJ1o/fg=;
 b=rwhBOOwuOZVt3OkLRAOVrEYN3TyZz2Bj/DXVN7mSU7+mDMYSs5nZCFRRacg+eDJU6F
 T7yNjHlZapLmSdv80EWKY23/ApYeNLK26yGOcqzoB/JTnyDzjWG72S5YjJBbFXxTWOlb
 I/aV5DAnYTm+8I1l7XTwBKBp/5rW3OMa2ts0kaT4krhwcR9bdhtSkXWQpBFDoJLS+NsM
 uV2TzPWTiCN+xCtT0dp4RHqX9aYWDGBOMwhqNJaGmskKIQQmXzKP3hOcO0ibTZH6Xl5y
 Y3CQPDLy8ETo9OlgBrN4ArirN+4BC5RuIrCFGgcReq6S1LW+o1isxjgXZVmYcRbgDFqg
 4Gsg==
X-Gm-Message-State: AOAM532EjM94U+kFV82zYsDmD9m1JUkYN9XeEaYPzqZdc4pLrNfy/9f+
 4bgrWVQLfL/FN9ecdbqCmB6Fppx9KgurV7Zyrot+GQ==
X-Google-Smtp-Source: ABdhPJwB0jwNiuS58d6oFqZY/81EHukTu0ldu6IoA19lnKeJ292hewCJNZH7HHvwcZ5JGo78TIB/PIypcmxzCccHg04=
X-Received: by 2002:a2e:3818:: with SMTP id f24mr1066539lja.338.1590516514913; 
 Tue, 26 May 2020 11:08:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200526143249.68202-1-linus.walleij@linaro.org>
 <20200526143756.GZ1551@shell.armlinux.org.uk>
In-Reply-To: <20200526143756.GZ1551@shell.armlinux.org.uk>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 May 2020 20:08:23 +0200
Message-ID: <CACRpkdbnD11AgeR_qY+9VNPJb-FsNNpJhpOK9xTaK-G_2g0Zug@mail.gmail.com>
Subject: Re: [PATCH] ARM: mm: Simplify act_mm macro
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_110838_345937_3DF999AA 
X-CRM114-Status: GOOD (  18.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 4:37 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Tue, May 26, 2020 at 04:32:49PM +0200, Linus Walleij wrote:
> > The act_mm assembly macro is actually partly reimplementing
> > get_thread_info so let's just use that.
> >
> > Suggested-by: Russell King <linux@armlinux.org.uk>
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> > ---
> >  arch/arm/mm/proc-macros.S | 5 +----
> >  1 file changed, 1 insertion(+), 4 deletions(-)
> >
> > diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
> > index 60ac7c5999a9..65eaea85d3d6 100644
> > --- a/arch/arm/mm/proc-macros.S
> > +++ b/arch/arm/mm/proc-macros.S
> > @@ -5,7 +5,6 @@
> >   *  VMA_VM_FLAGS
> >   *  VM_EXEC
> >   */
> > -#include <linux/const.h>
> >  #include <asm/asm-offsets.h>
> >  #include <asm/thread_info.h>
> >
> > @@ -31,9 +30,7 @@
> >   * act_mm - get current->active_mm
> >   */
> >       .macro  act_mm, rd
> > -     bic     \rd, sp, #(THREAD_SIZE - 1) & ~63
> > -     bic     \rd, \rd, #63
> > -     ldr     \rd, [\rd, #TI_TASK]
> > +     get_thread_info \rd
>
> This is not quite the same thing.
>
> get_thread_info loads into \rd the address of the thread_info structure.
> That's what the two bic instructions are doing.  The LDR is then loading
> the address of the task_struct into \rd.
>
> >       .if (TSK_ACTIVE_MM > IMM12_MASK)
> >       add     \rd, \rd, #TSK_ACTIVE_MM & ~IMM12_MASK
> >       .endif
>
> So this change alters which structure \rd is pointing to.

Oh I see it. I need to keep the last ldr     \rd, [\rd, #TI_TASK].

Strange that it wasn't crashing on me, I guess I was lucky.

I'll respin, thanks!

(The plan is to also make a patch to get_thread_info to use
bic like you pointed out, I'm just slow with my assembly.)

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
