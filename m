Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4A471761
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 13:47:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgDTZRPbs9LSw6ztJdP8I5evy5dWN83+7uG3CXj8854=; b=qcUG37FJZ5y+ah
	O33J9KY/Hpv9RpQWjitT9C1b+xTtjorH1ZAkZdwRsTY4o8SXI/XwV5jTGhF+7sOMzwXD60FKzLI/F
	X5M4SGBrXu7WHtaVPPo3sYOqO+NXuyVYmbiJn73Jd2q9s322rc7rDpLhFe8lHfptp2wkL3G7RNzQ5
	o/Cc3vUOvgfk9y+yosPlTKQxePG51wvDTy/v34Oh7+WPzeVoF212IDePN2u6Iiqi6xtaknaV+Cd5z
	oFXFOnLg6GV6FlvtQ2hMs+7YeoAiEanP3kWyrfCf1vgMiRhOSESELS7kNsmS8rB8yjKuZo2rzE6yP
	9rhadNCLSgZFXqaCuB4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hptGn-0003g4-LW; Tue, 23 Jul 2019 11:47:49 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hptGZ-0003fG-1a
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 11:47:36 +0000
Received: by mail-vs1-xe41.google.com with SMTP id 190so28580987vsf.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 04:47:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=geUtppPrfRUg4NfGL34dbIx6S9V8ieUS4VVaIVpw7T8=;
 b=XHQrWRNWIaq7gVu+WqM3lUbu5At0fR8soQbqJWerzBGj3iq8Jh7FQC7HnYdnsrOw/2
 4h/UOI2Ijk7FIguCbMP3BBZ1T4Rh3tPZWKVodUrEvqoPW+kWoqco+yb87JwscfUzvEFs
 zehINR8WOnJCyVs3GU2GnoHiLBKmYJuKJVoxAOSZnOyBJHjfqTxEd8Z69ehjQ93WugMB
 ZUw6rrD+qlQUD/hrb9TP3Xpm/L8iW5DfSAW+9zgbQNC12ySW9S83Rpw49/bhMFpjwvqq
 rwncfnzLh0DIOBSPVbSG0QHW6FSz+tpga99c6gZT3oNQJmKlt+iLpPliZjBAEhXiOfL0
 /UDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=geUtppPrfRUg4NfGL34dbIx6S9V8ieUS4VVaIVpw7T8=;
 b=CKTYRkEYSSw1NK9GWOlByEOGuQwr2twNvJc3Y6yZoGEe5ZJG1CPd94ZPHITLGDdNib
 wiuNGSsTqG2Qk/obDTNjITuUYSYY5Wjbtn/w3zd0cn+DI6G4c5KJ/K3O8qO87tRsmrs9
 03oGhLgxk3Ie2yrXVnTzhIbvQ0Fjf3uOu4R186HRdrFz3Z8Wd41PrFzXJqAAya+gossP
 ntHE7hOY6TLWtPdYUmZNKIjwIjaSx5ioPp6RQwrYPc4ob8PuVpcm3MVlWPhREpCMmK2E
 2QJvNA6aXtcJEpYEiUkH4NOUnrpQSRQbgbHplg92BHg8Q1HW0gSsigYXArq+5Hf1fm29
 jfKw==
X-Gm-Message-State: APjAAAXy4noEMh4pePvhy8qm5iW7p/lG2SiyBJ+SxJ8d2hIYzU7uBCKV
 93JECNq70tK5JBbJR1FMQgBLj/pedhVSolBf2pog7Q==
X-Google-Smtp-Source: APXvYqyQ7eltBtSxqPsnhCuQloUKpx1CQdA3jlUrwfbQpQPR8C3fB3pvMyrBd8baT9CeIxn12qkGDoiwZQb6qlcis+s=
X-Received: by 2002:a67:ee16:: with SMTP id f22mr46522596vsp.191.1563882453209; 
 Tue, 23 Jul 2019 04:47:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190722153745.32446-1-lorenzo.pieralisi@arm.com>
 <20190722153745.32446-5-lorenzo.pieralisi@arm.com>
