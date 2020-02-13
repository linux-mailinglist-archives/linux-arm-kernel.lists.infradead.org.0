Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A98015BB32
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 10:09:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=19jaEFaVv33m7HKnmMmKUQTK5r7kPKKrm7eHkRoht3A=; b=aImCSXhBat2PLC
	Hz6DOVVHJkJmLZvlk6bl3P0B82gqqMDwbGsPIZn97kxha+uISy2nu2Xd1MXkJ2gYLSLXChsMLvznY
	Zj/7iaAlyLNwNiTYLcGlZMnv4s1h/+w/8QTzDD8lDMxmS/LDJJtgNLHxTWTeh3oFMC5UyJMprRZBf
	TWmflMnC3h4mairwqHOX/or0wtogSUm/NdviPDWPp9jJujpC9gV3XKA3UlN3zhIEDyQdIcqyk9MLw
	C27Gng9eNhkBAQ6Ywvm9SwF2uystzKHP40fXgboOPoA/UIEg6ScVZEEUteg1qdDw8BVOl6XVaClUR
	15THJB50roDVg8RAIcWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2AUQ-0000mv-Kw; Thu, 13 Feb 2020 09:08:54 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2AUF-0000mM-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 09:08:45 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n96so2104745pjc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 01:08:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y3s6gaPNv6gh+GkzKyY3UtAQAchaJB9LiAGyIZUo9HA=;
 b=L1oIXlIZNksy4ObWQD8J12F1MQ4PdH6+bQ3sKhZweOunw9sTHubLYqqrpljDD0iay9
 rO28jJD2pd2ck5nR2h63jFFnCPhIbDQ2+YXmsPdzwg5H2sxdFsKHSS+vmUr/qeKYy8X9
 QeGViJCBpNnk+J7GXhdgxiK7rNHytD06p8ZKQL4qcbRxq2UbGrZtx0XqRfk6q/IaLXiQ
 O3DsSgcOSW7OjJTEjWZS9WhCojf3W4MNiH51gyaoHTU49TI4HOJCZElvQdLUcUQWqQwQ
 rNwX3macnKNHJy3dlq381tAJEBp+jm/58bN9iY3dLnGvRnMpOI+JicQOfnvL5WKzOkUz
 yPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y3s6gaPNv6gh+GkzKyY3UtAQAchaJB9LiAGyIZUo9HA=;
 b=uRafrbV0Z3iZd4l6mKJfvGYcCj4InlfVe7vVYvO+KoY5Y4hygRwxH44kqAPLWWvVKs
 3AkEB7KXL7hza8JZQHNxKT8Hn52a1Nd/Elo+7Tbp9JGGoTZVaabkOTsEg+l7zXgCWueS
 Tl/mUKvBZd3e4/ihC7HmJEnyHA3jLhoDZz5CCR/FIDRMF6gytoAmA9MCG/DtfmSJbxLk
 W8BgwHpySiqn0BtiGXsvgkBugCxTbHllBrKpjYKK3Di9xytE394Pe2rOi5bB2W6sDcvV
 uIdjvG3biTb8U24l1xt9zvevDjMYpwfv/e8qAgSWSb/U0OMLiaL39K22h9A10gWleeZL
 aLEA==
X-Gm-Message-State: APjAAAWgVOglU2HivJNJGKWYrVDIiR4C5nOeEuwCUSXO9BEj8PB6Bw0y
 Wr1qV0PrlmDwdg1LJ/m+YePCfA==
X-Google-Smtp-Source: APXvYqwC4cm2/Bv7q5TSW/LRjI3f5vN1nqt2IbQv4GmbN5CWol55Z3dzaevCUFysDYHWIieLv7C9kw==
X-Received: by 2002:a17:902:6809:: with SMTP id
 h9mr27247972plk.32.1581584922048; 
 Thu, 13 Feb 2020 01:08:42 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:ee42])
 by smtp.gmail.com with ESMTPSA id 13sm1970773pgo.13.2020.02.13.01.08.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 13 Feb 2020 01:08:41 -0800 (PST)
Date: Thu, 13 Feb 2020 17:08:27 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v4 5/5] perf cs-etm: Synchronize instruction sample with
 the thread stack
Message-ID: <20200213090827.GA21618@leoy-ThinkPad-X240s>
References: <20200203020716.31832-1-leo.yan@linaro.org>
 <20200203020716.31832-6-leo.yan@linaro.org>
 <CAJ9a7VieWK5M7JOz0LXtKKdkSBbyRRpcXTsXr46S=gfYyaBEMw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ9a7VieWK5M7JOz0LXtKKdkSBbyRRpcXTsXr46S=gfYyaBEMw@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_010843_487936_76890E92 
