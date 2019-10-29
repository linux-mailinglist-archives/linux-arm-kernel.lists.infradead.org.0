Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D83E7F01
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 05:12:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R9CFVtSRnS9ROKQinGigA1Ge3rRIrk5f2qTndn5Kebw=; b=OPoEeYcWLnpyIG
	IZu4zEIldQ9HX9VUQhfXSo+DDUwFJGPnPusGVVd89eKzN/VNIhlolgOKteVaQ2RVoiB2/3DmtiMVA
	7w/zmwieRLn4hQ6IkR02URCgHwFi+1NFDCcR7h3K+AaGHr0Aud5uwBQ26Xtbc5GEVLoSk4L1IU2Ek
	7aRUgdUhhdq/xeKuIen7Cy6muixVsI8A7vfU1njbXgn6vlJCmx+d2evUOHOyAGfLLfk7XKQYz0Pp9
	nqOxX+gMvKSzghx7EKdS2VAsZ/JslBP7smwqtY7jM/IUa7iQASWhsVr5VPi4ictkwlFczZI/gI4ve
	SSNNlChdCWfodNgbAyxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPIrk-0007ks-BX; Tue, 29 Oct 2019 04:12:20 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPIrb-0007k7-0d
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 04:12:12 +0000
Received: by mail-yb1-xb43.google.com with SMTP id z125so4930011ybc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 21:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=2BYY/sxGVGNJfh/SsPcdKwe2M6CkjZTIkoXy6HiKASE=;
 b=Q+NZprl8Kz0qCbd6RKrUNLgatmVl0SBgHfQ3g5YIWr5qkFbgaNry0+Dx5RN5n+5hBx
 wUmxW9iWZmFEaffhGIWVC3prXa5xuc4f5Fz43baoQrenTV7OeXqkai2Q4EEnNXFbNGEu
 OxxDE+Wg1PrVo6A4W7U+4Oj08jkIyRq9F9JZuqFMparfxCLCxXdDWz6BV7asJi+7d8Qu
 tO5b9xOAA2I81+KLzqiWnc8iPxY1Ll5Zo3sxdF3uCcl7JZi54maPUZOY4oZzL9mrbZTA
 /lTBfWzGIVpWJmd7eaAKS+PI72pgSMFic5C7vmp0NCrbwu3ig9C0oVZJSEdqSuCSiPkC
 qzzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=2BYY/sxGVGNJfh/SsPcdKwe2M6CkjZTIkoXy6HiKASE=;
 b=tHZayl2Tpd6Di2Sm01eU0ysV4VY+SJFEIGW1hPj8VSqnCds0TmFDeIYXBx4lBL/bpT
 KB9jyn/GQWBmIAXHYdP9sJphpWylYKIomPcvFgCTH13NF9ARza2EgPcOI5/+Zq7mW+Js
 PDDD0DTa++QgxJ+ywh1+TyH8xL/wBS5TA4fw8o88axBRlnHlibzbqulGEi7y3QPtA2XJ
 cd36W36ajvkJZTcNisz76AROq7BZ/s91fb6IbOh4ENHXfkVPivoz2ZcSArKYr7BvpYrm
 GJpYqyTNiObfI1j3ge5B83dnYJlWmyYoBn8RL9B/cNuylw6AUsvQvQVuz1cj1qgxUMDE
 fazA==
X-Gm-Message-State: APjAAAXLpr4KCzDOsmkULpD5mv+rKgvpKxAS/Nl1rgt6vRJaIPyRD5i+
 6OVuphknHl1xpvvsso2wNOmEXQ==
