Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9FA386162
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uUOxkYbAy3msY7JjWkNorOp7zGqy8E+1F4eAevUoNc=; b=PN5JjX2eItBG0w
	1J2LJP0O1hTBVntp12ffKYxUOQQM89HaUFlwbe9R/E6oa+FKof66urXUJSoA20xryaMA7dc28AZis
	qURwC8UCbfrZjhurnyi8zm/+v0I0e/smBWE9b0mvml9nitx9Dh41mf63EgzWgPIT5JLLFNUKWk/IK
	HqGYKjLt9rJTFDnic0dBfeIDiSlZhl1PPrCLqLxyUiIi0QpeqPETbJdDsp+3/+DjFF3zGRdpY/9X7
	DCFCe/b2m3Eh5sLsaqia1iKwnmIFati+9kyi0DIiVaIQq9ng/eWPFCEThm1hztE8tF6ZQ0sVkyOi3
	bhY8IkNdQuQlASdF1Elg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhD4-0002vc-8E; Thu, 08 Aug 2019 12:07:58 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhCo-0002qf-23
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:07:44 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808120739euoutp020956619b1be1487cea1ee35e220cfe67~48TA6Kbmg2812928129euoutp02S
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 12:07:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190808120739euoutp020956619b1be1487cea1ee35e220cfe67~48TA6Kbmg2812928129euoutp02S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565266059;
 bh=b2vM6seEQvY8S5rSFZHWUw+a7+osTcPyJ8Dks58KBzI=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=Cxx759Tw7n45TeSzf3odeEgNOpflj/uTO8zo3f2SUPoc6pGxcsfQSPLXYsjmP/cQC
 qRVyQ2VSi1VgXJvVQQ+D2tZOMyGWDwBrWNhDrrmE6nbW0WBj3TI/Cn+we+xTaYdne+
 yuVh7mj78kRYzBVfl4/6GtYY5QbZ+hkR5gHqjIeM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190808120739eucas1p2cf76b9016d2821a4c7c31e63f99190c7~48TAe-6q72248222482eucas1p2D;
 Thu,  8 Aug 2019 12:07:39 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 77.36.04469.B801C4D5; Thu,  8
 Aug 2019 13:07:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190808120738eucas1p2bf9a90f4eedc8149cf364295e695b13f~48S-vcoz33079630796eucas1p2r;
 Thu,  8 Aug 2019 12:07:38 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190808120738eusmtrp141dd8b0525f51915707da2d57e02e420~48S-g9Psy2071120711eusmtrp1u;
 Thu,  8 Aug 2019 12:07:38 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-84-5d4c108b6fd8
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 21.47.04166.A801C4D5; Thu,  8
 Aug 2019 13:07:38 +0100 (BST)
