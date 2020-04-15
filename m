Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B061A90F1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 04:35:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RWUlZfpXhdjhxDnzsGSl3Of4FQ9jCaKFiiQpF0CqeBA=; b=CCQ2THGVlew1ZX
	7o1aeAJ07czUk6y0IP5tG6todnOOG4xc6qmsLhkBl12hEZY2jbgMNY9vG04Gk/BMZVinvugsY9CQv
	LGjAxxB5IXFXk6Z0idbxjX374R5soisdVd3Tw/wGGfn1oKA4kYzK+aQURkUuGPgHSzXdG7aBOnf8w
	myiCfRCZEgm5Lt7Ssy1mkVjGbT3pdgTYKUgq9MBKw+jWBzCTTzW6byIWIUp+3DGCmn3ojDVc67K3H
	DjBjUK/+K6Yr0c2+6TPQ0ncA+GwGV2SIve7GGeVY/U0BGXeKNYI4Iwet/HfvSae4cxsHyPd5fw4BN
	a6mCRs0a1QW8fUqYw94Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOXtV-0001u5-Ow; Wed, 15 Apr 2020 02:35:17 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOXtA-0001qu-V4
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 02:34:58 +0000
Received: by mail-ot1-x344.google.com with SMTP id l21so1914410otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 19:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+7NCTHkFb8srify26v+d/R/erV2NDO4/9sUz1z6PAqU=;
 b=gAq7bZEIZ/9CjRjLVjZoGerHRKHZ5lZD0UEPr3W5K6dHWKgFI0RUI2EGS0/qA0kTUw
 lsxmNRQE35tSfFFbaJYBC/+Mf78NKu499iUJXp8nmBgTmwNkIKhJwSTsy7olXWffEkyH
 p3EnyCncUWbwSj0vLUjKrSMah4fbzpL2nGSLqXvcZ2Ytfs7lOQuKHf1axLukTwlTMnFX
 RAulLoEZoX8m19MLkVtCurokhxsqI7ujG0mNlTuRgsDJhBnTno7tQvWBZXOTKngydWPd
 1ppY11u+tUfIosA4oVkDF5jq3dSqKxoC2vbxF9iyMg1VrTpeLo4mZfwdx1mGjr4Get5v
 P7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+7NCTHkFb8srify26v+d/R/erV2NDO4/9sUz1z6PAqU=;
 b=SOsdcTKo9fkSCiifSY9+GHqFpWwcdymZgnQljXR3W9DkBPULRGDapfR0rS1tt6Lvce
 RDZ82K1MIiudV5+D8CcU/P211WWSd/Y5mfM5HPbbn2OEkX+cnf8QtD4EJkDUmfGvEBmk
 s0S0bBxp723l7FQo/gfa/IuLVUct9T3Kd+p/iCd9BrDgPhoJpS0MtSDVyV9WWLBNi5Rk
 G+ky35eefMJe7s2rRG72tNE7qoqmW+icu4Yo+xD2oKl1fn0sGKHz3ol5aISH4n0Dn8PF
 G63tzPUcDT5lIVSkmjwJDlu/sIQlT9nFG9HDDDEnNbZ7saE48wY88mF1hLA7WbOPkyrG
 VrKw==
X-Gm-Message-State: AGi0PuZv60xjtMqsuicRCK3ibnoEdmmGMIGHz+QvjJvt57C6luwgIXaC
 ujBZNMPzRmGXPkp9iRNW8z1+cY3Pnl36pvI1RUg=
X-Google-Smtp-Source: APiQypJXSb94OJlaJ/kPpGtEtQyGeMuhJGrfLugpQAzrMNJoVNcMo2W2aS8RScemfMl7aWlnWzMfDFAcbAv28eMCOAM=
X-Received: by 2002:a9d:de2:: with SMTP id 89mr1153142ots.95.1586918093505;
 Tue, 14 Apr 2020 19:34:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-4-avagin@gmail.com>
 <20200414172014.GA6705@C02TD0UTHF1T.local>
