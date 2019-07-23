Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE05C719FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=obRPs3ft81vZXyY3RVclloCF7L/qLFMsj/FjXmTVEDM=; b=W+cUGUsu6Z0W6z
	3GN+PkWhwjMr0i9bJOSG+piasU31UvGKLUpl0ReOuU+wlXhM8Mf/e4PQQF6bmJhy9j7DhwJfK5+im
	BnYb4WQxFYb6maXBaZy05cIVZ10ld915RoqPw1iLUg7z5RQXxUUA2mkWIoJlKR13u6icpwyfR8BeO
	mjuVwIT4yQZeAdW/y+8OU5FxORqqY1gwiu8mYqI2or2FQY3x1cwPSSHqT7uYaWUlRNNo7z42VaPSg
	zoYEUs5h8uk+Rw8Rp0HQ1iKMk82vs4L8eMjUdHf2TGnum1qc7AIbaaApGu8miWG9UEm06/Q2z/E4v
	KptzZDfMSWsw6oKi5T7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvUp-0002tf-Qi; Tue, 23 Jul 2019 14:10:27 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvUd-0002sW-VC
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 14:10:17 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190723141008euoutp01add9b578e6b21d3df3b37c7764f7d7cf~0DpYtwPGj1505815058euoutp01m
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 14:10:08 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190723141008euoutp01add9b578e6b21d3df3b37c7764f7d7cf~0DpYtwPGj1505815058euoutp01m
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563891008;
 bh=W02avXXILbTyGg2Z2N31Cg/fRs0J7qEsSQtQJ/7pctA=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=O1tu+Uzh/KPuEPKYJ+Pk2y4TuyMzzodJ1g4mw2PC3E0MEo4KInBcf90SvLs3Gwp3E
 w5cPosoqRg0Hle/cpXaXHMssLIjABt0bhQ7+gr12hPYq92UWC3RAvPEm4beCn73BZL
 Ip4Ak0QKAqOfMqALrFKczqxM6/heJU5QVW8YEYk4=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190723141008eucas1p17a545327fca48e682fa28f4371320190~0DpYSUQDo1310313103eucas1p1N;
 Tue, 23 Jul 2019 14:10:08 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 0E.FA.04298.045173D5; Tue, 23
 Jul 2019 15:10:08 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190723141007eucas1p1fa55cc957020ffe648cda5502016c710~0DpXP0haR1666016660eucas1p1d;
 Tue, 23 Jul 2019 14:10:07 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190723141007eusmtrp2b9ec0d43d5ab5cb44ffc5b5289626efe~0DpXFHyIt1658216582eusmtrp2d;
 Tue, 23 Jul 2019 14:10:07 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-de-5d37154093d3
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id D8.90.04146.E35173D5; Tue, 23
 Jul 2019 15:10:06 +0100 (BST)
