Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 632F0136511
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 02:53:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xr6njlkAMaj6XbMqFPngWhCvqSl7d1RbhPUxmCcEHoE=; b=EHOktT1Z5ISr6V
	V8kxm1KE+QWe09TNYtQQGq6MfLltU6Jk+9jjAt7/bqJIlUJ+D4VGGrNPrPIH1pzNysc0989GMy6QA
	lrntRBq6qdod0r9mw0KrARZjtOQ9tkoHZ+swjyaDv36kKhbAVslIsiFVEmYr2NdYubT3F4zTrscLp
	X6mKxhMwz4+hR0mPhzUY3IxFI7f8/YdeSzgzZPctJ5PVDWXwBLq9MzN1BrMcRXYw4nSjBZbLV/M8h
	LBBVM/eMC6+z2wB5cpUDc1tlfQI2wPWsPsYzu4vckYr0V9MeOqyp5tARuhh1V9jJ8QOp5xl2AQ0SV
	FZbbn0A+hI1XTGb/bcLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipjUa-0005SZ-6k; Fri, 10 Jan 2020 01:53:40 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipjUQ-0005RS-VL
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 01:53:32 +0000
Received: by mail-qv1-xf41.google.com with SMTP id z3so113900qvn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 17:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=/fMVlCqxH7TYnGng6weJicBdaodJmAWTQi+tUFgHll4=;
 b=c9L+frf0rw+duLwmB6qHSNoiIPfTUYtK8oqEW7QzYzMerHKt6OccqOlSyTHGvVCTqf
 Kin2nhmdMCTXyrZ3pw0bAwscFkyMqEwCL5cFVp2kPDTnY8aCLuzokcQrA8pyvA+Npe19
 454L+KinqcoARRXLI9n3K/XrRuEzoeRSNtmtw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=/fMVlCqxH7TYnGng6weJicBdaodJmAWTQi+tUFgHll4=;
 b=tzFR6H55MZeqe1yIQe5jl2fxYpskacQAnsxT/swJu/RFQnMM0crg0PV9Fjo5biqZi6
 czgFH+NUvGnWNMUgTo5qngpIR8pZg8/m9UrIldQeUzmpP/dLEpFXO2kYlqOzRc5Zx2xP
 CjWiXNsQD3Sc5TvdlbaA6LkvadFq7PsdZt8ys/hjNbfXGY7oQaCsYTZR+k6b8FVL5bml
 HCqdCeklQ/mobcJ4y6RiZpE/+Nt14bIxC7VITiGTsMncB+Dx7Cb7/g8nuaio1iyF9MTl
 3TZYQFaRFo169UXCNpJVwvEQUbgNPuhjzjuCUpxTCI/1jEtAy/ZhSrSyw8ZDA4qTTpfL
 R+EQ==
X-Gm-Message-State: APjAAAUvGtXqKgrWBFpPnIDPuYA3KTYRa6WjPodM36rhkJPrmWk66zV2
 lxvkWADbgtOnOBOq9EgL7DHC1GgXwDZkNNeW9VgY3g==
X-Google-Smtp-Source: APXvYqwwMn64xtYJxSAfST4HD4Mcg/Ska64cyK6bvZ7Sz6NVYCLT+MPjgY36iu8O+DTFs0t+m6y7JWQK0aWzGRuwboU=
X-Received: by 2002:a0c:c345:: with SMTP id j5mr555882qvi.156.1578621209242;
 Thu, 09 Jan 2020 17:53:29 -0800 (PST)
MIME-Version: 1.0
References: <20200108052337.65916-1-drinkcat@chromium.org>
 <20200108052337.65916-6-drinkcat@chromium.org>
 <b58a8cf9-3275-cf89-6dff-596aceeb8000@arm.com>
In-Reply-To: <b58a8cf9-3275-cf89-6dff-596aceeb8000@arm.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Fri, 10 Jan 2020 09:53:18 +0800
Message-ID: <CANMq1KBcNr=1_poBHrA_SDo_h-5i3e5TMqASEVaDj5LevsRcOQ@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] drm/panfrost: Add support for multiple power
 domain support
To: Steven Price <steven.price@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_175331_035564_840F98F8 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 Mark Brown <broonie@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Hsin-Yi Wang <hsinyi@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+Ulf to keep me honest on the power domains

