Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0970192716
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 16:36:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4PhiqrsopyjPPMdVy0hsEflq20aOQ2DoH7py4CbEAc=; b=IH0eukXVnGs2MO
	1j3toybdohgxCzGMuOlbhkp6FQ9UGIDv94372RvhGEYx88zJwl0H1qf2H+seOMPnDVn0bi8DWRJrF
	Vea03Dnrsz1d/eypv0IHjHPyWhfnEAsW0FRDT/MiNUo+HnlUF3wewxbVrz8afxwpq0K7nQep9evB6
	0v4YRBWnuKjVuJGOUM3eyx/mJJqMlWo83Za5glNcQy5yoVx0ijnX20VyoNEkmmIBaCtpxPOsB5unL
	99oDSSMUzChtmv9DLfIoLs3IJ2MO/D8gHHJ+cbK06VKEi3ufWMzEIO+sVSZ6xImhdSjGRck0iq7ML
	2GNFxp1vmt39NCRJnoRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzimE-0004Vm-Ed; Mon, 19 Aug 2019 14:36:54 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzim6-0004V4-Oo
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 14:36:49 +0000
Received: by mail-io1-xd41.google.com with SMTP id t3so4710467ioj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 07:36:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iFql09aYcbuPzPRNNxnVYR/hsgoCVkgeaLnrJBlkInE=;
 b=hZ0/K+8mp3EUZ2oVc6YBrrwM+NY5lrxsoN/bHpXw9ccgPD0KXXZoiHJt2JSw+AA1UH
 RDw7F+gixHjtULxlpNnjMJ9cOwEYrN68BTFX4MbTNKrjpbr2Dvc+zLmPz075TrejNJPs
 8V86xo6hVlIeTK402ASR8wrBOlTk8W8MzI3+lagfQDzYWKjJcwqubdgGEmBSd06Q37B0
 h3G7WAn4oKLCR7Ij4+epGx+eirKb+ON4L+S6moIhGxSxEIeN/Y5SIriF/eSCL4bu5D9M
 az7QG2ELlpdcHvqRRl8MRbg31faL8wFJBGeMdBhhuIoxOiquxv6+6zwY/74E0nzCO6t/
 qtXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iFql09aYcbuPzPRNNxnVYR/hsgoCVkgeaLnrJBlkInE=;
 b=KU06cAVUmn+VrfjNwDEgl30cHRWaiINt5sAFPcoJgLA+9Pkenq+TOm5uobyAZ/eMuw
 8NMxsxDcXYLH6v4Kf+cTPYLLgCRN2uJKFVm/XgjgiOJQseb+3AlA2O9T3SN4vW012ckL
 sqSGo4zKZiPBDtbsO6us6maNmxKOJIsgaTMf1wKxXRccOJeNY4ZHgfsqCeLYMLZgG1HS
 nbszleyWD4wjoj4XYRsFu3SNdDVIYe/CeizD2X0VGg+DZC66+DBaJxwR4LUnte20KXde
 Ot1nkYocpg0S/OiiPyAtQ7sdOO6v7CqjH452z7kGQvTV1QYxZ6lrNng7Xrm4fcT09lHn
 ECFg==
X-Gm-Message-State: APjAAAVViC34c1XI3ROPItUFPuzw6k0rUB3P/e/NZGLXMtGSFRhjgIRm
 LOUVaN5hJolCXlQ4TpVnz4iqMb7nzvH7n/PjL6TNag==
X-Google-Smtp-Source: APXvYqy/JTSP8plWiptfa8XNpGVBvS6DSUqOTELVeUKcWKe8jXPOt+uLKCaayd0PFnIVLPBNJHs/fGqNCYjrSVaGp+s=
X-Received: by 2002:a5d:8854:: with SMTP id t20mr250833ios.50.1566225405381;
 Mon, 19 Aug 2019 07:36:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190815082854.18191-1-leo.yan@linaro.org>
 <20190819142321.GB29674@kernel.org>