X-CRM114-Status: GOOD (  33.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mike,

On Thu, Feb 06, 2020 at 03:01:52PM +0000, Mike Leach wrote:
> Hi Leo,
> 
> On Mon, 3 Feb 2020 at 02:08, Leo Yan <leo.yan@linaro.org> wrote:
> >
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
> >         ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
> >         ffff000010214850 perf_event_update_userpage+0x48 ([kernel.kallsyms])
> >         ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
> >         ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
> >         ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
> >         ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
> >         ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
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
> >         ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
> >         ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
> >         ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
> >         ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
> >         ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
> >         ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> >
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 8 +++++---
> >  1 file changed, 5 insertions(+), 3 deletions(-)
> >
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 8f805657658d..410e40ce19f2 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -1414,7 +1414,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >         struct cs_etm_packet *tmp;
> >         int ret;
> >         u8 trace_chan_id = tidq->trace_chan_id;
> > -       u64 instrs_executed = tidq->packet->instr_count;
> > +       u64 instrs_executed = tidq->prev_packet->instr_count;
> >
> >         tidq->period_instructions += instrs_executed;
> >
> > @@ -1505,7 +1505,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >                          * instruction)
> >                          */
> >                         addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > -                                                 tidq->packet, offset - 1);
> > +                                                 tidq->prev_packet,
> > +                                                 offset - 1);
> >                         ret = cs_etm__synth_instruction_sample(
> >                                 etmq, tidq, addr,
> >                                 etm->instructions_sample_period);
> > @@ -1525,7 +1526,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >                          * instruction)
> >                          */
> >                         addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > -                                                 tidq->packet, offset - 1);
> > +                                                 tidq->prev_packet,
> > +                                                 offset - 1);
> >                         ret = cs_etm__synth_instruction_sample(
> >                                 etmq, tidq, addr,
> >                                 etm->instructions_sample_period);
> > --
> > 2.17.1
> >
> I am really not convinced that this is a correct solution.
> 
> Consider a set of trace range packet inputs:
> current: 0x3000-0x3050
> prev:  0x2000-0x2100
> prev-1: 0x1020-0x1080
> 
> Before your modification.....
> cs_etm__sample()  processes the current packet....
> 
> On entry, the branch stack will contain:0x1080=>0x2000;
> 
> We add to this from the current packet to get: 0x1080=>0x2000; 0x2100=>0x3000;
> 
> This is then copied by cs_etm__copy_last_branch_rb()
> 
> We find the instruction sample address in the range 0x3000 to 0x3050,
> e.g. 0x3010.
> cs_etm__synth_instruction_sample() will then generate a sample with values
> 
> sample.ip = 0x3010
> sample.branch_stack = 0x1080=>0x2000; 0x2100=>0x3000;
> 
> to be passed to the perf session / injected as required.
> This sample has the correct branch context for the sampled address -
> i.e. how the code arrived @0x3010
> 
> After the modification.....
> The branch stack will be the same, but the sample address will be from
> the range 0x2000-0x2010, e.g. 0x2008 to give a sample in
> cs_etm__synth_instruction_sample() of
> sample.ip = 0x2008
> sample.branch_stack = 0x1080=>0x2000; 0x2100=>0x3000;
> 
> This really does not make much sense  - the branch stack no longer
> relates to the sample.ip.
> 
> Further - cs_etm__synth_instruction_sample() calls cs_etm__copy_insn()
> using the _current_ packet and sample.ip. This is a clear mismatch.
> 
> I don't know what is causing the apparent error in the callchain, but
> given that the previous features added in this set, work without this
> alteration, I feel there must be another solution.

Good catch!  Thanks a lot for very detailed analysis.

I root caused this issue is relevant with the sequence between two
functions thread_stack__event() and thread_stack__sample().

In this series, thread_stack__sample() is prior to thread_stack__event(),
thus the thread stack event cannot be handled before thread stack
generation.

If move the function thread_stack__event() up and place it before
instruction sample synthesizing; thread_stack__event() can be invoked
prior to thread_stack__sample(), then I can see the thread stack can
be popped properly and the issue can be fixed.  Simply to say, patch
0002 should change the code as below:

         /*
          * Record a branch when the last instruction in
          * PREV_PACKET is a branch.
          */
         if (etm->synth_opts.last_branch &&                                 
             tidq->prev_packet->sample_type == CS_ETM_RANGE &&              
             tidq->prev_packet->last_instr_taken_branch)                    
                 cs_etm__update_last_branch_rb(etmq, tidq);                 
                                                                            
         /*                                                                 
          * The stack event must be processed prior to synthesizing         
          * instruction sample; this can ensure the instruction samples     
          * to generate correct thread stack.                               
          */                                                                
         if (tidq->prev_packet->last_instr_taken_branch)                    
                 cs_etm__add_stack_event(etmq, tidq);                       
                                                                            
         if (etm->sample_instructions &&                                    
             tidq->period_instructions >= etm->instructions_sample_period) {

                cs_etm__synth_instruction_sample();
                    `-> thread_stack__sample();

         }

Does this make sense for you?

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
