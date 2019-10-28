Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB40BE7C7B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 23:44:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ZyPsS+ny1scHIL18LXZBuR7/+Kor8RrHaE7kTFRo2I=; b=gbdOhJgf5GQPuN
	o5GrW6MQZaHqsgzArFevszGU18BJnecIhxRH/b3if+kyO75mFI+uYW2qJlUHv8fIy00tl7+wJOcjX
	U5JNBmQ7pEpvNV6j5hkUp9j6fqEZd0w2TZnjm0rrlltS2WzkZLGzuIBXmv0dQbL+uPjI4UatNGkGD
	XytzNs6k+owRv5VjXm7qJZ1nU3W+6gyBNkdF3VL89Ot/1LUgOq4PoOB99lhbhYzGhBe5Ch5MFgSv3
	lBY6psUAjxslPq9zxYGmAaJGIO9t4t281SAbzlxDWfrK633F3PlG1bDY77L5N8jyBRVH6dz097Ypw
	/eMh6BLBpG3IfcJDW69A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPDkN-0003wt-Ew; Mon, 28 Oct 2019 22:44:23 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPDk9-0003w7-V9
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 22:44:12 +0000
Received: by mail-il1-x141.google.com with SMTP id m16so9615696iln.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 15:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7oyJtVgOCGvHRM1kKW81IfnFRuKk0Wt8gUJq9lHt3b4=;
 b=tN6sRznXRLbhX3REMNJELP+zf+OcM7vU768K/48hHxEPfdb9gott1G1wkMRx1cRVDs
 9ArmBrOxmh4kQnPF6szwEWfxAU9YK1t26gYX6fZzUMXXKC0gDcWmMC+rWHiGAQedQNYl
 8AoysUgiFKOgexGfYA6/Zzf2NU38kAnPf/deP+KRw4zC4AlAlBCfuMEwWDiTdRZxRyXs
 1NDBRVe4Wsku6izPZ+f0bSoMwHhmXj+6D5NxVb/I5YIbQF7qK2vCwKbAVC6ypk3vq4Kx
 eAHUBQ6B9bcYEkt+P24Bi2uLgBT5dI3pRX6xGsWBiKjG9qWRDgIArrzKqbKaGzHCAXLB
 XxLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7oyJtVgOCGvHRM1kKW81IfnFRuKk0Wt8gUJq9lHt3b4=;
 b=VxwWbtl+9qWN2KLDYsvBNjmm4L38xT0YPDunVcCQBJDaOlbAqegmOem7IComqRv0xv
 ofTteR+aIcyuURuZTmPdFBFGaaOsX/UsS3pnOo26TGJFXLOqM9OcNqh5C0VY661RVyCB
 TN+O4ZcPDJISSlGhYylQgrKs3f7dlIYpknCHTOzV1p/nGDwQmrNu2/HqqIUZMUg+os9b
 h+NEa5n6UPOE8QSreqSdPluRDtCmI28ZLyBm57ZaUS6hjzkhPrWx+XJ2e3GRAerxIaX5
 6x/CK/G1Jnl5TV/ukC8h+ja6fv2ycJP6tblrxLGidveVkXflebyw/rHvTJFvri/xLPOp
 vxTg==
X-Gm-Message-State: APjAAAVMEeb0+vnc7ga9TP6FU9FHNfLjWLe9rBC+i0Rtq52t4qc51LfZ
 o97JTOwsWtj25z8guKmcEI39YBtQ1hEvWbbObq4nCg==
X-Google-Smtp-Source: APXvYqxxqFSLW+YQvW3W23/F3AzTIeFNS+xtL17gJ51JW7PYCH8Mt+fklr3ia4Aa36RBcrAlCDvv3YOJ9LZ4GPNFxGs=
X-Received: by 2002:a92:350a:: with SMTP id c10mr5629595ila.140.1572302648463; 
 Mon, 28 Oct 2019 15:44:08 -0700 (PDT)
