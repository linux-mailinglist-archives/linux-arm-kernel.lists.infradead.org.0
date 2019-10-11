Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76395D48E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 22:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xm8UM6fj1nk0SLCIybYZvXDFpyU3yB7xgLwzK3u8Ai4=; b=Ti9xARBdqSmabr
	l+9ZwC7ikFiuTVPlzoAc8jIUV1khao0svOjXtZSdSE6+oFyOnw3MaaY31NBRiI56Gclj/xl4eVWM/
	3ZmWblFlsgR3Z/xn5sH7Lz6RbSGdlAhmlItPYTczmYB34YNcELdtiivqxyJnkMiPx0QKkD9wSkjK7
	g9mxHojMVlFQLO6FgnznjA9356fhzQ0f/D6SWUZ8Tjk0gxHjsWwruPmMQUNbTPZYVSXzjmx9w8ES+
	0QyKkzAbasmjOQdAaBVEJTM1sXbycIF1RF43byJBPfjOxz5WrZPCuMf1QpIQtrQwMQMgNgon+Z6iT
	Bwx2VShGaBuChTNCuGeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ1MS-0000QR-06; Fri, 11 Oct 2019 20:18:04 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ1MI-0000PH-8g
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 20:17:56 +0000
Received: by mail-pg1-x543.google.com with SMTP id f14so1291611pgi.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 13:17:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=urKtgcUqAkGp8KZBc5+oZtHTmWIcz82tEFRNTfuvdn4=;
 b=AXmpi7kejzX23jX+27pOe3agKp/6or0QiTrtZTRQk8imHTwVDIPlt7zAlpLwHTDmuM
 WcAdOnI30lpOnV/urS4PpjaIT4siN4pVPGVW9CMRtzjT1g1A2gepjSRffqI+FCRphsWm
 dZSPAUK+NPEgFsvkDPV2yCTh8mAFw/G++hRzIU/bu5REGQW9JRIS3mp/dELwY5++Q8tb
 oMPdMuFGBhDhl6LtGzArcMzLzVIJpfeYHiCONqiYz1jXhquUFROPQpLtkSikFAuax+50
 SF6uPoFyJ5awRs+H+rCfPJ3wysh4NOF5TO7VVo7LwYT8ALPeMEuijne7GVDpmPOluO7L
 pm+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=urKtgcUqAkGp8KZBc5+oZtHTmWIcz82tEFRNTfuvdn4=;
 b=KLcWbMXbaPG8TQciPy8+7dL6s5BWR3YRQVs9HLV1gBR6y4TVszJU6VfScDqW1nbApS
 +Urc1ZNB5+HsRD4J00yCIWzf1ROkMN8ufzKkr8FJUO0lBO32dAyA+hNUCEVv+HC/bZMV
 Ywnjki94CJ4bKksl9UMqiHbw+BSKAT2EEa5h0Xo7gDxA7rIWIS0Cxjhm393Z/Ai6eXvq
 7h08R9JztYtItuArw3TlqLASq9bji1h94oxSPjgZhlD8Yw/1EV68tIKY5xigVIg0gko+
 vTD5CV3zuOLMNf+c5U0pQF5NHcMRAp0fPPRaRDACJOPXy4gwJiS9vzhvkSkWBT1Nd3+4
 6AcQ==
X-Gm-Message-State: APjAAAVRoOKhbV65df5W8e1+i22sQZw/3RoOcDq0A1yznabWtfEixAPJ
 +TrYkS4n3xwdma74yh4b7GiCXw==
X-Google-Smtp-Source: APXvYqy38uKd8VmnBen9hFXQxvk0j0GYq4h83Htd1vNyCXJhBgpeD8RsBQrvhqjAymF9cy+J3yvh8g==
X-Received: by 2002:a17:90a:9306:: with SMTP id
 p6mr19281294pjo.68.1570825073251; 
 Fri, 11 Oct 2019 13:17:53 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id z13sm11344787pfg.172.2019.10.11.13.17.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 11 Oct 2019 13:17:52 -0700 (PDT)
Date: Fri, 11 Oct 2019 14:17:50 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v3 6/6] perf cs-etm: Synchronize instruction sample with
 the thread stack
Message-ID: <20191011201750.GD13688@xps15>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-7-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005091614.11635-7-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_131754_311098_A375E3A0 
X-CRM114-Status: GOOD (  22.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Sat, Oct 05, 2019 at 05:16:14PM +0800, Leo Yan wrote:
> The synthesized flow use 'tidq->packet' for instruction samples; on the
> other hand, 'tidp->prev_packet' is used to generate the thread stack and
> the branch samples, this results in the instruction samples using one
> packet ahead than thread stack and branch samples ('tidp->prev_packet'
> vs 'tidq->packet').
> 
> This leads to an instruction's callchain error as shows in below
> example:
> 
>   main  1579        100      instructions:
>   	ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
>   	ffff000010214850 perf_event_update_userpage+0x48 ([kernel.kallsyms])
>   	ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
>   	ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
>   	ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
>   	ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
>   	ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> 
> In the callchain log, for the two continuous lines the up line contains
> one child function info and the followed line contains the caller
> function info, and so forth.  So the first two lines are:
> 
>   perf_event_update_userpage+0x4c  => the sampled instruction
>   perf_event_update_userpage+0x48  => the parent function's calling
> 
> The child function and parent function both are the same function
> perf_event_update_userpage(), but this isn't a recursive function, thus
> the sequence for perf_event_update_userpage() calling itself shouldn't
> never happen.  This callchain error is caused by the instruction sample
> using an ahead packet than the thread stack, the thread stack is deferred
> to process the new packet and misses to pop stack if it is just a return
> packet.
> 
> To fix this issue, we can simply change to use 'tidq->prev_packet' to
> generate the instruction samples, this allows the thread stack to push
> and pop synchronously with instruction sample.  Finally, the callchain
> can be displayed correctly as below:
> 
>   main  1579        100      instructions:
> 	ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
> 	ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
> 	ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
> 	ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
> 	ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
> 	ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 56e501cd2f5f..fa969dcb45d2 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1419,7 +1419,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>  	struct cs_etm_packet *tmp;
>  	int ret;
>  	u8 trace_chan_id = tidq->trace_chan_id;
> -	u64 instrs_executed = tidq->packet->instr_count;
> +	u64 instrs_executed = tidq->prev_packet->instr_count;
>  
>  	tidq->period_instructions += instrs_executed;
>  
> @@ -1450,7 +1450,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>  		 */
>  		s64 offset = (instrs_executed - instrs_over - 1);
>  		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
> -					      tidq->packet, offset);
> +					      tidq->prev_packet, offset);

I have tested this set in --per-thread mode and things are working as
advertised. Did you see how things look like in CPU-wide scenarios?

Thanks,
Mathieu

>  
>  		ret = cs_etm__synth_instruction_sample(
>  			etmq, tidq, addr, etm->instructions_sample_period);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
