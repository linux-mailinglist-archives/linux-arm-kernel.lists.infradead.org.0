Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838D07197D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 15:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZ3TCfa5jeFx1wOpmwQlTW7LI5S69V3mlVHT8o3Fwc4=; b=ZSAVf/ECjCC05i
	wl+1pv3c2VDGwUzRQdt/SqB8eJRJ277KMzIUQ3lAYzviGi4g441pogrMM1LBGolaDkvLnmkgnVdam
	0E5MvlIfr6skRJeMOUnEgEtCkvcLcH3W16xbOOF/B5i4fUK3W4F3Hah3dDYVpEcL3q79aXDC6qJ6r
	n4UkFdq6sMD8FIK1KMR2504M720F8DhfDLXKcS2eGGaNyrML4lTrSTQHBd9B6YkUwQMRA7Ia8JudN
	d1PcAikMvHBgA/xjF224UfTNwBPE/B094mwJ1V6PXT3h8JM2UVVD1WoAeSRm4iQzPWc9mRisXZXww
	T2PbTBMfM6Y/R7g9Ce1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpv1A-0006Im-Ik; Tue, 23 Jul 2019 13:39:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpuzp-0005MZ-Qa
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 13:38:33 +0000
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com
 [209.85.208.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EF673218D4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 13:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563889104;
 bh=90jByL60vykLjlL1U8ZJpLaDSrQXl0RpVa1C2FUPujU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=fIqYV5d9sbdLmiwY0iBqFfdtitN5BM/PQdfmy8oYezetMzOu9TZejBGNpgZXl6JmP
 OkuUwJC8LS05KlJdojgrefSX0kLfTXxAYyAXS+GYrJ6tViSg/dCQ5Qndd19yx8B//H
 tQR5pP+Sgwu8ByHNNc5DKe7cUA4GZk6bPZN2PoXA=
Received: by mail-lj1-f180.google.com with SMTP id i21so41109818ljj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 06:38:23 -0700 (PDT)
X-Gm-Message-State: APjAAAW1UD88ztuBsvegQ7gH5OFrmy5M3/IyzAl3WtBjNr3rj2knfhgi
 6jPrYl5fSDsNOFPIkwjdyyPtHcDteRNopHMBuOA=
X-Google-Smtp-Source: APXvYqzMwULT/l6DgIX1ifO1NiBmj3F2ikl85xHvosJ8oIikgH7o95nFq4434D1D5CtqEuKwNXdfBj7Uh7bZkSbLuUE=
X-Received: by 2002:a2e:b4d4:: with SMTP id r20mr14378222ljm.5.1563889101916; 
 Tue, 23 Jul 2019 06:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20190718143130eucas1p26f2058f47eb2f4020e1ddbf1619d1ac8@eucas1p2.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-4-s.nawrocki@samsung.com>
In-Reply-To: <20190718143044.25066-4-s.nawrocki@samsung.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Tue, 23 Jul 2019 15:38:10 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeOfDHjqSotxVwVuy+6r9X3Q8ZXLit1_=gGd7bOwkHupA@mail.gmail.com>
Message-ID: <CAJKOXPeOfDHjqSotxVwVuy+6r9X3Q8ZXLit1_=gGd7bOwkHupA@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_063826_292283_B093B63D 
X-CRM114-Status: GOOD (  27.02  )
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
> Changes since v1 (RFC):
>  - removed code for parsing the ASV OPP tables from DT, the ASV OPP tables
>    moved to the driver;
>  - converted to use the regmap API;
>  - converted to normal platform driver.
> ---
>  drivers/soc/samsung/Kconfig          |  11 +
>  drivers/soc/samsung/Makefile         |   3 +
>  drivers/soc/samsung/exynos-asv.c     | 185 ++++++++++
>  drivers/soc/samsung/exynos-asv.h     |  82 +++++
>  drivers/soc/samsung/exynos5422-asv.c | 499 +++++++++++++++++++++++++++
>  drivers/soc/samsung/exynos5422-asv.h |  25 ++
>  6 files changed, 805 insertions(+)
>  create mode 100644 drivers/soc/samsung/exynos-asv.c
>  create mode 100644 drivers/soc/samsung/exynos-asv.h
>  create mode 100644 drivers/soc/samsung/exynos5422-asv.c
>  create mode 100644 drivers/soc/samsung/exynos5422-asv.h
>
> diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
> index 2905f5262197..539cd95dd176 100644
> --- a/drivers/soc/samsung/Kconfig
> +++ b/drivers/soc/samsung/Kconfig
> @@ -7,6 +7,17 @@ menuconfig SOC_SAMSUNG
>
>  if SOC_SAMSUNG
>
> +config EXYNOS_ASV
> +       bool "Exynos Adaptive Supply Voltage support" if COMPILE_TEST
> +       depends on ARCH_EXYNOS || COMPILE_TEST
> +       depends on EXYNOS_CHIPID

(ARCH_EXYNOS && EXYNOS_CHIPID) || COMPILE_TEST

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
> index 000000000000..b1a7e0ba8870
> --- /dev/null
> +++ b/drivers/soc/samsung/exynos-asv.c
> @@ -0,0 +1,185 @@
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
> +#include <linux/slab.h>
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
> +       asv = kcalloc(1, sizeof(*asv), GFP_KERNEL);
> +       if (!asv)
> +               return -ENOMEM;
> +
> +       asv->chipid_regmap = syscon_node_to_regmap(pdev->dev.of_node);
> +       if (IS_ERR(asv->chipid_regmap)) {
> +               dev_err(&pdev->dev, "Could not find syscon regmap\n");

Here and in following error-paths - kfree().

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
> index 000000000000..d0a5d603093d
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
> +#ifndef _EXYNOS_ASV_H
> +#define _EXYNOS_ASV_H

Here and in other header use prefix:
__LINUX_SOC_
(just like the existing exynos-pmu.h)

> +
> +enum {
> +       EXYNOS_ASV_SUBSYS_ID_ARM,
> +       EXYNOS_ASV_SUBSYS_ID_EGL = EXYNOS_ASV_SUBSYS_ID_ARM,
> +       EXYNOS_ASV_SUBSYS_ID_KFC,
> +       EXYNOS_ASV_SUBSYS_ID_INT,
> +       EXYNOS_ASV_SUBSYS_ID_MIF,
> +       EXYNOS_ASV_SUBSYS_ID_G3D,
> +       EXYNOS_ASV_SUBSYS_ID_CAM,
> +       EXYNOS_ASV_SUBSYS_ID_MAX
> +};
> +
> +struct regmap;
> +
> +/* HPM, IDS values to select target group */
> +struct asv_limit_entry {
> +       unsigned int hpm;
> +       unsigned int ids;
> +};
> +
> +struct exynos_asv_table {
> +       unsigned int num_rows;
> +       unsigned int num_cols;
> +       u32 *buf;
> +};
> +
> +struct exynos_asv_subsys {
> +       struct exynos_asv *asv;
> +       char *cpu_dt_compat;

const char *

> +       int id;
> +       struct exynos_asv_table table;
> +
> +       unsigned int base_volt;
> +       unsigned int offset_volt_h;
> +       unsigned int offset_volt_l;
> +};
> +
> +struct exynos_asv {
> +       struct device *dev;
> +       struct regmap *chipid_regmap;
> +       struct exynos_asv_subsys subsys[2];
> +
> +       int (*opp_get_voltage)(struct exynos_asv_subsys *subs, int level,
> +                              unsigned int voltage);
> +       unsigned int group;
> +       unsigned int table;
> +
> +       /* True if SG fields from PKG_ID register should be used */
> +       bool use_sg;
> +       /* ASV bin read from DT */
> +       int of_bin;
> +};
> +
> +static inline u32 __asv_get_table_entry(struct exynos_asv_table *table,
> +                                       unsigned int row, unsigned int col)
> +{
> +       return table->buf[row * (table->num_cols) + col];
> +}
> +
> +static inline u32 exynos_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
> +                                       unsigned int level, unsigned int group)
> +{
> +       return __asv_get_table_entry(&subsys->table, level, group + 1);
> +}
> +
> +static inline u32 exynos_asv_opp_get_frequency(struct exynos_asv_subsys *subsys,
> +                                       unsigned int level)
> +{
> +       return __asv_get_table_entry(&subsys->table, level, 0);
> +}
> +
> +#endif /* _EXYNOS_ASV_H */
> diff --git a/drivers/soc/samsung/exynos5422-asv.c b/drivers/soc/samsung/exynos5422-asv.c
> new file mode 100644
> index 000000000000..5fd673a6a733
> --- /dev/null
> +++ b/drivers/soc/samsung/exynos5422-asv.c
> @@ -0,0 +1,499 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2019 Samsung Electronics Co., Ltd.
> + *           http://www.samsung.com/
> + *
> + * Samsung Exynos 5422 SoC Adaptive Supply Voltage support
> + */
> +
> +#include <linux/bitrev.h>
> +#include <linux/device.h>
> +#include <linux/errno.h>
> +#include <linux/init.h>

Looks unused.

> +#include <linux/of.h>
> +#include <linux/regmap.h>
> +#include <linux/soc/samsung/exynos-chipid.h>
> +#include <linux/slab.h>
> +
> +#include "exynos-asv.h"
> +
> +#define ASV_GROUPS_NUM         14
> +#define ASV_ARM_DVFS_NUM       20
> +#define ASV_ARM_BIN2_DVFS_NUM  17
> +#define ASV_KFC_DVFS_NUM       14
> +#define ASV_KFC_BIN2_DVFS_NUM  12
> +
> +static const u32 asv_arm_table[][ASV_ARM_DVFS_NUM][ASV_GROUPS_NUM + 1] = {
> +{
> +       /* ARM 0, 1 */
> +       { 2100,    1362500, 1362500, 1350000, 1337500, 1325000, 1312500, 1300000,
> +         1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000 },
> +       { 2000,    1312500, 1312500, 1300000, 1287500, 1275000, 1262500, 1250000,
> +         1237500, 1225000, 1237500, 1225000, 1212500, 1200000, 1187500 },
> +       { 1900,    1250000, 1237500, 1225000, 1212500, 1200000, 1187500, 1175000,
> +         1162500, 1150000, 1162500, 1150000, 1137500, 1125000, 1112500 },
> +       { 1800,    1200000, 1187500, 1175000, 1162500, 1150000, 1137500, 1125000,
> +         1112500, 1100000, 1112500, 1100000, 1087500, 1075000, 1062500 },
> +       { 1700,    1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500,
> +         1075000, 1062500, 1075000, 1062500, 1050000, 1037500, 1025000 },
> +       { 1600,    1125000, 1112500, 1100000, 1087500, 1075000, 1062500, 1050000,
> +         1037500, 1025000, 1037500, 1025000, 1012500, 1000000, 987500 },
> +       { 1500,    1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500,
> +         1000000, 987500,  1000000, 987500,  975000,  962500,  950000 },
> +       { 1400,    1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
> +         975000,  962500,  975000,  962500,  950000,  937500,  925000 },
> +       { 1300,    1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
> +         962500,  950000,  962500,  950000,  937500,  925000,  912500 },
> +       { 1200,    1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
> +         937500,  925000,  937500,  925000,  912500,  900000,  900000 },
> +       { 1100,    1000000, 987500,  975000,  962500,  950000,  937500,  925000,
> +         912500,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 1000,    975000,  962500,  950000,  937500,  925000,  912500,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 900,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 800,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 700,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}, {
> +       /* ARM 2 */
> +       { 2100,    1362500, 1362500, 1350000, 1337500, 1325000, 1312500, 1300000,
> +         1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000 },
> +       { 2000,    1312500, 1312500, 1312500, 1300000, 1275000, 1262500, 1250000,
> +         1237500, 1225000, 1237500, 1225000, 1212500, 1200000, 1187500 },
> +       { 1900,    1262500, 1250000, 1250000, 1237500, 1212500, 1200000, 1187500,
> +         1175000, 1162500, 1175000, 1162500, 1150000, 1137500, 1125000 },
> +       { 1800,    1212500, 1200000, 1187500, 1175000, 1162500, 1150000, 1137500,
> +         1125000, 1112500, 1125000, 1112500, 1100000, 1087500, 1075000 },
> +       { 1700,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
> +         1087500, 1075000, 1087500, 1075000, 1062500, 1050000, 1037500 },
> +       { 1600,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
> +         1050000, 1037500, 1050000, 1037500, 1025000, 1012500, 1000000 },
> +       { 1500,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
> +         1012500, 1000000, 1012500, 1000000, 987500,  975000,  962500 },
> +       { 1400,    1075000, 1062500, 1050000, 1037500, 1025000, 1012500, 1000000,
> +         987500,  975000,  987500,  975000,  962500,  950000,  937500 },
> +       { 1300,    1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
> +         962500,  950000,  962500,  950000,  937500,  925000,  912500 },
> +       { 1200,    1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
> +         937500,  925000,  937500,  925000,  912500,  900000,  900000 },
> +       { 1100,    1000000, 987500,  975000,  962500,  950000,  937500,  925000,
> +         912500,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 1000,    975000,  962500,  950000,  937500,  925000,  912500,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 900,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 800,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 700,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}, {
> +       /* ARM 3 */
> +       { 2100,    1362500, 1362500, 1350000, 1337500, 1325000, 1312500, 1300000,
> +         1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000 },
> +       { 2000,    1312500, 1312500, 1300000, 1287500, 1275000, 1262500, 1250000,
> +         1237500, 1225000, 1237500, 1225000, 1212500, 1200000, 1187500 },
> +       { 1900,    1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500,
> +         1175000, 1162500, 1175000, 1162500, 1150000, 1137500, 1125000 },
> +       { 1800,    1212500, 1200000, 1187500, 1175000, 1162500, 1150000, 1137500,
> +         1125000, 1112500, 1125000, 1112500, 1100000, 1087500, 1075000 },
> +       { 1700,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
> +         1087500, 1075000, 1087500, 1075000, 1062500, 1050000, 1037500 },
> +       { 1600,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
> +         1050000, 1037500, 1050000, 1037500, 1025000, 1012500, 1000000 },
> +       { 1500,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
> +         1012500, 1000000, 1012500, 1000000, 987500,  975000,  962500 },
> +       { 1400,    1075000, 1062500, 1050000, 1037500, 1025000, 1012500, 1000000,
> +         987500,  975000,  987500,  975000,  962500,  950000,  937500 },
> +       { 1300,    1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
> +         962500,  950000,  962500,  950000,  937500,  925000,  912500 },
> +       { 1200,    1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
> +         937500,  925000,  937500,  925000,  912500,  900000,  900000 },
> +       { 1100,    1000000, 987500,  975000,  962500,  950000,  937500,  925000,
> +         912500,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 1000,    975000,  962500,  950000,  937500,  925000,  912500,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 900,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 800,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 700,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}, {
> +       /* ARM bin 2 */
> +       { 1800,    1237500, 1225000, 1212500, 1200000, 1187500, 1175000, 1162500,
> +         1150000, 1137500, 1150000, 1137500, 1125000, 1112500, 1100000 },
> +       { 1700,    1200000, 1187500, 1175000, 1162500, 1150000, 1137500, 1125000,
> +         1112500, 1100000, 1112500, 1100000, 1087500, 1075000, 1062500 },
> +       { 1600,    1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500,
> +         1075000, 1062500, 1075000, 1062500, 1050000, 1037500, 1025000 },
> +       { 1500,    1125000, 1112500, 1100000, 1087500, 1075000, 1062500, 1050000,
> +         1037500, 1025000, 1037500, 1025000, 1012500, 1000000, 987500 },
> +       { 1400,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
> +         1012500, 1000000, 1012500, 1000000, 987500,  975000,  962500 },
> +       { 1300,    1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500,
> +         1000000, 987500,  1000000, 987500,  975000,  962500,  950000 },
> +       { 1200,    1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
> +         975000,  962500,  975000,  962500,  950000,  937500,  925000 },
> +       { 1100,    1037500, 1025000, 1012500, 1000000, 987500,  975000,  962500,
> +         950000,  937500,  950000,  937500,  925000,  912500,  900000 },
> +       { 1000,    1012500, 1000000, 987500,  975000,  962500,  950000,  937500,
> +         925000,  912500,  925000,  912500,  900000,  900000,  900000 },
> +       { 900,     987500,  975000,  962500,  950000,  937500,  925000,  912500,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 800,     962500,  950000,  937500,  925000,  912500,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 700,     937500,  925000,  912500,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 600,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}
> +};
> +
> +static const u32 asv_kfc_table[][ASV_KFC_DVFS_NUM][ASV_GROUPS_NUM + 1] = {
> +{
> +       /* KFC 0, 1 */
> +       { 1500000, 1300000, 1300000, 1300000, 1287500, 1287500, 1287500, 1275000,
> +         1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500 },
> +       { 1400000, 1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000,
> +         1187500, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500 },
> +       { 1300000, 1225000, 1212500, 1200000, 1187500, 1175000, 1162500, 1150000,
> +         1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500 },
> +       { 1200000, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
> +         1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500 },
> +       { 1100000, 1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
> +         1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000 },
> +       { 1000000, 1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
> +         1012500, 1000000, 987500,  975000,  962500,  950000,  937500 },
> +       { 900000,  1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
> +         975000,  962500,  950000,  937500,  925000,  912500,  900000 },
> +       { 800000,  1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
> +         937500,  925000,  912500,  900000,  900000,  900000,  900000 },
> +       { 700000,  987500,  975000,  962500,  950000,  937500,  925000,  912500,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 600000,  950000,  937500,  925000,  912500,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500000,  912500,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400000,  900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300000,  900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200000,  900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}, {
> +       /* KFC 2 */
> +       { 1500,    1300000, 1300000, 1300000, 1287500, 1287500, 1287500, 1275000,
> +         1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500 },
> +       { 1400,    1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000,
> +         1187500, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500 },
> +       { 1300,    1225000, 1212500, 1200000, 1187500, 1175000, 1162500, 1150000,
> +         1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500 },
> +       { 1200,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
> +         1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500 },
> +       { 1100,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
> +         1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000 },
> +       { 1000,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
> +         1012500, 1000000, 987500,  975000,  962500,  950000,  937500 },
> +       { 900,     1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
> +         975000,  962500,  950000,  937500,  925000,  912500,  900000 },
> +       { 800,     1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
> +         937500,  925000,  912500,  900000,  900000,  900000,  900000 },
> +       { 700,     987500,  975000,  962500,  950000,  937500,  925000,  912500,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 600,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500,     912500,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}, {
> +       /* KFC 3 */
> +       { 1500,    1300000, 1300000, 1300000, 1287500, 1287500, 1287500, 1275000,
> +         1262500, 1250000, 1237500, 1225000, 1212500, 1200000, 1187500 },
> +       { 1400,    1275000, 1262500, 1250000, 1237500, 1225000, 1212500, 1200000,
> +         1187500, 1175000, 1162500, 1150000, 1137500, 1125000, 1112500 },
> +       { 1300,    1225000, 1212500, 1200000, 1187500, 1175000, 1162500, 1150000,
> +         1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500 },
> +       { 1200,    1175000, 1162500, 1150000, 1137500, 1125000, 1112500, 1100000,
> +         1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500 },
> +       { 1100,    1137500, 1125000, 1112500, 1100000, 1087500, 1075000, 1062500,
> +         1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000 },
> +       { 1000,    1100000, 1087500, 1075000, 1062500, 1050000, 1037500, 1025000,
> +         1012500, 1000000, 987500,  975000,  962500,  950000,  937500 },
> +       { 900,     1062500, 1050000, 1037500, 1025000, 1012500, 1000000, 987500,
> +         975000,  962500,  950000,  937500,  925000,  912500,  900000 },
> +       { 800,     1025000, 1012500, 1000000, 987500,  975000,  962500,  950000,
> +         937500,  925000,  912500,  900000,  900000,  900000,  900000 },
> +       { 700,     987500,  975000,  962500,  950000,  937500,  925000,  912500,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 600,     950000,  937500,  925000,  912500,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500,     912500,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}, {
> +       /* KFC bin 2 */
> +       { 1300,    1250000, 1237500, 1225000, 1212500, 1200000, 1187500, 1175000,
> +         1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500 },
> +       { 1200,    1200000, 1187500, 1175000, 1162500, 1150000, 1137500, 1125000,
> +         1112500, 1100000, 1087500, 1075000, 1062500, 1050000, 1037500 },
> +       { 1100,    1162500, 1150000, 1137500, 1125000, 1112500, 1100000, 1087500,
> +         1075000, 1062500, 1050000, 1037500, 1025000, 1012500, 1000000 },
> +       { 1000,    1125000, 1112500, 1100000, 1087500, 1075000, 1062500, 1050000,
> +         1037500, 1025000, 1012500, 1000000, 987500,  975000,  962500 },
> +       { 900,     1087500, 1075000, 1062500, 1050000, 1037500, 1025000, 1012500,
> +         1000000, 987500,  975000,  962500,  950000,  937500,  925000 },
> +       { 800,     1050000, 1037500, 1025000, 1012500, 1000000, 987500,  975000,
> +         962500,  950000,  937500,  925000,  912500,  900000,  900000 },
> +       { 700,     1012500, 1000000, 987500,  975000,  962500,  950000,  937500,
> +         925000,  912500,  900000,  900000,  900000,  900000,  900000 },
> +       { 600,     975000,  962500,  950000,  937500,  925000,  912500,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 500,     937500,  925000,  912500,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 400,     925000,  912500,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 300,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +       { 200,     900000,  900000,  900000,  900000,  900000,  900000,  900000,
> +         900000,  900000,  900000,  900000,  900000,  900000,  900000 },
> +}
> +};
> +
> +static const struct asv_limit_entry __asv_limits[ASV_GROUPS_NUM] = {
> +       { 13, 55 },
> +       { 21, 65 },
> +       { 25, 69 },
> +       { 30, 72 },
> +       { 36, 74 },
> +       { 43, 76 },
> +       { 51, 78 },
> +       { 65, 80 },
> +       { 81, 82 },
> +       { 98, 84 },
> +       { 119, 87 },
> +       { 135, 89 },
> +       { 150, 92 },
> +       { 999, 999 },
> +};
> +
> +static int exynos5422_asv_get_group(struct exynos_asv *asv)
> +{
> +       unsigned int pkgid_reg, auxi_reg;
> +       int hpm, ids, i;
> +
> +       regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PKG_ID, &pkgid_reg);
> +       regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_AUX_INFO, &auxi_reg);
> +
> +       if (asv->use_sg) {
> +               u32 sga = (pkgid_reg >> EXYNOS5422_SG_A_OFFSET) &
> +                          EXYNOS5422_SG_A_MASK;
> +
> +               u32 sgb = (pkgid_reg >> EXYNOS5422_SG_B_OFFSET) &
> +                          EXYNOS5422_SG_B_MASK;
> +
> +               if ((pkgid_reg >> EXYNOS5422_SG_BSIGN_OFFSET) &
> +                    EXYNOS5422_SG_BSIGN_MASK)
> +                       return sga + sgb;
> +               else
> +                       return sga - sgb;
> +       }
> +
> +       hpm = (auxi_reg >> EXYNOS5422_TMCB_OFFSET) & EXYNOS5422_TMCB_MASK;
> +       ids = (pkgid_reg >> EXYNOS5422_IDS_OFFSET) & EXYNOS5422_IDS_MASK;
> +
> +       for (i = 0; i < ASV_GROUPS_NUM; i++) {
> +               if (ids <= __asv_limits[i].ids)
> +                       break;
> +               if (hpm <= __asv_limits[i].hpm)
> +                       break;
> +       }
> +       if (i < ASV_GROUPS_NUM)
> +               return i;
> +
> +       return 0;
> +}
> +
> +static int __asv_offset_voltage(unsigned int index)
> +{
> +       switch (index) {
> +       case 1:
> +               return 12500;
> +       case 2:
> +               return 50000;
> +       case 3:
> +               return 25000;
> +       default:
> +               return 0;
> +       };
> +}
> +
> +static void exynos5422_asv_offset_voltage_setup(struct exynos_asv *asv)
> +{
> +       struct exynos_asv_subsys *subsys;
> +       unsigned int reg, value;
> +
> +       regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_AUX_INFO, &reg);
> +
> +       /* ARM offset voltage setup */
> +       subsys = &asv->subsys[EXYNOS_ASV_SUBSYS_ID_ARM];
> +
> +       subsys->base_volt = 1000000;
> +
> +       value = (reg >> EXYNOS5422_ARM_UP_OFFSET) & EXYNOS5422_ARM_UP_MASK;
> +       subsys->offset_volt_h = __asv_offset_voltage(value);
> +
> +       value = (reg >> EXYNOS5422_ARM_DN_OFFSET) & EXYNOS5422_ARM_DN_MASK;
> +       subsys->offset_volt_l = __asv_offset_voltage(value);
> +
> +       /* KFC offset voltage setup */
> +       subsys = &asv->subsys[EXYNOS_ASV_SUBSYS_ID_KFC];
> +
> +       subsys->base_volt = 1000000;
> +
> +       value = (reg >> EXYNOS5422_KFC_UP_OFFSET) & EXYNOS5422_KFC_UP_MASK;
> +       subsys->offset_volt_h = __asv_offset_voltage(value);
> +
> +       value = (reg >> EXYNOS5422_KFC_DN_OFFSET) & EXYNOS5422_KFC_DN_MASK;
> +       subsys->offset_volt_l = __asv_offset_voltage(value);
> +}
> +
> +static int exynos5422_asv_opp_get_voltage(struct exynos_asv_subsys *subsys,
> +                               int level, unsigned int volt)
> +{
> +       unsigned int asv_volt;
> +
> +       if (level >= subsys->table.num_rows)
> +               return volt;
> +
> +       asv_volt = exynos_asv_opp_get_voltage(subsys, level,
> +                                             subsys->asv->group);
> +
> +       if (volt > subsys->base_volt)
> +               asv_volt += subsys->offset_volt_h;
> +       else
> +               asv_volt += subsys->offset_volt_l;
> +
> +       return asv_volt;
> +}
> +
> +static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
> +                                     unsigned int pkg_id)
> +{
> +       return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
> +}
> +
> +static bool exynos5422_asv_parse_bin2(struct exynos_asv *asv,
> +                                    unsigned int pkg_id)
> +{
> +       return (pkg_id >> EXYNOS5422_BIN2_OFFSET) & EXYNOS5422_BIN2_MASK;

return !!() for converting to boolean.

> +}
> +
> +static bool exynos5422_asv_parse_sg(struct exynos_asv *asv,
> +                                       unsigned int pkg_id)
> +{
> +       return ((pkg_id >> EXYNOS5422_USESG_OFFSET) & EXYNOS5422_USESG_MASK);

Unneeded () over entire statement.

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
