Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 429141146F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 19:36:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Egi9GOiiyNKvYudWkBA8S3c9JeWTXDLzxdqn2wy9n9o=; b=JpBt4dl+5hvRtB
	wfaL7I0zvXqCpmqvgdGLnSsS2gqeJqM2gF8zxJTtoj6BTxcclFLVLfh9BdUg1HSiOZj/f1G7uUClt
	zIXJXHQfywcNrprClbBx4SlI6tsuKrSCxrYMYvwgQCEOpkgS9q3AA9BbhE2Q8OfVwRaojBzyXvcR4
	+eilhgzoPWHvVwVeD6TMtAPL8uecxlipnAStfNctO52g78CvDlIRnhnxdYw24205H97ENeXOK04SG
	UeBytOdvSdBKoxxJZAwVUKJ9Khg3zWjiIxOYrByXsYitfrx1wwNNCyHPC1aEjaZylIPJj1cnpYwxT
	OWOBnfsMRshNg265IVrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icvyn-00084V-W4; Thu, 05 Dec 2019 18:35:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icvyf-00083p-Qc
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 18:35:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 71FD331B;
 Thu,  5 Dec 2019 10:35:48 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 76AD13F718;
 Thu,  5 Dec 2019 10:35:46 -0800 (PST)
Date: Thu, 5 Dec 2019 18:35:44 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: Re: [PATCH v3 10/13] cpuidle: psci: Prepare to use OS initiated
 suspend mode via PM domains
Message-ID: <20191205183544.GB1516@e121166-lin.cambridge.arm.com>
References: <20191127102914.18729-1-ulf.hansson@linaro.org>
 <20191127102914.18729-11-ulf.hansson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127102914.18729-11-ulf.hansson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_103549_948404_A87C2E73 
X-CRM114-Status: GOOD (  17.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Andy Gross <agross@kernel.org>,
 Lina Iyer <ilina@codeaurora.org>, Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Lina Iyer <lina.iyer@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 11:29:11AM +0100, Ulf Hansson wrote:

[...]

> -static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
> +static int __init psci_dt_cpu_init_idle(struct cpuidle_driver *drv,
> +					struct device_node *cpu_node,
>  					unsigned int state_count, int cpu)
>  {
>  	int i, ret = 0;
> @@ -118,6 +152,11 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
>  		goto free_mem;
>  	}
>  
> +	/* Manage the deepest state via a dedicated enter-function. */
> +	if (dev)
> +		drv->states[state_count - 1].enter =
> +			psci_enter_domain_idle_state;


It is unfortunate to make this arbitrary choice, it would be best
if you could detect which states are "domain" states aka are governed
by multiple cpus.

This inizialization though does not belong in here, it is done at driver
level, it should not be done in this per-cpu path. IIUC the logic the
enter pointer should only be overridden if and only if all cpus managed
by the driver have a corresponding device associated.

To be frank I would even move the psci_has_osi_support() check from
psci_dt_attach_cpu() to this path and prevent calling
psci_dt_attach_cpu() and the tail of the function if
(!psci_has_osi_support()).

>  	data->dev = dev;

I think Sudeep already mentioned that, by using psci_has_osi_support()
as above you can prevent running this code, there is really no point,
the data->dev NULL sentinel is already initialized.

Lorenzo

>  	/* Idle states parsed correctly, store them in the per-cpu struct. */
> @@ -129,7 +168,8 @@ static int __init psci_dt_cpu_init_idle(struct device_node *cpu_node,
>  	return ret;
>  }
>  
> -static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
> +static __init int psci_cpu_init_idle(struct cpuidle_driver *drv,
> +				     unsigned int cpu, unsigned int state_count)
>  {
>  	struct device_node *cpu_node;
>  	int ret;
> @@ -145,7 +185,7 @@ static __init int psci_cpu_init_idle(unsigned int cpu, unsigned int state_count)
>  	if (!cpu_node)
>  		return -ENODEV;
>  
> -	ret = psci_dt_cpu_init_idle(cpu_node, state_count, cpu);
> +	ret = psci_dt_cpu_init_idle(drv, cpu_node, state_count, cpu);
>  
>  	of_node_put(cpu_node);
>  
> @@ -201,7 +241,7 @@ static int __init psci_idle_init_cpu(int cpu)
>  	/*
>  	 * Initialize PSCI idle states.
>  	 */
> -	ret = psci_cpu_init_idle(cpu, ret);
> +	ret = psci_cpu_init_idle(drv, cpu, ret);
>  	if (ret) {
>  		pr_err("CPU %d failed to PSCI idle\n", cpu);
>  		goto out_kfree_drv;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
