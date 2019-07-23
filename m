Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8686718DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:01:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/7Y7ZHVPPuxjpKA0SzHYgEVKVb2nSTwjP1vCp7DorU=; b=oeRlMtXuhT5rZU
	MTNIskz7qTm9KARCaOpxXMN3uiVTU1Q1qDNK/RU2700dKsvZanYqLPW3X3PlDHT8GJUlcFUwp/D9y
	S7Iop2LDMaV0JoRxfwZd3jh/8icWoo6VTAUImM7ARgFG5GkW8oCMI2m5DmIpbn+iDc1eaUeEiXnIB
	Pv6Z+JNLW7QoA6EA5uoITYX7lzA55KHoJ55hqTN5PNJ/vh5d3+YUPsDoB4R59Azy4e02Urg45dbsd
	FT9kPhUuFdZZgmT1+ymd+7H7FR5BxLAPz+ARL8vNiOuIgyHWSPEVlQYBnVeEhLoHXAfGg8rgi33t5
	QzBfH2qIWRt0Z7dvDw4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpuQG-0005pi-PD; Tue, 23 Jul 2019 13:01:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuQ1-0005pL-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:01:26 +0000
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
 [209.85.167.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91B0A21921
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 13:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563886884;
 bh=CbmDLMjMi+Nd5R6Pl1B66vsTFwAu0X8Od5ob6t3Otuw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kJ666ehfoUBAoI2YSx+SVUOL2NzcWGe+pasJx61NM0E2XfSz5lGrmUerxSGuy6lXL
 YHaLk0zDxiYnhzlDZ4vDTkSbddvYgI1I/A6hwhecveTCjW7DbHEDWDsSNunSb/rgj7
 2Fhuuj2LpNazuUXoan0XpsuOKxvCQ8EoLnBZDIso=
Received: by mail-lf1-f48.google.com with SMTP id 62so24414486lfa.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 06:01:24 -0700 (PDT)
X-Gm-Message-State: APjAAAVUQQXHudW+VcHaJDRA4ObqDFpBzxoeWG5bFVCGln4h1LVWzRyX
 q3cW/enUvC/5Lmdd40wNckmD5xtOej2pdbNEAUE=
X-Google-Smtp-Source: APXvYqzsrG6nB7kU6t/8CnaY5zo3+o2W69whzh4IdxhPied3z2PagTqPDK+dlEb0CHK06r8rm64qmI6oQ9U81EJSSZ8=
X-Received: by 2002:ac2:514b:: with SMTP id q11mr9488330lfd.33.1563886882779; 
 Tue, 23 Jul 2019 06:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190718143128eucas1p2677ae16d229dddcd9a0db8084f0da5cf@eucas1p2.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-3-s.nawrocki@samsung.com>
In-Reply-To: <20190718143044.25066-3-s.nawrocki@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 23 Jul 2019 15:01:11 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfLPjmjgX01UAyu_=7etUO1G7osMQDmyHVBNxF2Sdh=yA@mail.gmail.com>
Message-ID: <CAJKOXPfLPjmjgX01UAyu_=7etUO1G7osMQDmyHVBNxF2Sdh=yA@mail.gmail.com>
Subject: Re: [PATCH v2 2/9] soc: samsung: Convert exynos-chipid driver to use
 the regmap API
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_060125_280946_DB3600A4 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 18 Jul 2019 at 16:31, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> Convert the driver to use regmap API in order to allow other
> drivers, like ASV, to access the CHIPID registers.
>
> This patch adds definition of selected CHIPID register offsets
> and register bit fields for Exynos5422 SoC.
>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v1 (RFC):
>  - new patch
> ---
>  drivers/soc/samsung/exynos-chipid.c       | 33 ++++++----------
>  include/linux/soc/samsung/exynos-chipid.h | 48 +++++++++++++++++++++++
>  2 files changed, 61 insertions(+), 20 deletions(-)
>  create mode 100644 include/linux/soc/samsung/exynos-chipid.h
>
> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
> index 78b123ee60c0..594b00488013 100644
> --- a/drivers/soc/samsung/exynos-chipid.c
> +++ b/drivers/soc/samsung/exynos-chipid.c
> @@ -9,18 +9,16 @@
>   */
>
>  #include <linux/io.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/slab.h>
> +#include <linux/soc/samsung/exynos-chipid.h>
>  #include <linux/sys_soc.h>
>
> -#define EXYNOS_SUBREV_MASK     (0xF << 4)
> -#define EXYNOS_MAINREV_MASK    (0xF << 0)
> -#define EXYNOS_REV_MASK                (EXYNOS_SUBREV_MASK | EXYNOS_MAINREV_MASK)
> -#define EXYNOS_MASK            0xFFFFF000
> -
>  static const struct exynos_soc_id {
>         const char *name;
>         unsigned int id;
> @@ -53,29 +51,24 @@ static const char * __init product_id_to_soc_id(unsigned int product_id)
>  int __init exynos_chipid_early_init(void)
>  {
>         struct soc_device_attribute *soc_dev_attr;
> -       void __iomem *exynos_chipid_base;
>         struct soc_device *soc_dev;
>         struct device_node *root;
> -       struct device_node *np;
> +       struct regmap *regmap;
>         u32 product_id;
>         u32 revision;
> +       int ret;
>
> -       /* look up for chipid node */
> -       np = of_find_compatible_node(NULL, NULL, "samsung,exynos4210-chipid");
> -       if (!np)
> -               return -ENODEV;
> -
> -       exynos_chipid_base = of_iomap(np, 0);
> -       of_node_put(np);
> -
> -       if (!exynos_chipid_base) {
> -               pr_err("Failed to map SoC chipid\n");
> -               return -ENXIO;
> +       regmap = syscon_regmap_lookup_by_compatible("samsung,exynos4210-chipid");
> +       if (IS_ERR(regmap)) {
> +               pr_err("%s: failed to get regmap\n", __func__);

Other places do not use __func__ prefix so make it consistent. Add it
in patch #1?

> +               return PTR_ERR(regmap);
>         }
>
> -       product_id = readl_relaxed(exynos_chipid_base);
> +       ret = regmap_read(regmap, EXYNOS_CHIPID_REG_PRO_ID, &product_id);
> +       if (ret < 0)
> +               return ret;
> +
>         revision = product_id & EXYNOS_REV_MASK;
> -       iounmap(exynos_chipid_base);
>
>         soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
>         if (!soc_dev_attr)
> diff --git a/include/linux/soc/samsung/exynos-chipid.h b/include/linux/soc/samsung/exynos-chipid.h
> new file mode 100644
> index 000000000000..25359d70d617
> --- /dev/null
> +++ b/include/linux/soc/samsung/exynos-chipid.h
> @@ -0,0 +1,48 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2018 Samsung Electronics Co., Ltd.
> + *           http://www.samsung.com/
> + *
> + * Exynos - CHIPID support
> + */
> +
> +#define EXYNOS_CHIPID_REG_PRO_ID       0x00
> + #define EXYNOS_SUBREV_MASK            (0xf << 4)

" #define" is unusual syntax. I think not used anywhere else. Stick to
regular one.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