On Thu, Jan 9, 2020 at 10:08 PM Steven Price <steven.price@arm.com> wrote:
>
> On 08/01/2020 05:23, Nicolas Boichat wrote:
> > When there is a single power domain per device, the core will
> > ensure the power domains are all switched on.
> >
> > However, when there are multiple ones, as in MT8183 Bifrost GPU,
> > we need to handle them in driver code.
> >
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > ---
> >
> > The downstream driver we use on chromeos-4.19 currently uses 2
> > additional devices in device tree to accomodate for this [1], but
> > I believe this solution is cleaner.
>
> I'm not sure what is best, but it seems odd to encode this into the Panfrost driver itself - it doesn't have any knowledge of what to do with these power domains. The naming of the domains looks suspiciously like someone thought that e.g. only half of the cores could be powered, but it doesn't look like that was implemented in the chromeos driver linked and anyway that is *meant* to be automatic in the hardware! (I.e. if you only power up one cores in one core stack then the PDC should only enable the power domain for that set of cores).

This is actually implemented in the Chrome OS driver [1]. IMHO power
domains are a bit confusing [2]:
 i. If there's only 1 power domain in the device, then the core takes
care of power on the domain (based on pm_runtime)
 ii. If there's more than 1 power domain, then the device needs to
link the domains manually.

So the Chrome OS [1] driver takes approach (i), by creating 3 devices,
each with 1 power domain that is switched on/off automatically using
pm_runtime.

This patch takes approach (ii) with device links to handle the extra domains.

I believe the latter is more upstream-friendly, but, as always,
suggestions welcome.

[2] https://elixir.bootlin.com/linux/latest/source/drivers/base/power/domain.c#L2466