X-Google-Smtp-Source: APXvYqyB/e5iiXbCIk7Of5d1zjpXNGmmvg7YYvbpWo9spISg7ei3Xy7A9HhxLClOp8PIe8aBDMHtaw==
X-Received: by 2002:a25:2d49:: with SMTP id s9mr16663628ybe.450.1572322328007; 
 Mon, 28 Oct 2019 21:12:08 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li1038-5.members.linode.com. [45.33.96.5])
 by smtp.gmail.com with ESMTPSA id
 x139sm5989209ywg.13.2019.10.28.21.12.03
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 28 Oct 2019 21:12:07 -0700 (PDT)
Date: Tue, 29 Oct 2019 12:11:59 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH v3 3/6] perf cs-etm: Support thread stack
Message-ID: <20191029041159.GA25758@leoy-ThinkPad-X240s>
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-4-leo.yan@linaro.org>
 <20191011175353.GA13688@xps15>
 <20191022050304.GB32731@leoy-ThinkPad-X240s>
 <CANLsYkwx1Z2eFz4JqKe9UB8tFqpSdx-kakMHnL1rkUttLZeX1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwx1Z2eFz4JqKe9UB8tFqpSdx-kakMHnL1rkUttLZeX1w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_211211_068625_991438D6 
X-CRM114-Status: GOOD (  38.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On Mon, Oct 28, 2019 at 04:43:57PM -0600, Mathieu Poirier wrote:
> On Mon, 21 Oct 2019 at 23:03, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > Hi Mathieu,
> >
> > On Fri, Oct 11, 2019 at 11:53:53AM -0600, Mathieu Poirier wrote:
> > > On Sat, Oct 05, 2019 at 05:16:11PM +0800, Leo Yan wrote:
> > > > Since Arm CoreSight doesn't support thread stack, the decoding cannot
> > > > display symbols with indented spaces to reflect the stack depth.
> > > >
> > > > This patch adds support thread stack for Arm CoreSight, this allows
> > > > 'perf script' to display properly for option '-F,+callindent'.
> > > >
> > > > Before:
> > > >
> > > >   # perf script -F,+callindent
> > > >             main  2808          1          branches: coresight_test1                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
> > > >             main  2808          1          branches: printf@plt                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
> > > >             main  2808          1          branches: printf@plt                           aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
> > > >             main  2808          1          branches: _init                                aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
> > > >             main  2808          1          branches: _dl_fixup                            ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.so)
> > > >             main  2808          1          branches: _dl_lookup_symbol_x                  ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
> > > >   [...]
> > > >
> > > > After:
> > > >
> > > >   # perf script -F,+callindent
> > > >             main  2808          1          branches:                 coresight_test1                                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
> > > >             main  2808          1          branches:                 printf@plt                                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
> > > >             main  2808          1          branches:                     printf@plt                                       aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
> > > >             main  2808          1          branches:                     _init                                            aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
> > > >             main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
> > > >             main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
> > > >   [...]
> > > >
> > > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > > ---
> > > >  tools/perf/util/cs-etm.c | 44 ++++++++++++++++++++++++++++++++++++++++
> > > >  1 file changed, 44 insertions(+)
> > > >
> > > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > > index 58ceba7b91d5..780abbfd1833 100644
> > > > --- a/tools/perf/util/cs-etm.c
> > > > +++ b/tools/perf/util/cs-etm.c
> > > > @@ -1117,6 +1117,45 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> > > >                        sample->insn_len, (void *)sample->insn);
> > > >  }
> > > >
> > > > +static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
> > > > +                               struct cs_etm_traceid_queue *tidq)
> > > > +{
> > > > +   struct cs_etm_auxtrace *etm = etmq->etm;
> > > > +   u8 trace_chan_id = tidq->trace_chan_id;
> > > > +   int insn_len;
> > > > +   u64 from_ip, to_ip;
> > > > +
> > > > +   if (etm->synth_opts.thread_stack) {
> > > > +           from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
> > > > +           to_ip = cs_etm__first_executed_instr(tidq->packet);
> > > > +
> > > > +           insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > > > +                                         tidq->prev_packet->isa, from_ip);
> > > > +
> > > > +           /*
> > > > +            * Create thread stacks by keeping track of calls and returns;
> > > > +            * any call pushes thread stack, return pops the stack, and
> > > > +            * flush stack when the trace is discontinuous.
> > > > +            */
> > > > +           thread_stack__event(tidq->thread, tidq->prev_packet->cpu,
> > > > +                               tidq->prev_packet->flags,
> > > > +                               from_ip, to_ip, insn_len,
> > > > +                               etmq->buffer->buffer_nr);
> > >
> > > Details are a little fuzzy in my head but I'm pretty sure
> > > we want trace_chan_id here.
> >
> > I spent some time to look into this question, and I think we don't
> > need to add extra info for trace_chan_id.
> >
> > The main reason is for CPU wide tracing, if one task is migrated from
> > CPU_a to CPU_b, if we append 'trace_chan_id' for the buffer number, then
> > it will tell the thread_stack that the buffer has been changed (or it
> > will be considered the trace is discontinuous), then thread stack will
> > be flushed.  Actually, this is not what we want; if a task is migrated
> > from one CPU to another, we still need to keep its thread stack if the
> > trace data comes from the same buffer_nr.
> 
> After reviewing the code I conclude that using etmq->buffer->buffer_nr
> is the correct way to proceed.

Thanks for reviewing and confirmation.

> That being said you have sent this new set [1], which is a rework of
> some of the code you have in the current set.  As such the only way
> forward is for you to wait until [1] I has been applied and rebase the
> remaining work in this set on top of it.

Right.

Seems the shared link is incorrect :)  Let's firstly focus on the patch
set: 'perf cs-etm: Fix synthesizing instruction samples' [2] and after
it is merged I will send new patch set for cs-etm callchain support as
soon as possible.

