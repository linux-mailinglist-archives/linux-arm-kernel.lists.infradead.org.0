Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42022DFCDD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 06:51:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Kol8DFQxya+zc192nOMErc1eO0ZCH7C28CGNRUAzj8=; b=Aqf7bGl4l9JNQT
	9nuDnMerui46VZoAwE28pd/o36JKCBX3A3mnHhekBVdiy2JWb1+UKrnBOnnodIUNQtQb55X2bsX/w
	KnkKK8jLQw+soYJFXQkFp/BuOlrQo1bYZUgfVDGNBi07if1+TvTc7+S5FMAxz/QrNDLevOttJdVet
	mHp4HQWZOcEE7FS074Wpbsl3VwdBGNMKudxF19XzkImI4DCesszEn470JCKRDQ5oGtqKCfVFWX2Le
	ueXaaqAk2b0lPRuuCvqBQ6uEOKESk6njMCHtBcS+9umWfyJXRTz7hA+cQYMSHVBxHm8OlKCyvzPwP
	Up5MDam+Olq/6GKIEYVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMm8f-0004eS-0g; Tue, 22 Oct 2019 04:51:21 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMm8U-0004du-Lt
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 04:51:12 +0000
Received: by mail-qk1-x744.google.com with SMTP id 4so15079173qki.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 21:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=QhE0BiOWbSotl8PTLN0fddcL2KciWl/t4dXV2oBgdnU=;
 b=oPNVYnvNqR8oa84B3inhDRmoM01TIeAMqjjHZFXk4JsSurZpnvtKOkh4b98IKFBB2f
 lvsTNTHM3bRCLiDgMnYDiYp/D9HLkIPmH3I5hFyyND96z3LsmNNCmuYlHc5F315F0dBg
 Z1TnWwx9GDWE8CpV/YAMhfqhZPkz+5MFCddSiES6l7LjmFAJ73ekLir3cedR6v2HVern
 grmFHxQozZdPjYrQRkxYvfYUVZCfsWAuAn5j7g/njhcDpwrpdGoI/RH47QzGCnxdvtl8
 b6hqUtKIHFfyn+h2oTYkeCFX9M5txN/lnY1vuxJ0TjMagrE+eman5AI1Q8BfRSnjc4yP
 n3mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QhE0BiOWbSotl8PTLN0fddcL2KciWl/t4dXV2oBgdnU=;
 b=s+1uzPhwFYcLXP7hag/j65ckt7CHLaRc7f+1no9J+5osZLgykO4FSzFrgM9CaP60xP
 pdiW1izDPQWZTYPBoePoN8kHtbf7eoFqeJceCTE4Sgkp66uYzqZNdhKuKAJfFDTCqLkU
 2SYuR+8ppW8uEItOame6NEiqJv+mDFafNjGSSEGHWBBRj41OiVqeyyCBGC/YKZ6CwuQD
 mH59WFQ9SbN5y3jBABFNxfpiDRZ8oqzhYEjqlKSdKsx27X9hKLnIzh9Vo+nBTjb2sdWI
 YZtEa0vYkgwIq1dAfz20fAk0gGGWYI1tOuq3bTIReH5v6PSY/RVf/JzCjwODny0k85xU
 NvLg==
X-Gm-Message-State: APjAAAVPD9sssVG6fBoqVi2pVPH/sAwxdBLWhhi9OTYoMojhcnAkfvyY
 kBRdQ1VLR8FX8Tp8uhzqf02FKA==
X-Google-Smtp-Source: APXvYqxX/mdwzdRA1MhUwGtathV624q7bOnwC2Utu+mJ/Te5PKIfaJbNB5xbuQ0Wj/Hq/ahA0rEQKw==
X-Received: by 2002:a37:98c1:: with SMTP id a184mr1186077qke.119.1571719869348; 
 Mon, 21 Oct 2019 21:51:09 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id c18sm8377191qkk.17.2019.10.21.21.51.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 21 Oct 2019 21:51:08 -0700 (PDT)
Date: Tue, 22 Oct 2019 12:50:59 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 6/6] perf cs-etm: Synchronize instruction sample with
 the thread stack
Message-ID: <20191022045059.GA32731@leoy-ThinkPad-X240s>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-7-leo.yan@linaro.org>
 <20191011201750.GD13688@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011201750.GD13688@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_215110_730539_B808FAC3 
