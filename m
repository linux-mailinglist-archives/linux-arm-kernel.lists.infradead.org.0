Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C721D12F562
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 09:24:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/88jok/oe1QIW4Sj/aOHzjy3NyXdAB1PVRC3XNFwYs=; b=SjirpxQJMFx/dV
	erqqA8kH97g+GHu6mz9x45naaVFRzeKmiAsFYt8avf0az4na0j6EV/g7hLbh8fyo7zTDogO6+08gr
	Zm5RWeQyywV4/ZM5FQPHNKTVnsvejHqPEBuXHxJxWM+HvnGZu+Xs7ygbugB7v0BzFGgLfTTSc5AOK
	GU2F9CsYQr7cFHRf9e3W8zlVoOkhTwYfDmR/rKDkHwcdJACwn7is45gCyllhIk+9zX5thy2WSZRzB
	0FFsJbfPbQkr0zTcsMLj5hLWgrdPYTizOk7SBnnKhdGd0+3wMvjvL6jKjkzhjiUUqmtlyWJcUUmQ0
	4C56t5eBpZgCjWHLfCrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inIG7-0005D5-Sy; Fri, 03 Jan 2020 08:24:39 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inIG0-0005CT-AC
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 08:24:34 +0000
Received: by mail-ot1-x344.google.com with SMTP id 77so60185463oty.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 00:24:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ok/DbFXVu8wcBRwH+beyd5PbGJNXRfNGB1s9COJzI9E=;
 b=wKvJX8Ferqck9I+7PoBaITCDwBkj7ryjyhQtBbibNQR7CfFkW7wfJtBy9XVltBaeG/
 h6uzxCerB4A4grZDAdlglceHzGArmkxIluH1hsdKETyorB8RBfWPqbwN+PDlO0DRWSbP
 U7yX0D7qGmRV1MTwQ2uBdmzT7Y8NOSexe6F+LrENvtdf81wvyT+l2ZNKIifw1+HOODVu
 JbKL+9pT8IixibifAjh6NTOhVk8mqz3+qAaHjYn/iBcHVXyblV8ctPmUdsbSaZ22oy26
 Qu7GY5v3Pqlia1jzV8W4xg750MX71FcUsEe9qGR4GhCsy9d4TKUVurN2eE+dWpouDhzt
 F7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ok/DbFXVu8wcBRwH+beyd5PbGJNXRfNGB1s9COJzI9E=;
 b=oTjiNHe1QSEyEyW7o5tVRuiRqD5oKz88v4E0aKDFlbpgc32Ft2qx+yB/ury7VQXAge
 JfA8SwmM/INe5LNJgwWZYL+f3SfnFilB0q9jNUT1iocRfBc83tpcwB6Epexpq03GzN5m
 hjl5ZxSHeDqpNlYljDLFkB3tAFkWkF2YWh3TsO9OC9NyOVGwSCi67wFOeFG3kCrN+qmF
 StPIYeO5E0kpl1e/qKw/3teoCi9+0RF9nbLAi/1Xf5asib2dmBrty5Cu7qCqz09+lBy8
 Ay51Lh3C6hhNKjV7QOWhGyMDMd02PPE7grloT6i9MLifQZu8ZBe/PoQcr2ZYMk8uS7ZG
 yUwQ==
X-Gm-Message-State: APjAAAV55rbi+zd4h0Q+JOPcndQTUaOE0OGMeKzACVlEiFDi4/jnWrvj
 Y3MV4QL1xq0B2MX5V+hW9fhNnA==
X-Google-Smtp-Source: APXvYqxuemnu0llRogokHXXjQJi+v9XwQzB0b8xkAyY83elisGn2yIB2n7L32ydeWU2kRNX80462SA==
X-Received: by 2002:a05:6830:159a:: with SMTP id
 i26mr98528670otr.3.1578039863198; 
 Fri, 03 Jan 2020 00:24:23 -0800 (PST)
Received: from leoy-ThinkPad-X240s (li1058-79.members.linode.com.
 [45.33.121.79])
 by smtp.gmail.com with ESMTPSA id 97sm20434990otx.29.2020.01.03.00.24.18
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 Jan 2020 00:24:22 -0800 (PST)
Date: Fri, 3 Jan 2020 16:24:14 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Wei Li <liwei391@huawei.com>
Subject: Re: [RFC PATCH] perf tools: cs-etm: fix endless record after being
 terminated
