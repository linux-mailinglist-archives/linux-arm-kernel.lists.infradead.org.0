Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 762311546F8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 16:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WpfWhMLhnppHTa6GAdWsUJRxZYRigVoyzjVFqBgKt7w=; b=J6fNg22QdGB1WP
	20nvGUG0uuGfbZNaV3I1jfFh18hybzhfYbDUl75Zq7MJh9BE+hM6CtX6lzh7/74oGciq8o2crF3gj
	QzI0XvOZAd436usHGQKYPa0buYcwhTE+Ax+ukem0XCMLwg/HsoTG+oVTHB5Ojv0TLNFRXrLARNY4D
	O8+u0cXBCJCn7RJNCEYDZY2voQdwTVs5FjYkiXpfpuWgWDKJMtmlbsgOWzd9jzO+OkgZ1WlfTBppY
	eYsu8VmoxcHZc83hjZeXAmvN6gfcC5lVeKX0VnXpLnjF1n8UxczMTczobN41wDjoHV7dYJ1wiuDvq
	hZbKb+46bYjAexrR9huA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izifW-00081B-Ag; Thu, 06 Feb 2020 15:02:14 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izifN-00080o-0u
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 15:02:07 +0000
Received: by mail-qt1-x844.google.com with SMTP id c24so4698787qtp.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 07:02:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TWEWiuJtZyx2zIqvzpl4qhmoi+sTlz6jFzFqkOV/q7g=;
 b=RtnOfDrp8CNGIanlmOJMlF5BwBJnCwI18OyxuawvJWAmhNv/yTyB2NbWNuiRKiFPHI
 KBSLGqotRdctDJ5uJgw9GS3jZ8U8mhBU3IjIE9YE+oUcq4PFc7oMbOViXVFdrLAD4e8S
 OFk+C8GklRT70wipxB0zCpy/uCkUch7IEU3gqWPfjCOrZFU/gqTEYrRhzEV3tlMcjNAv
 0xKWqIMVIFMWrRFz9eitUIaO/XpINuj0LbAECRL4FA9a0TcrgUKHWAG7WX+mh2Hg76f3
 9t9Jlgh6NY9AmKVV6qrmaPB7cRe/7KOZlVkaqLAKE+1jEU7FQ6RM6uICy7xZh2u5i3HZ
 xyQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TWEWiuJtZyx2zIqvzpl4qhmoi+sTlz6jFzFqkOV/q7g=;
 b=F4/d9YzmEkF+OexV7bY9aacQ2o9h1IFWtZGDp/e6KIbDDqTr7IgJpeFxp40PfSVmeF
 KzmpP35yfU5wzr9H9WcDuNkR5UdQU4B4O9RXVSciMDMEUHfnD83J7fIcJ2dvsQS6HuOr
 A/5GYhGNozck7dUZEI+moZYP8j2HfBOhxSc09d5DDSLxsWfnae0EUbztJL9HlrW9n2Fz
 t+ggTsLGVCT01m2zzoz9Z8h4p46iCufOS8siuuWCbBAGoSDGihr4SMk8ITsHkygJj48n
 GW74oflrcra1KIc07YGPGxMb15qtwlCd39QfcQHghQrryOTmypTyJCXf/PvKCzxV7A4O
 il1Q==
X-Gm-Message-State: APjAAAUOojblDQ+jTJtlyv0fb+ta8HbczPcSlpbF5+H1zIureGmwObqq
 vm1vd0up0LA7soAZtBlldSIMqBkr1kWFv/eUV7xuRA==
X-Google-Smtp-Source: APXvYqwfQE/m1Tuzs26Cj0rJ2ZoZwY+kuHzZ25uJ45GlK2PWON99KVRzapB+ShkXZz0XrwaNR3iTCKR0WSHfTHkhoPg=
X-Received: by 2002:ac8:7b9b:: with SMTP id p27mr3081302qtu.2.1581001323308;
 Thu, 06 Feb 2020 07:02:03 -0800 (PST)
MIME-Version: 1.0
References: <20200203020716.31832-1-leo.yan@linaro.org>
 <20200203020716.31832-6-leo.yan@linaro.org>
