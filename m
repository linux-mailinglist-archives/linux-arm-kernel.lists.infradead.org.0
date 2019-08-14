Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987108D405
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 14:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PN+NLbCLZF8E0TfhSzPfr2FmWwhzmh7ksJ0AoEEhTGc=; b=gv903m8+bn1QEi
	JfYkvOUeTSnkbieJ/xTR+Mh8zBp3vfR3n2aIZGDQo6+QAw+pSHf803TvX1UCw3N6/NUD4j7k36OhL
	8XGgLYR7iHBgkxjwZf3Raj0qlr5zLHR856dbmOreFWZlM1/UuDs48bMxarBM+NtyuY45NgYPMzoE5
	xlWwETg0T4X9uRF7uiVNE6LGbR38bz9XJcDRVKv50sTZMEPTlzVnxP3WtuAo8KMAgCaCRtWLmTqbx
	O3d8iLcqnYy/Dxx7CNGZ3sb7+c1WVIZEd9zECbeD1AnJFp+8F+5oZET9zmMcpdVe9ge7ndgcSDKvL
	X8D9Tq0RiDLUPvkJxTpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxsrw-0000Yu-7j; Wed, 14 Aug 2019 12:59:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxsri-0000YL-FH
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 12:59:00 +0000
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
 [209.85.167.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62C8920679
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 12:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565787537;
 bh=chscWvw2qJy3DCHmDF0qUAKcyZp2r4+EyUbfw3QjrQA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=yTJbt7eLpctF0EvpW6FI9Xc+0fFwasBkBLwpVzOcKzqEjKZAm8Q5/7430sYK3cPJV
 2PX3bh/vbLmkmZjhrlBbzPiK1kT1ZKm13JmZW+P/6JS6AqyfWRwuSDpnW1u/L51TOD
 dKLhqq6S5gKxueFAY4TCRQ+av/E29bfLebhA/nKQ=
Received: by mail-lf1-f53.google.com with SMTP id b29so72012694lfq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 14 Aug 2019 05:58:57 -0700 (PDT)
X-Gm-Message-State: APjAAAUH5tH0n07tjSrGFtRQK0k7CDbbYAgsYDQP0TqDzdHXN8Qe3v91
 FuXSHJy03FOpoogIvRjCXcPquBSUOlHD5tbhZp8=
X-Google-Smtp-Source: APXvYqxQ3CILwZyO7aMuVkPvtJmLWkrrorfwZy+M3mPc504RphvA/JLKZvLpLLHFTFSxiegNdbLxGlCc+NuZWnt7VAg=
X-Received: by 2002:ac2:44ac:: with SMTP id c12mr13152915lfm.33.1565787535537; 
 Wed, 14 Aug 2019 05:58:55 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190813150853eucas1p20257455cc323a8b78b37977b0ed4937d@eucas1p2.samsung.com>
 <20190813150827.31972-1-s.nawrocki@samsung.com>
 <20190813150827.31972-4-s.nawrocki@samsung.com>
In-Reply-To: <20190813150827.31972-4-s.nawrocki@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 14 Aug 2019 14:58:44 +0200
X-Gmail-Original-Message-ID: <CAJKOXPfqeq4vB87Ehd4zyZtfqNVsn8vznq16GAwVsH01jOtvtg@mail.gmail.com>
Message-ID: <CAJKOXPfqeq4vB87Ehd4zyZtfqNVsn8vznq16GAwVsH01jOtvtg@mail.gmail.com>
Subject: Re: [PATCH v3 3/9] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_055858_548337_D7F050C1 
X-CRM114-Status: GOOD (  29.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-pm@vger.kernel.org, pankaj.dubey@samsung.com,
 =?UTF-8?B?QmFydMWCb21pZWogxbtvxYJuaWVya2lld2ljeg==?=
 <b.zolnierkie@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 robh+dt@kernel.org, kgene@kernel.org, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 13 Aug 2019 at 17:08, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>
> The Adaptive Supply Voltage (ASV) driver adjusts CPU cluster operating
> points depending on exact revision of an SoC retrieved from the CHIPID
> block or the OTP memory.  This allows for some power saving as for some
> CPU clock frequencies we can lower CPU cluster supply voltage comparing
> to safe values common to the all chip revisions.
>
> This patch adds support for Exynos5422/5800 SoC, it is partially based
> on code from https://github.com/hardkernel/linux repository,
> branch odroidxu4-4.14.y, files: arch/arm/mach-exynos/exynos5422-asv.[ch].
>
> Tested on Odroid XU3, XU4, XU3 Lite.
>
> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
> ---
> Changes since v2:
>  - Use devm_kzalloc() in probe() to avoid memory leak,
>  - removed leading spaces in exynos-chipid.h,
>  - removed unneeded <linux/init.h> header inclusion,
>  - dropped parentheses from exynos542_asv_parse_sg(),
>  - updated Kconfig entry,
>  - added const attribute to struct exynos_asv_susbsys::cpu_dt_compat.
>
> Changes since v1 (RFC):
>  - removed code for parsing the ASV OPP tables from DT, the ASV OPP tables
>    moved to the driver;
>  - converted to use the regmap API;
>  - converted to normal platform driver.
> ---
>  drivers/soc/samsung/Kconfig          |  10 +
>  drivers/soc/samsung/Makefile         |   3 +
>  drivers/soc/samsung/exynos-asv.c     | 184 ++++++++++
>  drivers/soc/samsung/exynos-asv.h     |  82 +++++
>  drivers/soc/samsung/exynos5422-asv.c | 498 +++++++++++++++++++++++++++
>  drivers/soc/samsung/exynos5422-asv.h |  25 ++
>  6 files changed, 802 insertions(+)
>  create mode 100644 drivers/soc/samsung/exynos-asv.c
>  create mode 100644 drivers/soc/samsung/exynos-asv.h
>  create mode 100644 drivers/soc/samsung/exynos5422-asv.c
>  create mode 100644 drivers/soc/samsung/exynos5422-asv.h
>
> diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
> index 2905f5262197..73ccf59676a1 100644
> --- a/drivers/soc/samsung/Kconfig
> +++ b/drivers/soc/samsung/Kconfig
> @@ -7,6 +7,16 @@ menuconfig SOC_SAMSUNG
>
>  if SOC_SAMSUNG
>
> +config EXYNOS_ASV
> +       bool "Exynos Adaptive Supply Voltage support" if COMPILE_TEST
> +       depends on (ARCH_EXYNOS && EXYNOS_CHIPID) || COMPILE_TEST
> +       select EXYNOS_ASV_ARM if ARM && ARCH_EXYNOS
> +
> +# There is no need to enable these drivers for ARMv8
> +config EXYNOS_ASV_ARM
> +       bool "Exynos ASV ARMv7-specific driver extensions" if COMPILE_TEST
> +       depends on EXYNOS_ASV
> +
>  config EXYNOS_CHIPID
>         bool "Exynos Chipid controller driver" if COMPILE_TEST
>         depends on ARCH_EXYNOS || COMPILE_TEST
> diff --git a/drivers/soc/samsung/Makefile b/drivers/soc/samsung/Makefile
> index 3b6a8797416c..edd1d6ea064d 100644
> --- a/drivers/soc/samsung/Makefile
> +++ b/drivers/soc/samsung/Makefile
> @@ -1,5 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0
>
> +obj-$(CONFIG_EXYNOS_ASV)       += exynos-asv.o
> +obj-$(CONFIG_EXYNOS_ASV_ARM)   += exynos5422-asv.o
> +
>  obj-$(CONFIG_EXYNOS_CHIPID)    += exynos-chipid.o
>  obj-$(CONFIG_EXYNOS_PMU)       += exynos-pmu.o
>
> diff --git a/drivers/soc/samsung/exynos-asv.c b/drivers/soc/samsung/exynos-asv.c
> new file mode 100644
> index 000000000000..481deb600afc
> --- /dev/null
> +++ b/drivers/soc/samsung/exynos-asv.c
> @@ -0,0 +1,184 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 Samsung Electronics Co., Ltd.
> + *           http://www.samsung.com/
> + * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
> + *
> + * Samsung Exynos SoC Adaptive Supply Voltage support
> + */
> +
> +#include <linux/cpu.h>
> +#include <linux/delay.h>
> +#include <linux/device.h>
> +#include <linux/errno.h>
> +#include <linux/init.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
> +#include <linux/regmap.h>
> +#include <linux/soc/samsung/exynos-chipid.h>
> +
> +#include "exynos-asv.h"
> +#include "exynos5422-asv.h"
> +
> +#define MHZ 1000000U
> +
> +static int exynos_asv_update_cpu_opps(struct exynos_asv *asv,
> +                                     struct device *cpu)
> +{
> +       struct exynos_asv_subsys *subsys = NULL;
> +       struct dev_pm_opp *opp;
> +       unsigned int opp_freq;
> +       int i;
> +
> +       for (i = 0; i < ARRAY_SIZE(asv->subsys); i++) {
> +               if (of_device_is_compatible(cpu->of_node,
> +                                           asv->subsys[i].cpu_dt_compat)) {
> +                       subsys = &asv->subsys[i];
> +                       break;
> +               }
> +       }
> +       if (!subsys)
> +               return -EINVAL;
> +
> +       for (i = 0; i < subsys->table.num_rows; i++) {
> +               unsigned int new_voltage;
> +               unsigned int voltage;
> +               int timeout = 1000;
> +               int err;
> +
> +               opp_freq = exynos_asv_opp_get_frequency(subsys, i);
> +
> +               opp = dev_pm_opp_find_freq_exact(cpu, opp_freq * MHZ, true);
> +               if (IS_ERR(opp)) {
> +                       dev_info(asv->dev, "cpu%d opp%d, freq: %u missing\n",
> +                                cpu->id, i, opp_freq);
> +
> +                       continue;
> +               }
> +
> +               voltage = dev_pm_opp_get_voltage(opp);
> +               new_voltage = asv->opp_get_voltage(subsys, i, voltage);
> +               dev_pm_opp_put(opp);
> +
> +               opp_freq *= MHZ;
> +               dev_pm_opp_remove(cpu, opp_freq);
> +
> +               while (--timeout) {
> +                       opp = dev_pm_opp_find_freq_exact(cpu, opp_freq, true);
> +                       if (IS_ERR(opp))
> +                               break;
> +                       dev_pm_opp_put(opp);
> +                       msleep(1);
> +               }
> +
> +               err = dev_pm_opp_add(cpu, opp_freq, new_voltage);
> +               if (err < 0)
> +                       dev_err(asv->dev,
> +                               "Failed to add OPP %u Hz/%u uV for cpu%d\n",
> +                               opp_freq, new_voltage, cpu->id);
> +       }
> +
> +       return 0;
> +}
> +
> +static int exynos_asv_update_opps(struct exynos_asv *asv)
> +{
> +       struct opp_table *last_opp_table = NULL;
> +       struct device *cpu;
> +       int ret, cpuid;
> +
> +       for_each_possible_cpu(cpuid) {
> +               struct opp_table *opp_table;
> +
> +               cpu = get_cpu_device(cpuid);
> +               if (!cpu)
> +                       continue;
> +
> +               opp_table = dev_pm_opp_get_opp_table(cpu);
> +               if (IS_ERR(opp_table))
> +                       continue;
> +
> +               if (!last_opp_table || opp_table != last_opp_table) {
> +                       last_opp_table = opp_table;
> +
> +                       ret = exynos_asv_update_cpu_opps(asv, cpu);
> +                       if (ret < 0)
> +                               dev_err(asv->dev, "Couldn't udate OPPs for cpu%d\n",
> +                                       cpuid);
> +               }
> +
> +               dev_pm_opp_put_opp_table(opp_table);
> +       }
> +
> +       return  0;
> +}
> +
> +static int exynos_asv_probe(struct platform_device *pdev)
> +{
> +       int (*probe_func)(struct exynos_asv *asv);
> +       struct exynos_asv *asv;
> +       struct device *cpu_dev;
> +       u32 product_id = 0;
> +       int ret, i;
> +
> +       cpu_dev = get_cpu_device(0);
> +       ret = dev_pm_opp_get_opp_count(cpu_dev);
> +       if (ret < 0)
> +               return -EPROBE_DEFER;
> +
> +       asv = devm_kzalloc(&pdev->dev, sizeof(*asv), GFP_KERNEL);
> +       if (!asv)
> +               return -ENOMEM;
> +
> +       asv->chipid_regmap = syscon_node_to_regmap(pdev->dev.of_node);
> +       if (IS_ERR(asv->chipid_regmap)) {
> +               dev_err(&pdev->dev, "Could not find syscon regmap\n");
> +               return PTR_ERR(asv->chipid_regmap);
> +       }
> +
> +       regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PRO_ID, &product_id);
> +
> +       switch (product_id & EXYNOS_MASK) {
> +       case 0xE5422000:
> +               probe_func = exynos5422_asv_init;
> +               break;
> +       default:
> +               dev_err(&pdev->dev, "Unsupported product ID: %#x", product_id);
> +               return -ENODEV;
> +       }
> +
> +       ret = of_property_read_u32(pdev->dev.of_node, "samsung,asv-bin",
> +                                  &asv->of_bin);
> +       if (ret < 0)
> +               asv->of_bin = -EINVAL;
> +
> +       asv->dev = &pdev->dev;
> +       dev_set_drvdata(&pdev->dev, asv);
> +
> +       for (i = 0; i < ARRAY_SIZE(asv->subsys); i++)
> +               asv->subsys[i].asv = asv;
> +
> +       ret = probe_func(asv);
> +       if (ret < 0)
> +               return ret;
> +
> +       return exynos_asv_update_opps(asv);
> +}
> +
> +static const struct of_device_id exynos_asv_of_device_ids[] = {
> +       { .compatible = "samsung,exynos4210-chipid" },
> +       {}
> +};
> +
> +static struct platform_driver exynos_asv_driver = {
> +       .driver = {
> +               .name = "exynos-asv",
> +               .of_match_table = exynos_asv_of_device_ids,
> +       },
> +       .probe  = exynos_asv_probe,
> +};
> +module_platform_driver(exynos_asv_driver);
> diff --git a/drivers/soc/samsung/exynos-asv.h b/drivers/soc/samsung/exynos-asv.h
> new file mode 100644
> index 000000000000..14b4fedf2ddd
> --- /dev/null
> +++ b/drivers/soc/samsung/exynos-asv.h
> @@ -0,0 +1,82 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (c) 2019 Samsung Electronics Co., Ltd.
> + *           http://www.samsung.com/
> + * Author: Sylwester Nawrocki <s.nawrocki@samsung.com>
> + *
> + * Samsung Exynos SoC Adaptive Supply Voltage support
> + */
> +#ifndef __LINUX_SOC_EXYNOS_ASV_H
> +#define __LINUX_SOC_EXYNOS_ASV_H

Yikes, that was my mistake. The file is in drivers/soc, not include,
so this could stay as previous one. Or make more path dependend -
__DRIVERS_SOC... Now it is inconsistent with
drivers/soc/samsung/exynos5422-asv.h.

I can fixup these two files while applying but if there is going to be
a resend, then change both to __DRIVERS_SOC_..._H.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