In-Reply-To: <20200414172014.GA6705@C02TD0UTHF1T.local>
From: Andrei Vagin <avagin@gmail.com>
Date: Tue, 14 Apr 2020 19:34:41 -0700
Message-ID: <CANaxB-yBeSmYdZL6gbe-agDAaEVcYHrxUCojQ4xaWpsWinQsyA@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] arm64/vdso: Add time napespace page
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_193457_026110_144B996C 
X-CRM114-Status: GOOD (  25.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [avagin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-arm-kernel@lists.infradead.org,
 Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 10:20 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Mon, Feb 24, 2020 at 11:37:28PM -0800, Andrei Vagin wrote:
> > Allocate the time namespace page among VVAR pages.  Provide
> > __arch_get_timens_vdso_data() helper for VDSO code to get the
> > code-relative position of VVARs on that special page.
> >
> > If a task belongs to a time namespace then the VVAR page which contains
> > the system wide VDSO data is replaced with a namespace specific page
> > which has the same layout as the VVAR page. That page has vdso_data->seq
> > set to 1 to enforce the slow path and vdso_data->clock_mode set to
> > VCLOCK_TIMENS to enforce the time namespace handling path.
> >
> > The extra check in the case that vdso_data->seq is odd, e.g. a concurrent
> > update of the VDSO data is in progress, is not really affecting regular
> > tasks which are not part of a time namespace as the task is spin waiting
> > for the update to finish and vdso_data->seq to become even again.
> >
> > If a time namespace task hits that code path, it invokes the corresponding
> > time getter function which retrieves the real VVAR page, reads host time
> > and then adds the offset for the requested clock which is stored in the
> > special VVAR page.
> >
> > Signed-off-by: Andrei Vagin <avagin@gmail.com>
> > ---
> >  arch/arm64/include/asm/vdso.h                 |  6 ++++++
> >  .../include/asm/vdso/compat_gettimeofday.h    | 11 ++++++++++
> >  arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++++++++
> >  arch/arm64/kernel/vdso.c                      | 20 ++++++++++++++++---
> >  arch/arm64/kernel/vdso/vdso.lds.S             |  5 ++++-
> >  arch/arm64/kernel/vdso32/vdso.lds.S           |  5 ++++-
> >  include/vdso/datapage.h                       |  1 +
> >  7 files changed, 51 insertions(+), 5 deletions(-)
>
> > +#ifdef CONFIG_TIME_NS
> > +static __always_inline const struct vdso_data *__arch_get_timens_vdso_data(void)
> > +{
> > +     const struct vdso_data *ret;
> > +
> > +     asm volatile("mov %0, %1" : "=r"(ret) : "r"(_timens_data));
> > +
> > +     return ret;
> > +}
> > +#endif
>
> What is this inline assembly for? The commit message doesn't mention it,
> there's no explanation here, and the native version doesn't do likewise
> so it seems rather surprising.

__arch_get_vdso_data is  right before this function and there is a
comment which explains this:
https://github.com/torvalds/linux/blob/master/arch/arm64/include/asm/vdso/compat_gettimeofday.h#L137

"""
/*
* This simply puts &_vdso_data into ret. The reason why we don't use
* `ret = _vdso_data` is that the compiler tends to optimize this in a
* very suboptimal way: instead of keeping &_vdso_data in a register,
* it goes through a relocation almost every time _vdso_data must be
* accessed (even in subfunctions). This is both time and space
* consuming: each relocation uses a word in the code section, and it
* has to be loaded at runtime.
*
* This trick hides the assignment from the compiler. Since it cannot
* track where the pointer comes from, it will only use one relocation
* where __arch_get_vdso_data() is called, and then keep the result in
* a register.
*/
"""

I decided to not duplicate the comment because these two functions are
very similar and close to each other.

Thanks,
Andrei

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
