Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5BF1BC3C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h+nnVQobPA2aPcBxZ8Lq2goMRxu4N770/wO8jCqjX6g=; b=Is8Wua9lx7U09P0Zhc0dG95GA
	nlVYId7O96ZSzfktT8HGrUV4+7W9V3uQA3R/bjvfSR9ARimGHiDuLhKTvUc3y/r+dE/g5QfLVuVj9
	+Y03tEJ+7YDTqVy+/m4wnDcRoHhYdrhTciRIlvemI1YQq4qmXl+7QcJNOeFwpbl0gFWTfboiD3oVd
	Ca9F3BtSkw1sHeHKYjMVIu4inPtlqhE3XmMn2URWLoe2s2jY3FJnJE8vsSE4toCa83I90dsucHMAN
	LAINYwNui2mUMT/syQljp3+mUcs5enzVvGrty3FQrC7Po3MlFTqA0xreGtzjIxfj9iqP+KVdB5gpF
	Z6w5GAT2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSDM-0003V0-9J; Tue, 28 Apr 2020 15:32:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSDB-0003T4-8P
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:31:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0538B30E;
 Tue, 28 Apr 2020 08:31:50 -0700 (PDT)
Received: from [10.37.12.125] (unknown [10.37.12.125])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E0ACA3F305;
 Tue, 28 Apr 2020 08:31:44 -0700 (PDT)
Subject: Re: [PATCH v3 4/4] thermal: cpuidle: Register cpuidle cooling device
To: Daniel Lezcano <daniel.lezcano@linaro.org>, rui.zhang@intel.com
References: <20200414220837.9284-1-daniel.lezcano@linaro.org>
 <20200414220837.9284-4-daniel.lezcano@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <db4eeecf-2126-e455-ef02-fc034c631e09@arm.com>
Date: Tue, 28 Apr 2020 16:31:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200414220837.9284-4-daniel.lezcano@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_083153_341994_51857402 
X-CRM114-Status: GOOD (  21.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: amit.kucheria@verdurent.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/14/20 11:08 PM, Daniel Lezcano wrote:
> The cpuidle driver can be used as a cooling device by injecting idle
> cycles. The DT binding for the idle state added an optional
> 
> When the property is set, register the cpuidle driver with the idle
> state node pointer as a cooling device. The thermal framework will do
> the association automatically with the thermal zone via the
> cooling-device defined in the device tree cooling-maps section.
> 
> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>   drivers/cpuidle/cpuidle-arm.c  | 5 +++++
>   drivers/cpuidle/cpuidle-psci.c | 5 +++++
>   2 files changed, 10 insertions(+)
> 
> diff --git a/drivers/cpuidle/cpuidle-arm.c b/drivers/cpuidle/cpuidle-arm.c
> index 9e5156d39627..2406ac0ae134 100644
> --- a/drivers/cpuidle/cpuidle-arm.c
> +++ b/drivers/cpuidle/cpuidle-arm.c
> @@ -8,6 +8,7 @@
>   
>   #define pr_fmt(fmt) "CPUidle arm: " fmt
>   
> +#include <linux/cpu_cooling.h>
>   #include <linux/cpuidle.h>
>   #include <linux/cpumask.h>
>   #include <linux/cpu_pm.h>
> @@ -124,6 +125,10 @@ static int __init arm_idle_init_cpu(int cpu)
>   	if (ret)
>   		goto out_kfree_drv;
>   
> +	ret = cpuidle_cooling_register(drv);
> +	if (ret)
> +		pr_err("Failed to register the idle cooling device: %d\n", ret);

This and similar from cpuidle-psci.c might produce a lot of error log
entries. The 'return 0' below does not take into account that we failed
to register cpuidle cooling. Thus, I would rather ignore the return from 
cpuidle_cooling_register and move this print into
cpuidle_cooling_register function, changing it also to debug level.

> +
>   	return 0;
>   
>   out_kfree_drv:
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index edd7a54ef0d3..8e805bff646f 100644
> --- a/drivers/cpuidle/cpuidle-psci.c
> +++ b/drivers/cpuidle/cpuidle-psci.c
> @@ -9,6 +9,7 @@
>   #define pr_fmt(fmt) "CPUidle PSCI: " fmt
>   
>   #include <linux/cpuhotplug.h>
> +#include <linux/cpu_cooling.h>
>   #include <linux/cpuidle.h>
>   #include <linux/cpumask.h>
>   #include <linux/cpu_pm.h>
> @@ -305,6 +306,10 @@ static int __init psci_idle_init_cpu(int cpu)
>   	if (ret)
>   		goto out_kfree_drv;
>   
> +	ret = cpuidle_cooling_register(drv);
> +	if (ret)
> +		pr_err("Failed to register the idle cooling device: %d\n", ret);
> +

The same here. I would change it into one line:
+	cpuidle_cooling_register(drv);

>   	return 0;
>   
>   out_kfree_drv:
> 

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