Thanks,
Leo Yan

[2] https://patchwork.kernel.org/cover/11209991/

> Let me know if you have questions.
> 
> Thanks,
> Mathieu
> 
> [1]. https://patchwork.kernel.org/cover/11130213/
> 
> >
> > To be honest, I struggled to understand what's the purpose for
> > 'buffer->buffer_nr', from the code, I think 'buffer->buffer_nr' is
> > mainly used to trace the splitted buffers (e.g. the buffers are splitted
> > into different queues so the trace data coming from different trace
> > chunk?).  Now I observe 'buffer->buffer_nr' is always zero since the
> > buffer is not used with splitted mode.  If later we support 1:1 map
> > between tracers and sinks, then we need to set 'buffer->buffer_nr' so
> > can reflect the correct buffer mapping, but we don't need to use
> > trace_chan_id as extra info at here.
> >
> > Please let me know what you think about this?  If you agree with this,
> > I will send out patch v4 soon with addressing other comments.
> >
> > Thanks,
> > Leo Yan
> >
> > > > +   } else {
> > > > +           /*
> > > > +            * The thread stack can be output via thread_stack__process();
> > > > +            * thus the detailed information about paired calls and returns
> > > > +            * will be facilitated by Python script for the db-export.
> > > > +            *
> > > > +            * Need to set trace buffer number and flush thread stack if the
> > > > +            * trace buffer number has been alternate.
> > > > +            */
> > > > +           thread_stack__set_trace_nr(tidq->thread,
> > > > +                                      tidq->prev_packet->cpu,
> > > > +                                      etmq->buffer->buffer_nr);
> > >
> > > Same here.
> > >
> > > > +   }
> > > > +}
> > > > +
> > > >  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
> > > >                                         struct cs_etm_traceid_queue *tidq,
> > > >                                         u64 addr, u64 period)
> > > > @@ -1393,6 +1432,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> > > >             tidq->period_instructions = instrs_over;
> > > >     }
> > > >
> > > > +   if (tidq->prev_packet->last_instr_taken_branch)
> > > > +           cs_etm__add_stack_event(etmq, tidq);
> > > > +
> > > >     if (etm->sample_branches) {
> > > >             bool generate_sample = false;
> > > >
> > > > @@ -2593,6 +2635,8 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
> > > >             itrace_synth_opts__set_default(&etm->synth_opts,
> > > >                             session->itrace_synth_opts->default_no_sample);
> > > >             etm->synth_opts.callchain = false;
> > > > +           etm->synth_opts.thread_stack =
> > > > +                           session->itrace_synth_opts->thread_stack;
> > > >     }
> > > >
> > > >     err = cs_etm__synth_events(etm, session);
> > > > --
> > > > 2.17.1
> > > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