Received: from [106.120.51.75] (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190808120737eusmtip12097f57c0dafc532bbc2b7b5f7a83d28~48S__1HZ50236302363eusmtip1e;
 Thu,  8 Aug 2019 12:07:37 +0000 (GMT)
Subject: Re: [PATCH v2 3/9] soc: samsung: Add Exynos Adaptive Supply Voltage
 driver
To: Krzysztof Kozlowski <krzk@kernel.org>
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Message-ID: <a56fe2d8-1f26-b462-1564-f23902f7dbb5@samsung.com>
Date: Thu, 8 Aug 2019 14:07:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAJKOXPeOfDHjqSotxVwVuy+6r9X3Q8ZXLit1_=gGd7bOwkHupA@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLKsWRmVeSWpSXmKPExsWy7djP87rdAj6xBjfu8FhsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdYtPULu0Xr3iPsFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInisklJzcksSy3St0vgyvj29wtTwQedilufKhoYXyl1
 MXJySAiYSLy+NYWxi5GLQ0hgBaPEhwnvmSCcL4wSS270sYBUCQl8ZpSYcJcFpmPR8w3MEEXL
 GSX6ph5gg3DeMkq8v/maCaRKWCBUYs20TYwgtoiApsT1v99ZQWxmgcXMEp/mmoLYbAKGEr1H
 +8BqeAXsJG4dvMwOYrMIqEicfrIHLC4qECHx6cFhVogaQYmTM5+AXcEpECjxcnkbC8RMcYmm
 Lyuh5stLbH87B+w6CYFL7BKHf25mgjjbReLK0gdQtrDEq+Nb2CFsGYnTk3tYIBqaGSV6dt9m
 h3AmMErcP76AEaLKWuLw8YtAKziAVmhKrN+lDxF2lDjW/o8JJCwhwCdx460gxBF8EpO2TWeG
 CPNKdLQJQVSrSPxeNR3qBCmJ7if/WSYwKs1C8tosJO/MQvLOLIS9CxhZVjGKp5YW56anFhvm
 pZbrFSfmFpfmpesl5+duYgQmqtP/jn/awfj1UtIhRgEORiUe3oIT3rFCrIllxZW5hxglOJiV
 RHjvlXnGCvGmJFZWpRblxxeV5qQWH2KU5mBREuetZngQLSSQnliSmp2aWpBaBJNl4uCUamBk
 qTyT7G6noNm+ZKEuT+OGqI5FsRwnXTlM97+0fi+Vk3A9y0nmwMzoMwFx2jsMl0YfmVH5JFLp
 s7F0DFeF1vTz7lq/27gKb5kt+s8xXfN/9Z7I59WX2ExX3vRPv7hfacvvNd/VchaW75t4UD1b
 a6XckxMPvY8fl85nvC9n1My/7E5/spBHxh8lluKMREMt5qLiRAArMxR/UAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrPIsWRmVeSWpSXmKPExsVy+t/xu7pdAj6xBnMXi1tsnLGe1WL+kXOs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdYtPULu0Xr3iPsFpsfHGNz
 4PHYtKqTzWPzknqPvi2rGD0+b5ILYInSsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaP
 tTIyVdK3s0lJzcksSy3St0vQy/j29wtTwQedilufKhoYXyl1MXJySAiYSCx6voG5i5GLQ0hg
 KaPE0lkfmboYOYASUhLzW6BqhCX+XOtiA7GFBF4zSmzcUQdiCwuESqyZtokRxBYR0JS4/vc7
 K8gcZoHFzBIX1s9nhxjawSTx+M1jVpAqNgFDid6jfWAdvAJ2ErcOXmYHsVkEVCROP9kDFhcV
 iJA4vGMWVI2gxMmZT1hAbE6BQImXy9vAbGYBdYk/8y4xQ9jiEk1fVrJC2PIS29/OYZ7AKDQL
 SfssJC2zkLTMQtKygJFlFaNIamlxbnpusaFecWJucWleul5yfu4mRmBkbjv2c/MOxksbgw8x
 CnAwKvHwFpzwjhViTSwrrsw9xCjBwawkwnuvzDNWiDclsbIqtSg/vqg0J7X4EKMp0HMTmaVE
 k/OBSSOvJN7Q1NDcwtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVAOj8duyeWdK
 +2MEZvbOKN2+uMxxxTbdqzuDd+f7WGV5dCkZpX2YssjhXuZ7ESGdZds6FolMvu0uOWO32hVP
 RvNuBvOU7Zwb+v2UblckTV5ZdnxRoLTvLaOIiJhLt+6u5xVc0NPHO//Q1m8i5YwP8rYv+ih4
 aceO3b2NkfIh7y2ivKWTGVd+miWhxFKckWioxVxUnAgANsiWAuICAAA=
X-CMS-MailID: 20190808120738eucas1p2bf9a90f4eedc8149cf364295e695b13f
X-Msg-Generator: CA
X-RootMTR: 20190718143130eucas1p26f2058f47eb2f4020e1ddbf1619d1ac8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190718143130eucas1p26f2058f47eb2f4020e1ddbf1619d1ac8
References: <CGME20190718143130eucas1p26f2058f47eb2f4020e1ddbf1619d1ac8@eucas1p2.samsung.com>
 <20190718143044.25066-1-s.nawrocki@samsung.com>
 <20190718143044.25066-4-s.nawrocki@samsung.com>
 <CAJKOXPeOfDHjqSotxVwVuy+6r9X3Q8ZXLit1_=gGd7bOwkHupA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_050742_565203_F36BF018 
X-CRM114-Status: GOOD (  23.07  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 =?UTF-8?Q?Bart=c5=82omiej_=c5=bbo=c5=82nierkiewicz?=
 <b.zolnierkie@samsung.com>, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, vireshk@kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/23/19 15:38, Krzysztof Kozlowski wrote:
> On Thu, 18 Jul 2019 at 16:31, Sylwester Nawrocki <s.nawrocki@samsung.com> wrote:
>>
>> The Adaptive Supply Voltage (ASV) driver adjusts CPU cluster operating
>> points depending on exact revision of an SoC retrieved from the CHIPID
>> block or the OTP memory.  This allows for some power saving as for some
>> CPU clock frequencies we can lower CPU cluster supply voltage comparing
>> to safe values common to the all chip revisions.
>>
>> This patch adds support for Exynos5422/5800 SoC, it is partially based
>> on code from https://github.com/hardkernel/linux repository,
>> branch odroidxu4-4.14.y, files: arch/arm/mach-exynos/exynos5422-asv.[ch].
>>
>> Tested on Odroid XU3, XU4, XU3 Lite.
>>
>> Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
>> ---
>> Changes since v1 (RFC):
>>  - removed code for parsing the ASV OPP tables from DT, the ASV OPP tables
>>    moved to the driver;
>>  - converted to use the regmap API;
>>  - converted to normal platform driver.
>> ---
>>  drivers/soc/samsung/Kconfig          |  11 +
>>  drivers/soc/samsung/Makefile         |   3 +
>>  drivers/soc/samsung/exynos-asv.c     | 185 ++++++++++
>>  drivers/soc/samsung/exynos-asv.h     |  82 +++++
>>  drivers/soc/samsung/exynos5422-asv.c | 499 +++++++++++++++++++++++++++
>>  drivers/soc/samsung/exynos5422-asv.h |  25 ++
>>  6 files changed, 805 insertions(+)
>>  create mode 100644 drivers/soc/samsung/exynos-asv.c
>>  create mode 100644 drivers/soc/samsung/exynos-asv.h
>>  create mode 100644 drivers/soc/samsung/exynos5422-asv.c
>>  create mode 100644 drivers/soc/samsung/exynos5422-asv.h
>>
>> diff --git a/drivers/soc/samsung/Kconfig b/drivers/soc/samsung/Kconfig
>> index 2905f5262197..539cd95dd176 100644
>> --- a/drivers/soc/samsung/Kconfig
>> +++ b/drivers/soc/samsung/Kconfig
>> @@ -7,6 +7,17 @@ menuconfig SOC_SAMSUNG
>>
>>  if SOC_SAMSUNG
>>
>> +config EXYNOS_ASV
>> +       bool "Exynos Adaptive Supply Voltage support" if COMPILE_TEST
>> +       depends on ARCH_EXYNOS || COMPILE_TEST
>> +       depends on EXYNOS_CHIPID
> 
> (ARCH_EXYNOS && EXYNOS_CHIPID) || COMPILE_TEST

OK
>> +       select EXYNOS_ASV_ARM if ARM && ARCH_EXYNOS
>> +
>> +# There is no need to enable these drivers for ARMv8
>> +config EXYNOS_ASV_ARM
>> +       bool "Exynos ASV ARMv7-specific driver extensions" if COMPILE_TEST
>> +       depends on EXYNOS_ASV

>> diff --git a/drivers/soc/samsung/exynos-asv.c b/drivers/soc/samsung/exynos-asv.c
>> new file mode 100644
>> index 000000000000..b1a7e0ba8870
>> --- /dev/null
>> +++ b/drivers/soc/samsung/exynos-asv.c
>> @@ -0,0 +1,185 @@

>> +static int exynos_asv_probe(struct platform_device *pdev)
>> +{
>> +       int (*probe_func)(struct exynos_asv *asv);
>> +       struct exynos_asv *asv;
>> +       struct device *cpu_dev;
>> +       u32 product_id = 0;
>> +       int ret, i;
>> +
>> +       cpu_dev = get_cpu_device(0);
>> +       ret = dev_pm_opp_get_opp_count(cpu_dev);
>> +       if (ret < 0)
>> +               return -EPROBE_DEFER;
>> +
>> +       asv = kcalloc(1, sizeof(*asv), GFP_KERNEL);
>> +       if (!asv)
>> +               return -ENOMEM;
>> +
>> +       asv->chipid_regmap = syscon_node_to_regmap(pdev->dev.of_node);
>> +       if (IS_ERR(asv->chipid_regmap)) {
>> +               dev_err(&pdev->dev, "Could not find syscon regmap\n");
> 
> Here and in following error-paths - kfree().

Thanks, I will fix that.

>> +               return PTR_ERR(asv->chipid_regmap);
>> +       }
>> +
>> +       regmap_read(asv->chipid_regmap, EXYNOS_CHIPID_REG_PRO_ID, &product_id);

>> +module_platform_driver(exynos_asv_driver);
>> diff --git a/drivers/soc/samsung/exynos-asv.h b/drivers/soc/samsung/exynos-asv.h
>> new file mode 100644
>> index 000000000000..d0a5d603093d
>> --- /dev/null
>> +++ b/drivers/soc/samsung/exynos-asv.h
>> @@ -0,0 +1,82 @@

>> +#ifndef _EXYNOS_ASV_H
>> +#define _EXYNOS_ASV_H
> 
> Here and in other header use prefix:
> __LINUX_SOC_
> (just like the existing exynos-pmu.h)

OK, I will change that.

>> +struct exynos_asv_subsys {
>> +       struct exynos_asv *asv;
>> +       char *cpu_dt_compat;
> 
> const char *

OK
>> +       int id;

>> +#endif /* _EXYNOS_ASV_H */
>> diff --git a/drivers/soc/samsung/exynos5422-asv.c b/drivers/soc/samsung/exynos5422-asv.c
>> new file mode 100644
>> index 000000000000..5fd673a6a733
>> --- /dev/null
>> +++ b/drivers/soc/samsung/exynos5422-asv.c
>> @@ -0,0 +1,499 @@

>> +#include <linux/bitrev.h>
>> +#include <linux/device.h>
>> +#include <linux/errno.h>
>> +#include <linux/init.h>
> 
> Looks unused.

Indeed, I will drop it.

>> +static unsigned int exynos5422_asv_parse_table(struct exynos_asv *asv,
>> +                                     unsigned int pkg_id)
>> +{
>> +       return (pkg_id >> EXYNOS5422_TABLE_OFFSET) & EXYNOS5422_TABLE_MASK;
>> +}
>> +
>> +static bool exynos5422_asv_parse_bin2(struct exynos_asv *asv,
>> +                                    unsigned int pkg_id)
>> +{
>> +       return (pkg_id >> EXYNOS5422_BIN2_OFFSET) & EXYNOS5422_BIN2_MASK;
> 
> return !!() for converting to boolean.

I'm not convinced it is needed, the return type of the function is bool
and value of the expression will be implicitly converted to that type.
Is there any compiler warning related to that?

>> +}
>> +
>> +static bool exynos5422_asv_parse_sg(struct exynos_asv *asv,
>> +                                       unsigned int pkg_id)
>> +{
>> +       return ((pkg_id >> EXYNOS5422_USESG_OFFSET) & EXYNOS5422_USESG_MASK);
> 
> Unneeded () over entire statement.

Will drop it.

-- 
Regards,
Sylwester

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