MIME-Version: 1.0
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-4-leo.yan@linaro.org>
 <20191011175353.GA13688@xps15> <20191022050304.GB32731@leoy-ThinkPad-X240s>
In-Reply-To: <20191022050304.GB32731@leoy-ThinkPad-X240s>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 28 Oct 2019 16:43:57 -0600
Message-ID: <CANLsYkwx1Z2eFz4JqKe9UB8tFqpSdx-kakMHnL1rkUttLZeX1w@mail.gmail.com>
Subject: Re: [PATCH v3 3/6] perf cs-etm: Support thread stack
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_154410_583153_FF592F9E 
X-CRM114-Status: GOOD (  33.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
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

On Mon, 21 Oct 2019 at 23:03, Leo Yan <leo.yan@linaro.org> wrote:
>
> Hi Mathieu,
>
> On Fri, Oct 11, 2019 at 11:53:53AM -0600, Mathieu Poirier wrote:
> > On Sat, Oct 05, 2019 at 05:16:11PM +0800, Leo Yan wrote:
> > > Since Arm CoreSight doesn't support thread stack, the decoding cannot
> > > display symbols with indented spaces to reflect the stack depth.
> > >
> > > This patch adds support thread stack for Arm CoreSight, this allows
> > > 'perf script' to display properly for option '-F,+callindent'.
> > >
> > > Before:
> > >
> > >   # perf script -F,+callindent
> > >             main  2808          1          branches: coresight_test1                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
> > >             main  2808          1          branches: printf@plt                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
> > >             main  2808          1          branches: printf@plt                           aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
> > >             main  2808          1          branches: _init                                aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
> > >             main  2808          1          branches: _dl_fixup                            ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.so)
> > >             main  2808          1          branches: _dl_lookup_symbol_x                  ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
> > >   [...]
> > >
> > > After:
> > >
> > >   # perf script -F,+callindent
> > >             main  2808          1          branches:                 coresight_test1                                      ffff8634f5c8 coresight_test1+0x3c (/root/coresight_test/libcstest.so)
> > >             main  2808          1          branches:                 printf@plt                                           aaaaba8d37ec main+0x28 (/root/coresight_test/main)
> > >             main  2808          1          branches:                     printf@plt                                       aaaaba8d36bc printf@plt+0xc (/root/coresight_test/main)
> > >             main  2808          1          branches:                     _init                                            aaaaba8d3650 _init+0x30 (/root/coresight_test/main)
> > >             main  2808          1          branches:                     _dl_fixup                                        ffff86373b4c _dl_runtime_resolve+0x40 (/lib/aarch64-linux-gnu/ld-2.28.s
> > >             main  2808          1          branches:                         _dl_lookup_symbol_x                          ffff8636e078 _dl_fixup+0xb8 (/lib/aarch64-linux-gnu/ld-2.28.so)
> > >   [...]
> > >
> > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > ---
> > >  tools/perf/util/cs-etm.c | 44 ++++++++++++++++++++++++++++++++++++++++
> > >  1 file changed, 44 insertions(+)
> > >
> > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > index 58ceba7b91d5..780abbfd1833 100644
> > > --- a/tools/perf/util/cs-etm.c
> > > +++ b/tools/perf/util/cs-etm.c
> > > @@ -1117,6 +1117,45 @@ static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> > >                        sample->insn_len, (void *)sample->insn);
> > >  }
> > >
> > > +static void cs_etm__add_stack_event(struct cs_etm_queue *etmq,
> > > +                               struct cs_etm_traceid_queue *tidq)
> > > +{
> > > +   struct cs_etm_auxtrace *etm = etmq->etm;
> > > +   u8 trace_chan_id = tidq->trace_chan_id;
> > > +   int insn_len;
> > > +   u64 from_ip, to_ip;
> > > +
> > > +   if (etm->synth_opts.thread_stack) {
> > > +           from_ip = cs_etm__last_executed_instr(tidq->prev_packet);
> > > +           to_ip = cs_etm__first_executed_instr(tidq->packet);
> > > +
> > > +           insn_len = cs_etm__instr_size(etmq, trace_chan_id,
> > > +                                         tidq->prev_packet->isa, from_ip);
> > > +
> > > +           /*
> > > +            * Create thread stacks by keeping track of calls and returns;
> > > +            * any call pushes thread stack, return pops the stack, and
> > > +            * flush stack when the trace is discontinuous.
> > > +            */
> > > +           thread_stack__event(tidq->thread, tidq->prev_packet->cpu,
> > > +                               tidq->prev_packet->flags,
> > > +                               from_ip, to_ip, insn_len,
> > > +                               etmq->buffer->buffer_nr);
> >
> > Details are a little fuzzy in my head but I'm pretty sure
> > we want trace_chan_id here.
>
> I spent some time to look into this question, and I think we don't
> need to add extra info for trace_chan_id.
>
> The main reason is for CPU wide tracing, if one task is migrated from
> CPU_a to CPU_b, if we append 'trace_chan_id' for the buffer number, then
> it will tell the thread_stack that the buffer has been changed (or it
> will be considered the trace is discontinuous), then thread stack will
> be flushed.  Actually, this is not what we want; if a task is migrated
> from one CPU to another, we still need to keep its thread stack if the
> trace data comes from the same buffer_nr.

After reviewing the code I conclude that using etmq->buffer->buffer_nr
is the correct way to proceed.

That being said you have sent this new set [1], which is a rework of
some of the code you have in the current set.  As such the only way
forward is for you to wait until [1] I has been applied and rebase the
remaining work in this set on top of it.

Let me know if you have questions.

Thanks,
Mathieu

[1]. https://patchwork.kernel.org/cover/11130213/

>
> To be honest, I struggled to understand what's the purpose for
> 'buffer->buffer_nr', from the code, I think 'buffer->buffer_nr' is
> mainly used to trace the splitted buffers (e.g. the buffers are splitted
> into different queues so the trace data coming from different trace
> chunk?).  Now I observe 'buffer->buffer_nr' is always zero since the
> buffer is not used with splitted mode.  If later we support 1:1 map
> between tracers and sinks, then we need to set 'buffer->buffer_nr' so
> can reflect the correct buffer mapping, but we don't need to use
> trace_chan_id as extra info at here.
>
> Please let me know what you think about this?  If you agree with this,
> I will send out patch v4 soon with addressing other comments.
>
> Thanks,
> Leo Yan
>
> > > +   } else {
> > > +           /*
> > > +            * The thread stack can be output via thread_stack__process();
> > > +            * thus the detailed information about paired calls and returns
> > > +            * will be facilitated by Python script for the db-export.
> > > +            *
> > > +            * Need to set trace buffer number and flush thread stack if the
> > > +            * trace buffer number has been alternate.
> > > +            */
> > > +           thread_stack__set_trace_nr(tidq->thread,
> > > +                                      tidq->prev_packet->cpu,
> > > +                                      etmq->buffer->buffer_nr);
> >
> > Same here.
> >
> > > +   }
> > > +}
> > > +
> > >  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
> > >                                         struct cs_etm_traceid_queue *tidq,
> > >                                         u64 addr, u64 period)
> > > @@ -1393,6 +1432,9 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> > >             tidq->period_instructions = instrs_over;
> > >     }
> > >
> > > +   if (tidq->prev_packet->last_instr_taken_branch)
> > > +           cs_etm__add_stack_event(etmq, tidq);
> > > +
> > >     if (etm->sample_branches) {
> > >             bool generate_sample = false;
> > >
> > > @@ -2593,6 +2635,8 @@ int cs_etm__process_auxtrace_info(union perf_event *event,
> > >             itrace_synth_opts__set_default(&etm->synth_opts,
> > >                             session->itrace_synth_opts->default_no_sample);
> > >             etm->synth_opts.callchain = false;
> > > +           etm->synth_opts.thread_stack =
> > > +                           session->itrace_synth_opts->thread_stack;
> > >     }
> > >
> > >     err = cs_etm__synth_events(etm, session);
> > > --
> > > 2.17.1
> > >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
