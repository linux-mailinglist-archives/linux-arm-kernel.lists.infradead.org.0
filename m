Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0A535AF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8MZwJFp5y5hTa1W4cYyrRQ4QHEyB9Ey8/HSlGwN8sm4=; b=eh3Bh94DKspSz0
	tReOHsaDJ36eTe7E9XfktLzTjz4Lu88yK3v58TmVWc4DeE37Eu5V26SSA/5IPBJmr4U5yGkTV0d0S
	63PSCySQwQZFZssOit4ZIsfwko31MUpyew7FkHLSnrspv1u7tw2xyQYQSwzl06ARPSAe+QNxTPlwo
	o/kviw0huAnA/mXACLlt1UWcGB4TUSaYDdAJj7MT0oEyaMtk6qlR71dV93F1+ZKF6Q0e7qyw8BS7Q
	ZRtWagUQqt22d85/JrvG5vxGM8rv6ltYr14SXGKd2mgZ9baTQQ1jJn3oZJEXDgNBqu6uuYKYKb3pb
	FvN/2q91oYvFjpgeS2YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTto-000394-5o; Wed, 05 Jun 2019 11:16:08 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTtg-00038X-SK; Wed, 05 Jun 2019 11:16:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1559733327;
 bh=WidPIT0SZNPjYuj9HOPHJDftSFPZQwHtj3xUZajHVNk=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Qz47mOL8xxn38DCcmJGvF4A8lrh36vJRDdEmnjLSwHoWa1QldxCfy9msY3BOJD0YH
 CP70DVdJNAio27WvbzHmbN7QM+99HBLrQTnZ7Jwe5ykrEJpSewngTh9VOyFbKN5Se+
 sHSJ98Ap5grwrFNMTILLCHitWe2BWl1KbagxfxAk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.162] ([37.4.249.160]) by mail.gmx.com (mrgmx001
 [212.227.17.190]) with ESMTPSA (Nemesis) id 0LdYdG-1gplU431BC-00ijmr; Wed, 05
 Jun 2019 13:15:26 +0200
Subject: Re: [PATCH 4/4] cpufreq: add driver for Raspbery Pi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20190604173223.4229-1-nsaenzjulienne@suse.de>
 <20190604173223.4229-5-nsaenzjulienne@suse.de>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <e59ad4c7-504a-a16e-a678-987ab95ed6ea@gmx.net>
Date: Wed, 5 Jun 2019 13:15:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190604173223.4229-5-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:TzC75kyyXW/u8yN8BHby1dDco1AlWLyk8HZ+idVHf7/mLW7Uwhu
 tteNjouk+ic2IyzNdH+U/TkCMeRMJa5z6iDBWnlQk5mgbqRya48viFSJXShkkwWblycVE/y
 /+67QshbtOjqFeFrCKb3ZHuKXOrN0yZV3Ra83HNret15m2y4BTUx6sdounOFh6r2LscFSiU
 2XVk4KAmg2q4IF2wdRQww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:1yl8hMCQa1o=:MLciwv6n0EDsG7GZ7jQ982
 DXWJN4m2nAO9URbT+fDZJsff+PhGnNG9KIJfhikVlOStgr2+TjYyhCt3nwvHIpF23HJ1ry34Q
 8JdJ3v72mFI1nY0zESPm1///FUkPo2Aqh7TVWJZITi1N5YC6cxk2DZuK3sLws/YW3ATxzZqf8
 u+0ANdrZ+CbMP2lz9asDnIj09qrJ2xAR6sJjtMvAFlKDRpE5mJrvmC7jlk4Onc7YB/X5nynGZ
 bhFt/BZ24LrjYurL3NWiLOWy3k5OI8RWvejL+SxTI10nRNZBlkqeB0IkRNPoV4ibwCn9h34Iq
 bXb6DF8BUU0wOinZgn5w92tPjk6/pnd4UMSYV3hA0ZM6zx+DhH83fgqebDhA5X7WrS40zR379
 z22Z1/2qE/SWCxebEXdY3qqhmlRd80AdiYeHbsXt8N270O/hfVk4Gp5H0RbzY6Thtr2/JAR9o
 /PHrFBDnATskWhaaJpZVd9b/hD1sIfylU1wbg5sCaHfbS30AKrFWPOaLPo7g2oBPDjdiBQfr5
 LO14yohywerHaknbIjcW7B3zT4DWDw25A/S1RP/B8hza94uVfS9uQd3NxZw/lNkJLwWFOGhsB
 NyE/cPgaindsUI0MERYcAzImfJoJUS7HYZoakAKo2NKaRPRQOX/zsdXtsmMOjHdXUqbpivVgq
 Xgh60iKlVOIBoVxpCvSWQoRaVEdc5vaW9NexlWH+JPrEO5ObzGldX1UUEW74VE+Ehgz3b+9f4
 XutvknOpLY87y7DC7g8EWpGIHIzmI63gzZ28eTYW14CB3QsV8u0EAEXVLG7JEVwpkcLsSA5zR
 WKXncv4vEymSfH8paY8cBvzhYI+7H0en/P90wkevqu21DMl2zK4I2S7dH0wv5HnjGd4uk6dpy
 aBr5sWQlU+geennC5OSbVSLT5FARuwATLh9TYpGru91lBztbCfGsat7EZFfgq6ZMK991rRwg2
 YsQbtiQvLSbdj/otsSYm4SoiFvvf65WAstV5TuzA4tnjmDfod0O8alKbwxO5GkFrbdm7w1Ax9
 2A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_041601_209884_50532BB1 
