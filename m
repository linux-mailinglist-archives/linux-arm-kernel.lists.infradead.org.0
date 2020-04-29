Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5E41BE80F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:03:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CjmXUogQIX0/3WSJyIKHvQdro1TgU1J/b/2PfuXb0cI=; b=MHnCjMhAWXnfBpB3C5oJRUZnS
	i6EWn0evUi6+WkkmpMOMlDoDyFU+342h+iiDvuUo16SBoJfBsC1DazYDCZ6iH5Vo4QXEHWOdxQjS8
	1C6X8uF3+m19gPOUnGjEEvqBj3PkD8NIWLtaza9cLvyCNO7Rm7rlacgN4xazG/TkghrAVmOiLWHKy
	XANvQ4ccS9ZAld4uza4z8RqmcTcQ5BIdKKwd+rkraJmCBb4voT2P4jXJNnMAmmAYBtHtzzMeGNg/8
	2OoSQqxtoBU2Kb5Q3UKdygzcJH9pflgrKIDIV9czinPQu+ZRr2TrgODNzMBQh2hl//5L4chHKPdJQ
	qGsG9FJ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTsv1-0005Wa-9I; Wed, 29 Apr 2020 20:02:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTsut-0005Ul-0y
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:02:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47A581063;
 Wed, 29 Apr 2020 13:02:41 -0700 (PDT)
Received: from [10.37.12.43] (unknown [10.37.12.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 330973F68F;
 Wed, 29 Apr 2020 13:02:39 -0700 (PDT)
Subject: Re: [PATCH v4 4/4] thermal: cpuidle: Register cpuidle cooling device
To: Daniel Lezcano <daniel.lezcano@linaro.org>, rui.zhang@intel.com
References: <20200429103644.5492-1-daniel.lezcano@linaro.org>
 <20200429103644.5492-4-daniel.lezcano@linaro.org>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <99b3bc79-f48a-3d51-a8ae-8b9ca4856d36@arm.com>
Date: Wed, 29 Apr 2020 21:02:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200429103644.5492-4-daniel.lezcano@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_130247_110534_ED227260 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "open list:CPU IDLE TIME MANAGEMENT FRAMEWORK" <linux-pm@vger.kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 open list <linux-kernel@vger.kernel.org>, Sudeep Holla <sudeep.holla@arm.com>,
 "open list:CPUIDLE DRIVER - ARM PSCI" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/29/20 11:36 AM, Daniel Lezcano wrote:
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
>   - V4:
>     - Do not check the return value as the function does no longer return one
> ---
>   drivers/cpuidle/cpuidle-arm.c  | 3 +++
>   drivers/cpuidle/cpuidle-psci.c | 3 +++
>   2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/cpuidle/cpuidle-arm.c b/drivers/cpuidle/cpuidle-arm.c
> index 9e5156d39627..8c758920d699 100644
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
> @@ -124,6 +125,8 @@ static int __init arm_idle_init_cpu(int cpu)
>   	if (ret)
>   		goto out_kfree_drv;
>   
> +	cpuidle_cooling_register(drv);
> +
>   	return 0;
>   
>   out_kfree_drv:
> diff --git a/drivers/cpuidle/cpuidle-psci.c b/drivers/cpuidle/cpuidle-psci.c
> index bae9140a65a5..1f38e0dfc9b2 100644
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
> @@ -313,6 +314,8 @@ static int __init psci_idle_init_cpu(int cpu)
>   	if (ret)
>   		goto out_kfree_drv;
>   
> +	cpuidle_cooling_register(drv);
> +
>   	return 0;
>   
>   out_kfree_drv:
> 

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
