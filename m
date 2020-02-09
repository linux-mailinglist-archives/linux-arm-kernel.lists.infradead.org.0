Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0307156A27
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  9 Feb 2020 13:50:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV9o6isxx3kNJxxNFV7qrXP3wu1XLkVmcl04TRbOUgI=; b=pdZtjGYXvxttV9
	rt8Zpd2tTDN3tObCzBo+iQiyyWPkTulJDM4GxqiFKgp+2yHYfZffQMEA2nO7Hao1GbkFslZEe7Jnh
	HIlBC3epuFw+9K462ek/mFSRwbBKGgl2HcrXc4FVHHPqxh7zP7+LehFlJr41H76Fkj61L5MYmd48p
	uvA7kgNJHQkKbfx4zSHL/QQgUJ1hf8hmaXuHLl1cmfZqYXuJBK0bQJ4OlzpFgZrMbYhvIfTmt1s+L
	zrx7ZZ4dq2YwdWOp8v5BNr6/pNlIV50TOh9R2osjwZn3rFis3RO5wdaZMVacv2FJsQWG1JcfLVClS
	VTmjQDtP8FI2TxtHD0Rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0m2k-0004ic-V8; Sun, 09 Feb 2020 12:50:35 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0m2Z-0004hW-GP
 for linux-arm-kernel@lists.infradead.org; Sun, 09 Feb 2020 12:50:25 +0000
Received: by mail-qt1-x841.google.com with SMTP id w47so3110758qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 09 Feb 2020 04:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UUxkIo4yxkeRP+bZrwjD/FNTFLHW7fMlloVtMLr4fIw=;
 b=k1JVxZ8GdaxEZGeieGrpnm15pZ4+JPC8+bYPE/sod5qDCs/0UmRUfHu0wy4MINXpOW
 DihXo/5r07fOxQ6dMJP4lLbq78/jS89B0S3UYF9bGi0QnnLCHvKmJAgk8IwGJsOr0H26
 FaQH3KFacAlpODxXd2voo6Yh1qvW4pzy/NNYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UUxkIo4yxkeRP+bZrwjD/FNTFLHW7fMlloVtMLr4fIw=;
 b=MnKMnczEJQ7nCNEgwfjANKMa9F+nnhFSl512OsVOXptv+zg17+9DJIwHjt1vtzBTXy
 67v29aFbDF0I7+/EhvmMuOBhxNgsey7GC1l6lzUvjic/AGEvM0evupqJldrxb/I8CJYm
 THtaTtTh63SXktN4UY5tbvVYAFCIuuCYyiUuw9PojWjYceHvcQr+vmzse2/lfkR+FMXs
 lEn4U0w86rSeAOo+0CuvJ6zptRftcaIGRir0AGxlOzQ4jk4NrHsBPw9jUgoCO+Olfq6Y
 l/JPqrm7flDSDwEInkZpPWX5GeNthCpnJIlThS6wvs2Ti9AXKIV6yP9lndJbW2otys9U
 1Nkw==
X-Gm-Message-State: APjAAAUQGk8aIQIQJX5+5ETd9SG6vZV/cmaH/FVlvyfGaLKS1PSzNQep
 0eMpvZ36PpQku5a7UPlmkV0DBz6heI6mvO+vx5Tk5w==
X-Google-Smtp-Source: APXvYqwL0HPYs/DVRlaJsVp3prBvI/t5NO1gP07ODLr8nGv9P4GfIkkmBVpz1yzFJ54MiCuGem5H75+HZritEl9gP4M=
X-Received: by 2002:ac8:3946:: with SMTP id t6mr6142797qtb.278.1581252621106; 
 Sun, 09 Feb 2020 04:50:21 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
 <CAPDyKFoz0gUkoofWkd6dFuOkRWqeeCDrv84UHyYYowAAgTiitw@mail.gmail.com>