Message-ID: <20200103082414.GB9814@leoy-ThinkPad-X240s>
References: <20200102074144.10407-1-liwei391@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200102074144.10407-1-liwei391@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_002432_491325_3ADB01A8 
X-CRM114-Status: GOOD (  21.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, mathieu.poirier@linaro.org, suzuki.poulose@arm.com,
 alexander.shishkin@linux.intel.com, ilubashe@akamai.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, huawei.libin@huawei.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Wei,

On Thu, Jan 02, 2020 at 03:41:44PM +0800, Wei Li wrote:
> In __cmd_record(), when receiving SIGINT(ctrl + c), a done flag will
> be set and the event list will be disabled by evlist__disable() once.
> 
> While in auxtrace_record.read_finish(), the related events will be
> enabled again, if they are continuous, the recording seems to be endless.
> 
> If the cs_etm event is disabled, we don't enable it again here.
> 
> Note: This patch is NOT tested since i don't have such a machine with
> coresight feature, but the code seems buggy same as arm-spe and intel-pt.
> 
> Signed-off-by: Wei Li <liwei391@huawei.com>
> ---
>  tools/perf/arch/arm/util/cs-etm.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index ede040cf82ad..1893a0e3b1e1 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -865,9 +865,13 @@ static int cs_etm_read_finish(struct auxtrace_record *itr, int idx)
>  	struct evsel *evsel;
>  
>  	evlist__for_each_entry(ptr->evlist, evsel) {
> -		if (evsel->core.attr.type == ptr->cs_etm_pmu->type)
> -			return perf_evlist__enable_event_idx(ptr->evlist,
> -							     evsel, idx);
> +		if (evsel->core.attr.type == ptr->cs_etm_pmu->type) {
> +			if (evsel->disabled)
> +				return 0;
> +			else
> +				return perf_evlist__enable_event_idx(
> +						ptr->evlist, evsel, idx);
> +		}
>  	}

I took some time to test on Arm CoreSight, the perf program can be
terminated by Ctrl+c with SIGINT signal on the mainline kernel.

And after capturing ftrace data with below log:

5242      migration/2-19    [002] d..3  4648.383155: sched_migrate_task: comm=perf pid=1692 prio=120 orig_cpu=2 dest_cpu=0
5243      migration/2-19    [002] d..2  4648.383167: sched_switch: prev_comm=migration/2 prev_pid=19 prev_prio=0 prev_state=S ==> next_comm=swapper/2 next_pid=0 next_prio=120
5244           <idle>-0     [000] d..2  4648.383167: sched_switch: prev_comm=swapper/0 prev_pid=0 prev_prio=120 prev_state=R ==> next_comm=perf next_pid=1692 next_prio=120
5245             perf-1692  [000] d..2  4648.383193: sched_stat_runtime: comm=perf pid=1692 runtime=35420 [ns] vruntime=1636633943 [ns]
5246             perf-1692  [000] d..3  4648.383200: sched_waking: comm=migration/0 pid=11 prio=0 target_cpu=000
5247             perf-1692  [000] dN.4  4648.383203: sched_wakeup: comm=migration/0 pid=11 prio=0 target_cpu=000
5248             perf-1692  [000] dN.2  4648.383205: sched_stat_runtime: comm=perf pid=1692 runtime=9340 [ns] vruntime=1636643283 [ns]
5249             perf-1692  [000] d..2  4648.383208: sched_switch: prev_comm=perf prev_pid=1692 prev_prio=120 prev_state=R+ ==> next_comm=migration/0 next_pid=11 next_prio=0
5250      migration/0-11    [000] d..3  4648.383215: sched_migrate_task: comm=perf pid=1692 prio=120 orig_cpu=0 dest_cpu=1
5251       algorithm1-721   [001] dN.2  4648.383225: sched_stat_runtime: comm=algorithm1 pid=721 runtime=2906000 [ns] vruntime=3501282256244 [ns]
5252       algorithm1-721   [001] d..2  4648.383229: sched_switch: prev_comm=algorithm1 prev_pid=721 prev_prio=120 prev_state=R ==> next_comm=perf next_pid=1692 next_prio=120
5253      migration/0-11    [000] d..2  4648.383235: sched_switch: prev_comm=migration/0 prev_pid=11 prev_prio=0 prev_state=S ==> next_comm=swapper/0 next_pid=0 next_prio=120
5254       algorithm1-721   [001] d..4  4648.383241: <stack trace>
5255  => kprobe_breakpoint_handler
5256  => call_break_hook
5257  => brk_handler
5258  => do_debug_exception
5259  => el1_sync_handler
5260  => el1_sync
5261  => etm_event_stop
5262  => event_sched_out.isra.106
5263  => group_sched_out.part.108
5264  => ctx_sched_out
5265  => task_ctx_sched_out
5266  => __perf_event_task_sched_out
5267  => __schedule
5268  => schedule
5269  => do_notify_resume
5270  => work_pending

We can see after send SIGINT signal, the process 'perf' will be
migrated from CPU2 to CPU0 (line 5242) and it will preempt process
'algorithm1' (line 5252); after the process 'algorithm1' is scheduled
out, the function etm_event_stop() will be invoked to stop tracing.

If we connect with the code in cs_etm_read_finish(), it tries to call
ioctl PERF_EVENT_IOC_ENABLE, but because the process 'algorithm1' is
scheduled out, so the perf event should not be enabled afterwards.

I may miss something at here ... Could you confirm what's the type of
attached process?  normal process or RT process?

Thanks,
Leo

P.s. I tested IntelPT with 5.2-rc3 kernel, it also can be terminated
properly.

>  	return -EINVAL;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
