Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A4F9698A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 21:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aBTrWOFzmxiZ+ShTANwz5AiY2bCIMVkQ+3Vp+dK25C8=; b=Xci04Jkp6R2uD7
	OTgt/zLm3VGfxDHITrhK9kXr9aEuSDmzGmjtxbrpEgYkl8M/TMlQ1qnNHv6J+K/G+BDlFHtVVndp5
	GQsUjZ7uHGxUslap5Wkas7jBQ94KU+CVKc7uR/4Z+4h9ayhFhgkryA8YlSs0cc9FuDH4YWq1VgM93
	KcMgh48iGIc39DHqHNYSAq1lQaI+yXhvic10+zITgk/4UzF8WzNSX2KeWa+9ASI6zTaJiA1mUhCcM
	lR3K2ECLYIpQzILXFqk0O7Hg8xrjTPlthQzUn/9rXRiZ23sKgrgv8tnY8pQxW5R2i57eFgmCelcXF
	DOcjSQIQ+EnKnSkKqqJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i09x3-0007i2-Ig; Tue, 20 Aug 2019 19:37:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i09wu-0007gu-KU
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 19:37:46 +0000
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C3F032332B
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 19:37:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566329863;
 bh=nSPTWxgTSSBej7q5ret8+e8QFb0fXix0iVWrBjjhUQk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=1+JhBm9RGKco7pgqDqsCD/WBQh5pzJsVXXyb/glnz93S5JI9lfsq4aT6zEZ19couM
 uCFRZCyMt7T7b7/QJQHaaP1SUVKHdBb/e20ZE5j8hc98Ch4kwrid3JYZBvIcQaMUt0
 4HVbbrtwqc9RUCwx0cYNtF+oZBWHlRH9yEtk4Xcg=
Received: by mail-lj1-f173.google.com with SMTP id x18so6253398ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 12:37:42 -0700 (PDT)
X-Gm-Message-State: APjAAAVQgYp2RILJ2XGOJka55nLuvsO745eQZ3FwGCbD8WB2kOQvYnsk
 rRMIvmT+tiL2PXYDrQCEy5BI1Wi+VBiUzwLDsbQ=
X-Google-Smtp-Source: APXvYqzYqxJRbRYm6dWQWcuF6mGrgohmoKorAwd/s9QlXOo/me03d2EOKdPcqUIWWnwYqLsRbaLjK+3gTgKYvrXxP2Y=
X-Received: by 2002:a2e:b4d4:: with SMTP id r20mr16800519ljm.5.1566329860916; 
 Tue, 20 Aug 2019 12:37:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
 <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
In-Reply-To: <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 20 Aug 2019 21:37:29 +0200
X-Gmail-Original-Message-ID: <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
Message-ID: <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
To: Jon Hunter <jonathanh@nvidia.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_123744_719121_0F4B25D9 
X-CRM114-Status: GOOD (  25.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 pankaj.dubey@samsung.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, vireshk@kernel.org,
 linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 20 Aug 2019 at 21:24, Jon Hunter <jonathanh@nvidia.com> wrote:
>
>
> On 13/08/2019 16:08, Sylwester Nawrocki wrote:
> > Convert the driver to use regmap API in order to allow other
> > drivers, like ASV, to access the CHIPID registers.
> >
> > This patch adds definition of selected CHIPID register offsets
> > and register bit fields for Exynos5422 SoC.
> >
> > Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> > ---
> > Changes since v2:
> >  - s/_EXYNOS_ASV_H/__LINU_SOC_EXYNOS_ASV_H,
> >  - removed __func__ from error log,
> >  - removed unneeded <linux/of_address.h> header inclusion.
> >
> > Changes since v1 (RFC):
> >  - new patch
> > ---
> >  drivers/soc/samsung/exynos-chipid.c       | 34 ++++++---------
> >  include/linux/soc/samsung/exynos-chipid.h | 52 +++++++++++++++++++++++
> >  2 files changed, 65 insertions(+), 21 deletions(-)
> >  create mode 100644 include/linux/soc/samsung/exynos-chipid.h
> >
> > diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
> > index bcf691f2b650..006a95feb618 100644
> > --- a/drivers/soc/samsung/exynos-chipid.c
> > +++ b/drivers/soc/samsung/exynos-chipid.c
> > @@ -9,16 +9,13 @@
> >   */
> >
> >  #include <linux/io.h>
> > +#include <linux/mfd/syscon.h>
> >  #include <linux/of.h>
> > -#include <linux/of_address.h>
> > +#include <linux/regmap.h>
> >  #include <linux/slab.h>
> > +#include <linux/soc/samsung/exynos-chipid.h>
> >  #include <linux/sys_soc.h>
> >
> > -#define EXYNOS_SUBREV_MASK   (0xF << 4)
> > -#define EXYNOS_MAINREV_MASK  (0xF << 0)
> > -#define EXYNOS_REV_MASK              (EXYNOS_SUBREV_MASK | EXYNOS_MAINREV_MASK)
> > -#define EXYNOS_MASK          0xFFFFF000
> > -
> >  static const struct exynos_soc_id {
> >       const char *name;
> >       unsigned int id;
> > @@ -51,29 +48,24 @@ static const char * __init product_id_to_soc_id(unsigned int product_id)
> >  int __init exynos_chipid_early_init(void)
> >  {
> >       struct soc_device_attribute *soc_dev_attr;
> > -     void __iomem *exynos_chipid_base;
> >       struct soc_device *soc_dev;
> >       struct device_node *root;
> > -     struct device_node *np;
> > +     struct regmap *regmap;
> >       u32 product_id;
> >       u32 revision;
> > +     int ret;
> >
> > -     /* look up for chipid node */
> > -     np = of_find_compatible_node(NULL, NULL, "samsung,exynos4210-chipid");
> > -     if (!np)
> > -             return -ENODEV;
> > -
> > -     exynos_chipid_base = of_iomap(np, 0);
> > -     of_node_put(np);
> > -
> > -     if (!exynos_chipid_base) {
> > -             pr_err("Failed to map SoC chipid\n");
> > -             return -ENXIO;
> > +     regmap = syscon_regmap_lookup_by_compatible("samsung,exynos4210-chipid");
> > +     if (IS_ERR(regmap)) {
> > +             pr_err("Failed to get CHIPID regmap\n");
> > +             return PTR_ERR(regmap);
> >       }
>
> Following this change, I am now seeing the above error on our Tegra
> boards where this driver is enabled. This is triggering a kernel
> warnings test we have to fail. Hence, I don't think that you can remove
> the compatible node test here, unless you have a better way to determine
> if this is a samsung device.

Right, this is really wrong... I missed that it is not a probe but
early init. And this init will be called on every board... Probably it
should be converted to a regular driver.

This is very old patchset, revived recently. I see that in v6 it was a
platform driver:
https://patchwork.kernel.org/patch/9134949/
Pankaj, apparently based on these comments, made it initcall... but why?

Another point is that Arnd complained there about exposing global
header and no change here - we still expose the global header, but not
with soc revisions but register internals... although it has its
purpose - other Exynos-specific drivers need to access through regmap.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
