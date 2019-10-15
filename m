Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3B1D6DD9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 05:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHK2JVYbITSILBgttzXMXRd+UG9WfYt2TIEjowVwuNg=; b=DS44/P+eZzzdC5
	Y1X5MLXpJNVEV9ygXjCHxAQ5qGBE2nLpAHc90Uy+eWDhg57Fv+75RDXeF4rwFmRO2Oa1OahPkcx3k
	O8BqyYNS6nBSJBwU1Vrq+eSwtqOcUv4tsmKh3ZQA+sUOQ+hQZXvjaJtBky9TV6Lyf7WNXKFeVpXFn
	bNVJAqCCDEB/QvcsUxa+jGQ87xOP1aURWv0MkY09swTI9D9IdjViBgAytyTEJH4voS/XLOuOziYFQ
	/hwHmOgWfP3vU8G4mxc6itG4qFMSyvDa4kGxU4+f5j+EHFnrA6zHQ7q/tLFjUnAB7Q+dqjq1KKN8o
	EDRt/1m066cohqi6W6RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKDao-00085n-SN; Tue, 15 Oct 2019 03:33:50 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKDad-00085T-Fv
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 03:33:41 +0000
Received: by mail-qt1-x841.google.com with SMTP id 3so28621081qta.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 20:33:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IoqlYSn6f47iVl1XpzbZCGv/lzEESLkqVt79Fah3kvU=;
 b=r364D0CXUs/RIyg+BE17NPnWLo7+lJLvcslcFTnRlcBnQ15kuedlF4dvMOOBlAt7w0
 wQZLONeWcT+PqpWNjjdOgMdnNDTILLcVWJV1eI8+0VinCSriBxSV7UhF0JTnOmNhYITQ
 AUWtX/7PTApLH/QlyvGlsfwTDm9ZdYcQ6bHzw2T09dZLRRd9+b716K7i6N/+uAJQqf3B
 J52NG9bCO82Zt65nvxDtuXVlRx8kPM50d+aZaUtIz15J16RJUil4WdpnTGBoRXPMxs/F
 /ZUIWjgGN/wW9GTUu8uyjEw1IvuORXMPZFZjbrHcr4hgr//V8hnN4Gds/UMW6FbhjtEp
 lfpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IoqlYSn6f47iVl1XpzbZCGv/lzEESLkqVt79Fah3kvU=;
 b=WTDoeK6zTf582pAsUk4P3YVDleY9rhDv6hG/rO4A/uf3FGMUbX9mYsNWh6PzWiVxMq
 MpD4HnCpH4iv+vjz+DeuHnDWN8ADnicTRScWMfLcep49Fr0swNNq2EslD4qU2l2WtPVO
 n+97gncSkCbXcfdrdctqgkTumQI3d8B2W1tGjOCXlfo5gm6I7wfIexKMcghqiTswVlFG
 PEdCDIgVoF9kq21W7/Mf5vAXbTX6FfuAsYxvRBp5PHlG8FvDSNxgJ3z8VaCa3eBeZvnw
 geINK80yNuMfJAjDKCRa8CzD6MQC7La414Q7WseLIZ4z+czLeh0atniU4mLy4K1w+/zV
 xaVQ==
X-Gm-Message-State: APjAAAXYHMUVsVd3Su23znVCwrCz1+5vjn+0HcM6paFDML2U+m+U0gFe
 nMtJXknWDJVsjRzqpGwU/zfmaQ==
X-Google-Smtp-Source: APXvYqwF0LiIAkUb+Pei6jRulZDB2CLozJpjxik4oEXpRN60Qj+NAFS0aBAdJXYSXLMlJ0gA3tBStw==
X-Received: by 2002:a0c:95a5:: with SMTP id s34mr16780251qvs.72.1571110417517; 
 Mon, 14 Oct 2019 20:33:37 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id w85sm9460755qkb.57.2019.10.14.20.33.31
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 14 Oct 2019 20:33:36 -0700 (PDT)
Date: Tue, 15 Oct 2019 11:33:27 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 3/6] perf cs-etm: Support thread stack
Message-ID: <20191015033327.GB6336@leoy-ThinkPad-X240s>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-4-leo.yan@linaro.org>
 <20191011175353.GA13688@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011175353.GA13688@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_203339_544770_E430D353 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi Mathieu,

