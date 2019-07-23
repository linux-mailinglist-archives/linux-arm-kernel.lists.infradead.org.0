Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB80271A0D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 16:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+QndLrbTYYOfzdw/Ni7rSRooo4sphRrVXezRr3V0ycA=; b=ZlbFEIMWuL1Yf9
	eJTZrG06/INt3kov15qVeiKCFykZxNIHnwa3MqW+bT5zQ24wq9yaEBdunX+cY+i0PYcRHJZ158jWF
	OgkdiZ0jE7lrsYzYZkzgThNiqXWaRjvkwfsqKLWbTiSoNrIK7PgXjwUnK23HBaGAsXJxAdjLQJ1Pt
	VFjo0m3czTSSu8RWev4NDX6lXee7X2DS6bE7zpkItY5XiYOE0OJWbUkZlaZrk4FNqb139QiHcxEX8
	qSTajvLq80R75VQ+Pae483E2FUfFAAPJqlo9BylqKQ2Lj65uUWVpj+vHZB36bEwdm8jHw1/jxZkQT
	CmPbDQl67bo4VeEEkVkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpvZu-0005I2-MU; Tue, 23 Jul 2019 14:15:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hpvZk-0005HW-10
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 14:15:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3B61828;
 Tue, 23 Jul 2019 07:15:31 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA2173F71F;
 Tue, 23 Jul 2019 07:15:29 -0700 (PDT)
Date: Tue, 23 Jul 2019 15:15:24 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH 4/6] ARM: psci: cpuidle: Introduce PSCI CPUidle driver
Message-ID: <20190723141524.GA22025@e121166-lin.cambridge.arm.com>
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-5-lorenzo.pieralisi@arm.com>
 <CAPDyKFppc32r=3w3g5nmHWDR5qR1vxsYjQ1b_GQoc_Gk=ni24A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPDyKFppc32r=3w3g5nmHWDR5qR1vxsYjQ1b_GQoc_Gk=ni24A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_071532_161168_BC5363C7 
X-CRM114-Status: GOOD (  20.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Linux PM <linux-pm@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, LKML <linux-kernel@vger.kernel.org>,
 Sudeep Holla <sudeep.holla@arm.com>, Will Deacon <will@kernel.org>,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 01:46:56PM +0200, Ulf Hansson wrote:
> [...]
> 
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -0,0 +1,150 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * PSCI CPU idle driver.
> > + *
> > + * Copyright (C) 2019 ARM Ltd.
> > + * Author: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > + */
> > +
> > +#define pr_fmt(fmt) "CPUidle PSCI: " fmt
> > +
> > +#include <linux/cpuidle.h>
> > +#include <linux/cpumask.h>
> > +#include <linux/cpu_pm.h>
> > +#include <linux/kernel.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/psci.h>
> > +#include <linux/slab.h>
> > +
> > +#include <asm/cpuidle.h>
> 
> This should go away, right?

We need to pull in cpu_do_idle() so it will have to stay there.

> > +#include "dt_idle_states.h"
> > +
> > +static int psci_enter_idle_state(struct cpuidle_device *dev,
> > +                               struct cpuidle_driver *drv, int idx)
> > +{
> > +       return CPU_PM_CPU_IDLE_ENTER(psci_cpu_suspend_enter, idx);
> > +}
> > +
> > +static struct cpuidle_driver psci_idle_driver __initdata = {
> > +       .name = "psci_idle",
> > +       .owner = THIS_MODULE,
> > +       /*
> > +        * PSCI idle states relies on architectural WFI to
> > +        * be represented as state index 0.
> > +        */
> > +       .states[0] = {
> > +               .enter                  = psci_enter_idle_state,
> > +               .exit_latency           = 1,
> > +               .target_residency       = 1,
> > +               .power_usage            = UINT_MAX,
> > +               .name                   = "WFI",
> > +               .desc                   = "ARM WFI",
> > +       }
> > +};
> > +
> > +static const struct of_device_id psci_idle_state_match[] __initconst = {
> > +       { .compatible = "arm,idle-state",
> > +         .data = psci_enter_idle_state },
> > +       { },
> > +};
> > +
> > +static int __init psci_idle_init_cpu(int cpu)
> > +{
> > +       struct cpuidle_driver *drv;
> > +       struct device_node *cpu_node;
> > +       const char *enable_method;
> > +       int ret = 0;
> > +
> > +       drv = kmemdup(&psci_idle_driver, sizeof(*drv), GFP_KERNEL);
> > +       if (!drv)
> > +               return -ENOMEM;
> > +
> > +       drv->cpumask = (struct cpumask *)cpumask_of(cpu);
> > +
> > +       cpu_node = of_get_cpu_node(cpu, NULL);
> > +       if (!cpu_node)
> > +               return -ENODEV;
> 
> You should free drv in case of error here (goto out_kfree_drv; etc).
> 
> > +
> > +       /*
> > +        * Check whether the enable-method for the cpu is PSCI, fail
> > +        * if it is not.
> > +        */
> > +       enable_method = of_get_property(cpu_node, "enable-method", NULL);
> > +       if (!enable_method || (strcmp(enable_method, "psci")))
> > +               ret = -ENODEV;
> > +
> > +       of_node_put(cpu_node);
> > +       if (ret)
> > +               return ret;
> 
> You should free drv in case of error here (goto out_kfree_drv;).

True on both cases, I missed that, thanks.

Lorenzo

> > +
> > +       /*
> > +        * Initialize idle states data, starting at index 1, since
> > +        * by default idle state 0 is the quiescent state reached
> > +        * by the cpu by executing the wfi instruction.
> > +        *
> > +        * If no DT idle states are detected (ret == 0) let the driver
> > +        * initialization fail accordingly since there is no reason to
> > +        * initialize the idle driver if only wfi is supported, the
> > +        * default archictectural back-end already executes wfi
> > +        * on idle entry.
> > +        */
> > +       ret = dt_init_idle_driver(drv, psci_idle_state_match, 1);
> > +       if (ret <= 0) {
> > +               ret = ret ? : -ENODEV;
> > +               goto out_kfree_drv;
> > +       }
> > +
> > +       /*
> > +        * Initialize PSCI idle states.
> > +        */
> > +       ret = psci_cpu_init_idle(cpu);
> > +       if (ret) {
> > +               pr_err("CPU %d failed to PSCI idle\n", cpu);
> > +               goto out_kfree_drv;
> > +       }
> > +
> > +       ret = cpuidle_register(drv, NULL);
> > +       if (ret)
> > +               goto out_kfree_drv;
> > +
> > +       return 0;
> > +
> > +out_kfree_drv:
> > +       kfree(drv);
> > +       return ret;
> > +}
> > +
> 
> [...]
> 
> Kind regards
> Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
