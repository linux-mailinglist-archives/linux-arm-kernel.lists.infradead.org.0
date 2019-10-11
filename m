Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963D7D48C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 22:00:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fd2ycC2+/Zvqr6Mt5E+DE52puOTADrFJNLBnqMNLBiQ=; b=szOZVeCXdaPFRZ
	e3AjQea/npkFb2CKHEUDAw0m8Sqmvc4uQ7IBA9HZaHT1+HkkP3qaCYocxL7dscaF3+G46qhXPyy+0
	GCn0iz2lLhMboKkiPC7cXjNOI/4VZs7lD5PS6mAxPD8pyoun9ao6vu/NXS96X20mWG60HwSX7xHYF
	xwM7EIZtcNSjtZa5MtotLs4TBDT5keunebNCIRCfxJGsDo8IeAnj/AfdkRPPCeAbRpmU3uKaJ2Gr6
	ASVrP8F9+s60xnOKmELLTFtO/HhFQAlvk8vhD0lyRbfpyKNAFMOljt6LmxrbI9vtdMLYb+fa54ogD
	QBfajC2d5CfN6n/aj5pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ14l-0001Y8-2x; Fri, 11 Oct 2019 19:59:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ14Y-0001XP-Ov
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 19:59:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id q24so4921987plr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 12:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=k6afyqkADDxzCqdL1Z9t7tFq6tPUrGqNVvG+bqx/tL8=;
 b=sMeHCjXa86igWl2Il1mMfxFcQx9vzIadTmlxHGTv1pXq+lSMZkZ5/mD93OKn6zt5q8
 bK7BlobRwylUgRNcIHPOlRePif6gMvXeKhT+hXMTva8OeQ7q4oJaWOveQfcAmA2g7iAY
 fFUqADJDb3lf49Iyxack5K6WF3A593ez4NsfpjzmgSqmMIIPSfp6l95zKrRmRWFmyRHD
 K6ikUq7J6qaQpIcvqIycPIF/DnOkJNBXP8aypz6ZQ/+P7LD+HhyLdx6tPKrctdnRjYpe
 6bExI+yR4rtB4ZEEqbADI8TDTMI44+OLwlyiiu1ehIywzpFezKt2npeQ7fHnxYQ6pubd
 64XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=k6afyqkADDxzCqdL1Z9t7tFq6tPUrGqNVvG+bqx/tL8=;
 b=R8xXIBnCd9brJ1GoY9vDq7v/F0QvdvmTYP2u/gxfpE/8ZTOVdheHx4cBNCaj2exdin
 TBfbbg6lf+ddLa8V7R4x8gk5JrJUAs6b6Amm8ENS/dRs3VBsnzUXvDto79yULuV3pS3o
 RqPSekRVVjRlOf7E9lzIQUvhXxxQQ04bUqqLavFR/fN/nxXh5ttNlDx2+9qII5br1D0j
 FeOESUO9alHRiOByfhAUQ/2uAWS3paeQZyUcoevB+g95gARj59s2bu3xevvbY1fM6jVP
 79b7x9mJe/dDasW/nJvy2ya6dL3B1v7SN2m50afgmswWoi/BX10ERJrCTAKsQ61tNnNQ
 yXug==
X-Gm-Message-State: APjAAAV/CsG0/dEgumcecMWft9LKZbODjad9uklcarEWAqU3JV0CrFI/
 tElhWAQagXjmyAcHrMHqscNCiM/0eTU=
X-Google-Smtp-Source: APXvYqylwsJ9d2J6HlfZZitGB6aiBmOAV9bPlM9K1LmuILw5/+QvA9b6nghIV3JOTXZA3Kp1fcK0hw==
X-Received: by 2002:a17:902:9008:: with SMTP id
 a8mr16960423plp.218.1570823970966; 
 Fri, 11 Oct 2019 12:59:30 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id z2sm12447287pfq.58.2019.10.11.12.59.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 11 Oct 2019 12:59:30 -0700 (PDT)
Date: Fri, 11 Oct 2019 13:59:28 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v3 5/6] perf cs-etm: Support callchain for instruction
 sample