On Fri, Oct 11, 2019 at 11:53:53AM -0600, Mathieu Poirier wrote:
> On Sat, Oct 05, 2019 at 05:16:11PM +0800, Leo Yan wrote:
> > Since Arm CoreSight doesn't support thread stack, the decoding cannot
> > display symbols with indented spaces to reflect the stack depth.
> > 
> > This patch adds support thread stack for Arm CoreSight, this allows
> > 'perf script' to display properly for option '-F,+callindent'.
> > 
> > Before:
> > 
> >   # perf script -F,+callindent
> >             main  2808          1          branches: coresight_test1                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
> >             main  2808          1          branches: printf@plt                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
> >             main  2808          1          branches: printf@plt                           aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
> >             main  2808          1          branches: _init                                aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
> >             main  2808          1          branches: _dl_fixup                            ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.so)
> >             main  2808          1          branches: _dl_lookup_symbol_x                  ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
> >   [...]
> > 
> > After:
> > 
> >   # perf script -F,+callindent
> >             main  2808          1          branches:                 coresight_test1                                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
> >             main  2808          1          branches:                 printf@plt                                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
> >             main  2808          1          branches:                     printf@plt                                       aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
> >             main  2808          1          branches:                     _init                                            aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
> >             main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
> >             main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
> >   [...]
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 44 ++++++++++++++++++++++++++++++++++++++++
> >  1 file changed, 44 insertions(+)
> > 
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 58ceba7b91d5..780abbfd1833 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -1117,6 +1117,45 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> >  			   sample->insn_len, (void *)sample->insn);
> >  }
> >  
> > +static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
> > +				    struct cs_etm_traceid_queue *tidq)
> > +{
> > +	struct cs_etm_auxtrace *etm = etmq->etm;
> > +	u8 trace_chan_id = tidq->trace_chan_id;
> > +	int insn_len;
> > +	u64 from_ip, to_ip;
> > +
> > +	if (etm->synth_opts.thread_stack) {
> > +		from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
> > +		to_ip = cs_etm__first_executed_instr(tidq->packet);
> > +
> > +		insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > +					      tidq->prev_packet->isa, from_ip);
> > +
> > +		/*
> > +		 * Create thread stacks by keeping track of calls and returns;
> > +		 * any call pushes thread stack, return pops the stack, and
> > +		 * flush stack when the trace is discontinuous.
> > +		 */
> > +		thread_stack__event(tidq->thread, tidq->prev_packet->cpu,
> > +				    tidq->prev_packet->flags,
> > +				    from_ip, to_ip, insn_len,
> > +				    etmq->buffer->buffer_nr);
> 
> Details are a little fuzzy in my head but I'm pretty sure
> we want trace_chan_id here.  

Thanks a lot for reviewing!

This is good point.  After a quick look for the code, seems
TO_CS_QUEUE_NR() is the right thing to use at here for buffer
number.

Will look more closely to the code and apply changes in next
version.

Thanks,
Leo Yan

> > +	} else {
> > +		/*
> > +		 * The thread stack can be output via thread_stack__process();
> > +		 * thus the detailed information about paired calls and returns
> > +		 * will be facilitated by Python script for the db-export.
> > +		 *
> > +		 * Need to set trace buffer number and flush thread stack if the
> > +		 * trace buffer number has been alternate.
> > +		 */
> > +		thread_stack__set_trace_nr(tidq->thread,
> > +					   tidq->prev_packet->cpu,
> > +					   etmq->buffer->buffer_nr);
> 
> Same here.
> 
> > +	}
> > +}
> > +
> >  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
> >  					    struct cs_etm_traceid_queue *tidq,
> >  					    u64 addr, u64 period)
> > @@ -1393,6 +1432,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >  		tidq->period_instructions = instrs_over;
> >  	}
> >  
> > +	if (tidq->prev_packet->last_instr_taken_branch)
> > +		cs_etm__add_stack_event(etmq, tidq);
> > +
> >  	if (etm->sample_branches) {
> >  		bool generate_sample = false;
> >  
> > @@ -2593,6 +2635,8 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
> >  		itrace_synth_opts__set_default(&etm->synth_opts,
> >  				session->itrace_synth_opts->default_no_sample);
> >  		etm->synth_opts.callchain = false;
> > +		etm->synth_opts.thread_stack =
> > +				session->itrace_synth_opts->thread_stack;
> >  	}
> >  
> >  	err = cs_etm__synth_events(etm, session);
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