X-CRM114-Status: GOOD (  28.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hi Mathieu,

On Fri, Oct 11, 2019 at 02:17:50PM -0600, Mathieu Poirier wrote:
> On Sat, Oct 05, 2019 at 05:16:14PM +0800, Leo Yan wrote:
> > The synthesized flow use 'tidq->packet' for instruction samples; on the
> > other hand, 'tidp->prev_packet' is used to generate the thread stack and
> > the branch samples, this results in the instruction samples using one
> > packet ahead than thread stack and branch samples ('tidp->prev_packet'
> > vs 'tidq->packet').
> > 
> > This leads to an instruction's callchain error as shows in below
> > example:
> > 
> >   main  1579        100      instructions:
> >   	ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
> >   	ffff000010214850 perf_event_update_userpage+0x48 ([kernel.kallsyms])
> >   	ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
> >   	ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
> >   	ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
> >   	ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
> >   	ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> > 
> > In the callchain log, for the two continuous lines the up line contains
> > one child function info and the followed line contains the caller
> > function info, and so forth.  So the first two lines are:
> > 
> >   perf_event_update_userpage+0x4c  => the sampled instruction
> >   perf_event_update_userpage+0x48  => the parent function's calling
> > 
> > The child function and parent function both are the same function
> > perf_event_update_userpage(), but this isn't a recursive function, thus
> > the sequence for perf_event_update_userpage() calling itself shouldn't
> > never happen.  This callchain error is caused by the instruction sample
> > using an ahead packet than the thread stack, the thread stack is deferred
> > to process the new packet and misses to pop stack if it is just a return
> > packet.
> > 
> > To fix this issue, we can simply change to use 'tidq->prev_packet' to
> > generate the instruction samples, this allows the thread stack to push
> > and pop synchronously with instruction sample.  Finally, the callchain
> > can be displayed correctly as below:
> > 
> >   main  1579        100      instructions:
> > 	ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
> > 	ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
> > 	ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
> > 	ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
> > 	ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
> > 	ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> > 
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 56e501cd2f5f..fa969dcb45d2 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -1419,7 +1419,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >  	struct cs_etm_packet *tmp;
> >  	int ret;
> >  	u8 trace_chan_id = tidq->trace_chan_id;
> > -	u64 instrs_executed = tidq->packet->instr_count;
> > +	u64 instrs_executed = tidq->prev_packet->instr_count;
> >  
> >  	tidq->period_instructions += instrs_executed;
> >  
> > @@ -1450,7 +1450,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >  		 */
> >  		s64 offset = (instrs_executed - instrs_over - 1);
> >  		u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > -					      tidq->packet, offset);
> > +					      tidq->prev_packet, offset);
> 
> I have tested this set in --per-thread mode and things are working as
> advertised. Did you see how things look like in CPU-wide scenarios?

After some testing, I can confirm this patch set can works well for
CPU-wide trace; the reason is in the arch/arm/util/cs-etm.c, function
cs_etm_recording_options() has enabled option 'ETM_OPT_CTXTID' for
CPU-wide trace:

         /*
          * In the case of per-cpu mmaps, we need the CPU on the
          * AUX event.  We also need the contextID in order to be notified
          * when a context switch happened.
          */
         if (!perf_cpu_map__empty(cpus)) {
                 perf_evsel__set_sample_bit(cs_etm_evsel, CPU);

                 err = cs_etm_set_option(itr, cs_etm_evsel,
                                         ETM_OPT_CTXTID | ETM_OPT_TS);
                 if (err)
                         goto out;
         }

As result, we don't need to specify extra option to enable CTXID
configuration.  So below two commands have the same behaviour:

  # perf record -e cs_etm/@tmc_etr0/ -a -- sh test.sh
  # perf record -e cs_etm/@tmc_etr0,config=0x4000/ -a -- sh test.sh
                                       `-> bit 14: for ETM_OPT_CTXTID

Since the decoding will set tid when receive the packet
'OCSD_GEN_TRC_ELEM_PE_CONTEXT', thus it can give the correct tid/pid
info for threads.  This allows to generate per thread stack base on
thread->tid and avoid mixing info cross different threads.

Thanks,
Leo Yan

> >  
> >  		ret = cs_etm__synth_instruction_sample(
> >  			etmq, tidq, addr, etm->instructions_sample_period);
> > -- 
> > 2.17.1
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
