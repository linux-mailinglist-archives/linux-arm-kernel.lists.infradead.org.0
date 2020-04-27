Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2EB1BA559
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 15:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7hzb0BILwUdru418ce2r7ZS5EFh2LttsZ8EjbgO4ank=; b=YGMRFYU3Ddw/EW2yrXc/eg+Vs
	S6HfyVKH6AnJyTsFHMZVuAiEs4n9qSKzfbWG9dVZfuciTCOWpoH8+fhbEuO3qnfSY5zGELa3S4K8C
	o0H5/NHpOIflq+Rsd+WMTBxZ17RfUk1MMNSXtGEMiifHEuJ+FyXe37rWY/+6/5yCtVA6zsXzVb+Jm
	UMg/9gKNyQQxi0Zdfmo8PZ0DcHyOeviEoYMJGU8SZJ0DRhRbyhawOoH3sd2D6t9/Fft3UfXGG4x63
	iJ8b6pl9wyXfFFCZvKx0JQRStPrUlLFKbF139N8pDwoaCOmYy3yVeGiglK6whZI0lTAeTb78ycFCM
	tnvoSEY0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT47c-0000kx-Tc; Mon, 27 Apr 2020 13:48:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT47T-0000kK-65
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 13:48:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2EB9D31B;
 Mon, 27 Apr 2020 06:48:21 -0700 (PDT)
Received: from [10.37.12.144] (unknown [10.37.12.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28FE63F305;
 Mon, 27 Apr 2020 06:48:19 -0700 (PDT)
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
To: mike.leach@linaro.org
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
 <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
 <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <84918e7d-c933-3fa1-a61e-0615d4b3cf2c@arm.com>
Date: Mon, 27 Apr 2020 14:53:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAJ9a7VgF3-Hdc7KSw9gVBeXSDHNguhqVhp60oK2XhCtr3DhDqg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_064823_311527_E5C10677 
X-CRM114-Status: GOOD (  21.61  )
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
Cc: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 swboyd@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/27/2020 10:45 AM, Mike Leach wrote:
> HI,
> 
> On Mon, 27 Apr 2020 at 10:15, Suzuki K Poulose <suzuki.poulose@arm.com> wrote:
>>
>> On 04/26/2020 03:37 PM, Sai Prakash Ranjan wrote:
>>> Since commit 30af4fb619e5 ("coresight: dynamic-replicator:
>>> Handle multiple connections"), we do not make sure that
>>> the other port is disabled when the dynamic replicator is
>>> enabled. This is seen to cause the CPU hardlockup atleast
>>> on SC7180 SoC with the following topology when enabling ETM
>>> with ETR as the sink via sysfs. Since there is no trace id
>>> logic in coresight yet to make use of multiple sinks in
>>> parallel for different trace sessions, disable the other
>>> port when one port is turned on.
>>>
>>>          etm0_out
>>>          |
>>>      apss_funnel_in0
>>>             |
>>>     apss_merge_funnel_in
>>>             |
>>>         funnel1_in4
>>>          |
>>>      merge_funnel_in1
>>>          |
>>>       swao_funnel_in
>>>             |
>>>           etf_in
>>>          |
>>>     swao_replicator_in
>>>             |
>>>      replicator_in
>>>          |
>>>           etr_in
>>>
>>>     Kernel panic - not syncing: Watchdog detected hard LOCKUP on cpu 0
>>>     CPU: 7 PID: 0 Comm: swapper/7 Tainted: G S  B             5.4.25 #100
>>>     Hardware name: Qualcomm Technologies, Inc. SC7180 IDP (DT)
>>>     Call trace:
>>>      dump_backtrace+0x0/0x188
>>>      show_stack+0x20/0x2c
>>>      dump_stack+0xdc/0x144
>>>      panic+0x168/0x370
>>>      arch_seccomp_spec_mitigate+0x0/0x14
>>>      watchdog_timer_fn+0x68/0x290
>>>      __hrtimer_run_queues+0x264/0x498
>>>      hrtimer_interrupt+0xf0/0x22c
>>>      arch_timer_handler_phys+0x40/0x50
>>>      handle_percpu_devid_irq+0x8c/0x158
>>>      __handle_domain_irq+0x84/0xc4
>>>      gic_handle_irq+0x100/0x1c4
>>>      el1_irq+0xbc/0x180
>>>      arch_cpu_idle+0x3c/0x5c
>>>      default_idle_call+0x1c/0x38
>>>      do_idle+0x100/0x280
>>>      cpu_startup_entry+0x24/0x28
>>>      secondary_start_kernel+0x15c/0x170
>>>     SMP: stopping secondary CPUs
>>>
>>> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
>>> Tested-by: Stephen Boyd <swboyd@chromium.org>


>>
>> This is not sufficient. You must prevent another session trying to
>> enable the other port of the replicator as this could silently fail
>> the "on-going" session. Not ideal. Fail the attempt to enable a port
>> if the other port is active. You could track this in software and
>> fail early.
>>
>> Suzuki
> 
> While I have no issue in principle with not enabling a path to a sink
> that is not in use - indeed in some cases attaching to unused sinks
> can cause back-pressure that slows throughput (cf TPIU) - I am
> concerned that this modification is masking an underlying issue with
> the platform in question.
> 
> Should we decide to enable the diversion of different IDs to different
> sinks or allow different sessions go to different sinks, then this has
> potential to fail on the SC7180 SoC - and it will be difficult in
> future to associate a problem with this discussion.

Mike,

I think thats a good point.
Sai, please could we narrow down this to the real problem and may be
work around it for the "device" ? Do we know which sink is causing the
back pressure ? We could then push the "work around" to the replicator
it is connected to.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
