Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95F7AA76B0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 00:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vR97ZELnYU+6Jrhd6l86Hcp4I+HJIjKQd9CH/d3IApo=; b=YRns8+p45C+70b
	01xdfsOoO0ob2NQE2nq2wzncaQ8qqk29OKE6VpZj3dX8UZnl0+rEDfqP78EV0lgbTnegEr7A5TXeL
	zXrrbXwZ/e5G9dDc3Tg1UjODJZGPxXKZXx3ssSwhaluVi37hZ+WA27ZtcmD3yyqiOgO9b/z4rOVik
	YPdC615syiv1vS6pc3ix9pgoKVaUODQfpcdda5eXgJh3LEo8Qk7cW9/6QY/bdWiUM2gopuy/GrHa0
	PpyZ7jMGhNO2eMLTNaUQOrCIiJIV8QvBKpe/UCvqQrl8h1Mflws9eT3sv/zYrL6HX/4QtgyJv9Gue
	0JjrKUJ59kWaKnF092Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Gxi-0005vM-81; Tue, 03 Sep 2019 22:07:42 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5GxT-0005v1-49
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 22:07:28 +0000
Received: by mail-pf1-x443.google.com with SMTP id w16so11767319pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 15:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Xyqj5HyWdFbW4BPgeZq1CM5418QyoyNXiQU5VxTQbtc=;
 b=nsA6l+Ha2FFi4VBb0F0uWiZiigDZwKek/olDL51vD8SpAe8XFT/s4OpuVKir4GbSx4
 rXcYC1/+VhWmsT2aAz0jiI4lOkSqLWoRZBV+jGc/tAW+VQQF+7gYUcD15KCsiQLT6kzC
 AEeplgAuLFvEK4J9o/C6X88Rpv0hvWujXLib3Dq9YVCYCMLqKvLfb/Uv4OPQJCw5yXC2
 5YAmHCKpXKXEyAIssble4tDsISkB9TRIEJmp0NT0VdKpZap55VBhFIsAOPZ5gTWhTi4A
 Ll05VUT1pAV/a0hdziLPiqRfi73fvocQBsrH8ilBRE7W5OxmcyDUqUt4DTVKFDkS0yF4
 k3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xyqj5HyWdFbW4BPgeZq1CM5418QyoyNXiQU5VxTQbtc=;
 b=KEM/qjs5wVS8GVyPnZRkB8x4RqnKhM2cE9RcH1F6sjG5S3RMVApn7MC/j3ybquet1L
 0+7I/PEq6GMh69Axjqf3I5gJiyP9BtFDmhbnoQV3x9OCYRXkQgPlhkkQprcS4hEmCVSy
 0o/ORlA6n8UvF03zamGS9Yy9swRFAW49JE81gUitn1+HFJ5+ADUFKA6WAi5UWkAGuQ9z
 NQyhEgVVZMzh8sbBRKYWkDltxTYcyf7qCNOFLHGoVKbLEnOUBLC40w6a2st0PJ2vS3Ej
 GEN9s3mt/qtazgDasRffmUQKmJ1NxMSwmavti3CdXKDFXVA7bOAbDvlZgjt8+f0iy3o2
 o9Ew==
X-Gm-Message-State: APjAAAVLeXQ07IbUeozTvtYnQIEN/k0ui8mta6VWizqCDKp6O3ApLnmC
 Pf/61lPdF90RiFBb3p8ExlufNQ==
X-Google-Smtp-Source: APXvYqxsSRqBiVf5iRXpEV7HJElzXLdICeegbw39QL0RCNGLwECf6l/l16uZspZ0J4FdMyte/RTmMg==
X-Received: by 2002:a62:7641:: with SMTP id r62mr41077659pfc.201.1567548446176; 
 Tue, 03 Sep 2019 15:07:26 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id 74sm3173206pfy.78.2019.09.03.15.07.24
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 03 Sep 2019 15:07:25 -0700 (PDT)
Date: Tue, 3 Sep 2019 16:07:23 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 2/3] perf cs-etm: Add callchain to instruction sample
Message-ID: <20190903220723.GC25787@xps15>
References: <20190830062421.31275-1-leo.yan@linaro.org>
 <20190830062421.31275-3-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190830062421.31275-3-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_150727_200066_52372AC7 
