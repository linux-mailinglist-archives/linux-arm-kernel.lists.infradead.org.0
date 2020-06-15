Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200F51FA42A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 01:35:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LZzraLjoPO5Yggna7OjBhIfFGEOxMq8ATlcPZzEeOX4=; b=OlTyHEO5dWFjFs
	uX8TyjQGGGNYK+Fm4r9EHJsH/k7xyILQG0jy+sJyw1C8qY7LK/il1XcrR0YbFznIF5AD6Pck/a9PZ
	NaqCKySB4VdoZ0E54qgTW/YqQDScFIQmFu5V3JteHYYzVMtD5q2ACcmQT+GTLXqqIV9/Vu5WrQEVN
	hJ5W7HGBsVsQHp5QnvtAsa66MVtLpqgOCqsdjllApVXx5wkITsIDxmeMARgY8dBplLlWxXRrXDp2a
	/0J0DXFBGqJY17fg2ZgCSfugWwLNct61HY977AmkSjfvdvv0rWw798MtE8IQdRdOAIRhZnHlxDePX
	u0a+arxm765trHBZETlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkyd0-0002M8-Cc; Mon, 15 Jun 2020 23:34:58 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkyct-0002LN-70
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 23:34:52 +0000
Received: by mail-vs1-xe43.google.com with SMTP id q2so10399675vsr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 16:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v7N0YxSuMH4D9rTnapFHftODF1N2BLDsJbU6TCHO/Qg=;
 b=XG5eBIPguxRxvrNMnZxci9ZrieN12g/yQUbT1Mq6HVHO+ZXaKPoEskuWdx98rb3Vkg
 57cdpQrxf7BXxFaxZPZ5Nth/LfndEbaNqzTN+WiLN1PWzxKJRjPrLUAV93TkYrZZVjK2
 UgVoH6RJDbrAIZMSWSpRIFw3sTNbTOqySi904Lp0Nw98xl7bKyfjvGXUH9YNrTycHt4D
 4g4U19RngVclWtPWvFkDRavpWGkzawf3H6QD7NBNuGzRHsOesEthods1KrkUI5Jr4iRn
 FYwrjC4KbC/D9URRWvvR4LmwiIH8ZfOKMdHNHUoWNwSl5R2VLLVXAixdOXWpGZ+mf7y7
 c9jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v7N0YxSuMH4D9rTnapFHftODF1N2BLDsJbU6TCHO/Qg=;
 b=d41YTsuBlVdqaAqVUr/b+1nTGCPYeUOslYpjK73tEVCthBB9lXd1tdLCgxMZX5lsov
 RmYl16EtE4Zb+nuCM5Y4FYfAXwUNFewuIl71deHt6V4aoQBh6Jm8TOBw9P9f9N2zwnVG
 0YXiyvBtrGPgzR0Qhvlx3Kj0trYsPlw0sbg2wuVVR4oPOswrTTayZxKpQb2mt1NH7hdE
 cXZKHs+4R/vjSV7OcfSlzHPkpjUFUVZDicF2teLwELSdocWCOx0HW2tu76ehnG4f0grK
 bQYJBWPumVynHoIIr+tLrQtW5TOO6Ae9hPHvpwhEj1PW6Zbf8QL9FzVE2737nRpi3XU2
 sYCA==
X-Gm-Message-State: AOAM531WyM/f1egX3Art2dSkdW4wba31kc8/p0W2N5Pg5eohQv1LYKQg
 bBKF6z/+FT3JniKOMLtGP5HMVdfKoDP9RPfzcKQ=
X-Google-Smtp-Source: ABdhPJw3ZPkbX9BjIq7F4jI/Zi2sH+yeC1FgKNWXr8ID5D9/ms1ZrJcfRvnChBn3jQReE0CjUtT07ryK0CknKfdTEhs=
X-Received: by 2002:a67:c18a:: with SMTP id h10mr115652vsj.186.1592264088189; 
 Mon, 15 Jun 2020 16:34:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200613223027.4189309-1-linus.walleij@linaro.org>
In-Reply-To: <20200613223027.4189309-1-linus.walleij@linaro.org>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 16 Jun 2020 00:31:07 +0100
Message-ID: <CACvgo520jX2k1GdhLLqYJBOoEQ1ZQo1QCW21-EH5W2J+=KsOFA@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: mcde: Fix display initialization problem
To: Linus Walleij <linus.walleij@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_163451_261099_5624217A 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [emil.l.velikov[at]gmail.com]
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
Cc: LAKML <linux-arm-kernel@lists.infradead.org>, Sean Paul <sean@poorly.run>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Linus,

On Sat, 13 Jun 2020 at 23:30, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> The following bug appeared in the MCDE driver/display
> initialization during the recent merge window.
>
> First the place we call drm_fbdev_generic_setup() in the
> wrong place: this needs to be called AFTER calling
> drm_dev_register() else we get this splat:
>
>  ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 1 at ../drivers/gpu/drm/drm_fb_helper.c:2198 drm_fbdev_generic_setup+0x164/0x1a8
> mcde a0350000.mcde: Device has not been registered.
> Modules linked in:
> Hardware name: ST-Ericsson Ux5x0 platform (Device Tree Support)
> [<c010e704>] (unwind_backtrace) from [<c010a86c>] (show_stack+0x10/0x14)
> [<c010a86c>] (show_stack) from [<c0414f38>] (dump_stack+0x9c/0xb0)
> [<c0414f38>] (dump_stack) from [<c0121c8c>] (__warn+0xb8/0xd0)
> [<c0121c8c>] (__warn) from [<c0121d18>] (warn_slowpath_fmt+0x74/0xb8)
> [<c0121d18>] (warn_slowpath_fmt) from [<c04b154c>] (drm_fbdev_generic_setup+0x164/0x1a8)
> [<c04b154c>] (drm_fbdev_generic_setup) from [<c04ed278>] (mcde_drm_bind+0xc4/0x160)
> [<c04ed278>] (mcde_drm_bind) from [<c04f06b8>] (try_to_bring_up_master+0x15c/0x1a4)
> (...)
>

Worth adding Cc: stable or Fixes tag, so this lands in the stable branches?
If anything I'm slightly worried that w/o such a tag, the AI bot (as
used by the stable team) might auto-nominate this even where it's not
applicable.

HTH
Emil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
