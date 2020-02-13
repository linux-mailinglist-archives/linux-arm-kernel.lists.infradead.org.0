Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0779215C0E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 16:01:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5jpVxoTHlOy0wNyKx8AhrDpilwmXQsXAf2v77KZB4U8=; b=JKuYgcWlc0p1r3
	3Oxdb9ExjcSoFk4Dz2O/3NtR3w0k26in9Z0+cJQ+QBSbxq1jSOpXJtY29Yt+8tdKi0AXiNX3gSH6C
	VrAtfI/QTH4I15BPkF1K1/m8OaFCj1ebzkEG9uNntlfJBF8UupHUcZMFdXE7JAwGAAbqKRpZzJIKo
	oN0iOsA9W6pQSKmHx8xDnd+W3z0Zn6xAl6S0jl1zpSIzcWJ3aMcIjxjDLpt0I87rMTjwoWeoKXxyu
	2g5DaAL4+zggT5vroVnXrsrEcxa5nyEdMiC2NlB4eHMqLh+yFDNn0X+ZVmY83QvmYuJWZSjOe3s/Z
	YZAMctstfsNXNNFmss1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2FzU-0003qW-Tg; Thu, 13 Feb 2020 15:01:20 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2FzK-0003pT-TJ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 15:01:12 +0000
Received: by mail-qt1-x842.google.com with SMTP id e21so4540453qtp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 07:01:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OR3oOx+mGh+DIZ4suhyE7x7FqGwsyDSmBViZLPUhWVs=;
 b=oeZ67KaIj037HudvxKnfHXDnyVRuN91j89zw5cx1ZgKARMNI4xNdkP75morDsAWLVV
 3NLd1RKOtMtQwxr6jyhU0O439UxkbvqB6cy9y4yqjqHYL2HzrpEnn91iiukzDKiRLATe
 F4MauVXJ8fcfhoj9qLPFz/pBKW88EzSOG2jwGFxFFYX6Jf11vvmkhOXC0VvrqtoMcYGL
 e8Xt7Mia1xpIdYQYLmBuN2hQ9oQzzhLuKKEh6IoKb95z78NSi2GSYZrpoeJxB8GdVABM
 128Csj7f60k/0uTsUd5IZj1W9UfwnbEuDYJ9lZMGTpIdo8+Wrz5EP/3Khv1y8l2UZnSO
 SSjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OR3oOx+mGh+DIZ4suhyE7x7FqGwsyDSmBViZLPUhWVs=;
 b=ruNsmblTOJtS63ACDA9rkC4jbTesTLbt86HhIGw1PUPLkend4BMQIeM9dS5zYQ9bhk
 JoJ8LzfjFl8olepT2NfBBWDnqc6dPEQOip1D90osH+Avuwjxr78i5riWVM6aveqNeK+y
 pSt4/P1EFau85TZp70l+mfuDTckVFgfnG9fVSMCUXn1KG+LtKrhhVRU0MhbwmkUocR80
 stBBR1KpWdzs3Ua8t8Kr4Jgx03QquJQWHSY5x2fzvpBij4I0QBi6Ewpe87h4oQ3HnZh3
 d71dixsiWVxTzlbQS2Pat6ficlz9y3FBjo/0Jb/lxYe9Nx1u2qKu7PuriGZaMdk0PCSw
 r2Ww==
X-Gm-Message-State: APjAAAUFk3wVECeeWtLfX0vovqOWoVD2XBIeYZe5mVnBHnS/lYCBDI4v
 QBhObJy9/xOk3FIv+Wt8bkbBbocDNZXmTsNAuPCmCA==
X-Google-Smtp-Source: APXvYqyVB3PPCs2XkmFZ1ygEBo1+q3TAMC7oQbgAgph0Hg/gyNR+AN+JE/JTXchGBWA+OLDPwyfop6CRqJ4FeIuJLLE=
X-Received: by 2002:aed:3b14:: with SMTP id p20mr24593927qte.176.1581606069245; 
 Thu, 13 Feb 2020 07:01:09 -0800 (PST)
