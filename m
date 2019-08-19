Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB6FA94C5F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:09:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QbYT52yiDSm39lzQeC+ABG9rHZfs7uKGMxVQSWDkfdw=; b=qHX17nAgvAtMum
	h+00EYiyxIBGOR0T40Nf3wrz9cFuCKYF4ACOGvS6NjdH7LLFsEW2jam8Fd/7yD//MXG/R501Se5SA
	ALSe94PXBBREwN3eVomIxjgSBg5KYTo60lgwvGNr4Tz6zp1AB34zbOpKpzSIz5xI5SYuIXqNMAA2m
	g/7O4k3A5Mo2VhYrKiDuzyRnKHri94pDMc6j4yEUNd2Af1qD4ZYnOBAyPjonvw1b0cu9vBZQdOYkx
	XjHwFPB24qol+kbvg7QqoreMj9tyXN1sctqoOuBLvmxXvnct11VmyImL1HKH48dbsOlbU7ipfQ3UZ
	NsCOVhdFpKuOtibKx5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzm5a-0008EI-BK; Mon, 19 Aug 2019 18:09:06 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzm59-0008Dn-13
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:08:40 +0000
Received: by mail-io1-xd44.google.com with SMTP id l7so5586498ioj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 19 Aug 2019 11:08:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4jVeMKqF0pwcZE17bYM4UMPdWdsEiK+mCc9lzyMLHMc=;
 b=CI98HHXVmd99fvPNsV4vYEp6ZKxKOep5wn4vOHu+t9xkOh/RcMtEVKx6lyvMgprZ5K
 1tgp7lyV+IFY0XMkrMfql1sNyPEBhxNko8dl4ppzriAMAG6iLAbq3wAFmUM1sIIfAOv2
 0W4Htk7pJC62PHt6wopwjz5uWLK/h2Sgb6StBcn4S5k8WzXe04SVLSqaJUOKJC717Yk3
 lmlpYPHnu4+BWKSS+75MAvuQrhhjbH9QbSkaF2BDqmeRA+ks04Gp8ihYjlJdiIX8EB28
 txwv6cUGhTMoPvqyg5sBWqyyKAX2fLtMkTHtKaAWVbFVVX4FE89agNfPIIVvkbA/YMQ8
 DIPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4jVeMKqF0pwcZE17bYM4UMPdWdsEiK+mCc9lzyMLHMc=;
 b=Lfq+iPZUeD7uqC6/CWUK3CQOCocUWbjSSTnHbQ2mBABOupHojA0ty+caarRkrO7zo1
 lDoklvqmzUurs/ZSAqw4lKyH/epc4+rmsfoMjL4+am7RMnL7now85kCKXYk3PLYzrVo2
 KEGI1mWDTt5XOp1jUvMfee37E28+qBJvT71Qjm67AQCDCga0WA1oK0p6LoLTM4y8/Mzl
 JfxFHKkoRzwWQLrztPDdF7moCIgA0o6bHLs1OYjoQAAqCA79XCmjRbHLKeWXRQQKTzLn
 dVuGGmsdXoMQJbeS9bc7XuYv+Z4JWV1c17NUQOJeW0VrdqHGhicmnTjzM/wld6l3jwCJ
 mJ4w==
X-Gm-Message-State: APjAAAVyrvqo7jiixuaRd3PN9bldf8AWitm8CyhQTU+81t1USCWqt/Li
 4siAPenyAZs4ZtC70LXs/tkEyjxAEQ7XMzxnBpgDPw==
X-Google-Smtp-Source: APXvYqyFMTtlksR8aUalyK9zQsKemFP6hrIJVv4IGARiucyP4wdZNbfsGwtF9VgTEul8wU16afchuEfGb2n8ppajG0k=
X-Received: by 2002:a02:8663:: with SMTP id e90mr21939784jai.98.1566238117387; 
 Mon, 19 Aug 2019 11:08:37 -0700 (PDT)
