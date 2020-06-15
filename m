Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0676E1F9C4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 17:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ibnzX8Rc2WLrfIxWmaWpNrttraAjap5S6p4oQ87qsok=; b=ZvFuzon+Wixm4A
	US8F0DjpyOXZ6P19+K/mVaEl6R4xVwen9rLwoEboNToCAuKNA/u4UnpvHH3lOtKw9JF2FD09cdEgC
	Cp2k5pWKNR4kQUPJoE7B9bWBJtuOdwzN/slyVkKZPIwE6P7yZf5C7siANNYb3FNHbYw4Tm1IgfLJb
	goYsIg/C+tKXt/DuZcMfJBahNKeHdDAksOh2R5KWrezZswjo0j7hQYC4NDeaGKfA2tjbd/APkNFmA
	08GZ8PQdOlViL7N/BY/8SAbtR3gW7J//Xt2WuPzpMbaEqhmc9774CcY+d81VzdUHsepABwTcmThKP
	4YKasncBxl36fGAr4OtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkrPB-0008Rz-8P; Mon, 15 Jun 2020 15:52:13 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkrOr-0008HR-CW
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 15:51:56 +0000
Received: by mail-ot1-x341.google.com with SMTP id g7so13449894oti.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 08:51:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bWyoo9JIc02kJrgZwZWDB6M+M+eayvoh4h0JfKlgAOg=;
 b=HZ9TGIHT3a6uTYpAL41ct8BaksKi9jcKD+CTcG4bhh49tCI0spnO7q4fba7ph6J5+u
 LSALdBHwUbHldi9ukvwr9xI0ecx34xxIsv5A9G8nByTcSF/RGMXOvoZAyE1Zivo97yeP
 xMbgtpCvWTGagmJbVQpMNElwruwDinKtRKbuE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bWyoo9JIc02kJrgZwZWDB6M+M+eayvoh4h0JfKlgAOg=;
 b=F9yYwpq9KIpzsMMm+D2wAH7m1GzbajL+ldlRHfqxaqZG/JG7Z0dtQZkYnDFWtefKUJ
 3IhW4xkWgeHvWaJDukL7Zr0yNf2MCJazRIAl38BL+Zqis4RLRtwefqh1TzJOWzw5XohA
 e9ND+GuQOc4p5V3IVR2/Z2pi2mitJ+dt+IjXHocV7Mv9mQKNDwL2rfCKh+b+KrUERtzg
 PqgBMVr77/K1WfEiWK1hu5dUQHB3YIe0h1NVWjLPdebrV5oRoF5Mzj0jypvrwMOw70k/
 Ivu8xM/MmUirINFNXEYNpnH7b0Knk9uhC4/WwcvZ3YR24g4xnkiz5F137jrdvNLK6qC+
 r64A==
X-Gm-Message-State: AOAM533n4FMvoZtAUDk+6GKKoR4798EjAQe9oiQ1AgGCFy8sNUSGJj63
 oQG6DI0KPoFWPAQeLNP2IFDzL6NHDfr6ff9lUsOsYA==
X-Google-Smtp-Source: ABdhPJx6HqrEy7ruwqlLz5F7KsjYacsr6GyNremIHWvMKdV1r9zXlfsXDgmMhd5sUL1E7QvEGvXk/jO3No7vVKicdOY=
X-Received: by 2002:a05:6830:54:: with SMTP id
 d20mr23204225otp.281.1592236310586; 
 Mon, 15 Jun 2020 08:51:50 -0700 (PDT)
MIME-Version: 1.0
References: <20200613223027.4189309-1-linus.walleij@linaro.org>
 <20200614074441.GA220677@ravnborg.org>
 <CACRpkdZNM7+qzbJqyfJfEDO8P9SqpO4W6+t0-t89CXeFk9tSRw@mail.gmail.com>
In-Reply-To: <CACRpkdZNM7+qzbJqyfJfEDO8P9SqpO4W6+t0-t89CXeFk9tSRw@mail.gmail.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 15 Jun 2020 17:51:39 +0200
Message-ID: <CAKMK7uHmSvGE+qSvxUMGE3CTak1_UOKpD0+NmRZYJDa-xBTgMA@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: mcde: Fix display initialization problem
To: Linus Walleij <linus.walleij@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_085153_456327_756A23B5 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sean Paul <sean@poorly.run>, Sam Ravnborg <sam@ravnborg.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 14, 2020 at 11:29 PM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Sun, Jun 14, 2020 at 9:44 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> > Hi Linus.
> >
> > On Sun, Jun 14, 2020 at 12:30:26AM +0200, Linus Walleij wrote:
> > > The following bug appeared in the MCDE driver/display
> > > initialization during the recent merge window.
> > >
> > > First the place we call drm_fbdev_generic_setup() in the
> > > wrong place: this needs to be called AFTER calling
> > > drm_dev_register() else we get this splat:
> > >
> > >  ------------[ cut here ]------------
> > > WARNING: CPU: 0 PID: 1 at ../drivers/gpu/drm/drm_fb_helper.c:2198 drm_fbdev_generic_setup+0x164/0x1a8
> > > mcde a0350000.mcde: Device has not been registered.
> > > Modules linked in:
> > > Hardware name: ST-Ericsson Ux5x0 platform (Device Tree Support)
> > > [<c010e704>] (unwind_backtrace) from [<c010a86c>] (show_stack+0x10/0x14)
> > > [<c010a86c>] (show_stack) from [<c0414f38>] (dump_stack+0x9c/0xb0)
> > > [<c0414f38>] (dump_stack) from [<c0121c8c>] (__warn+0xb8/0xd0)
> > > [<c0121c8c>] (__warn) from [<c0121d18>] (warn_slowpath_fmt+0x74/0xb8)
> > > [<c0121d18>] (warn_slowpath_fmt) from [<c04b154c>] (drm_fbdev_generic_setup+0x164/0x1a8)
> > > [<c04b154c>] (drm_fbdev_generic_setup) from [<c04ed278>] (mcde_drm_bind+0xc4/0x160)
> > > [<c04ed278>] (mcde_drm_bind) from [<c04f06b8>] (try_to_bring_up_master+0x15c/0x1a4)
> > > (...)
> > >
> > > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> >
> > Yup, this is the right way to do it.
> >
> > Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
>
> Hm I can't seem to apply these because drm-misc-fixes isn't
> rebased to v5.8-rc1 or something (wrong ancestor).
>
> Does anyone know if ther is a special trick for this or do I
> need to wait for someone else to rebase that branch?

Thomas Zimmermann (added) as current -fixes handler needs to roll the
branch forward (and make sure nothing got lost).
-Daniel

>
> Yours,
> Linus Walleij
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