In-Reply-To: <CAPDyKFoz0gUkoofWkd6dFuOkRWqeeCDrv84UHyYYowAAgTiitw@mail.gmail.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Sun, 9 Feb 2020 20:50:23 +0800
Message-ID: <CANMq1KA+3O+G+_r=xY98eK-in5i3HWg+4B4-ONk-6qWS3a9=0g@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200209_045023_718697_99D206C2 
X-CRM114-Status: GOOD (  25.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, DTML <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 7, 2020 at 10:26 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Fri, 7 Feb 2020 at 06:27, Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > When there is a single power domain per device, the core will
> > ensure the power domain is switched on (so it is technically
> > equivalent to having not power domain specified at all).
> >
> > However, when there are multiple domains, as in MT8183 Bifrost
> > GPU, we need to handle them in driver code.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
>
> Besides a minor nitpick, feel free to add:
>
> Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>
>
> Kind regards
> Uffe
>
> [snip]
> > +static int panfrost_pm_domain_init(struct panfrost_device *pfdev)
> > +{
> > +       int err;
> > +       int i, num_domains;
> > +
> > +       num_domains = of_count_phandle_with_args(pfdev->dev->of_node,
> > +                                                "power-domains",
> > +                                                "#power-domain-cells");
> > +
> > +       /*
> > +        * Single domain is handled by the core, and, if only a single power
> > +        * the power domain is requested, the property is optional.
> > +        */
> > +       if (num_domains < 2 && pfdev->comp->num_pm_domains < 2)
> > +               return 0;
> > +
> > +       if (num_domains != pfdev->comp->num_pm_domains) {
> > +               dev_err(pfdev->dev,
> > +                       "Incorrect number of power domains: %d provided, %d needed\n",
> > +                       num_domains, pfdev->comp->num_pm_domains);
> > +               return -EINVAL;
> > +       }
> > +
> > +       if (WARN(num_domains > ARRAY_SIZE(pfdev->pm_domain_devs),
> > +                       "Too many supplies in compatible structure.\n"))
>
> Nitpick:
> Not sure this deserves a WARN. Perhaps a regular dev_err() is sufficient.

Ah well I had a BUG_ON before so presumably this is already a little better ,-)

You can only reach there if you set pfdev->comp->num_pm_domains >
MAX_PM_DOMAINS in the currently matched struct panfrost_compatible
(pfdev->comp->num_pm_domains == num_domains, and see below too), so
the kernel code would actually be actually broken (not the device
tree, nor anything that could be probed). So I'm wondering if the
loudness of a WARN is better in this case? Arguable ,-)

> > +               return -EINVAL;
> [snip]
> > --- a/drivers/gpu/drm/panfrost/panfrost_device.h
> > +++ b/drivers/gpu/drm/panfrost/panfrost_device.h
> > @@ -21,6 +21,7 @@ struct panfrost_perfcnt;
> >
> >  #define NUM_JOB_SLOTS 3
> >  #define MAX_REGULATORS 2
> > +#define MAX_PM_DOMAINS 3
> >
> >  struct panfrost_features {
> >         u16 id;
> > @@ -61,6 +62,13 @@ struct panfrost_compatible {
> >         /* Supplies count and names. */
> >         int num_supplies;
> >         const char * const *supply_names;
> > +       /*
> > +        * Number of power domains required, note that values 0 and 1 are
> > +        * handled identically, as only values > 1 need special handling.
> > +        */
> > +       int num_pm_domains;
> > +       /* Only required if num_pm_domains > 1. */
> > +       const char * const *pm_domain_names;
> >  };
> >
> >  struct panfrost_device {
> > @@ -73,6 +81,9 @@ struct panfrost_device {
> >         struct clk *bus_clock;
> >         struct regulator_bulk_data regulators[MAX_REGULATORS];
> >         struct reset_control *rstc;
> > +       /* pm_domains for devices with more than one. */
> > +       struct device *pm_domain_devs[MAX_PM_DOMAINS];
> > +       struct device_link *pm_domain_links[MAX_PM_DOMAINS];
> >
> >         struct panfrost_features features;
> >         const struct panfrost_compatible *comp;
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
> > index 4d08507526239f2..a6e162236d67fdf 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_drv.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
> > @@ -663,6 +663,8 @@ const char * const default_supplies[] = { "mali" };
> >  static const struct panfrost_compatible default_data = {
> >         .num_supplies = ARRAY_SIZE(default_supplies),
> >         .supply_names = default_supplies,
> > +       .num_pm_domains = 1, /* optional */
> > +       .pm_domain_names = NULL,
> >  };
> >
> >  static const struct of_device_id dt_match[] = {
> > --
> > 2.25.0.341.g760bfbb309-goog
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