MIME-Version: 1.0
References: <20200203020716.31832-1-leo.yan@linaro.org>
 <20200203020716.31832-6-leo.yan@linaro.org>
 <CAJ9a7VieWK5M7JOz0LXtKKdkSBbyRRpcXTsXr46S=gfYyaBEMw@mail.gmail.com>
 <20200213090827.GA21618@leoy-ThinkPad-X240s>
In-Reply-To: <20200213090827.GA21618@leoy-ThinkPad-X240s>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 13 Feb 2020 15:00:57 +0000
Message-ID: <CAJ9a7VjB9XVcJKjOGntYmAW9dTV9oi_=S7Ae=1QOh5DoRzQ92g@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] perf cs-etm: Synchronize instruction sample with
 the thread stack
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_070110_946897_B2A370EC 
X-CRM114-Status: GOOD (  35.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
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

Hi Leo,

On Thu, 13 Feb 2020 at 09:08, Leo Yan <leo.yan@linaro.org> wrote:
>
> Hi Mike,
>
> On Thu, Feb 06, 2020 at 03:01:52PM +0000, Mike Leach wrote:
> > Hi Leo,
> >
> > On Mon, 3 Feb 2020 at 02:08, Leo Yan <leo.yan@linaro.org> wrote:
> > >
> > > The synthesized flow use 'tidq->packet' for instruction samples; on the
> > > other hand, 'tidp->prev_packet' is used to generate the thread stack and
> > > the branch samples, this results in the instruction samples using one
> > > packet ahead than thread stack and branch samples ('tidp->prev_packet'
> > > vs 'tidq->packet').
> > >
> > > This leads to an instruction's callchain error as shows in below
> > > example:
> > >
> > >   main  1579        100      instructions:
> > >         ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
> > >         ffff000010214850 perf_event_update_userpage+0x48 ([kernel.kallsyms])
> > >         ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
> > >         ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
> > >         ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
> > >         ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
> > >         ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> > >
> > > In the callchain log, for the two continuous lines the up line contains
> > > one child function info and the followed line contains the caller
> > > function info, and so forth.  So the first two lines are:
> > >
> > >   perf_event_update_userpage+0x4c  => the sampled instruction
> > >   perf_event_update_userpage+0x48  => the parent function's calling
> > >
> > > The child function and parent function both are the same function
> > > perf_event_update_userpage(), but this isn't a recursive function, thus
> > > the sequence for perf_event_update_userpage() calling itself shouldn't
> > > never happen.  This callchain error is caused by the instruction sample
> > > using an ahead packet than the thread stack, the thread stack is deferred
> > > to process the new packet and misses to pop stack if it is just a return
> > > packet.
> > >
> > > To fix this issue, we can simply change to use 'tidq->prev_packet' to
> > > generate the instruction samples, this allows the thread stack to push
> > > and pop synchronously with instruction sample.  Finally, the callchain
> > > can be displayed correctly as below:
> > >
> > >   main  1579        100      instructions:
> > >         ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
> > >         ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
> > >         ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
> > >         ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
> > >         ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
> > >         ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
> > >
> > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > ---
> > >  tools/perf/util/cs-etm.c | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > index 8f805657658d..410e40ce19f2 100644
> > > --- a/tools/perf/util/cs-etm.c
> > > +++ b/tools/perf/util/cs-etm.c
> > > @@ -1414,7 +1414,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> > >         struct cs_etm_packet *tmp;
> > >         int ret;
> > >         u8 trace_chan_id = tidq->trace_chan_id;
> > > -       u64 instrs_executed = tidq->packet->instr_count;
> > > +       u64 instrs_executed = tidq->prev_packet->instr_count;
> > >
> > >         tidq->period_instructions += instrs_executed;
> > >
> > > @@ -1505,7 +1505,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> > >                          * instruction)
> > >                          */
> > >                         addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > > -                                                 tidq->packet, offset - 1);
> > > +                                                 tidq->prev_packet,
> > > +                                                 offset - 1);
> > >                         ret = cs_etm__synth_instruction_sample(
> > >                                 etmq, tidq, addr,
> > >                                 etm->instructions_sample_period);
> > > @@ -1525,7 +1526,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> > >                          * instruction)
> > >                          */
> > >                         addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > > -                                                 tidq->packet, offset - 1);
> > > +                                                 tidq->prev_packet,
> > > +                                                 offset - 1);
> > >                         ret = cs_etm__synth_instruction_sample(
> > >                                 etmq, tidq, addr,
> > >                                 etm->instructions_sample_period);
> > > --
> > > 2.17.1
> > >
> > I am really not convinced that this is a correct solution.
> >
> > Consider a set of trace range packet inputs:
> > current: 0x3000-0x3050
> > prev:  0x2000-0x2100
> > prev-1: 0x1020-0x1080
> >
> > Before your modification.....
> > cs_etm__sample()  processes the current packet....
> >
> > On entry, the branch stack will contain:0x1080=>0x2000;
> >
> > We add to this from the current packet to get: 0x1080=>0x2000; 0x2100=>0x3000;
> >
> > This is then copied by cs_etm__copy_last_branch_rb()
> >
> > We find the instruction sample address in the range 0x3000 to 0x3050,
> > e.g. 0x3010.
> > cs_etm__synth_instruction_sample() will then generate a sample with values
> >
> > sample.ip = 0x3010
> > sample.branch_stack = 0x1080=>0x2000; 0x2100=>0x3000;
> >
> > to be passed to the perf session / injected as required.
> > This sample has the correct branch context for the sampled address -
> > i.e. how the code arrived @0x3010
> >
> > After the modification.....
> > The branch stack will be the same, but the sample address will be from
> > the range 0x2000-0x2010, e.g. 0x2008 to give a sample in
> > cs_etm__synth_instruction_sample() of
> > sample.ip = 0x2008
> > sample.branch_stack = 0x1080=>0x2000; 0x2100=>0x3000;
> >
> > This really does not make much sense  - the branch stack no longer
> > relates to the sample.ip.
> >
> > Further - cs_etm__synth_instruction_sample() calls cs_etm__copy_insn()
> > using the _current_ packet and sample.ip. This is a clear mismatch.
> >
> > I don't know what is causing the apparent error in the callchain, but
> > given that the previous features added in this set, work without this
> > alteration, I feel there must be another solution.
>
> Good catch!  Thanks a lot for very detailed analysis.
>
> I root caused this issue is relevant with the sequence between two
> functions thread_stack__event() and thread_stack__sample().
>
> In this series, thread_stack__sample() is prior to thread_stack__event(),
> thus the thread stack event cannot be handled before thread stack
> generation.
>
> If move the function thread_stack__event() up and place it before
> instruction sample synthesizing; thread_stack__event() can be invoked
> prior to thread_stack__sample(), then I can see the thread stack can
> be popped properly and the issue can be fixed.  Simply to say, patch
> 0002 should change the code as below:
>
>          /*
>           * Record a branch when the last instruction in
>           * PREV_PACKET is a branch.
>           */
>          if (etm->synth_opts.last_branch &&
>              tidq->prev_packet->sample_type == CS_ETM_RANGE &&
>              tidq->prev_packet->last_instr_taken_branch)
>                  cs_etm__update_last_branch_rb(etmq, tidq);
>
>          /*
>           * The stack event must be processed prior to synthesizing
>           * instruction sample; this can ensure the instruction samples
>           * to generate correct thread stack.
>           */
>          if (tidq->prev_packet->last_instr_taken_branch)
>                  cs_etm__add_stack_event(etmq, tidq);
>
>          if (etm->sample_instructions &&
>              tidq->period_instructions >= etm->instructions_sample_period) {
>
>                 cs_etm__synth_instruction_sample();
>                     `-> thread_stack__sample();
>
>          }
>
> Does this make sense for you?
>
This looks good.

Regards

Mike



> Thanks,
> Leo Yan



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
