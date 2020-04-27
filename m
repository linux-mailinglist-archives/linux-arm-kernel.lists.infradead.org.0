Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86A91B9F8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:16:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1g0qJFup26lTIl9Rm+CqH1gnOo02jYEZ0reu5yRRxSg=; b=RB1Z6z6pW/L5G5VLy/2nLC+al
	KMwXJ8bC9/RiiTuXaQiRbL3Bt7RsIQLDBXcrCOvqR2KY5k/Ne1pzb/FSgVTlXmRomMrN/KwPB3jDy
	v7ydY5TJUtElPxmNIDjjxptfJIDdAGoKxr3cNOVWTlLxdh7wTv0cTbxJ1mXPoUN1mgrb5z4NyKa90
	CSVvMKiO5CPW8+teB4OqBisMXPmQx/exgkjkeRGoXlUeDtDpD1Ir8aNFDDT0EK4p+XqnVSLsnmnSK
	8JANLh2X5x7dNc2WCcWgwe2tBT8r++SMz29Bt798HCWb1mJ9nTdrpF6mRiIW6ZiKMOvA4N7yFTK4n
	YRPJkmQBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzs8-0003vO-72; Mon, 27 Apr 2020 09:16:16 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzrc-0003i6-R5
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:15:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0302F1FB;
 Mon, 27 Apr 2020 02:15:41 -0700 (PDT)
Received: from [192.168.0.21] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7A7443F68F;
 Mon, 27 Apr 2020 02:15:39 -0700 (PDT)
Subject: Re: [PATCH] coresight: dynamic-replicator: Fix handling of multiple
 connections
To: saiprakash.ranjan@codeaurora.org, mathieu.poirier@linaro.org,
 mike.leach@linaro.org
References: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <cf5852e9-c3c1-3d31-46f0-0370719947ab@arm.com>
Date: Mon, 27 Apr 2020 10:20:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200426143725.18116-1-saiprakash.ranjan@codeaurora.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_021544_986000_50EBD8FC 
X-CRM114-Status: GOOD (  24.97  )
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
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, swboyd@chromium.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/26/2020 03:37 PM, Sai Prakash Ranjan wrote:
> Since commit 30af4fb619e5 ("coresight: dynamic-replicator:
> Handle multiple connections"), we do not make sure that
> the other port is disabled when the dynamic replicator is
> enabled. This is seen to cause the CPU hardlockup atleast
> on SC7180 SoC with the following topology when enabling ETM
> with ETR as the sink via sysfs. Since there is no trace id
> logic in coresight yet to make use of multiple sinks in
> parallel for different trace sessions, disable the other
> port when one port is turned on.
> 
>         etm0_out
> 	  |
>     apss_funnel_in0
>            |
>    apss_merge_funnel_in
>            |
>        funnel1_in4
> 	  |
>     merge_funnel_in1
> 	  |
>      swao_funnel_in
>            |
>          etf_in
> 	  |
>    swao_replicator_in
>            |
>     replicator_in
> 	  |
>          etr_in
> 
>    Kernel panic - not syncing: Watchdog detected hard LOCKUP on cpu 0
>    CPU: 7 PID: 0 Comm: swapper/7 Tainted: G S  B             5.4.25 #100
>    Hardware name: Qualcomm Technologies, Inc. SC7180 IDP (DT)
>    Call trace:
>     dump_backtrace+0x0/0x188
>     show_stack+0x20/0x2c
>     dump_stack+0xdc/0x144
>     panic+0x168/0x370
>     arch_seccomp_spec_mitigate+0x0/0x14
>     watchdog_timer_fn+0x68/0x290
>     __hrtimer_run_queues+0x264/0x498
>     hrtimer_interrupt+0xf0/0x22c
>     arch_timer_handler_phys+0x40/0x50
>     handle_percpu_devid_irq+0x8c/0x158
>     __handle_domain_irq+0x84/0xc4
>     gic_handle_irq+0x100/0x1c4
>     el1_irq+0xbc/0x180
>     arch_cpu_idle+0x3c/0x5c
>     default_idle_call+0x1c/0x38
>     do_idle+0x100/0x280
>     cpu_startup_entry+0x24/0x28
>     secondary_start_kernel+0x15c/0x170
>    SMP: stopping secondary CPUs
> 
> Signed-off-by: Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>
> Tested-by: Stephen Boyd <swboyd@chromium.org>
> ---
> Changes since RFC:
>   * Reworded commit text and included the topology on SC7180.


> ---
>   .../hwtracing/coresight/coresight-replicator.c    | 15 ++++++++++-----
>   1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
> index e7dc1c31d20d..f4eaa38f8f43 100644
> --- a/drivers/hwtracing/coresight/coresight-replicator.c
> +++ b/drivers/hwtracing/coresight/coresight-replicator.c
> @@ -66,14 +66,16 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
>   				     int inport, int outport)
>   {
>   	int rc = 0;
> -	u32 reg;
> +	u32 reg0, reg1;
>   
>   	switch (outport) {
>   	case 0:
> -		reg = REPLICATOR_IDFILTER0;
> +		reg0 = REPLICATOR_IDFILTER0;
> +		reg1 = REPLICATOR_IDFILTER1;
>   		break;
>   	case 1:
> -		reg = REPLICATOR_IDFILTER1;
> +		reg0 = REPLICATOR_IDFILTER1;
> +		reg1 = REPLICATOR_IDFILTER0;
>   		break;
>   	default:
>   		WARN_ON(1);
> @@ -87,8 +89,11 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
>   		rc = coresight_claim_device_unlocked(drvdata->base);
>   
>   	/* Ensure that the outport is enabled. */
> -	if (!rc)
> -		writel_relaxed(0x00, drvdata->base + reg);
> +	if (!rc) {
> +		writel_relaxed(0x00, drvdata->base + reg0);
> +		writel_relaxed(0xff, drvdata->base + reg1);
> +	}
> +

This is not sufficient. You must prevent another session trying to
enable the other port of the replicator as this could silently fail
the "on-going" session. Not ideal. Fail the attempt to enable a port
if the other port is active. You could track this in software and
fail early.

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
