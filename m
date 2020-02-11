Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7F67159A45
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 21:09:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYybTp9aaBr/98nRrBjIbw2gediReGPIbOJqVmfY2Kw=; b=E3zvlZkyCJ9Lbg
	L//aEvUEWe36Zknh0jNjJutbfGC6Gxx/dzo6+cEOJ56uL5ZLhW3EBKVyyEezpNhVygwKB0AkFjTnN
	AbDiJMipfClObr24HjnlCjBV22NKsqlAWwiHOKz8I49YdNOrM/LQvhEMAiauCc+EZPIt5tMDIWc/K
	c7bhusk11Sj9Mp3x54vZHh8j3uGHKMvXpgNIg/RH3Q2d7RU+b0xrwgd9Ppt9/6nper7IHy0Weeznf
	vRXiGEqw1F57zwL8cCxztVboqwL3DFsQo++9MWt+y+VrTrHEzIxX2OD0T9fBzYci69sIWjGC3m5nY
	mr4sEyTlh6tYF7oT1Oqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1bqj-0006Hx-Sb; Tue, 11 Feb 2020 20:09:37 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1bqa-0006Fw-Ro
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 20:09:30 +0000
Received: by mail-oi1-x244.google.com with SMTP id a142so14058427oii.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Feb 2020 12:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d79/juOKGQ3xhEKgN8cqkrkeeX6KR3FsfafPiPWnTjk=;
 b=iKL3T3KT/E0Iwsb3fnUfmhLupejJLrt0Xw5IOfw8B/SqKyHuAmgD6b5kRaiIeb6uQi
 4hqOAy9ePuT7GdoTUwr87pkUzlBm0LRqEEFiWmTJS7vLwJwDvOy2UWIrGEpnJS5HNg6L
 UJ3OcYCcXDup4hmac0c8ZAtTXuIBB4C4CC3djbwDvtd6WU9keMA7joMyqQ4WttYi8EBN
 vrOINTqg3CqyMUDW8SXtRJMA5A2vJY60W9spolclj6hO3pOdiey4rg0CUIfOnXDULfGo
 s6RA3SPhR9ow2ObUxJ9XLAnHJ3VD73fdhMjBf6otQbBS3osn2sT48zUHMkQ908wokOCL
 r57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d79/juOKGQ3xhEKgN8cqkrkeeX6KR3FsfafPiPWnTjk=;
 b=a9vS3em7ITLf+J/z2kUUXueaiivNiBp0BmPvcHPl0t3kjWjXNdb0r5l4xszdHyNROk
 lMgriI6PNVxtvMNnLJu6oX/bMKXtrWDE3ittN8Ad6LmsIsLv0boLiJPX7cA8SDzu9ry1
 Qi4LpOaVaH5+v8a/be1l3w0Ga9kPAd3hTrgyu/QiocyxA3iYDTAnVJ+hgc3bzuBIav9f
 j7+Zzbhmo/eLLZoQgjXcjE7COzzdr9iTXaeolYZpkrtFz2KNcJ6BNbDm1t2W5bHaSqk+
 VR3Kq++7xjJAW1hZF4wCbFCDskGMTFJHMu3RGfhgkG+/yW6JXXTo/HazNI5hZXNkFrg0
 PrzA==
X-Gm-Message-State: APjAAAV4NnIWiS+aP1BY1Hi6sp/u4cPx0rYN0XfZxVLNUu1HKo8FQ5Uf
 HqHam4LqiVp/nJr4WB2uy2GJvXx9R2wyaos62XmdBQ==
X-Google-Smtp-Source: APXvYqzxjGO2mFbbESSI+X8wqwDLJmq3XqFdPvI31wvyICH6y7/2J3dCeN49E5XfR2n7WblRYhIvydxmmpi6MKoWH0c=
X-Received: by 2002:aca:ea43:: with SMTP id i64mr4107524oih.30.1581451761048; 
 Tue, 11 Feb 2020 12:09:21 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-6-drinkcat@chromium.org>
 <CAL_JsqLshgzmhGGa+XibosSgk6R_9DQkDf12s793UZcvbQbxKw@mail.gmail.com>