> Steve
>
> >
> > [1] https://chromium.googlesource.com/chromiumos/third_party/kernel/+/refs/heads/chromeos-4.19/drivers/gpu/arm/midgard/platform/mediatek/mali_kbase_runtime_pm.c#31
> >
> > drivers/gpu/drm/panfrost/panfrost_device.c | 87 ++++++++++++++++++++--
> >   drivers/gpu/drm/panfrost/panfrost_device.h |  4 +
> >   2 files changed, 83 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
> > index a0b0a6fef8b4e63..c6e9e059de94a4d 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_device.c
> > +++ b/drivers/gpu/drm/panfrost/panfrost_device.c
> > @@ -5,6 +5,7 @@
> >   #include <linux/clk.h>
> >   #include <linux/reset.h>
> >   #include <linux/platform_device.h>
> > +#include <linux/pm_domain.h>
> >   #include <linux/regulator/consumer.h>
> >
> >   #include "panfrost_device.h"
> > @@ -131,6 +132,67 @@ static void panfrost_regulator_fini(struct panfrost_device *pfdev)
> >       regulator_disable(pfdev->regulator_sram);
> >   }
> >
> > +static void panfrost_pm_domain_fini(struct panfrost_device *pfdev)
> > +{
> > +     int i;
> > +
> > +     for (i = 0; i < ARRAY_SIZE(pfdev->pm_domain_devs); i++) {
> > +             if (!pfdev->pm_domain_devs[i])
> > +                     break;
> > +
> > +             if (pfdev->pm_domain_links[i])
> > +                     device_link_del(pfdev->pm_domain_links[i]);
> > +
> > +             dev_pm_domain_detach(pfdev->pm_domain_devs[i], true);
> > +     }
> > +}
> > +
> > +static int panfrost_pm_domain_init(struct panfrost_device *pfdev)
> > +{
> > +     int err;
> > +     int i, num_domains;
> > +
> > +     num_domains = of_count_phandle_with_args(pfdev->dev->of_node,
> > +                                              "power-domains",
> > +                                              "#power-domain-cells");
> > +     /* Single domains are handled by the core. */
> > +     if (num_domains < 2)
> > +             return 0;
> > +
> > +     if (num_domains > ARRAY_SIZE(pfdev->pm_domain_devs)) {
> > +             dev_err(pfdev->dev, "Too many pm-domains: %d\n", num_domains);
> > +             return -EINVAL;
> > +     }
> > +
> > +     for (i = 0; i < num_domains; i++) {
> > +             pfdev->pm_domain_devs[i] =
> > +                     dev_pm_domain_attach_by_id(pfdev->dev, i);
> > +             if (IS_ERR(pfdev->pm_domain_devs[i])) {
> > +                     err = PTR_ERR(pfdev->pm_domain_devs[i]);
> > +                     pfdev->pm_domain_devs[i] = NULL;
> > +                     dev_err(pfdev->dev,
> > +                             "failed to get pm-domain %d: %d\n", i, err);
> > +                     goto err;
> > +             }
> > +
> > +             pfdev->pm_domain_links[i] = device_link_add(pfdev->dev,
> > +                             pfdev->pm_domain_devs[i], DL_FLAG_PM_RUNTIME |
> > +                             DL_FLAG_STATELESS | DL_FLAG_RPM_ACTIVE);
> > +             if (!pfdev->pm_domain_links[i]) {
> > +                     dev_err(pfdev->pm_domain_devs[i],
> > +                             "adding device link failed!\n");
> > +                     err = -ENODEV;
> > +                     goto err;
> > +             }
> > +     }
> > +
> > +     return 0;
> > +
> > +err:
> > +     panfrost_pm_domain_fini(pfdev);
> > +     return err;
> > +}
> > +
> >   int panfrost_device_init(struct panfrost_device *pfdev)
> >   {
> >       int err;
> > @@ -161,37 +223,45 @@ int panfrost_device_init(struct panfrost_device *pfdev)
> >               goto err_out1;
> >       }
> >
> > +     err = panfrost_pm_domain_init(pfdev);
> > +     if (err) {
> > +             dev_err(pfdev->dev, "pm_domain init failed %d\n", err);
> > +             goto err_out2;
> > +     }
> > +
> >       res = platform_get_resource(pfdev->pdev, IORESOURCE_MEM, 0);
> >       pfdev->iomem = devm_ioremap_resource(pfdev->dev, res);
> >       if (IS_ERR(pfdev->iomem)) {
> >               dev_err(pfdev->dev, "failed to ioremap iomem\n");
> >               err = PTR_ERR(pfdev->iomem);
> > -             goto err_out2;
> > +             goto err_out3;
> >       }
> >
> >       err = panfrost_gpu_init(pfdev);
> >       if (err)
> > -             goto err_out2;
> > +             goto err_out3;
> >
> >       err = panfrost_mmu_init(pfdev);
> >       if (err)
> > -             goto err_out3;
> > +             goto err_out4;
> >
> >       err = panfrost_job_init(pfdev);
> >       if (err)
> > -             goto err_out4;
> > +             goto err_out5;
> >
> >       err = panfrost_perfcnt_init(pfdev);
> >       if (err)
> > -             goto err_out5;
> > +             goto err_out6;
> >
> >       return 0;
> > -err_out5:
> > +err_out6:
> >       panfrost_job_fini(pfdev);
> > -err_out4:
> > +err_out5:
> >       panfrost_mmu_fini(pfdev);
> > -err_out3:
> > +err_out4:
> >       panfrost_gpu_fini(pfdev);
> > +err_out3:
> > +     panfrost_pm_domain_fini(pfdev);
> >   err_out2:
> >       panfrost_reset_fini(pfdev);
> >   err_out1:
> > @@ -208,6 +278,7 @@ void panfrost_device_fini(struct panfrost_device *pfdev)
> >       panfrost_mmu_fini(pfdev);
> >       panfrost_gpu_fini(pfdev);
> >       panfrost_reset_fini(pfdev);
> > +     panfrost_pm_domain_fini(pfdev);
> >       panfrost_regulator_fini(pfdev);
> >       panfrost_clk_fini(pfdev);
> >   }
> > diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
> > index a124334d69e7e93..92d471676fc7823 100644
> > --- a/drivers/gpu/drm/panfrost/panfrost_device.h
> > +++ b/drivers/gpu/drm/panfrost/panfrost_device.h
> > @@ -19,6 +19,7 @@ struct panfrost_job;
> >   struct panfrost_perfcnt;
> >
> >   #define NUM_JOB_SLOTS 3
> > +#define MAX_PM_DOMAINS 3
> >
> >   struct panfrost_features {
> >       u16 id;
> > @@ -62,6 +63,9 @@ struct panfrost_device {
> >       struct regulator *regulator;
> >       struct regulator *regulator_sram;
> >       struct reset_control *rstc;
> > +     /* pm_domains for devices with more than one. */
> > +     struct device *pm_domain_devs[MAX_PM_DOMAINS];
> > +     struct device_link *pm_domain_links[MAX_PM_DOMAINS];
> >
> >       struct panfrost_features features;
> >
> >
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
