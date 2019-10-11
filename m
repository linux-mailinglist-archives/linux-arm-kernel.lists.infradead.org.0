Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF88D46F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 19:54:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0/0gWeMaSg0F1gqz31ETBlRUiA/F1kRLpztN8iyDb4=; b=rdGlpBGRoWxYm2
	rHOMd/hfddDQHB3c6nSifxyFF2qgHgZndXA5BSQ0Sw9Y1K9CSg+WN8v/0gcGgcmAPYX3qyuf9FBFJ
	PQ2N+/baYKsjFf0dmZQJCfVWnlcJWGfFikVpU5Vfz0aw7IskUEeXj5shTIPIWhzi2176VLsgGtIc7
	xsH6G0zt3awZ7k040tsvzLe4zqEBLGpZO2anStLgiO5Ipnwjj+dnxAyZrBN0lRYUORZY+Zh9NClAw
	uAlyWqW9d9G5ttf2w4ps3qMDWK5PwvtG3UQs0zshmjRkAt83k6KpD7gFmnbBBPOsxjBujrFy5PTc0
	Urr8frYUac9oxN+BaDAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIz79-0004jt-Qw; Fri, 11 Oct 2019 17:54:07 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIz70-0004jO-Jj
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 17:54:00 +0000
Received: by mail-pl1-x642.google.com with SMTP id t10so4796923plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 10:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qgzfqj6sxvLl+nWKisyq4PH5jXle+OPHl08Pk/Xlhsw=;
 b=XFAmu9vxP7eFOCLOKNj/NHpDOwxfNt71RntEp2l7ofcGL52eyVuwXsCIe8ZERMlkfQ
 BGtkhO//mpmTcmlEzHJyXNui8FBxQl9p1yvwiEI5NDFlYn2fGOQ6n1kPknpZ0hMdWjuG
 pMFTXnvP8tPLmV5lthtkug0clYn9CHVij7ElmoSNCfFFZq3A8P4Mu8byVBpkZQlw0lpZ
 f20FWuVGBJirlRVIwfk+bMPm2rilNqHPMi4wDuV64/JJBBvdfmcw6kMff/oCfTGYKupr
 FD2EsPNy3KBqn+BIZWN342L8v1Lwd62u49kB66L3gN4+5keoOFBZfkOWLa3rnnJJ0Yju
 X0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qgzfqj6sxvLl+nWKisyq4PH5jXle+OPHl08Pk/Xlhsw=;
 b=o6yvlo1t9M8i2/pc9tgqR5FSV1RfeMeyH8qw9oTNGnRFFZurlsakYahXdb2Nkdrhwo
 f2Dk/BkqW4JCOY8kKT+J+jZjRsz2tryy6vPT4orslVLXeChSSTo5UYXnEFrTMXKRsp+m
 /38YOZh/7LDEUIjLHkZWZIRRWgQPJvbvsqmzN3Q9J2O++1bd60ejSu4iv+7LxHE14vnK
 /fu1wmnik/z+DznI/72KmaMauLhcgSfGwCU2EbtAOeZg+Zvj0hv44kXHaGOYQ4Nzjj5r
 Zma23/jcGnM0XaV/uXkMa+W61eEFOGk/7NVXiWCTptDwYVsR5e4+7kWzyRWwD8cTCFMD
 BFJw==
X-Gm-Message-State: APjAAAUoCNSFBrd8fKz2Ml9EY74M3F/pJBRzUlc2Vb3rk8CptXfjOBoE
 pM17BUgXoGrdfUgyoYIefQiMLg==
X-Google-Smtp-Source: APXvYqwXraISadvG5/9oA2Hw4IVHCd6smGm+dh76RTLray/g6iCvl+deoh/FyzRpWEFCwmXB3EjjUw==
X-Received: by 2002:a17:902:8642:: with SMTP id
 y2mr15426654plt.187.1570816436891; 
 Fri, 11 Oct 2019 10:53:56 -0700 (PDT)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id s97sm13598540pjc.4.2019.10.11.10.53.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 11 Oct 2019 10:53:56 -0700 (PDT)
