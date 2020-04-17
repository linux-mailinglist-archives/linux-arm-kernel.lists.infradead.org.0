Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C1B1AE3ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 19:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=clducIsOnkWd+BIRNUU6YytGIj1yO1WDvbj33t2ylV8=; b=jNeFBvX35SyEY0
	aXeHetR7t7BWzoK0TrLZjkypGiHv2wjUasGKO++RRnUtWiJadfqLZW6LdTRrwe29QU/pWmT0BYNVs
	gjSGFZBUlfqnA6Q4NWlM16zNnJnrEKpe1umx4NgH6xYyrhS0SWE7ohRY+8NdqgC21kxEzKnk/DG+R
	/G1rHAmsg4ntr8j/FGF0SPnEG07ZpdpU8rNx5ul7ZBRiCEF17/5Qx2lrbDGHTb6K4ksAuHlz+ehlS
	GECY2WjhMY8YsNtI2294OkbsCvXOKl2HIB8lltE1T2X6V0ABn7kn3sakv0RCCwZSS3I6OW8IYZUWO
	k0KpzQZmUBc1HtPJDXxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPV1j-0005Zi-Qx; Fri, 17 Apr 2020 17:43:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPV1Z-0005ZG-24
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 17:43:34 +0000
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 49CE62063A
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 17:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587145411;
 bh=IWA91rnd7DCpei0UmWDuuHsPYJS5PswBsXNqf1I/niM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Pt6wA/969eDisaL2JzYfgBP6eOp0melahjfTfCi9H8EnLElbCxdvrIpAP5QQSevBM
 QXKkHqle4SxaXu46mg+7MIVWhvyOK+bANS8DDykJGLWDi9AJiRCZKix5mRwXs+cLd2
 1RtwKes8OaezhnY7F0va/WgCzhFc+ZG9M3mNaieE=
Received: by mail-qk1-f176.google.com with SMTP id j4so3258197qkc.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 10:43:31 -0700 (PDT)
X-Gm-Message-State: AGi0PuZzWfGaJ3WhfQs3cfi2p0DxC9sM54VAFWqVK73aOmmpAQGoqvv8
 aWiIu86vKfH8LqGjY0UJTGfcwH6NME3oAgS9eQ==
X-Google-Smtp-Source: APiQypKOFSzSrXp6TtG4ec8JhJUSBFuVeKwbSs75yAmLse130PcTkwzUaoj4aHrENTDYOHXuApeoXqGddN79f1x41JE=
X-Received: by 2002:a37:cc1:: with SMTP id 184mr4446305qkm.254.1587145410403; 
 Fri, 17 Apr 2020 10:43:30 -0700 (PDT)
MIME-Version: 1.0
References: <20200409013947.12667-1-robh@kernel.org>
 <20200409013947.12667-3-robh@kernel.org>
 <20200409141603.GB4673@ravnborg.org>
In-Reply-To: <20200409141603.GB4673@ravnborg.org>
From: Rob Herring <robh@kernel.org>
Date: Fri, 17 Apr 2020 12:43:17 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJGZ5jX+-xkVmK5-uJU5hJg3tEa52RanYjY_sF_n+7PsA@mail.gmail.com>
Message-ID: <CAL_JsqJGZ5jX+-xkVmK5-uJU5hJg3tEa52RanYjY_sF_n+7PsA@mail.gmail.com>
Subject: Re: [PATCH 2/3] drm: pl111: Simplify vexpress init
To: Sam Ravnborg <sam@ravnborg.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_104333_145894_742CEA11 
X-CRM114-Status: GOOD (  23.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Eric Anholt <eric@anholt.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 9, 2020 at 9:16 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Rob.
>
> On Wed, Apr 08, 2020 at 07:39:46PM -0600, Rob Herring wrote:
> > The init VExpress variants currently instantiates a 'muxfpga' driver for
> > the sole purpose of getting a regmap for it. There's no reason to
> > instantiate a driver and doing so just complicates things. The muxfpga
> > driver also isn't unregistered properly on module unload. Let's
> > just simplify all this this by just calling
> > devm_regmap_init_vexpress_config() directly.
> >
> > Cc: Eric Anholt <eric@anholt.net>
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Procastinating, so I took a look at this.
> Nice simplification - on nit below.
> Acked-by: Sam Ravnborg <sam@ravnborg.org>
> > ---
> >  drivers/gpu/drm/pl111/pl111_versatile.c | 21 +++----------
> >  drivers/gpu/drm/pl111/pl111_vexpress.c  | 42 -------------------------
> >  drivers/gpu/drm/pl111/pl111_vexpress.h  |  7 -----
> >  3 files changed, 4 insertions(+), 66 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/pl111/pl111_versatile.c b/drivers/gpu/drm/pl111/pl111_versatile.c
> > index 09aeaffb7660..8c2551088f26 100644
> > --- a/drivers/gpu/drm/pl111/pl111_versatile.c
> > +++ b/drivers/gpu/drm/pl111/pl111_versatile.c
> > @@ -8,6 +8,7 @@
> >  #include <linux/of.h>
> >  #include <linux/of_platform.h>
> >  #include <linux/regmap.h>
> > +#include <linux/vexpress.h>
> >
> >  #include "pl111_versatile.h"
> >  #include "pl111_vexpress.h"
> > @@ -325,17 +326,8 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
> >       versatile_clcd_type = (enum versatile_clcd)clcd_id->data;
> >
> >       /* Versatile Express special handling */
> > -     if (versatile_clcd_type == VEXPRESS_CLCD_V2M) {
> > +     if (IS_ENABLED(CONFIG_VEXPRESS_CONFIG) && versatile_clcd_type == VEXPRESS_CLCD_V2M) {
> >               struct platform_device *pdev;
> > -
> > -             /* Registers a driver for the muxfpga */
> > -             ret = vexpress_muxfpga_init();
> > -             if (ret) {
> > -                     dev_err(dev, "unable to initialize muxfpga driver\n");
> > -                     of_node_put(np);
> > -                     return ret;
> > -             }
> > -
> >               /* Call into deep Vexpress configuration API */
> >               pdev = of_find_device_by_node(np);
> >               if (!pdev) {
> > @@ -343,13 +335,8 @@ int pl111_versatile_init(struct device *dev, struct pl111_drm_dev_private *priv)
> >                       of_node_put(np);
> >                       return -EPROBE_DEFER;
> >               }
> > -             map = dev_get_drvdata(&pdev->dev);
> > -             if (!map) {
> > -                     dev_err(dev, "sysreg has not yet probed\n");
> > -                     platform_device_put(pdev);
> > -                     of_node_put(np);
> > -                     return -EPROBE_DEFER;
> > -             }
> > +             map = devm_regmap_init_vexpress_config(&pdev->dev);
> > +             platform_device_put(pdev);
> >       } else {
> >               map = syscon_node_to_regmap(np);
> >       }
>
> On the following line there is:
>         if (IS_ERR(map)) {
>                 dev_err(dev, "no Versatile syscon regmap\n");
>                 return PTR_ERR(map);
>         }
>
> The error message no longer tell if this was
> devm_regmap_init_vexpress_config() or syscon_node_to_regmap() that
> caused the error.

Hopefully you'd know what platform you are on.

In any case, it's changed after patch 3.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