In-Reply-To: <CAL_JsqLshgzmhGGa+XibosSgk6R_9DQkDf12s793UZcvbQbxKw@mail.gmail.com>
From: Saravana Kannan <saravanak@google.com>
Date: Tue, 11 Feb 2020 12:08:44 -0800
Message-ID: <CAGETcx_3-ZoVAf+Uf0Yo86pUU1nL4S4-jrS0eZi50yvhCO985g@mail.gmail.com>
Subject: Re: [PATCH v4 5/7] drm/panfrost: Add support for multiple power
 domains
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_120928_909380_5D8B31E0 
X-CRM114-Status: GOOD (  30.87  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
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

On Tue, Feb 11, 2020 at 11:44 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> +Saravana
>
> On Thu, Feb 6, 2020 at 11:27 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > When there is a single power domain per device, the core will
> > ensure the power domain is switched on (so it is technically
> > equivalent to having not power domain specified at all).
> >
> > However, when there are multiple domains, as in MT8183 Bifrost
> > GPU, we need to handle them in driver code.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> >
> > ---
> >
> > The downstream driver we use on chromeos-4.19 currently uses 2
> > additional devices in device tree to accomodate for this [1], but
> > I believe this solution is cleaner.
> >
> > [1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.19/drivers/gpu/arm/midgard/platform/mediatek/mali_kbase_runtime_pm.c#31
> >
> > v4:
> >  - Match the exact power domain names as specified in the compatible
> >    struct, instead of just matching the number of power domains.
> >    [Review: Ulf Hansson]
> >  - Dropped print and reordered function [Review: Steven Price]
> >  - nits: Run through latest version of checkpatch:
> >    - Use WARN instead of BUG_ON.
> >    - Drop braces for single expression if block.
> > v3:
> >  - Use the compatible matching data to specify the number of power
> >    domains. Note that setting 0 or 1 in num_pm_domains is equivalent
> >    as the core will handle these 2 cases in the exact same way
> >    (automatically, without driver intervention), and there should
> >    be no adverse consequence in this case (the concern is about
> >    switching on only some power domains and not others).
> >
> >  drivers/gpu/drm/panfrost/panfrost_device.c | 97 ++++++++++++++++++++--
> >  drivers/gpu/drm/panfrost/panfrost_device.h | 11 +++
> >  drivers/gpu/drm/panfrost/panfrost_drv.c    |  2 +
> >  3 files changed, 102 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
> > index 3720d50f6d9f965..8136babd3ba9935 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_device.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_device.c
> > @@ -5,6 +5,7 @@
> >  #include <linux/clk.h>
> >  #include <linux/reset.h>
> >  #include <linux/platform_device.h>
> > +#include <linux/pm_domain.h>
> >  #include <linux/regulator/consumer.h>
> >
> >  #include "panfrost_device.h"
> > @@ -120,6 +121,79 @@ static void panfrost_regulator_fini(struct panfrost_device *pfdev)
> >                         pfdev->regulators);
> >  }
> >
> > +static void panfrost_pm_domain_fini(struct panfrost_device *pfdev)
> > +{
> > +       int i;
> > +
> > +       for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> > +               if (!pfdev->pm_domain_devs[i])
> > +                       break;
> > +
> > +               if (pfdev->pm_domain_links[i])
> > +                       device_link_del(pfdev->pm_domain_links[i]);
> > +
> > +               dev_pm_domain_detach(pfdev->pm_domain_devs[i], true);
> > +       }
> > +}
> > +
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
> > +               return -EINVAL;
> > +
> > +       for (i = 0; i < num_domains; i++) {
> > +               pfdev->pm_domain_devs[i] =
> > +                       dev_pm_domain_attach_by_name(pfdev->dev,
> > +                                       pfdev->comp->pm_domain_names[i]);
> > +               if (IS_ERR_OR_NULL(pfdev->pm_domain_devs[i])) {
> > +                       err = PTR_ERR(pfdev->pm_domain_devs[i]) ? : -ENODATA;
> > +                       pfdev->pm_domain_devs[i] = NULL;
> > +                       dev_err(pfdev->dev,
> > +                               "failed to get pm-domain %s(%d): %d\n",
> > +                               pfdev->comp->pm_domain_names[i], i, err);
> > +                       goto err;
> > +               }
> > +
> > +               pfdev->pm_domain_links[i] = device_link_add(pfdev->dev,
> > +                               pfdev->pm_domain_devs[i], DL_FLAG_PM_RUNTIME |
> > +                               DL_FLAG_STATELESS | DL_FLAG_RPM_ACTIVE);
>
> We're in the process of adding device links based on DT properties.
> Shouldn't we add power domains to that? See drivers/of/property.c for
> what's handled.

Rob,

drivers/of/property.c doesn't enable the RPM_ACTIVE AND PM_RUNTIME
flags. Wanted to start off conservative. But adding command line ops
to change the default flags shouldn't be difficult. But before I do
that, I want to change of_devlink to
fw_devlink=<disabled|permissive|enabled>. May be I can extend that to
"disabled, permissive, suspend, runtime".

Nicholas,

And the adding and removing of device links for power domains will be
a 2 line change. I've been meaning to add a few more bindings like
hwspinlocks and pinctrl. I can roll power domains support into that if
you want.

-Saravana

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