Received: from [106.120.51.71] (unknown [106.120.51.71]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190723141006eusmtip235edc8836a4755efcc9f123ca3e606ec~0DpWXq4X91943019430eusmtip28;
 Tue, 23 Jul 2019 14:10:06 +0000 (GMT)
Subject: Re: [PATCH v2 1/9] soc: samsung: Add exynos chipid driver support
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Message-ID: <1117f432-8adf-fbe9-f4af-f8acb755326e@samsung.com>
Date: Tue, 23 Jul 2019 16:10:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAJKOXPfLBif-=09B9jZ3qN1kWdTAcrBQZGvZ+A-MUifXK4si9Q@mail.gmail.com>
Content-Language: en-US
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPKsWRmVeSWpSXmKPExsWy7djPc7oOouaxBscus1rMP3KO1aL/8Wtm
 i/PnN7BbbHp8jdXi8q45bBafe48wWsw4v4/JYu2Ru+wWi7Z+Ybdo3XuE3eLwm3ZWi80PjrE5
 8HhsWtXJ5rF5Sb1H35ZVjB6fN8kFsERx2aSk5mSWpRbp2yVwZSxb/pit4Ih1xawHS1gbGNfo
 djFyckgImEgs37mMsYuRi0NIYAWjxMMvP5khnC+MEks3/4JyPjNKNM84xwrTsmD5FqiW5UCJ
 Z0/YIZy3jBIffvezdDFycAgLeEksbS0CaRAR0JS4/vc7K0gNs8BfJokzC5vBJrEJWElMbF/F
 CGLzCthJfHzzgxnEZhFQldi0YgcLiC0qECFx/9gGVogaQYmTM5+AxTkFAiWOzFwKZjMLiEvc
 ejKfCcKWl9j+dg7Y2RIC19gl3i2FaJAQcJF4uuE1G4QtLPHq+BZ2CFtG4v9OkGaQhnWMEn87
 XkB1b2eUWD75H1SHtcTh4xdZQV5jBvpn/S59iLCjxI0TT8DCEgJ8EjfeCkIcwScxadt0Zogw
 r0RHmxBEtZrEhmUb2GDWdu1cyTyBUWkWktdmIXlnFpJ3ZiHsXcDIsopRPLW0ODc9tdgwL7Vc
 rzgxt7g0L10vOT93EyMwWZ3+d/zTDsavl5IOMQpwMCrx8FYwmccKsSaWFVfmHmKU4GBWEuEN
 bDCLFeJNSaysSi3Kjy8qzUktPsQozcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp1cAYtnht
 rvyJrC+6K+cYSn+oN/G8NG3Kyu+39fTPPrbstlbdFlTHqaRSomB417pTa51M+rGfOuKa7X4R
 PkeizR997P8dslZefW7GPunQlKMW/w8+Fy+7XLNC9pr1zAfc15bE33jGz3Mt7mRN3t5rm3/O
 fiwRwZG44aT5ldOtTPfU5Q2v7S38GvhNiaU4I9FQi7moOBEAcIPkU1IDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAIsWRmVeSWpSXmKPExsVy+t/xe7p2ouaxBk1nLS3mHznHatH/+DWz
 xfnzG9gtNj2+xmpxedccNovPvUcYLWac38dksfbIXXaLRVu/sFu07j3CbnH4TTurxeYHx9gc
 eDw2repk89i8pN6jb8sqRo/Pm+QCWKL0bIryS0tSFTLyi0tslaINLYz0DC0t9IxMLPUMjc1j
 rYxMlfTtbFJSczLLUov07RL0MpYtf8xWcMS6YtaDJawNjGt0uxg5OSQETCQWLN/C2MXIxSEk
 sJRR4vWzKyxdjBxACRmJ4+vLIGqEJf5c62KDqHnNKDGv/x87SI2wgJfE0tYikBoRAU2J63+/
 s4LUMAv8ZZI4vuMlO0RDB5NE89SXTCBVbAJWEhPbVzGC2LwCdhIf3/xgBrFZBFQlNq3YwQJi
 iwpESJx5v4IFokZQ4uTMJ2A2p0CgxJGZS8FsZgF1iT/zLjFD2OISt57MZ4Kw5SW2v53DPIFR
 aBaS9llIWmYhaZmFpGUBI8sqRpHU0uLc9NxiQ73ixNzi0rx0veT83E2MwNjcduzn5h2MlzYG
 H2IU4GBU4uGtYDKPFWJNLCuuzD3EKMHBrCTCG9hgFivEm5JYWZValB9fVJqTWnyI0RTouYnM
 UqLJ+cC0kVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgTHqZP/C
 a/Pf3GaN7jNf6TprzqpIRd7aWT3urXIr1RKlri6zVeALmpZyK2rOjI0ytgLFISff/++SE9Z/
 9oLn5FLDSKslndd7zj+0W3lBQF6RP+hAf+f9ur7DOx9FZ5q3ri7eujlovvMap2Du+No9Kg23
 XrfyBD48VmPrxBTwkvHdkQl7UmuvNiqxFGckGmoxFxUnAgC8zZPy4wIAAA==
X-CMS-MailID: 20190723141007eucas1p1fa55cc957020ffe648cda5502016c710
X-Msg-Generator: CA
X-RootMTR: 20190718143127eucas1p13b1e2c98d270140a87f09562ef46c9a3
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143127eucas1p13b1e2c98d270140a87f09562ef46c9a3
References: <CGME20190718143127eucas1p13b1e2c98d270140a87f09562ef46c9a3@eucas1p1.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-2-s.nawrocki@samsung.com>
 <CAJKOXPfLBif-=09B9jZ3qN1kWdTAcrBQZGvZ+A-MUifXK4si9Q@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_071016_141065_502AC3FC 
X-CRM114-Status: GOOD (  23.70  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, vireshk@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Krzysztof,

On 7/23/19 2:57 PM, Krzysztof Kozlowski wrote:
> On Thu, 18 Jul 2019 at 16:31, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>>
>> From: Pankaj Dubey <pankaj.dubey@samsung.com>
>>
>> Exynos SoCs have Chipid, for identification of product IDs and SoC
>> revisions. This patch intends to provide initialization code for all
>> these functionalities, at the same time it provides some sysfs entries
>> for accessing these information to user-space.
>>
>> This driver uses existing binding for exynos-chipid.
>>
>> Changes by Bartlomiej:
>> - fixed return values on errors
>> - removed bogus kfree_const()
>> - added missing Exynos4210 EVT0 id
>> - converted code to use EXYNOS_MASK define
>> - fixed np use after of_node_put()
>> - fixed too early use of dev_info()
>> - made driver fail for unknown SoC-s
>> - added SPDX tag
>> - updated Copyrights
>>
>> Signed-off-by: Pankaj Dubey <pankaj.dubey@samsung.com>
>> [m.szyprowski: for suggestion and code snippet of product_id_to_soc_id]
>> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
>> Signed-off-by: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
>> [s.nawrocki: updated copyright date]
>> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
>> ---
>>  drivers/soc/samsung/Kconfig         |   5 ++
>>  drivers/soc/samsung/Makefile        |   2 +
>>  drivers/soc/samsung/exynos-chipid.c | 111 ++++++++++++++++++++++++++++
>>  3 files changed, 118 insertions(+)
>>  create mode 100644 drivers/soc/samsung/exynos-chipid.c
>>
>> diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
>> index 2186285fda92..2905f5262197 100644
>> --- a/drivers/soc/samsung/Kconfig
>> +++ b/drivers/soc/samsung/Kconfig
>> @@ -7,6 +7,11 @@ menuconfig SOC_SAMSUNG
>>
>>  if SOC_SAMSUNG
>>
>> +config EXYNOS_CHIPID
>> +       bool "Exynos Chipid controller driver" if COMPILE_TEST
>> +       depends on ARCH_EXYNOS || COMPILE_TEST
>> +       select SOC_BUS
>> +
>>  config EXYNOS_PMU
>>         bool "Exynos PMU controller driver" if COMPILE_TEST
>>         depends on ARCH_EXYNOS || ((ARM || ARM64) && COMPILE_TEST)
>> diff --git a/drivers/soc/samsung/Makefile b/drivers/soc/samsung/Makefile
>> index 29f294baac6e..3b6a8797416c 100644
>> --- a/drivers/soc/samsung/Makefile
>> +++ b/drivers/soc/samsung/Makefile
>> @@ -1,4 +1,6 @@
>>  # SPDX-License-Identifier: GPL-2.0
>> +
>> +obj-$(CONFIG_EXYNOS_CHIPID)    += exynos-chipid.o
>>  obj-$(CONFIG_EXYNOS_PMU)       += exynos-pmu.o
>>
>>  obj-$(CONFIG_EXYNOS_PMU_ARM_DRIVERS)   += exynos3250-pmu.o exynos4-pmu.o \
>> diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
>> new file mode 100644
>> index 000000000000..78b123ee60c0
>> --- /dev/null
>> +++ b/drivers/soc/samsung/exynos-chipid.c
>> @@ -0,0 +1,111 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +/*
>> + * Copyright (c) 2019 Samsung Electronics Co., Ltd.
>> + *           http://www.samsung.com/
>> + *
>> + * EXYNOS - CHIP ID support
>> + * Author: Pankaj Dubey <pankaj.dubey@samsung.com>
>> + * Author: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
>> + */
>> +
>> +#include <linux/io.h>
>> +#include <linux/of.h>
>> +#include <linux/of_address.h>
>> +#include <linux/of_platform.h>
>> +#include <linux/platform_device.h>
> 
> Any changes here from my previous comments?
> 
> I have also one more new thought later.
> 
>> +#include <linux/slab.h>
>> +#include <linux/sys_soc.h>
>> +
>> +#define EXYNOS_SUBREV_MASK     (0xF << 4)
>> +#define EXYNOS_MAINREV_MASK    (0xF << 0)
>> +#define EXYNOS_REV_MASK                (EXYNOS_SUBREV_MASK | EXYNOS_MAINREV_MASK)
>> +#define EXYNOS_MASK            0xFFFFF000
>> +
>> +static const struct exynos_soc_id {
>> +       const char *name;
>> +       unsigned int id;
>> +} soc_ids[] = {
>> +       { "EXYNOS3250", 0xE3472000 },
>> +       { "EXYNOS4210", 0x43200000 },   /* EVT0 revision */
>> +       { "EXYNOS4210", 0x43210000 },
>> +       { "EXYNOS4212", 0x43220000 },
>> +       { "EXYNOS4412", 0xE4412000 },
>> +       { "EXYNOS5250", 0x43520000 },
>> +       { "EXYNOS5260", 0xE5260000 },
>> +       { "EXYNOS5410", 0xE5410000 },
>> +       { "EXYNOS5420", 0xE5420000 },
>> +       { "EXYNOS5440", 0xE5440000 },
>> +       { "EXYNOS5800", 0xE5422000 },
>> +       { "EXYNOS7420", 0xE7420000 },
>> +       { "EXYNOS5433", 0xE5433000 },
>> +};
>> +
>> +static const char * __init product_id_to_soc_id(unsigned int product_id)
>> +{
>> +       int i;
>> +
>> +       for (i = 0; i < ARRAY_SIZE(soc_ids); i++)
>> +               if ((product_id & EXYNOS_MASK) == soc_ids[i].id)
>> +                       return soc_ids[i].name;
>> +       return NULL;
>> +}
>> +
>> +int __init exynos_chipid_early_init(void)
>> +{
>> +       struct soc_device_attribute *soc_dev_attr;
>> +       void __iomem *exynos_chipid_base;
>> +       struct soc_device *soc_dev;
>> +       struct device_node *root;
>> +       struct device_node *np;
>> +       u32 product_id;
>> +       u32 revision;
>> +
>> +       /* look up for chipid node */
>> +       np = of_find_compatible_node(NULL, NULL, "samsung,exynos4210-chipid");
>> +       if (!np)
>> +               return -ENODEV;
>> +
>> +       exynos_chipid_base = of_iomap(np, 0);
>> +       of_node_put(np);
>> +
>> +       if (!exynos_chipid_base) {
>> +               pr_err("Failed to map SoC chipid\n");
>> +               return -ENXIO;
>> +       }
>> +
>> +       product_id = readl_relaxed(exynos_chipid_base);
>> +       revision = product_id & EXYNOS_REV_MASK;
>> +       iounmap(exynos_chipid_base);
>> +
>> +       soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
>> +       if (!soc_dev_attr)
>> +               return -ENOMEM;
>> +
>> +       soc_dev_attr->family = "Samsung Exynos";
>> +
>> +       root = of_find_node_by_path("/");
>> +       of_property_read_string(root, "model", &soc_dev_attr->machine);
>> +       of_node_put(root);
>> +
>> +       soc_dev_attr->revision = kasprintf(GFP_KERNEL, "%x", revision);
>> +       soc_dev_attr->soc_id = product_id_to_soc_id(product_id);
>> +       if (!soc_dev_attr->soc_id) {
>> +               pr_err("Unknown SoC\n");
> 
> In case of running old kernel on unknown SoC (new revision of existing
> one or older design not longer supported like 4415), the device will
> not bind. This was added by Bartlomiej. Why? I imagine that soc driver
> could be still matched and just report "Unknown". I am not sure if
> this changes anything, though.

I was thinking that we shouldn't be pretending that we know how to
handle unsupported SoCs, i.e. that we know how to correctly read its
product_id and revision.

Best regards,
--
Bartlomiej Zolnierkiewicz
Samsung R&D Institute Poland
Samsung Electronics

> Best regards,
> Krzysztof
> 
> 
>> +               return -ENODEV;
>> +       }
>> +
>> +       /* please note that the actual registration will be deferred */
>> +       soc_dev = soc_device_register(soc_dev_attr);
>> +       if (IS_ERR(soc_dev)) {
>> +               kfree(soc_dev_attr->revision);
>> +               kfree(soc_dev_attr);
>> +               return PTR_ERR(soc_dev);
>> +       }
>> +
>> +       /* it is too early to use dev_info() here (soc_dev is NULL) */
>> +       pr_info("soc soc0: Exynos: CPU[%s] PRO_ID[0x%x] REV[0x%x] Detected\n",
>> +               soc_dev_attr->soc_id, product_id, revision);
>> +
>> +       return 0;
>> +}
>> +early_initcall(exynos_chipid_early_init);
>> --
>> 2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
