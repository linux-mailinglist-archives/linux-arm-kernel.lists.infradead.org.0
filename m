Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DCE233C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 14:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PfWZjMXbqWfyp2lYMb2N3KLxgO9yDQVnN8PyVP9FJhI=; b=XJy90LCijHzOUL
	PbqbXT0cbhOAN02uRa9VJJoeBjh1RTRhQJiC5OlEe6p3+GVPew/bZ2zAbE3wjP8UtkRvrGA1BuQJI
	FRXvMZhbicMtplfG+azbx+FaegsCjmg5PXcw/14IfN7ri0lilLkr8KfuGoUbkUufSwUBOciG5GiLk
	jKQ1dGiIL3aHclbfJGES2mutKzZHPyLdWOJr2M3jVMM0BsE3CDE+LBM4Vt5CuT2pc2ZViigPa/6lZ
	IGijO7/fy09CK4yt7YDySaTayVQHSxP32H/CWRaeUe+Th29E3SEeKSvQVY9sW8yivSVQ1Z69nu6ex
	dHyaVggroVDES074oD4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hShRh-0007gt-Tz; Mon, 20 May 2019 12:31:13 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hShRa-0007g5-2F; Mon, 20 May 2019 12:31:07 +0000
Received: from [192.168.178.167] ([109.104.33.162]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MVMuN-1h3E3m0KCl-00SRFw; Mon, 20 May 2019 14:30:53 +0200
Subject: Re: [RFC v2 5/5] cpufreq: add driver for Raspbery Pi
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Viresh Kumar <viresh.kumar@linaro.org>
References: <20190520104708.11980-1-nsaenzjulienne@suse.de>
 <20190520104708.11980-6-nsaenzjulienne@suse.de>
From: Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <b23de4a1-e156-e458-d294-4206d87aa394@i2se.com>
Date: Mon, 20 May 2019 14:30:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190520104708.11980-6-nsaenzjulienne@suse.de>
Content-Language: en-US
X-Provags-ID: V03:K1:8EPy0TEJACtLRM++yjvBbmbVCw2iG8lr+b2JXdcGP7gvIcA4EEF
 56n5p7w6xmP6ibp3AyK5HtXHzKAv9Bq8BsS2bg2iccrymCgCiJAjQ4TkTr7vGZecgfh5pVx
 hFT+McXrzs0zuDaAwa4gcZC2IHmf/QjzYzdSV0nE1ZKWOFCxpfSuORzsoNbnkSWwGgwXnAk
 9AUB7HqT/Rv21BjVmbEKA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:oYIxwR3Gy8w=:WYzhHcJaMcyZ+BIqULb+5H
 ci6BYAOtjHdDZOMuqgG/ejVx61x9vJMvtKwcYw3PhVtnxd8ZA9wBsdxOkUlpPK27+z915WKKa
 3eeBGNa82w2KtxWzBhfLqeP+xdcmQjau0I+c2cWaqVL+wBntXBwbzM8rfvLfQdXv3FUYsH9j8
 eYr26BuKzVpPA/pYl9KbZVC47cfubAtziM5tnxwSwPRlWrgHP39RrxVyuB2ecxHH49Ge/Rt6K
 dJA7T/91PuYfMtxRzz+5gZ3aZf6nnpT9NhQbbtCAhtg6YRGx6SL/H36Tdt2emsnD1GlhXlcij
 OQFyYDLP6lJHTb8iStv6FAzGDTHdNxKETDeTsG9Pmdih9bc29n8mhFYvsIsA/9YsmsffEN4jT
 SHdd0HPsTrTW4tCcgfbVgTMq+Phfkl+SiAIA0kmNOthusgaDyeyKwvq67+tJpzaxyAmg6ZQIV
 YfkNYqPQ0hFY6DI1BE54Hpu27Mlh+xltQQdXzzB5yjljibFYwuJNYV3OcR/hV34EOdrlrV6rF
 wPliF0seMgDjg0NVDBwLfDMmSmPCNMzFh+heKtdH0eeVbq3Riw5LzNbYtmrP0WdeP3/yecUtr
 1p5nwjAdlxXQaFI/0Q/TYr8wCFrCHHze2e7j1Afeiwmbk9Kg6TkF/VuJuMlAB+/yr94rbDOGe
 0mgpn/IN1+gnN3rGeWR/P/lM5tdgqnXu8jNWrK2ta1i5fmzql4gRS8odH5lc/3GQ6fpsfuQGc
 CCcxFE/fS+qf0Ojx1BpdZ6fT2n7XQT/vgR/Z9EJx0JWHtmNpQ7Ln9jK/xtg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_053106_409033_54D0E16E 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.131 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20.05.19 12:47, Nicolas Saenz Julienne wrote:
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
>  drivers/cpufreq/Kconfig.arm           |  8 +++
>  drivers/cpufreq/Makefile              |  1 +
>  drivers/cpufreq/raspberrypi-cpufreq.c | 83 +++++++++++++++++++++++++++
>  3 files changed, 92 insertions(+)
>  create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c
>
> diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> index 179a1d302f48..f6eba7ae50d0 100644
> --- a/drivers/cpufreq/Kconfig.arm
> +++ b/drivers/cpufreq/Kconfig.arm
> @@ -308,3 +308,11 @@ config ARM_PXA2xx_CPUFREQ
>  	  This add the CPUFreq driver support for Intel PXA2xx SOCs.
>  
>  	  If in doubt, say N.
> +
> +config ARM_RASPBERRYPI_CPUFREQ
> +	tristate "Raspberry Pi cpufreq support"
> +	depends on RASPBERRYPI_FIRMWARE || COMPILE_TEST

The driver doesn't really require the firmware driver to compile, how about:

select RASPBERRYPI_FIRMWARE

> +	help
> +	  This adds the CPUFreq driver for Raspberry Pi
> +
> +	  If in doubt, say N.
> diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> index 689b26c6f949..02678e9b2ff5 100644
> --- a/drivers/cpufreq/Makefile
> +++ b/drivers/cpufreq/Makefile
> @@ -84,6 +84,7 @@ obj-$(CONFIG_ARM_TEGRA124_CPUFREQ)	+= tegra124-cpufreq.o
>  obj-$(CONFIG_ARM_TEGRA186_CPUFREQ)	+= tegra186-cpufreq.o
>  obj-$(CONFIG_ARM_TI_CPUFREQ)		+= ti-cpufreq.o
>  obj-$(CONFIG_ARM_VEXPRESS_SPC_CPUFREQ)	+= vexpress-spc-cpufreq.o
> +obj-$(CONFIG_ARM_RASPBERRYPI_CPUFREQ) 	+= raspberrypi-cpufreq.o
>  
>  
>  ##################################################################################
> diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c b/drivers/cpufreq/raspberrypi-cpufreq.c
> new file mode 100644
> index 000000000000..a85988867d56
> --- /dev/null
> +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> @@ -0,0 +1,83 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Raspberry Pi cpufreq driver
> + *
> + * Copyright (C) 2019, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> + */
> +
> +#include <linux/of.h>
> +#include <linux/clk.h>
> +#include <linux/cpu.h>
> +#include <linux/module.h>
> +#include <linux/pm_opp.h>
> +#include <linux/cpufreq.h>
> +#include <linux/platform_device.h>
> +
> +static const struct of_device_id machines[] __initconst = {
> +	{ .compatible = "raspberrypi,3-model-b-plus" },
> +	{ .compatible = "raspberrypi,3-model-b" },
> +	{ /* sentinel */ }
> +};
> +
> +static int __init raspberrypi_cpufreq_driver_init(void)
> +{
> +	struct platform_device *pdev;
> +	struct device *cpu_dev;
> +	struct clk *clk;
> +	long min, max;
> +	long rate;
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

I suggest use the expected clock ID.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
