Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34B71F8AE7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 23:30:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIQEYusfNuIwEf5WArtFl8tm1WGypq0rOdNOuW6aDWg=; b=K+MGwAp4bn6A5F
	3VnJir9P23w6KAE+No23WRnqQAeT3TWXJ+Z0EWhR5cCMW+smg6B5pVxQe78bNRp31HmYr5rYIv8ta
	Z5g0kIA00iJSVrJtllB3sE1ODuwHXIGAVchfXCS5CZWwRxerxCZ1ilOSoZSX+T19+aFQyuK1A6nYT
	TC0AUxWsvgE2DwFvEFHqrPT+nwuF/BxgYDJm8nMfWmrSFMFfxrDJ289Ts0oU17rZM50Qp2eesTKCe
	HxRr2SJb9C+azlhlGjXyPgO48GesNfS1jGCR+9ihOULqZcEqsmUYdxmGIv8KJCVC9hux0nHjxksjm
	3up7jJxgn3QRkRuxOMoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkaCn-0002lv-BJ; Sun, 14 Jun 2020 21:30:17 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkaCS-0002lU-7I
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 21:29:57 +0000
Received: by mail-lf1-x141.google.com with SMTP id a26so3892515lfj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jun 2020 14:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZI+s+vuZYVYXENkB5WFtviHjlb9e/YHMnb5XhCBIwjM=;
 b=oBWUcvnFmtipG2SO6XX1tPwwWxr+ngYmgZlLH8MZxCqfubgpmlznK6xGO3cbVmykDa
 5o/3ErFMS57pMiEFxLsPJf3yW1WCUTQLF4JXkQysje1c20lgzMJmzoHHyJnztZztDw25
 +feii/M898tt8KD+nECGla/m/fNBTFt+FwuRLk0z1JD7600ejlZHLpD4+31TqySR0Gik
 QSV1WaR6HskykZH0rfYTTtFLlPd4+ck0T2Mb+D0MiPQCmi/vRivz1YFaG4bZiO8w56QY
 JtpM6gtF1msYuX8RmT2ItPWMgkHCuTLSIArPnfIohlh+e1KwzNXVlcu2oPkNi9JHAupp
 q+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZI+s+vuZYVYXENkB5WFtviHjlb9e/YHMnb5XhCBIwjM=;
 b=gHJRSG3SrkcDyAzh9PgGL7Rfo/hzctG0A2qbM8JXQTzKohRNoYs1cgqaSLEiXZE4rM
 kOtaksjxoC3hj1T1FjvZ59LQNZGDwnWUnhvPPhgr7a0aF2PtFz5vFxOtI+q4qLG6A8Xi
 dyR4ba1oG4GDnMMegzpi1FEpNwbq/kEQqIZ/uJEf/ZGaWCNYNJ+4L1vC3DMa4sJWqXUD
 /kAjDHDwUIqf9KhoYStrZ/3eN/Nso0ylyu4EaoyuNBtTajaKrDinNZNFY4vthVE2MMcy
 1+xvy9upQ5BsXtu9edAJLR7kWWUWaaMFnuvNZnlbte1qskC0NffoqzR/1dR0YJeSvHQa
 teYA==
X-Gm-Message-State: AOAM531fUMTQrOONkG/PIYBWqTqfDTEpOziwSFX2/McSBNhMhhk6Rlju
 wnL0Us5VI+6IxKXpa8LHlqFxMfXZ1QptTiKbENfcEA==
X-Google-Smtp-Source: ABdhPJzsH/JmYg0+a+Uo74Jvzw5AauKcOGKFT3BjOYrXtTsxlwyVSQPhoH7dduxHHtSLcrEKsj4c7RjoIsOoIqRxWdM=
X-Received: by 2002:ac2:482a:: with SMTP id 10mr3700096lft.217.1592170194208; 
 Sun, 14 Jun 2020 14:29:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200613223027.4189309-1-linus.walleij@linaro.org>
 <20200614074441.GA220677@ravnborg.org>
In-Reply-To: <20200614074441.GA220677@ravnborg.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 14 Jun 2020 23:29:43 +0200
Message-ID: <CACRpkdZNM7+qzbJqyfJfEDO8P9SqpO4W6+t0-t89CXeFk9tSRw@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: mcde: Fix display initialization problem
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_142956_272021_32ACB6D3 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jun 14, 2020 at 9:44 AM Sam Ravnborg <sam@ravnborg.org> wrote:

> Hi Linus.
>
> On Sun, Jun 14, 2020 at 12:30:26AM +0200, Linus Walleij wrote:
> > The following bug appeared in the MCDE driver/display
> > initialization during the recent merge window.
> >
> > First the place we call drm_fbdev_generic_setup() in the
> > wrong place: this needs to be called AFTER calling
> > drm_dev_register() else we get this splat:
> >
> >  ------------[ cut here ]------------
> > WARNING: CPU: 0 PID: 1 at ../drivers/gpu/drm/drm_fb_helper.c:2198 drm_fbdev_generic_setup+0x164/0x1a8
> > mcde a0350000.mcde: Device has not been registered.
> > Modules linked in:
> > Hardware name: ST-Ericsson Ux5x0 platform (Device Tree Support)
> > [<c010e704>] (unwind_backtrace) from [<c010a86c>] (show_stack+0x10/0x14)
> > [<c010a86c>] (show_stack) from [<c0414f38>] (dump_stack+0x9c/0xb0)
> > [<c0414f38>] (dump_stack) from [<c0121c8c>] (__warn+0xb8/0xd0)
> > [<c0121c8c>] (__warn) from [<c0121d18>] (warn_slowpath_fmt+0x74/0xb8)
> > [<c0121d18>] (warn_slowpath_fmt) from [<c04b154c>] (drm_fbdev_generic_setup+0x164/0x1a8)
> > [<c04b154c>] (drm_fbdev_generic_setup) from [<c04ed278>] (mcde_drm_bind+0xc4/0x160)
> > [<c04ed278>] (mcde_drm_bind) from [<c04f06b8>] (try_to_bring_up_master+0x15c/0x1a4)
> > (...)
> >
> > Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
>
> Yup, this is the right way to do it.
>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Hm I can't seem to apply these because drm-misc-fixes isn't
rebased to v5.8-rc1 or something (wrong ancestor).

Does anyone know if ther is a special trick for this or do I
need to wait for someone else to rebase that branch?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