X-CRM114-Status: GOOD (  21.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: f.fainelli@gmail.com, linux-pm@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, ptesarik@suse.com, linux-kernel@vger.kernel.org,
 mbrugger@suse.de, eric@anholt.net, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

Am 04.06.19 um 19:32 schrieb Nicolas Saenz Julienne:
> Raspberry Pi's firmware offers and interface though which update it's
> performance requirements. It allows us to request for specific runtime
> frequencies, which the firmware might or might not respect, depending on
> the firmware configuration and thermals.
>
> As the maximum and minimum frequencies are configurable in the firmware
> there is no way to know in advance their values. So the Raspberry Pi
> cpufreq driver queries them, builds an opp frequency table to then
> launch cpufreq-dt.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>
> Changes since RFC:
>   - Alphabetically ordered relevant stuff
>   - Updated Kconfig to select firmware interface
>   - Correctly unref clk_dev after use
>   - Remove all opps on failure
>   - Remove use of dev_pm_opp_set_sharing_cpus()
>
>  drivers/cpufreq/Kconfig.arm           |  8 +++
>  drivers/cpufreq/Makefile              |  1 +
>  drivers/cpufreq/raspberrypi-cpufreq.c | 84 +++++++++++++++++++++++++++
>  3 files changed, 93 insertions(+)
>  create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c
>
> diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> index f8129edc145e..556d432cc826 100644
> --- a/drivers/cpufreq/Kconfig.arm
> +++ b/drivers/cpufreq/Kconfig.arm
> @@ -133,6 +133,14 @@ config ARM_QCOM_CPUFREQ_HW
>  	  The driver implements the cpufreq interface for this HW engine.
>  	  Say Y if you want to support CPUFreq HW.
>
> +config ARM_RASPBERRYPI_CPUFREQ
> +	tristate "Raspberry Pi cpufreq support"
> +	select RASPBERRYPI_FIRMWARE
> +	help
> +	  This adds the CPUFreq driver for Raspberry Pi
For the next version please add one patch which enables the driver and
its dependencies for bcm2835_defconfig and multi_v7_defconfig and
another patch to build as a module for arm64/defconfig.
> +
> +	  If in doubt, say N.
> +
>  config ARM_S3C_CPUFREQ
>  	bool
>  	help
> diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> index 689b26c6f949..121c1acb66c0 100644
> --- a/drivers/cpufreq/Makefile
> +++ b/drivers/cpufreq/Makefile
> @@ -64,6 +64,7 @@ obj-$(CONFIG_ARM_PXA2xx_CPUFREQ)	+= pxa2xx-cpufreq.o
>  obj-$(CONFIG_PXA3xx)			+= pxa3xx-cpufreq.o
>  obj-$(CONFIG_ARM_QCOM_CPUFREQ_HW)	+= qcom-cpufreq-hw.o
>  obj-$(CONFIG_ARM_QCOM_CPUFREQ_KRYO)	+= qcom-cpufreq-kryo.o
> +obj-$(CONFIG_ARM_RASPBERRYPI_CPUFREQ) 	+= raspberrypi-cpufreq.o
>  obj-$(CONFIG_ARM_S3C2410_CPUFREQ)	+= s3c2410-cpufreq.o
>  obj-$(CONFIG_ARM_S3C2412_CPUFREQ)	+= s3c2412-cpufreq.o
>  obj-$(CONFIG_ARM_S3C2416_CPUFREQ)	+= s3c2416-cpufreq.o
> diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c b/drivers/cpufreq/raspberrypi-cpufreq.c
> new file mode 100644
> index 000000000000..2b3a195a9d37
> --- /dev/null
> +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> @@ -0,0 +1,84 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Raspberry Pi cpufreq driver
> + *
> + * Copyright (C) 2019, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/cpu.h>
> +#include <linux/cpufreq.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
> +
> +static const struct of_device_id machines[] __initconst = {
> +	{ .compatible = "raspberrypi,3-model-b-plus" },
> +	{ .compatible = "raspberrypi,3-model-b" },
> +	{ .compatible = "raspberrypi,2-model-b" },
> +	{ /* sentinel */ }
> +};
> +
> +static int __init raspberrypi_cpufreq_driver_init(void)
> +{
> +	struct platform_device *pdev;
> +	struct device *cpu_dev;
> +	unsigned long min, max;
> +	unsigned long rate;
> +	struct clk *clk;
> +	int ret;
> +
> +	if (!of_match_node(machines, of_root))
> +		return -ENODEV;
> +
> +	cpu_dev = get_cpu_device(0);
> +	if (!cpu_dev) {
> +		pr_err("Cannot get CPU for cpufreq driver\n");
> +		return -ENODEV;
> +	}
> +
> +	clk = clk_get(cpu_dev, 0);

Please use NULL in this context

Thanks



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
