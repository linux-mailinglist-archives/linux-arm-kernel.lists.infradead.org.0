Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E8C10B608
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 19:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41wziUTgFXFe6ZXeoAFGl1FGhw9RiZBCJ9aKI9XTq/I=; b=diiQ7CmMsDX1Ti
	uwm/FOi3cPm2tsfS/J8CJPq2tjRDzCDapQcojb7iLkAx4F4XVGD54uaE9o2dOiiwFKi1ld7doaM/f
	i/xc+4hYVGf/xkV6gMS3FvyiMmHhume/Oq5uyvX2AjM8ck/eEAp8bC75QSw7e4HTrsJfdKxoLgn/i
	uSIVotDGfm3DsXNKbV63SH4XXfsfyQy7HO72dGUQFHrBg3OP0hFrwCd0HeiExYATxl8m6WyqiQcmK
	u6uYfyHC0RqG5lvd763NdnW8mFDY4g8ptxf9JxT/CAHNa9KMX+733Y6PuJmC/hSZzrqzyQkFbT7Rb
	UEAmeG4Pf0uudUfQb/EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia2Ks-0003AI-4K; Wed, 27 Nov 2019 18:46:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia2Jz-0002ZI-Ib
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 18:45:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAC8931B;
 Wed, 27 Nov 2019 10:45:48 -0800 (PST)
Received: from bogus (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50C2C3F6C4;
 Wed, 27 Nov 2019 10:45:47 -0800 (PST)
Date: Wed, 27 Nov 2019 18:45:42 +0000
From: Sudeep Holla <sudeep.holla@arm.com>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191127184542.GA21368@bogus>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120816.GC29301@bogus>
 <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
 <20191127133200.GE29301@bogus>
 <a60cab69-4d47-d418-94bd-74630bf9e846@arm.com>
 <20191127154029.GA4826@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127154029.GA4826@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_104551_688014_8E399A08 
X-CRM114-Status: GOOD (  13.71  )
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 03:40:29PM +0000, Sudeep Holla wrote:
> 
> diff --git i/arch/arm/mach-vexpress/spc.c w/arch/arm/mach-vexpress/spc.c
> index 354e0e7025ae..e0e2e789a0b7 100644
> --- i/arch/arm/mach-vexpress/spc.c
> +++ w/arch/arm/mach-vexpress/spc.c
> @@ -551,8 +551,9 @@ static struct clk *ve_spc_clk_register(struct device *cpu_dev)
> 
>  static int __init ve_spc_clk_init(void)
>  {
> -       int cpu;
> +       int cpu, cluster;
>         struct clk *clk;
> +       bool init_opp_table[MAX_CLUSTERS] = { false };
> 
>         if (!info)
>                 return 0; /* Continue only if SPC is initialised */
> @@ -578,8 +579,17 @@ static int __init ve_spc_clk_init(void)
>                         continue;
>                 }
> 
> +               cluster = topology_physical_package_id(cpu_dev->id);
> +               if (init_opp_table[cluster])
> +                       continue;
> +
>                 if (ve_init_opp_table(cpu_dev))
>                         pr_warn("failed to initialise cpu%d opp table\n", cpu);
> +               else if (dev_pm_opp_set_sharing_cpus(cpu_dev,
> +                        topology_core_cpumask(cpu_dev->id)))
> +                       pr_warn("failed to mark OPPs shared for cpu%d\n", cpu);

missing else here, found when I was looking at the patch to stash/commit
locally.

> +
> +               init_opp_table[cluster] = true;
>         }
> 
>         platform_device_register_simple("vexpress-spc-cpufreq", -1, NULL, 0);

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
