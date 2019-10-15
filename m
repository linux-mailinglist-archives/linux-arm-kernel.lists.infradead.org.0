Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A5D6DEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 05:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcxuxXuK9Ybund/HlPzakLNp/2naEh+K6YQPXZE5C+Q=; b=cjOLDwBygAEu5Y
	Kvhi4s9m8Xw9H7ldN+SogwuL5dasJg4f2aaCksyQuov+g/mOMl793ZUnWGdRRS5W51sagQ+eY0hat
	vAHobpb2t1WHw9vBf/+ajyxQtaHS5oSjhndYxKhI+2GZ7NMHbpZEzURPVj4ydWUD1aUQ8GwrceyYK
	99XZlSMqbm0ieeCIrQda+wNV+Et6bPvV1+BjpZZHP5UzHVvY0sAYWLdKBVEOmcMBSi8O+jattCCAA
	h894T7SuU0g3TAhBPMMX1+cN+/qyyvvRYZhWA1urjMdkfhkWZuA66Kl2tBdm0KaCJ6rt56k1S09xA
	VouyQytL/3RudU4+4X0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKDl0-0002pU-Qi; Tue, 15 Oct 2019 03:44:22 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKDko-0002p7-Ay
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 03:44:11 +0000
Received: by mail-qk1-x743.google.com with SMTP id u184so17940646qkd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 20:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=voz4i+v+frHsSQ8PRqlMxILgaKVhYjtinkOnPqt0d44=;
 b=wXk34FGCnDMKI8b3FXI7D9xaCgxD/y6Q9rbb36RCr0LZKiYrzCuPXbqv2Bv6VGoRuU
 bTe3ibnOMobN28LsH8Edn1hWcSPokpkncM7Dfgp1cAHTl7lYafygzCv7MlgbicKd/89a
 8fFFaCKGPceBmTMcYN/tocdizAYPV1VH1Cff0XEMQxaBspzTFgl9KHg0KoWB9nWhOod3
 tixOZVKvgzY3bMsxjury0RRAHv27CTPbiJI5//IXsThoIofDeEaMSWOuLhBsPnkzIk1s
 E3L8BRiamiDUaBRL9UP8ZcNv5CQJvGstxAO05J1za86dfWVGFd+OVPPWaEHkq0HAPnqi
 1vIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=voz4i+v+frHsSQ8PRqlMxILgaKVhYjtinkOnPqt0d44=;
 b=EdpF1Hki62gsNWdkCcXDPRMnglUcH1ijrvf5nGYsRCbSQqTMrWBHvB9BeaVSo6KpJx
 f7mbSmuUUA4cXr42ky+HE/xsLdaWhM72+fao3Fh/XCaJsSeNCXjRPji1ISOlPFl2Ld1a
 JnduKLlw6yOFmv68uEh1Pvm93IxjpSp9sWFE6X5p36mmGeWOjU6UpmuEJJpSI2yjUNik
 FzB1RQWiuCf4wEzPFQUjL6QmlP/72ncZY5KihF1aCD8WhZKq7Yz6kr4Gaq+hXIS3hxP4
 kgNLG2NlmHhBSBJQfKaa1I5N2L5WA6OR7e+jEW0Zm517wIApSq6a3E5fXbhp/mbngQB8
 UZwA==
X-Gm-Message-State: APjAAAXFIF6rxnBeMegiNWpRQmSNIxiWEdN8wGU/n2+kP9LrV6XUJWyz
 D4wrOeHplNMTHEAMXMs9IarHwQ==
X-Google-Smtp-Source: APXvYqxl07qVjJTJXXP4+zknqXS+FKQmmzKDInMZVbg9FIyNlsJ+TQJsQjGD31aO1KIAXnprEVjLmw==
X-Received: by 2002:ae9:f50a:: with SMTP id o10mr33521733qkg.372.1571111048572; 
 Mon, 14 Oct 2019 20:44:08 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li937-157.members.linode.com.
 [45.56.119.157])
 by smtp.gmail.com with ESMTPSA id g194sm9801676qke.46.2019.10.14.20.44.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 14 Oct 2019 20:44:07 -0700 (PDT)
Date: Tue, 15 Oct 2019 11:44:00 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 6/6] perf cs-etm: Synchronize instruction sample with
 the thread stack
Message-ID: <20191015034400.GC6336@leoy-ThinkPad-X240s>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-7-leo.yan@linaro.org>
 <20191011201750.GD13688@xps15>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011201750.GD13688@xps15>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_204410_406445_2B32F8CD 
X-CRM114-Status: GOOD (  26.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

I am not sure I checked the callchain for CPU-wide scenarios, but I
didn't pay attention for the case when the trace data is switching
between CPUs, especially if connect with your comment in patch 03,
with wrong buffer ID it might cause the wrong callchain for CPU-wide
scenarios.

Will do more testing for CPU-wide scenarios in next spin.

Thanks for the suggestions.
Leo Yan

> Thanks,
> Mathieu
> 
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