Message-ID: <20191011195928.GB13688@xps15>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-6-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005091614.11635-6-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_125934_875256_45D35340 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 05, 2019 at 05:16:13PM +0800, Leo Yan wrote:
> Now CoreSight has supported the thread stack; based on the thread stack
> we can synthesize call chain for the instruction sample; the call chain
> can be injected by option '--itrace=g'.
> 
> Before:
> 
>   # perf script --itrace=g16l64i100
>             main  1579        100      instructions:  ffff0000102137f0 group_sched_in+0xb0 ([kernel.kallsyms])
>             main  1579        100      instructions:  ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
>             main  1579        100      instructions:  ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
>             main  1579        100      instructions:  ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
>             main  1579        100      instructions:  ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
>   [...]
> 
> After:
> 
>   # perf script --itrace=g16l64i100
> 
>   main  1579        100      instructions:
>           ffff000010213b78 flexible_sched_in+0xf0 ([kernel.kallsyms])
>           ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> 
>   main  1579        100      instructions:
>           ffff0000102135ac event_sched_in.isra.57+0x74 ([kernel.kallsyms])
>           ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
>           ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
>           ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> 
>   main  1579        100      instructions:
>           ffff000010219344 perf_swevent_add+0x6c ([kernel.kallsyms])
>           ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
>           ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
>           ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
>           ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
>   [...]
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 35 +++++++++++++++++++++++++++++++++--
>  1 file changed, 33 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 4b42f9c9bd34..56e501cd2f5f 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -17,6 +17,7 @@
>  #include <stdlib.h>
>  
>  #include "auxtrace.h"
> +#include "callchain.h"
>  #include "color.h"
>  #include "cs-etm.h"
>  #include "cs-etm-decoder/cs-etm-decoder.h"
> @@ -74,6 +75,7 @@ struct cs_etm_traceid_queue {
>  	size_t last_branch_pos;
>  	union perf_event *event_buf;
>  	struct thread *thread;
> +	struct ip_callchain *chain;
>  	struct branch_stack *last_branch;
>  	struct branch_stack *last_branch_rb;
>  	struct cs_etm_packet *prev_packet;
> @@ -251,6 +253,16 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
>  	if (!tidq->prev_packet)
>  		goto out_free;
>  
> +	if (etm->synth_opts.callchain) {
> +		size_t sz = sizeof(struct ip_callchain);
> +
> +		/* Add 1 to callchain_sz for callchain context */
> +		sz += (etm->synth_opts.callchain_sz + 1) * sizeof(u64);
> +		tidq->chain = zalloc(sz);
> +		if (!tidq->chain)
> +			goto out_free;
> +	}
> +
>  	if (etm->synth_opts.last_branch) {
>  		size_t sz = sizeof(struct branch_stack);
>  
> @@ -275,6 +287,7 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
>  	zfree(&tidq->last_branch);
>  	zfree(&tidq->prev_packet);
>  	zfree(&tidq->packet);
> +	zfree(&tidq->chain);

Theoretically this should go two lines up, i.e just below
zfree(&tidq->prev_packet).  If you agree with the comment I did in 3/6 then it
is worth doing the above change, otherwise it can stay that way.

>  out:
>  	return rc;
>  }
> @@ -546,6 +559,7 @@ static void cs_etm__free_traceid_queues(struct cs_etm_queue *etmq)
>  		zfree(&tidq->last_branch_rb);
>  		zfree(&tidq->prev_packet);
>  		zfree(&tidq->packet);
> +		zfree(&tidq->chain);

Same comment as above.  The rest looks good to me.

Mathieu

>  		zfree(&tidq);
>  
>  		/*
> @@ -1126,7 +1140,7 @@ static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
>  	int insn_len;
>  	u64 from_ip, to_ip;
>  
> -	if (etm->synth_opts.thread_stack) {
> +	if (etm->synth_opts.callchain || etm->synth_opts.thread_stack) {
>  		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
>  		to_ip = cs_etm__first_executed_instr(tidq->packet);
>  
> @@ -1182,6 +1196,14 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>  
>  	cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
>  
> +	if (etm->synth_opts.callchain) {
> +		thread_stack__sample(tidq->thread, tidq->packet->cpu,
> +				     tidq->chain,
> +				     etm->synth_opts.callchain_sz + 1,
> +				     sample.ip, etm->kernel_start);
> +		sample.callchain = tidq->chain;
> +	}
> +
>  	if (etm->synth_opts.last_branch) {
>  		cs_etm__copy_last_branch_rb(etmq, tidq);
>  		sample.branch_stack = tidq->last_branch;
> @@ -1369,6 +1391,8 @@ static int cs_etm__synth_events(struct cs_etm_auxtrace *etm,
>  		attr.sample_type &= ~(u64)PERF_SAMPLE_ADDR;
>  	}
>  
> +	if (etm->synth_opts.callchain)
> +		attr.sample_type |= PERF_SAMPLE_CALLCHAIN;
>  	if (etm->synth_opts.last_branch)
>  		attr.sample_type |= PERF_SAMPLE_BRANCH_STACK;
>  
> @@ -2639,7 +2663,6 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
>  	} else {
>  		itrace_synth_opts__set_default(&etm->synth_opts,
>  				session->itrace_synth_opts->default_no_sample);
> -		etm->synth_opts.callchain = false;
>  		etm->synth_opts.thread_stack =
>  				session->itrace_synth_opts->thread_stack;
>  	}
> @@ -2651,6 +2674,14 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
>  		etm->branches_filter |= PERF_IP_FLAG_RETURN |
>  					PERF_IP_FLAG_TRACE_BEGIN;
>  
> +	if (etm->synth_opts.callchain && !symbol_conf.use_callchain) {
> +		symbol_conf.use_callchain = true;
> +		if (callchain_register_param(&callchain_param) < 0) {
> +			symbol_conf.use_callchain = false;
> +			etm->synth_opts.callchain = false;
> +		}
> +	}
> +
>  	err = cs_etm__synth_events(etm, session);
>  	if (err)
>  		goto err_delete_thread;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
