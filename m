Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CF310B1B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 15:59:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9nvlI0iyvvTbwWePkWJmZ/HTWL9vX0A3QLEcW8DFnZY=; b=eMUwN5KNL6QgBZ
	OaOS2FdmDtWE36SmQTz89uTcGuVwsOPttem1zndlM+m/1DS0rYigzsx/P+xnv73QF8IiRseyVbi+3
	6ZltYuLZR9yNZq0bQaYzuNBEtmi41X+LVcN2Gl+xkjH0ZrauH7TkWrh+a+y2RuDTV9saJ0G0tnG4H
	vF8hu849vwujxefwcX72HuwBzyBcSunOPs/uO0Vg5kE9thn0prHUKThNk5LsnA2QtLuRva9rTVWol
	oPBAev2ZWU6m1NE+hndhoxt09xd005QNynz9n+hnI3x1RxVZv2kRio+9LJcI8KQdUOebHkP14A4IW
	2YBnydPHkIzodnSJi2pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZymW-000488-Mn; Wed, 27 Nov 2019 14:59:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZymN-00047j-9I
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 14:58:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A22E430E;
 Wed, 27 Nov 2019 06:58:52 -0800 (PST)
Received: from [192.168.0.9] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 268D63F68E;
 Wed, 27 Nov 2019 06:58:51 -0800 (PST)
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
To: Sudeep Holla <sudeep.holla@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120816.GC29301@bogus> <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
 <20191127133200.GE29301@bogus>
From: Dietmar Eggemann <dietmar.eggemann@arm.com>
Message-ID: <a60cab69-4d47-d418-94bd-74630bf9e846@arm.com>
Date: Wed, 27 Nov 2019 15:58:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <20191127133200.GE29301@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_065855_379876_BED2AAC8 
X-CRM114-Status: GOOD (  15.27  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27/11/2019 14:32, Sudeep Holla wrote:
> On Wed, Nov 27, 2019 at 05:44:02PM +0530, Viresh Kumar wrote:
>> On 27-11-19, 12:08, Sudeep Holla wrote:
>>> On Wed, Nov 27, 2019 at 12:48:01PM +0100, Dietmar Eggemann wrote:

[...]

>>> Unlike DT based drivers, it not easy to get the fixed cpumask unless we
>>> add some mechanism to extract it based on clks/OPP added. I prefer
>>> this simple solution instead.
>>
>> I will call this a work-around for the problem and not really the
>> solution, though I won't necessarily oppose it. There are cases which
>> will break even with this solution.
>>
> 
> I agree and that's the reason I spoke out my thought aloud here :)
> 
>> - Boot board with cpufreq driver as module.
>> - Offline all CPUs except CPU0.
>> - insert cpufreq driver.
>> - online all CPUs.
>>
> 
> Indeed, not just boot anytime since it's a module :)
> 
>> Now there is no guarantee that the last online will get the mask
>> properly, if I have understood the problem well :)
>>
> 
> Yes
> 
>> But yeah, who does this kind of messy work anyway :)
>>
> 
> I won't bet on that ;)
> 
>> FWIW, we need a proper way (may be from architecture code) to find
>> list of all CPUs that share clock line.
>>
> 
> Yes but there's no architectural way. I need to revise and see tc2_pm.c
> to check if we can do any magic there.

I'm fine with finding a better solution to return a fixed topology core
cpumask or calling this patch a workaround. AFAICS, only TC2 is affected.

("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
is needed for other systems as well in case we have commit ca74b316df96
("arm: Use common cpu_topology structure and functions."). We probably
don't want to revert commit ca74b316df96?

We do CPU hp stress tests in our EAS mainline integration test suite
https://developer.arm.com/tools-and-software/open-source-software/linux-kernel/energy-aware-scheduling/eas-mainline-development
and there is where we initially encountered this issue on TC2.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
