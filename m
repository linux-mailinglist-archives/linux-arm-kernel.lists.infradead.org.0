Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33639159F07
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 03:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CRQ76w+pSaYBN4p7w2wWgR//Z3eB/9Yu9cYtwI5dnZU=; b=SQSfgX+xo4Hj5M
	xrZ7GnplhP0PPpbvcXEX/8HrwlsPTg515tu2cXL/I9e4scZfCWshYffSjAZyhODNPlatsuLBD1imr
	JArn5jqM9XhiLfC7FutLaQ7k41kJL8APY5EIQzZvrzr7o9RLJ1TIADK3KyYEOsS+ieT3qjSjci7xz
	2lNGiWx3Na5aYPHNsWFPpqVztOBTWmc7UHOaMUgolJefHG+A9FL6/Aw4GBOQ5XlE6XVBD73EuQJxl
	RN0ItPiCI43JhE8ihq7AtJJClkHQg4sFsNYLkBhN3yGcLJN0ehkW3Sx30XYXM/uc7jBOPCmm4yi9W
	+OWf5sYim3FW/09k3sBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1hUv-0004vw-5A; Wed, 12 Feb 2020 02:11:29 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1hUm-0004v0-CB
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 02:11:22 +0000
Received: by mail-ot1-x342.google.com with SMTP id j16so402040otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 18:11:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n6k/Lbub/n1jxmtDamXfDiU39sk3ANWZWTNVfSZ9e5g=;
 b=wUxk6Sy9q6qoyjX1z79P+a13uxDl7LnfZY8mNFGDgLHAlzg+XIha1ypLspjBiq7hGA
 HscwnVJCrLtXWufw1he5v8VfT3HhFn4FyHWnUeTsvsjxPaEAAXBiVH0y2bC/U+NCpyPW
 0BtVAPLHJwtrtf3dif65ZmZBB4BUJJNeT61X2XptZj0kCPVjl86sk8jl0uxD4TNa040Y
 iedDOzlawJRkS23dZ4HPD5Tv83JGGozqICZ559cUnrRv1Za8W1K53jibHXYJ97fH0ckR
 IF7Z9sw+FkJ1KG/xqorkkIHoNWCYYP0GScu1biUAByDXEN7ff8+g+wya90Fu0XzcpdDT
 2g+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n6k/Lbub/n1jxmtDamXfDiU39sk3ANWZWTNVfSZ9e5g=;
 b=T9moY3eG8VcAklXiTX++EGVOiyMoB4DRfmGzzwnBhiHq5JKzvOBkWwIgBPaUzWGAJ1
 SsZEavEfISadvNFJfT85od4Fmgon12sBLKxk0Gm7ivC7AbmmBF/hD/gMFDfblaO7PCkU
 d7moQ2pp7MinY73Oth8XaczBzOBxP01KNIxnE1780e7ZPVpeVoxdr1S1qT95k9HUk/ma
 N10PyOD4hjB4rxH6rYDyVuSG3tNmA9uQcT8IQX64fVLY1MU0NXh87XAk9otUKx6z9LcH
 xwFc+8+FqH5c7bYdYyW/L7rpAuIy2+X+FWwnuUFAZb/JQKGaIjFemz7EHcZUtScKFfiJ
 MoJw==
X-Gm-Message-State: APjAAAWgy06GGWbxRhIJ86JzDq3cO0i38McUb3TGrpILhytsarT4/WrG
 GMKB02Dt1P1BOx9ACZx5GPwycZIgqkuz9Rk+XC1hOA==
X-Google-Smtp-Source: APXvYqx9WyDPh84T/dWz0V7MAkV6Fu38Ls7r23WUTJHuOaZMt9M7Cqkp1o3QjcNUD57URwJnbkv4nhKPOxGIjSTARy8=
X-Received: by 2002:a05:6830:22ee:: with SMTP id
 t14mr7441403otc.236.1581473478420; 
 Tue, 11 Feb 2020 18:11:18 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
 <CAL_JsqLshgzmhGGa+XibosSgk6R_9DQkDf12s793UZcvbQbxKw@mail.gmail.com>
 <CAGETcx_3-ZoVAf+Uf0Yo86pUU1nL4S4-jrS0eZi50yvhCO985g@mail.gmail.com>
 <CAL_JsqLw1fyj949KtG6wNRG_Ky6cq2wS3VH2Ku+ZykU3bSap=g@mail.gmail.com>
