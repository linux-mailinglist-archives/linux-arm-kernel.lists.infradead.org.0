Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEE61EBC7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 12:08:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MA9FhhohpsMhHlKedpB6QMom8XkjIFvDKUSMcXe8F2A=; b=qTAmcWw42dbM3J
	xG+cFjk9ivhOEUEepaxLbX+6uwrQe/nbZ7a4JbeRJAzJzFM6XYrSGH0fdXVrlGI1IGA3Gp+w7SRbY
	027VhdGelfv6mAe3AoDXhFGZmREMR3yQ2uosVczhVuTQf4FQHZS3jyvmoBnek5VjRWZWqKTfycRtG
	fa7YwNJy30PU6yetk2M7YMFHlfB7C0IppRriT3ThD9C49ba5BJAZGcJ8BxOP9n3q/xA2zQJKV2NDq
	tU086XE0d8rZPVjwO4Qi19SkbgdQ2KXg7Sk1+vPfNklrSsvr5KT64De2AlaUQ94tsJNmQ/ET3Za4y
	FbxF5udVjPvB4v77cw+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQqpP-0003z6-4a; Wed, 15 May 2019 10:08:03 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQqpH-0003yl-BC
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 10:07:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C589880D;
 Wed, 15 May 2019 03:07:54 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 456573F703;
 Wed, 15 May 2019 03:07:52 -0700 (PDT)
Date: Wed, 15 May 2019 11:07:50 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] PM / EM: Expose perf domain struct
Message-ID: <20190515100748.q3t4kt72h2akdpcs@queper01-lin>
References: <20190515082318.7993-1-quentin.perret@arm.com>
 <20190515082318.7993-3-quentin.perret@arm.com>
 <0ced18eb-e424-fe6b-b11e-165a3c108170@linaro.org>
 <20190515091658.sbpg6qiovhtblqyr@queper01-lin>
 <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <698400c0-e0a4-4a86-b9df-cdb9bd683c0f@linaro.org>
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_030755_392218_60F90DC8 
X-CRM114-Status: GOOD (  29.09  )
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
Cc: linux-pm@vger.kernel.org, viresh.kumar@linaro.org, amit.kachhap@gmail.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, will.deacon@arm.com,
 edubezval@gmail.com, mka@chromium.org, catalin.marinas@arm.com,
 rui.zhang@intel.com, javi.merino@kernel.org, ionela.voinescu@arm.com,
 dietmar.eggemann@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wednesday 15 May 2019 at 11:56:30 (+0200), Daniel Lezcano wrote:
> On 15/05/2019 11:17, Quentin Perret wrote:
> > Hi Daniel,
> > 
> > On Wednesday 15 May 2019 at 11:06:18 (+0200), Daniel Lezcano wrote:
> >> On 15/05/2019 10:23, Quentin Perret wrote:
> >>> In the current state, the perf_domain struct is fully defined only when
> >>> CONFIG_ENERGY_MODEL=y. Since we need to write code that compiles both
> >>> with or without that option in the thermal framework, make sure to
> >>> actually define the struct regardless of the config option. That allows
> >>> to avoid using stubbed accessor functions all the time in code paths
> >>> that use the EM.
> >>>
> >>> Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> >>> Signed-off-by: Quentin Perret <quentin.perret@arm.com>
> >>
> >> This patch implies the cpu cooling device can be set without the energy
> >> model.
> >>
> >> Isn't it possible to make a strong dependency for the cpu cooling device
> >> on the energy model option, add the energy model as default on arm arch
> >> and drop this patch?
> > 
> > Right, that should work too.
> > 
> >> After all, the cpu cooling is using the em framework.
> > 
> > The reason I did it that way is simply to keep things flexible. If you
> > don't compile in THERMAL_GOV_POWER_ALLOCATOR, you will never use the EM
> > for CPU thermal. So I thought it would be good to not mandate compiling
> > in ENERGY_MODEL in this case -- that should save a bit of space.
> > 
> > But TBH I don't have a strong opinion on this one, so if everybody
> > agrees it's fine to just make CPU_THERMAL depend on ENERGY_MODEL, I'm
> > happy to drop this patch and fix patch 3/3. That would indeed simplify
> > things a bit.
> 
> Ok in this case it will be better to drop the 2/3 and add a small series
> doing for the cpu_cooling.c
> 
> #ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
> 
> /* structure freq */
> 
> /* power2state */
> 
> /* state2power*/
> 
> /* getrequestedpower */
> 
> /* All functions needed for the above */
> 
> #endif
> 
> static struct thermal_cooling_device_ops cpufreq_cooling_ops = {
>         .get_max_state          = cpufreq_get_max_state,
>         .get_cur_state          = cpufreq_get_cur_state,
>         .set_cur_state          = cpufreq_set_cur_state,
> #ifdef CONFIG_THERMAL_GOV_POWER_ALLOCATOR
>         .get_requested_power    = cpufreq_get_requested_power,
>         .state2power            = cpufreq_state2power,
>         .power2state            = cpufreq_power2state,
> #endif
> };
> 
> So you don't have to care about ENERGY_MODEL to be set as
> THERMAL_GOV_POWER_ALLOCATOR depends on it.
> 
> I think the result for cpu_cooling.c will be even more cleaner with the
> em change.

OK, that works for me. I'll give it a go in v5.

Thanks !
Quentin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
