Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755AE9790E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 14:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hFvCTB+D+VIOuGUmepKk36qnJNqH3zb0Yae+jaOG7Ls=; b=A8grBKsvlN4gil
	1Hg1xydRfhu8QJ3ixXWbvFAkc3s73jP+h/b3HGM1gsOnMr4SW2Ki21vhzXdaujIBDqNKcPUz34DXe
	CsyCgXPIsY4vSbOgVIwz14R8w800ajHulSvP7f1UpN1pj77FuOWUHjQsk59K7tl0z+83cQMXqkIT5
	+Gi5SQJq8k8Xp1QCH86QqunTDk+jhEwhPaYNmG38Eq102mvFucj1mEmZ4pIVJgeh8BKvzAehkSLIn
	IcX8nxqY6zVi9qpoMlMHedc4h96bQvl0nfkJvlRPWAR755N9436ax3X/iISVBQFoProWJsBU/V97I
	OYuuMdUJgthl7uAw2gdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0PY8-0002UR-6J; Wed, 21 Aug 2019 12:17:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0PXt-0002U3-S7
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 12:16:59 +0000
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com
 [209.85.208.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 331A823400
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 12:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566389817;
 bh=uynG4lj2NFKmPKucYZd6LWpEU0LW0PqM8k6juv4kk6Q=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=n5XzPGno2q7GDr4k8K4aFDxr1MHVuArZuIuRAba8kHNpJ3sIFhzq0MGouM4G0xett
 ITlIE91yd6uf4r08BfyR7p6rw8W8m28KdhSeQpG+ed04AI7T3ZhrCorMo4CtXgG8be
 u/EA4VZ1s5JbIepDqrjmk4ocsLQh22dVof1FpxHg=
Received: by mail-lj1-f174.google.com with SMTP id x18so1942571ljh.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 05:16:57 -0700 (PDT)
X-Gm-Message-State: APjAAAW/9idEZ5dMQJu8zfODNcSTnUA2ZqPXSTRERYrHT/BaWpYYwLRH
 Mzl3+KTuGwLljXVRHVxYVo888rGi3TSbox8ln+Q=
X-Google-Smtp-Source: APXvYqylX2rUmIlELH4D93bM3e4TXvEwUkh5Y4r23cXAhB6gAMzrPtx7w1O/W8NsexFVtpfI5op4YqTOQY/zJHbWoqA=
X-Received: by 2002:a2e:9b13:: with SMTP id u19mr14134020lji.40.1566389815350; 
 Wed, 21 Aug 2019 05:16:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190813150827.31972-1-s.nawrocki@samsung.com>
 <CGME20190813150852eucas1p2be4c0ab5ec2c079e3daf1af24283b27c@eucas1p2.samsung.com>
 <20190813150827.31972-3-s.nawrocki@samsung.com>
 <b5359603-b337-dcd8-b025-ca7dff5f4a06@nvidia.com>
 <CAJKOXPf597CMx=M2JmSTWe2GzBfcHFefgzSJbJ+njZGp-WfR1A@mail.gmail.com>
 <1e428c8e-f4b5-0810-77f9-2c899c040fc7@kernel.org>
 <72eea1ea-2433-2f76-6265-5851554e845d@samsung.com>
In-Reply-To: <72eea1ea-2433-2f76-6265-5851554e845d@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 21 Aug 2019 14:16:44 +0200
X-Gmail-Original-Message-ID: <CAJKOXPdh9eHrAuCxHkQBvJMqEnUCeU2xwkK=9yyiJ6BuTLJ+_A@mail.gmail.com>
Message-ID: <CAJKOXPdh9eHrAuCxHkQBvJMqEnUCeU2xwkK=9yyiJ6BuTLJ+_A@mail.gmail.com>
Subject: Re: [PATCH v3 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
To: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_051657_954700_15753B20 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Sylwester Nawrocki <snawrocki@kernel.org>, vireshk@kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jon Hunter <jonathanh@nvidia.com>, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, pankaj.dubey@samsung.com,
 linux-tegra <linux-tegra@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 21 Aug 2019 at 13:51, Bartlomiej Zolnierkiewicz
<b.zolnierkie@samsung.com> wrote:
> >>> Following this change, I am now seeing the above error on our Tegra
> >>> boards where this driver is enabled. This is triggering a kernel
> >>> warnings test we have to fail. Hence, I don't think that you can remove
> >>> the compatible node test here, unless you have a better way to determine
> >>> if this is a samsung device.
> >>
> >> Right, this is really wrong... I missed that it is not a probe but
> >> early init. And this init will be called on every board... Probably it
> >> should be converted to a regular driver.
>
> Early initialization is needed for SoC driver to be used from within
> arch/arm/mach-exynos/ and _initcall() usage is the usual way for SoC
> drivers to be initialized:
>
> drivers/soc/amlogic/meson-gx-socinfo.c
> drivers/soc/amlogic/meson-mx-socinfo.c
> drivers/soc/atmel/soc.c
> drivers/soc/bcm/brcmstb/common.c
> drivers/soc/imx/soc-imx-scu.c
> drivers/soc/imx/soc-imx8.c
> drivers/soc/renesas/renesas-soc.c
> drivers/soc/tegra/fuse/fuse-tegra.c
> drivers/soc/ux500/ux500-soc-id.c
> drivers/soc/versatile/soc-integrator.c
> drivers/soc/versatile/soc-integrator.c
>
> The only SoC drivers that are regular drivers are:
>
> drivers/soc/fsl/guts.c
> drivers/soc/versatile/soc-realview.c

Thanks for pointing it out.

Indeed, the initcall was needed in your set of patches here:
https://patchwork.kernel.org/project/linux-samsung-soc/list/?series=43565&state=*
but this work was not continued here. Maybe it will be later
resubmitted... maybe not... who knows? Therefore I would prefer proper
solution for current case (driver), unless patches for mach are being
brought back to life now.

> > I'm also inclined to have it converted to a regular driver.  We already
> > have "exynos-asv" driver matching on the chipid node (patch 3/9).
> > The ASV patches will not be merged soon anyway, all this needs some more
> > thought. Krzysztof, can we abandon the chipid patches for now? Your
>
> chipid driver is good and useful on its own. The preferred solution
> IMHO would be to just revert "soc: samsung: Convert exynos-chipid
> driver to use the regmap API" commit.

I queued the chipid as a dependency for ASV but ASV requires the
regmap. What would be left after reverting the regmap part? Simple
unused printk driver? No need for such. If reverting, then let's drop
entire driver and rework it offline.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