In-Reply-To: <CAL_JsqLw1fyj949KtG6wNRG_Ky6cq2wS3VH2Ku+ZykU3bSap=g@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 11 Feb 2020 18:10:42 -0800
Message-ID: <CAGETcx9H09LZ7v+SrPLmtyLQBVzoVg9yRFMwYnQOLCtndWgHTw@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_181120_440049_4A6F8761 
X-CRM114-Status: GOOD (  36.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 David Airlie <airlied@linux.ie>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 5:58 PM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Tue, Feb 11, 2020 at 2:09 PM Saravana Kannan <saravanak@google.com> wrote:
> >
> > On Tue, Feb 11, 2020 at 11:44 AM Rob Herring <robh+dt@kernel.org> wrote:
> > >
> > > +Saravana
> > >
> > > On Thu, Feb 6, 2020 at 11:27 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> > > >
> > > > When there is a single power domain per device, the core will
> > > > ensure the power domain is switched on (so it is technically
> > > > equivalent to having not power domain specified at all).
> > > >
> > > > However, when there are multiple domains, as in MT8183 Bifrost
> > > > GPU, we need to handle them in driver code.
> > > >
> > > > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > > >
> > > > ---
> > > >
> > > > The downstream driver we use on chromeos-4.19 currently uses 2
> > > > additional devices in device tree to accomodate for this [1], but
> > > > I believe this solution is cleaner.
> > > >
> > > > [1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.19/drivers/gpu/arm/midgard/platform/mediatek/mali_kbase_runtime_pm.c#31
> > > >
> > > > v4:
> > > >  - Match the exact power domain names as specified in the compatible
> > > >    struct, instead of just matching the number of power domains.
> > > >    [Review: Ulf Hansson]
> > > >  - Dropped print and reordered function [Review: Steven Price]
> > > >  - nits: Run through latest version of checkpatch:
> > > >    - Use WARN instead of BUG_ON.
> > > >    - Drop braces for single expression if block.
> > > > v3:
> > > >  - Use the compatible matching data to specify the number of power
> > > >    domains. Note that setting 0 or 1 in num_pm_domains is equivalent
> > > >    as the core will handle these 2 cases in the exact same way
> > > >    (automatically, without driver intervention), and there should
> > > >    be no adverse consequence in this case (the concern is about
> > > >    switching on only some power domains and not others).
> > > >
> > > >  drivers/gpu/drm/panfrost/panfrost_device.c | 97 ++++++++++++++++++++--
> > > >  drivers/gpu/drm/panfrost/panfrost_device.h | 11 +++
> > > >  drivers/gpu/drm/panfrost/panfrost_drv.c    |  2 +
> > > >  3 files changed, 102 insertions(+), 8 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
> > > > index 3720d50f6d9f965..8136babd3ba9935 100644
> > > > --- a/drivers/gpu/drm/panfrost/panfrost_device.c
> > > > +++ b/drivers/gpu/drm/panfrost/panfrost_device.c
> > > > @@ -5,6 +5,7 @@
> > > >  #include <linux/clk.h>
> > > >  #include <linux/reset.h>
> > > >  #include <linux/platform_device.h>
> > > > +#include <linux/pm_domain.h>
> > > >  #include <linux/regulator/consumer.h>
> > > >
> > > >  #include "panfrost_device.h"
> > > > @@ -120,6 +121,79 @@ static void panfrost_regulator_fini(struct panfrost_device *pfdev)
> > > >                         pfdev->regulators);
> > > >  }
> > > >
> > > > +static void panfrost_pm_domain_fini(struct panfrost_device *pfdev)
> > > > +{
> > > > +       int i;
> > > > +
> > > > +       for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> > > > +               if (!pfdev->pm_domain_devs[i])
> > > > +                       break;
> > > > +
> > > > +               if (pfdev->pm_domain_links[i])
> > > > +                       device_link_del(pfdev->pm_domain_links[i]);
> > > > +
> > > > +               dev_pm_domain_detach(pfdev->pm_domain_devs[i], true);
> > > > +       }
> > > > +}
> > > > +
> > > > +static int panfrost_pm_domain_init(struct panfrost_device *pfdev)
> > > > +{
> > > > +       int err;
> > > > +       int i, num_domains;
> > > > +
> > > > +       num_domains = of_count_phandle_with_args(pfdev->dev->of_node,
> > > > +                                                "power-domains",
> > > > +                                                "#power-domain-cells");
> > > > +
> > > > +       /*
> > > > +        * Single domain is handled by the core, and, if only a single power
> > > > +        * the power domain is requested, the property is optional.
> > > > +        */
> > > > +       if (num_domains < 2 && pfdev->comp->num_pm_domains < 2)
> > > > +               return 0;
> > > > +
> > > > +       if (num_domains != pfdev->comp->num_pm_domains) {
> > > > +               dev_err(pfdev->dev,
> > > > +                       "Incorrect number of power domains: %d provided, %d needed\n",
> > > > +                       num_domains, pfdev->comp->num_pm_domains);
> > > > +               return -EINVAL;
> > > > +       }
> > > > +
> > > > +       if (WARN(num_domains > ARRAY_SIZE(pfdev->pm_domain_devs),
> > > > +                       "Too many supplies in compatible structure.\n"))
> > > > +               return -EINVAL;
> > > > +
> > > > +       for (i = 0; i < num_domains; i++) {
> > > > +               pfdev->pm_domain_devs[i] =
> > > > +                       dev_pm_domain_attach_by_name(pfdev->dev,
> > > > +                                       pfdev->comp->pm_domain_names[i]);
> > > > +               if (IS_ERR_OR_NULL(pfdev->pm_domain_devs[i])) {
> > > > +                       err = PTR_ERR(pfdev->pm_domain_devs[i]) ? : -ENODATA;
> > > > +                       pfdev->pm_domain_devs[i] = NULL;
> > > > +                       dev_err(pfdev->dev,
> > > > +                               "failed to get pm-domain %s(%d): %d\n",
> > > > +                               pfdev->comp->pm_domain_names[i], i, err);
> > > > +                       goto err;
> > > > +               }
> > > > +
> > > > +               pfdev->pm_domain_links[i] = device_link_add(pfdev->dev,
> > > > +                               pfdev->pm_domain_devs[i], DL_FLAG_PM_RUNTIME |
> > > > +                               DL_FLAG_STATELESS | DL_FLAG_RPM_ACTIVE);
> > >
> > > We're in the process of adding device links based on DT properties.
> > > Shouldn't we add power domains to that? See drivers/of/property.c for
> > > what's handled.
> >
> > Rob,
> >
> > drivers/of/property.c doesn't enable the RPM_ACTIVE AND PM_RUNTIME
> > flags. Wanted to start off conservative.
>
> I worry that you can't add it later without potentially breaking platforms.
>
> I haven't checked, but I assume these flags make runtime PM honor
> device links? That seems like the more conservative option (more
> reasons why a device can't suspend).

Conservative as in, if of_devlink adds the RPM_ACTIVE flag, the
drivers can't remove it.

> > But adding command line ops
> > to change the default flags shouldn't be difficult. But before I do
> > that, I want to change of_devlink to
> > fw_devlink=<disabled|permissive|enabled>. May be I can extend that to
> > "disabled, permissive, suspend, runtime".
>
> I think any command line option should be debug primarily. It's kind
> of a big hammer.

It is a big hammer. But it's better than disabling of_devlink
altogether. There is always going to be weird hardware that won't work
with of_devlink if all the device link flags are set. They'll need
some fix up of drivers and/or clean up of DT. And having different
of_devlink command line options would at least let those hardware to
run with as much of_devlink enabled as possible while working to get
more fixes into the kernel. That way, we can make sure we don't
regress further while trying to improve the support.

> Can drivers adjust the flags themselves? Just modify the flags rather
> than trying to create new links?

They can, but only in an additive manner. And the way to do it would
be to add a device link like usual and the framework takes care of
combining the flags. That's why I don't set most of the flags by
default.


-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
