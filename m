Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 287AEF481
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 12:51:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gZDBiu9DxFPEVrVUEFTI+MjKIJO26hSO4SnwEz8UCcM=; b=jz9YgzsTmHbD3K
	MMvTM7O4J2eHomJAObEn3PYlCtcWbd5nOfr2FtWo6Aq2qAvLgMolWbeDKuXDQqFe+iwWkEJ+V6VTe
	BrWyZ6sDuRVrj3Yya9H15pRm8d7dxaUnxEvBElp719vys+HoYYozeVEq+dkV9RwLnekLrjO7qYDeJ
	8rz3rxch2pZSg9/5d6SgXrw03qK1dAHV8yS8TIJTJP/snIs4j+4IJppdMo/FIwHF5YIDZ7No4LCXj
	XCR2wDD/Hwy9u2PZ4Z87EU/kulbBx0cvWaB8MfAty5+dWboPn5y1/efUgnAhM9UhqbnjqhQnwFyAY
	MmJAQ0noeVQEL8PhWNyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQMP-0006td-Ci; Tue, 30 Apr 2019 10:51:41 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQMH-0006si-5a
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 10:51:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E0D080D;
 Tue, 30 Apr 2019 03:51:31 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E815A3F5C1;
 Tue, 30 Apr 2019 03:51:28 -0700 (PDT)
Date: Tue, 30 Apr 2019 11:51:24 +0100
From: Will Deacon <will.deacon@arm.com>
To: Frank Li <frank.li@nxp.com>
Subject: Re: [PATCH V9 2/4] drivers/perf: imx_ddr: Add ddr performance
 counter support
Message-ID: <20190430105124.GA16204@fuggles.cambridge.arm.com>
References: <1556556252-22868-1-git-send-email-Frank.Li@nxp.com>
 <1556556252-22868-2-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556556252-22868-2-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_035133_222883_B4210990 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "lznuaa@gmail.com" <lznuaa@gmail.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 29, 2019 at 04:44:32PM +0000, Frank Li wrote:
> diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
> new file mode 100644
> index 0000000..087d75a
> --- /dev/null
> +++ b/drivers/perf/fsl_imx8_ddr_perf.c
> @@ -0,0 +1,589 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2017 NXP
> + * Copyright 2016 Freescale Semiconductor, Inc.
> + */
> +
> +#include <linux/init.h>
> +#include <linux/interrupt.h>
> +#include <linux/io.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_address.h>
> +#include <linux/of_device.h>
> +#include <linux/of_irq.h>
> +#include <linux/perf_event.h>
> +#include <linux/slab.h>
> +
> +#define COUNTER_CNTL		0x0
> +#define COUNTER_READ		0x20
> +
> +#define COUNTER_DPCR1		0x30
> +
> +#define CNTL_OVER		0x1
> +#define CNTL_CLEAR		0x2
> +#define CNTL_EN			0x4
> +#define CNTL_EN_MASK		0xFFFFFFFB
> +#define CNTL_CLEAR_MASK		0xFFFFFFFD
> +#define CNTL_OVER_MASK		0xFFFFFFFE
> +
> +#define CNTL_CSV_SHIFT		24
> +#define CNTL_CSV_MASK		(0xFF << CNTL_CSV_SHIFT)
> +
> +#define EVENT_CYCLES_ID		0
> +#define EVENT_CYCLES_COUNTER	0
> +#define NUM_COUNTERS		4
> +
> +#define to_ddr_pmu(p)		container_of(p, struct ddr_pmu, pmu)
> +
> +#define DDR_PERF_DEV_NAME	"ddr_perf"

This is far too generic. Please make it something like "imx8_ddr_perf_pmu".

> +static int ddr_perf_probe(struct platform_device *pdev)
> +{
> +	struct ddr_pmu *pmu;
> +	struct device_node *np;
> +	void __iomem *base;
> +	struct resource *iomem;
> +	char *name;
> +	char *hpname;
> +	int num;
> +	int ret;
> +	int irq;
> +
> +	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	base = devm_ioremap_resource(&pdev->dev, iomem);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	np = pdev->dev.of_node;
> +
> +	pmu = devm_kzalloc(&pdev->dev, sizeof(*pmu), GFP_KERNEL);
> +	if (!pmu)
> +		return -ENOMEM;
> +
> +	num = ddr_perf_init(pmu, base, &pdev->dev);
> +
> +	platform_set_drvdata(pdev, pmu);
> +
> +	name = devm_kasprintf(&pdev->dev, GFP_KERNEL, "ddr%d", num);
> +	if (!name)
> +		return -ENOMEM;
> +
> +	hpname = devm_kasprintf(&pdev->dev, GFP_KERNEL,
> +				"perf/imx/ddr%d:online", num);
> +	if (!hpname)
> +		return -ENOMEM;
> +
> +	pmu->cpu = raw_smp_processor_id();
> +	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, hpname, NULL,
> +					 ddr_perf_offline_cpu);

This doesn't seem right to me. My understanding of the cpuhp mechanism
is that you register a single multi-instance state as part of driver
initialisation, and then add an instance for each device you probe.
That means you don't need to kasprintf the callback name as you are above --
you can just use DDR_PERF_DEV_NAME instead.

Please see how other perf drivers manage this on my for-next/perf branch.

> +
> +	if (ret < 0) {
> +		dev_err(&pdev->dev, "cpuhp_setup_state_multi failed\n");
> +		goto ddr_perf_err;
> +	}
> +
> +	pmu->cpuhp_state = ret;
> +
> +	/* Register the pmu instance for cpu hotplug */
> +	cpuhp_state_add_instance_nocalls(pmu->cpuhp_state, &pmu->node);
> +
> +	ret = perf_pmu_register(&pmu->pmu, name, -1);

Again, the string you're passing in here is too generic. I suggest taking
DDR_PERF_DEV_NAME and adding "_%d" to the end to paste in your 'num'
identifier.

Sorry if this feels like pedantry, but this gets exposed to userspace
via sysfs, so we need to be careful with the namespace.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