Date: Fri, 11 Oct 2019 11:53:53 -0600
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v3 3/6] perf cs-etm: Support thread stack
Message-ID: <20191011175353.GA13688@xps15>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-4-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191005091614.11635-4-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_105358_712975_936D8C85 
X-CRM114-Status: GOOD (  21.76  )
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

On Sat, Oct 05, 2019 at 05:16:11PM +0800, Leo Yan wrote:
> Since Arm CoreSight doesn't support thread stack, the decoding cannot
> display symbols with indented spaces to reflect the stack depth.
> 
> This patch adds support thread stack for Arm CoreSight, this allows
> 'perf script' to display properly for option '-F,+callindent'.
> 
> Before:
> 
>   # perf script -F,+callindent
>             main  2808          1          branches: coresight_test1                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
>             main  2808          1          branches: printf@plt                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
>             main  2808          1          branches: printf@plt                           aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
>             main  2808          1          branches: _init                                aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
>             main  2808          1          branches: _dl_fixup                            ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.so)
>             main  2808          1          branches: _dl_lookup_symbol_x                  ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
>   [...]
> 
> After:
> 
>   # perf script -F,+callindent
>             main  2808          1          branches:                 coresight_test1                                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
>             main  2808          1          branches:                 printf@plt                                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
>             main  2808          1          branches:                     printf@plt                                       aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
>             main  2808          1          branches:                     _init                                            aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
>             main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
>             main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
>   [...]
> 
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 44 ++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 44 insertions(+)
> 
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 58ceba7b91d5..780abbfd1833 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1117,6 +1117,45 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
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
> +	if (etm->synth_opts.thread_stack) {
> +		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
> +		to_ip = cs_etm__first_executed_instr(tidq->packet);
> +
> +		insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> +					      tidq->prev_packet->isa, from_ip);
> +
> +		/*
> +		 * Create thread stacks by keeping track of calls and returns;
> +		 * any call pushes thread stack, return pops the stack, and
> +		 * flush stack when the trace is discontinuous.
> +		 */
> +		thread_stack__event(tidq->thread, tidq->prev_packet->cpu,
> +				    tidq->prev_packet->flags,
> +				    from_ip, to_ip, insn_len,
> +				    etmq->buffer->buffer_nr);

Details are a little fuzzy in my head but I'm pretty sure
we want trace_chan_id here.  


> +	} else {
> +		/*
> +		 * The thread stack can be output via thread_stack__process();
> +		 * thus the detailed information about paired calls and returns
> +		 * will be facilitated by Python script for the db-export.
> +		 *
> +		 * Need to set trace buffer number and flush thread stack if the
> +		 * trace buffer number has been alternate.
> +		 */
> +		thread_stack__set_trace_nr(tidq->thread,
> +					   tidq->prev_packet->cpu,
> +					   etmq->buffer->buffer_nr);

Same here.

> +	}
> +}
> +
>  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>  					    struct cs_etm_traceid_queue *tidq,
>  					    u64 addr, u64 period)
> @@ -1393,6 +1432,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>  		tidq->period_instructions = instrs_over;
>  	}
>  
> +	if (tidq->prev_packet->last_instr_taken_branch)
> +		cs_etm__add_stack_event(etmq, tidq);
> +
>  	if (etm->sample_branches) {
>  		bool generate_sample = false;
>  
> @@ -2593,6 +2635,8 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
>  		itrace_synth_opts__set_default(&etm->synth_opts,
>  				session->itrace_synth_opts->default_no_sample);
>  		etm->synth_opts.callchain = false;
> +		etm->synth_opts.thread_stack =
> +				session->itrace_synth_opts->thread_stack;
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