In-Reply-To: <20190819142321.GB29674@kernel.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 19 Aug 2019 08:36:34 -0600
Message-ID: <CANLsYkxfhRRj4V29DGUq_LkiM7nDTOQnPd2saWTGvKt+Qr6M1Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] perf cs-etm: Support sample flags 'insn' and 'insnlen'
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_073646_817894_2DB839D5 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 at 08:23, Arnaldo Carvalho de Melo
<arnaldo.melo@gmail.com> wrote:
>
> Em Thu, Aug 15, 2019 at 04:28:54PM +0800, Leo Yan escreveu:
> > The synthetic branch and instruction samples are missed to set
> > instruction related info, thus perf tool fails to display samples with
> > flags '-F,+insn,+insnlen'.
> >
> > CoreSight trace decoder has provided sufficient information to decide
> > the instruction size based on the isa type: A64/A32 instruction are
> > 32-bit size, but one exception is the T32 instruction size, which might
> > be 32-bit or 16-bit.
> >
> > This patch handles for these cases and it reads the instruction values
> > from DSO file; thus can support flags '-F,+insn,+insnlen'.
>
> Mathieu, can I have your Acked-by/Reviewed-by?

Yes, as soon as I have the opportunity to test it.

>
> - Arnaldo
>
> > Before:
> >
> >   # perf script -F,insn,insnlen,ip,sym
> >                 0 [unknown] ilen: 0
> >      ffff97174044 _start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >      ffff97174938 _dl_start ilen: 0
> >
> >   [...]
> >
> > After:
> >
> >   # perf script -F,insn,insnlen,ip,sym
> >                 0 [unknown] ilen: 0
> >      ffff97174044 _start ilen: 4 insn: 2f 02 00 94
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
> >
> >   [...]
> >
> > Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> > Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
> > Cc: Mike Leach <mike.leach@linaro.org>
> > Cc: Robert Walker <robert.walker@arm.com>
> > Cc: coresight@lists.linaro.org
> > Cc: linux-arm-kernel@lists.infradead.org
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 35 ++++++++++++++++++++++++++++++++++-
> >  1 file changed, 34 insertions(+), 1 deletion(-)
> >
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index ed6f7fd5b90b..b3a5daaf1a8f 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -1076,6 +1076,35 @@ bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq)
> >       return !!etmq->etm->timeless_decoding;
> >  }
> >
> > +static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> > +                           u64 trace_chan_id,
> > +                           const struct cs_etm_packet *packet,
> > +                           struct perf_sample *sample)
> > +{
> > +     /*
> > +      * It's pointless to read instructions for the CS_ETM_DISCONTINUITY
> > +      * packet, so directly bail out with 'insn_len' = 0.
> > +      */
> > +     if (packet->sample_type == CS_ETM_DISCONTINUITY) {
> > +             sample->insn_len = 0;
> > +             return;
> > +     }
> > +
> > +     /*
> > +      * T32 instruction size might be 32-bit or 16-bit, decide by calling
> > +      * cs_etm__t32_instr_size().
> > +      */
> > +     if (packet->isa == CS_ETM_ISA_T32)
> > +             sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> > +                                                       sample->ip);
> > +     /* Otherwise, A64 and A32 instruction size are always 32-bit. */
> > +     else
> > +             sample->insn_len = 4;
> > +
> > +     cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
> > +                        sample->insn_len, (void *)sample->insn);
> > +}
> > +
> >  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
> >                                           struct cs_etm_traceid_queue *tidq,
> >                                           u64 addr, u64 period)
> > @@ -1097,9 +1126,10 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
> >       sample.period = period;
> >       sample.cpu = tidq->packet->cpu;
> >       sample.flags = tidq->prev_packet->flags;
> > -     sample.insn_len = 1;
> >       sample.cpumode = event->sample.header.misc;
> >
> > +     cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
> > +
> >       if (etm->synth_opts.last_branch) {
> >               cs_etm__copy_last_branch_rb(etmq, tidq);
> >               sample.branch_stack = tidq->last_branch;
> > @@ -1159,6 +1189,9 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
> >       sample.flags = tidq->prev_packet->flags;
> >       sample.cpumode = event->sample.header.misc;
> >
> > +     cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->prev_packet,
> > +                       &sample);
> > +
> >       /*
> >        * perf report cannot handle events without a branch stack
> >        */
> > --
> > 2.17.1
>
> --
>
> - Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