In-Reply-To: <20200203020716.31832-6-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 6 Feb 2020 15:01:52 +0000
Message-ID: <CAJ9a7VieWK5M7JOz0LXtKKdkSBbyRRpcXTsXr46S=gfYyaBEMw@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] perf cs-etm: Synchronize instruction sample with
 the thread stack
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_070205_099962_91DA6960 
X-CRM114-Status: GOOD (  24.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, 3 Feb 2020 at 02:08, Leo Yan <leo.yan@linaro.org> wrote:
>
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
>         ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
>         ffff000010214850 perf_event_update_userpage+0x48 ([kernel.kallsyms])
>         ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
>         ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
>         ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
>         ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
>         ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
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
>         ffff000010214854 perf_event_update_userpage+0x4c ([kernel.kallsyms])
>         ffff000010219360 perf_swevent_add+0x88 ([kernel.kallsyms])
>         ffff0000102135f4 event_sched_in.isra.57+0xbc ([kernel.kallsyms])
>         ffff0000102137a0 group_sched_in+0x60 ([kernel.kallsyms])
>         ffff000010213b84 flexible_sched_in+0xfc ([kernel.kallsyms])
>         ffff00001020c0b4 visit_groups_merge+0x12c ([kernel.kallsyms])
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 8f805657658d..410e40ce19f2 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1414,7 +1414,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>         struct cs_etm_packet *tmp;
>         int ret;
>         u8 trace_chan_id = tidq->trace_chan_id;
> -       u64 instrs_executed = tidq->packet->instr_count;
> +       u64 instrs_executed = tidq->prev_packet->instr_count;
>
>         tidq->period_instructions += instrs_executed;
>
> @@ -1505,7 +1505,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>                          * instruction)
>                          */
>                         addr = cs_etm__instr_addr(etmq, trace_chan_id,
> -                                                 tidq->packet, offset - 1);
> +                                                 tidq->prev_packet,
> +                                                 offset - 1);
>                         ret = cs_etm__synth_instruction_sample(
>                                 etmq, tidq, addr,
>                                 etm->instructions_sample_period);
> @@ -1525,7 +1526,8 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>                          * instruction)
>                          */
>                         addr = cs_etm__instr_addr(etmq, trace_chan_id,
> -                                                 tidq->packet, offset - 1);
> +                                                 tidq->prev_packet,
> +                                                 offset - 1);
>                         ret = cs_etm__synth_instruction_sample(
>                                 etmq, tidq, addr,
>                                 etm->instructions_sample_period);
> --
> 2.17.1
>
I am really not convinced that this is a correct solution.

Consider a set of trace range packet inputs:
current: 0x3000-0x3050
prev:  0x2000-0x2100
prev-1: 0x1020-0x1080

Before your modification.....
cs_etm__sample()  processes the current packet....

On entry, the branch stack will contain:0x1080=>0x2000;

We add to this from the current packet to get: 0x1080=>0x2000; 0x2100=>0x3000;

This is then copied by cs_etm__copy_last_branch_rb()

We find the instruction sample address in the range 0x3000 to 0x3050,
e.g. 0x3010.
cs_etm__synth_instruction_sample() will then generate a sample with values

sample.ip = 0x3010
sample.branch_stack = 0x1080=>0x2000; 0x2100=>0x3000;

to be passed to the perf session / injected as required.
This sample has the correct branch context for the sampled address -
i.e. how the code arrived @0x3010

After the modification.....
The branch stack will be the same, but the sample address will be from
the range 0x2000-0x2010, e.g. 0x2008 to give a sample in
cs_etm__synth_instruction_sample() of
sample.ip = 0x2008
sample.branch_stack = 0x1080=>0x2000; 0x2100=>0x3000;

This really does not make much sense  - the branch stack no longer
relates to the sample.ip.

Further - cs_etm__synth_instruction_sample() calls cs_etm__copy_insn()
using the _current_ packet and sample.ip. This is a clear mismatch.

I don't know what is causing the apparent error in the callchain, but
given that the previous features added in this set, work without this
alteration, I feel there must be another solution.

Regards

Mike

-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