X-CRM114-Status: GOOD (  23.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <Robert.Walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 02:24:20PM +0800, Leo Yan wrote:
> Firstly, this patch adds support for the thread stack; when every branch
> packet is coming we will push or pop the stack based on the sample
> flags.
> 
> Secondly, based on the thread stack we can synthesize call chain for the
> instruction sample, this can be used by itrace option '--itrace=g'.
>

In most cases using the word "secondly" is a good indication the patch should be
split.
 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 74 +++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 73 insertions(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 882a0718033d..ad573d3bd305 100644
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
> @@ -69,6 +70,7 @@ struct cs_etm_traceid_queue {
>  	size_t last_branch_pos;
>  	union perf_event *event_buf;
>  	struct thread *thread;
> +	struct ip_callchain *chain;
>  	struct branch_stack *last_branch;
>  	struct branch_stack *last_branch_rb;
>  	struct cs_etm_packet *prev_packet;
> @@ -246,6 +248,16 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
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
> @@ -270,6 +282,7 @@ static int cs_etm__init_traceid_queue(struct cs_etm_queue *etmq,
>  	zfree(&tidq->last_branch);
>  	zfree(&tidq->prev_packet);
>  	zfree(&tidq->packet);
> +	zfree(&tidq->chain);
>  out:
>  	return rc;
>  }
> @@ -541,6 +554,7 @@ static void cs_etm__free_traceid_queues(struct cs_etm_queue *etmq)
>  		zfree(&tidq->last_branch_rb);
>  		zfree(&tidq->prev_packet);
>  		zfree(&tidq->packet);
> +		zfree(&tidq->chain);
>  		zfree(&tidq);
>  
>  		/*
> @@ -1121,6 +1135,41 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
>  			   sample->insn_len, (void *)sample->insn);
>  }
>  
> +static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
> +				    struct cs_etm_traceid_queue *tidq)
> +{
> +	struct cs_etm_auxtrace *etm = etmq->etm;
> +	u8 trace_chan_id = tidq->trace_chan_id;
> +	int insn_len;
> +	u64 from_ip, to_ip;
> +
> +	if (etm->synth_opts.callchain || etm->synth_opts.thread_stack) {
> +
> +		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
> +		to_ip = cs_etm__first_executed_instr(tidq->packet);
> +
> +		/*
> +		 * T32 instruction size might be 32-bit or 16-bit, decide by
> +		 * calling cs_etm__t32_instr_size().
> +		 */
> +		if (tidq->prev_packet->isa == CS_ETM_ISA_T32)
> +			insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> +							  from_ip);
> +		/* Otherwise, A64 and A32 instruction size are always 32-bit. */
> +		else
> +			insn_len = 4;
> +
> +		thread_stack__event(tidq->thread, tidq->prev_packet->cpu,
> +				    tidq->prev_packet->flags,
> +				    from_ip, to_ip, insn_len,
> +				    etmq->buffer->buffer_nr);
> +	} else {
> +		thread_stack__set_trace_nr(tidq->thread,
> +					   tidq->prev_packet->cpu,
> +					   etmq->buffer->buffer_nr);

Please add a comment on what the above does.  As a rule of thumb I add a comment
per addition in a patch in order to help people understand what is happening and
some of the reasonning behing the code.

> +	}
> +}
> +
>  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>  					    struct cs_etm_traceid_queue *tidq,
>  					    u64 addr, u64 period)
> @@ -1146,6 +1195,14 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
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
> @@ -1329,6 +1386,8 @@ static int cs_etm__synth_events(struct cs_etm_auxtrace *etm,
>  		attr.sample_type &= ~(u64)PERF_SAMPLE_ADDR;
>  	}
>  
> +	if (etm->synth_opts.callchain)
> +		attr.sample_type |= PERF_SAMPLE_CALLCHAIN;
>  	if (etm->synth_opts.last_branch)
>  		attr.sample_type |= PERF_SAMPLE_BRANCH_STACK;
>  
> @@ -1397,6 +1456,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>  		tidq->period_instructions = instrs_over;
>  	}
>  
> +	if (tidq->prev_packet->last_instr_taken_branch)
> +		cs_etm__add_stack_event(etmq, tidq);
> +
>  	if (etm->sample_branches) {
>  		bool generate_sample = false;
>  
> @@ -2596,7 +2658,17 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
>  	} else {
>  		itrace_synth_opts__set_default(&etm->synth_opts,
>  				session->itrace_synth_opts->default_no_sample);
> -		etm->synth_opts.callchain = false;
> +
> +		etm->synth_opts.thread_stack =
> +				session->itrace_synth_opts->thread_stack;
> +	}
> +
> +	if (etm->synth_opts.callchain && !symbol_conf.use_callchain) {
> +		symbol_conf.use_callchain = true;
> +		if (callchain_register_param(&callchain_param) < 0) {
> +			symbol_conf.use_callchain = false;
> +			etm->synth_opts.callchain = false;
> +		}
>  	}
>  
>  	err = cs_etm__synth_events(etm, session);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
