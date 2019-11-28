Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3734710C265
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 03:31:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHHbbYlDUCM5C3RtdIalmFIm6ZR3mZovWKnrj+A9MFI=; b=ZcBVfX7DyDUUqR
	lYgnajgoxqUIu3wauMrtOMI3LmJxi2cJ5e60Gn+2iF3EuG/aXtw2o2Jb6zv2ddqbXT7RHH3Q7/EDs
	AicV2+EnGhaLr2yQXhVBJ3rbBAqqvYmQ0EA4z2R5IARAXPvwjxCe2j9rsqU0eDnocv6oZwINgV6Ye
	Xhb9L2ASIkwmlaSaZ4QkFu/6V24Kr1quHMfwEcEnrmdqghRdoM2WHFdNxdG4HD2NHO5BZDc+ZZgtL
	djji3bWWyXLgP7paSH3kwj/XkYfJbN1rTNjMaKgacuadsF5pbKLyh4BkWFcoPzMcu3Tf4oU+1Neup
	+WecVPW1dPMnX9FqTzvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia9ad-00041o-41; Thu, 28 Nov 2019 02:31:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia9aU-00041E-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 02:31:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id b10so12101672pgd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 18:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w3MhAgNwJCDzFmg83BGAd8t/eEyIf/GsxgnTUb2ToXs=;
 b=AbV2WhvURSc4H37cMnU1McRpKMN3PNtGgOrYok6XE+t9/06vmiOzXjxO8o2/A4nNp4
 Th474P4Odokl5RWixStRMW5aLqjuL+perV6RJMm+oYT0og/XFeKaql61vRSRiMJ2pq32
 0omD61mSXnitttdyY+8RdTvxmea7rn86qHhC8uuVGiCvCxLNuvzRjfd/GUuY0RIQYSP2
 cmdskrvBVEhe3S9Q8lDcJdRWRIlI7bSrEFH1y1U4Rk/tYvNaQaqZi/+FF5T+ytaNx+SZ
 qeKAzvV5MkymttKH0wbACMhRa1dZMoMvjL94xGienEDXbooxuQVYAxmfQ3NFUZlSxovl
 0VrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w3MhAgNwJCDzFmg83BGAd8t/eEyIf/GsxgnTUb2ToXs=;
 b=tkn0mOmfUTkNO3NM6FbkxJdNFHMdQm4djLZr5EzZmAW+GqyeyqHlTEG4schlLgLWzQ
 eTBhZezlGyI5efn4yxT+Ll8E5N8ulDwLFGkKyN0l55I2LhqCVpoLJxH7aC84OBV40mbD
 MoRbWxU7+4WHV5hnoh2y+gx69DA4UHGcrWB3bXE0bP5FDceXHUhbTf3Rn91Y6LPo2V0a
 boIRSXO8HsK0sbZgaKnQvcT4y4anTEUW/lCJw4KK3lJTiivI0kSiGVCW1qkYzu7/6doR
 Y5pZDxVrFipWvy4bVh5Oh8DbY729wRUJZeRRQnjbWktf4l6T/iezhTnJCs009sfxiGMp
 ln1w==
X-Gm-Message-State: APjAAAVcdPZadpSv7WKSu5Wc+neGWZoToGp5IPrjRFBIrjfEGC00up3f
 fID7eD7PwPrPTE5k/FPe3yyO6g==
X-Google-Smtp-Source: APXvYqx4TG+a8InkKBmHDvzMujmJEOUlgarnckvNwhCekHG+3RWiohoP5Zo9pN47GWMMV9wizulVyg==
X-Received: by 2002:a62:cf46:: with SMTP id b67mr30054210pfg.77.1574908280836; 
 Wed, 27 Nov 2019 18:31:20 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id q15sm1312656pgi.55.2019.11.27.18.31.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 Nov 2019 18:31:20 -0800 (PST)
Date: Thu, 28 Nov 2019 08:01:16 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191128023116.3skwbeowk7wtjaxc@vireshk-i7>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120816.GC29301@bogus>
 <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
 <20191127133200.GE29301@bogus>
 <a60cab69-4d47-d418-94bd-74630bf9e846@arm.com>
 <20191127154029.GA4826@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127154029.GA4826@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_183122_861883_6E28EFF3 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-11-19, 15:40, Sudeep Holla wrote:
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
> +
> +               init_opp_table[cluster] = true;
>         }
> 
>         platform_device_register_simple("vexpress-spc-cpufreq", -1, NULL, 0);
> diff --git i/drivers/cpufreq/vexpress-spc-cpufreq.c w/drivers/cpufreq/vexpress-spc-cpufreq.c
> index 506e3f2bf53a..83c85d3d67e3 100644
> --- i/drivers/cpufreq/vexpress-spc-cpufreq.c
> +++ w/drivers/cpufreq/vexpress-spc-cpufreq.c
> @@ -434,7 +434,7 @@ static int ve_spc_cpufreq_init(struct cpufreq_policy *policy)
>         if (cur_cluster < MAX_CLUSTERS) {
>                 int cpu;
> 
> -               cpumask_copy(policy->cpus, topology_core_cpumask(policy->cpu));
> +               dev_pm_opp_get_sharing_cpus(cpu_dev, policy->cpus);
> 
>                 for_each_cpu(cpu, policy->cpus)
>                         per_cpu(physical_cluster, cpu) = cur_cluster;

This is a better *work-around* I would say, as we can't break it the
way I explained earlier :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