In-Reply-To: <20190722153745.32446-5-lorenzo.pieralisi@arm.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 23 Jul 2019 13:46:56 +0200
Message-ID: <CAPDyKFppc32r=3w3g5nmHWDR5qR1vxsYjQ1b_GQoc_Gk=ni24A@mail.gmail.com>
Subject: Re: [PATCH 4/6] ARM: psci: cpuidle: Introduce PSCI CPUidle driver
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_044735_089378_A9CBAD86 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

[...]

> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * PSCI CPU idle driver.
> + *
> + * Copyright (C) 2019 ARM Ltd.
> + * Author: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> + */
> +
> +#define pr_fmt(fmt) "CPUidle PSCI: " fmt
> +
> +#include <linux/cpuidle.h>
> +#include <linux/cpumask.h>
> +#include <linux/cpu_pm.h>
> +#include <linux/kernel.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/psci.h>
> +#include <linux/slab.h>
> +
> +#include <asm/cpuidle.h>

This should go away, right?

> +
> +#include "dt_idle_states.h"
> +
> +static int psci_enter_idle_state(struct cpuidle_device *dev,
> +                               struct cpuidle_driver *drv, int idx)
> +{
> +       return CPU_PM_CPU_IDLE_ENTER(psci_cpu_suspend_enter, idx);
> +}
> +
> +static struct cpuidle_driver psci_idle_driver __initdata = {
> +       .name = "psci_idle",
> +       .owner = THIS_MODULE,
> +       /*
> +        * PSCI idle states relies on architectural WFI to
> +        * be represented as state index 0.
> +        */
> +       .states[0] = {
> +               .enter                  = psci_enter_idle_state,
> +               .exit_latency           = 1,
> +               .target_residency       = 1,
> +               .power_usage            = UINT_MAX,
> +               .name                   = "WFI",
> +               .desc                   = "ARM WFI",
> +       }
> +};
> +
> +static const struct of_device_id psci_idle_state_match[] __initconst = {
> +       { .compatible = "arm,idle-state",
> +         .data = psci_enter_idle_state },
> +       { },
> +};
> +
> +static int __init psci_idle_init_cpu(int cpu)
> +{
> +       struct cpuidle_driver *drv;
> +       struct device_node *cpu_node;
> +       const char *enable_method;
> +       int ret = 0;
> +
> +       drv = kmemdup(&psci_idle_driver, sizeof(*drv), GFP_KERNEL);
> +       if (!drv)
> +               return -ENOMEM;
> +
> +       drv->cpumask = (struct cpumask *)cpumask_of(cpu);
> +
> +       cpu_node = of_get_cpu_node(cpu, NULL);
> +       if (!cpu_node)
> +               return -ENODEV;

You should free drv in case of error here (goto out_kfree_drv; etc).

> +
> +       /*
> +        * Check whether the enable-method for the cpu is PSCI, fail
> +        * if it is not.
> +        */
> +       enable_method = of_get_property(cpu_node, "enable-method", NULL);
> +       if (!enable_method || (strcmp(enable_method, "psci")))
> +               ret = -ENODEV;
> +
> +       of_node_put(cpu_node);
> +       if (ret)
> +               return ret;

You should free drv in case of error here (goto out_kfree_drv;).

> +
> +       /*
> +        * Initialize idle states data, starting at index 1, since
> +        * by default idle state 0 is the quiescent state reached
> +        * by the cpu by executing the wfi instruction.
> +        *
> +        * If no DT idle states are detected (ret == 0) let the driver
> +        * initialization fail accordingly since there is no reason to
> +        * initialize the idle driver if only wfi is supported, the
> +        * default archictectural back-end already executes wfi
> +        * on idle entry.
> +        */
> +       ret = dt_init_idle_driver(drv, psci_idle_state_match, 1);
> +       if (ret <= 0) {
> +               ret = ret ? : -ENODEV;
> +               goto out_kfree_drv;
> +       }
> +
> +       /*
> +        * Initialize PSCI idle states.
> +        */
> +       ret = psci_cpu_init_idle(cpu);
> +       if (ret) {
> +               pr_err("CPU %d failed to PSCI idle\n", cpu);
> +               goto out_kfree_drv;
> +       }
> +
> +       ret = cpuidle_register(drv, NULL);
> +       if (ret)
> +               goto out_kfree_drv;
> +
> +       return 0;
> +
> +out_kfree_drv:
> +       kfree(drv);
> +       return ret;
> +}
> +

[...]

Kind regards
Uffe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