MIME-Version: 1.0
References: <20190815082854.18191-1-leo.yan@linaro.org>
In-Reply-To: <20190815082854.18191-1-leo.yan@linaro.org>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Mon, 19 Aug 2019 12:08:26 -0600
Message-ID: <CANLsYkx5TanDyztpceZvwf4pZSgoqRMOBgiHcdJxxpnGA9-h-Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] perf cs-etm: Support sample flags 'insn' and 'insnlen'
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_110839_101996_E9A85442 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
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
 Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 15 Aug 2019 at 02:30, Leo Yan <leo.yan@linaro.org> wrote:
>
> The synthetic branch and instruction samples are missed to set
> instruction related info, thus perf tool fails to display samples with
> flags '-F,+insn,+insnlen'.
>
> CoreSight trace decoder has provided sufficient information to decide
> the instruction size based on the isa type: A64/A32 instruction are
> 32-bit size, but one exception is the T32 instruction size, which might
> be 32-bit or 16-bit.
>
> This patch handles for these cases and it reads the instruction values
> from DSO file; thus can support flags '-F,+insn,+insnlen'.
>
> Before:
>
>   # perf script -F,insn,insnlen,ip,sym
>                 0 [unknown] ilen: 0
>      ffff97174044 _start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>      ffff97174938 _dl_start ilen: 0
>
>   [...]
>
> After:
>
>   # perf script -F,insn,insnlen,ip,sym
>                 0 [unknown] ilen: 0
>      ffff97174044 _start ilen: 4 insn: 2f 02 00 94
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>      ffff97174938 _dl_start ilen: 4 insn: c1 ff ff 54
>
>   [...]
>
> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
> Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
> Cc: Mike Leach <mike.leach@linaro.org>
> Cc: Robert Walker <robert.walker@arm.com>
> Cc: coresight@lists.linaro.org
> Cc: linux-arm-kernel@lists.infradead.org
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 35 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index ed6f7fd5b90b..b3a5daaf1a8f 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1076,6 +1076,35 @@ bool cs_etm__etmq_is_timeless(struct cs_etm_queue *etmq)
>         return !!etmq->etm->timeless_decoding;
>  }
>
> +static void cs_etm__copy_insn(struct cs_etm_queue *etmq,
> +                             u64 trace_chan_id,
> +                             const struct cs_etm_packet *packet,
> +                             struct perf_sample *sample)
> +{
> +       /*
> +        * It's pointless to read instructions for the CS_ETM_DISCONTINUITY
> +        * packet, so directly bail out with 'insn_len' = 0.
> +        */
> +       if (packet->sample_type == CS_ETM_DISCONTINUITY) {
> +               sample->insn_len = 0;
> +               return;
> +       }
> +
> +       /*
> +        * T32 instruction size might be 32-bit or 16-bit, decide by calling
> +        * cs_etm__t32_instr_size().
> +        */
> +       if (packet->isa == CS_ETM_ISA_T32)
> +               sample->insn_len = cs_etm__t32_instr_size(etmq, trace_chan_id,
> +                                                         sample->ip);
> +       /* Otherwise, A64 and A32 instruction size are always 32-bit. */
> +       else
> +               sample->insn_len = 4;
> +
> +       cs_etm__mem_access(etmq, trace_chan_id, sample->ip,
> +                          sample->insn_len, (void *)sample->insn);
> +}
> +
>  static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>                                             struct cs_etm_traceid_queue *tidq,
>                                             u64 addr, u64 period)
> @@ -1097,9 +1126,10 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>         sample.period = period;
>         sample.cpu = tidq->packet->cpu;
>         sample.flags = tidq->prev_packet->flags;
> -       sample.insn_len = 1;
>         sample.cpumode = event->sample.header.misc;
>
> +       cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
> +
>         if (etm->synth_opts.last_branch) {
>                 cs_etm__copy_last_branch_rb(etmq, tidq);
>                 sample.branch_stack = tidq->last_branch;
> @@ -1159,6 +1189,9 @@ static int cs_etm__synth_branch_sample(struct cs_etm_queue *etmq,
>         sample.flags = tidq->prev_packet->flags;
>         sample.cpumode = event->sample.header.misc;
>
> +       cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->prev_packet,
> +                         &sample);
> +

The code seems to be correct.  I have also tested this patch.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

>         /*
>          * perf report cannot handle events without a branch stack
>          */
> --
> 2.17.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
