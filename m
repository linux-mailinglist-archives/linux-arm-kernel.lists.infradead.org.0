Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32B7715436E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 12:48:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BkkpVRnO+UFZwMkrw1rZjg0WaChl5J9dFIJwpCwno7I=; b=fUiyhL/0b3ji77
	SakwqoKsdZfeS+lCD1Xc5i4NJRyJSX76OTSh69Q0bx2DsCgvPuv4FtJ14cCY3PsY3Zp0sTEbBLEJY
	Ski8344rG4Iz9CLajDl9kCfxYblTGD0uTAP0J7fL62yWjrgbVB3fZ0ScFf3r8Kmh9g6jo9Ifh9JD7
	E+kVGImvMF0O6zCgzZOTCldGRm0t9qPu/oH83IjII9OfKS5a3ZfR+lQESvg1ZrcDi8y4If7uAX3+f
	DmR5la3TacRYQVjHmsGlljhQdlucUCU/vTIcUWPzZt/nB5qB6vccdiAom99wyN/sk6HLrP2N/GFaK
	m49dTufjLLUhHdALebOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izfdl-0006rU-9o; Thu, 06 Feb 2020 11:48:13 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfde-0006qp-Hw
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 11:48:07 +0000
Received: by mail-qk1-x743.google.com with SMTP id q15so5218617qki.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 03:48:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/u8lvgk0NC69lCwcmVZfuM0logUMbV9/5K5IshgRyII=;
 b=DDoVu9ahZ+Ap+93u8MAGwzuX2sk5Fyh9mTYGH24hkEoBupe8V1s8r1tyc3HymNXU2x
 goOv+bWqcswbeO80n2CVXvsC3zImb4a5rL/rh+b/xvlqXLdj4UHGN0YVgr6h6WVWuKHD
 92Bomcob7JYlvlI0fz6cahfSwAMWrSubdV6UBXpuKPFm5+QYhijBppU/Jwzm9LiTYx7e
 EomJLK7n5LSqxmVOxWIaPgQ+PxPEcEm5Vd5Ijgb1CKxmuJaUWysw81Ipuia7cAQW4uRf
 AdyjlFAzpOiOf7Rt+671CiLauqwcpVdSdgURzRYWCaJD39UwsLUZ6qd1rufp7QRvqyPL
 C4NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/u8lvgk0NC69lCwcmVZfuM0logUMbV9/5K5IshgRyII=;
 b=nvPINcNQeTBHk6auE1yhEgN3jcHRSbtdB9DYnUcQWeXaM28dYPWCCnwAT0Hn4tsL1U
 u61IId5FZpSqyvN0muIWJCN/a2dzyNJpRh99fpiISxl/zseziai1cDYPydgODYldPitb
 DFe4t28kBjXkzd+E4pAK7IgW0yoBlTfRLtK7zFq8ZEzNq1nErZdtb22LiKizI5Xu0joS
 cyvhSddfuB4GQJ+33xJxLMmoj2TGwpb+ltk2x2fb9q1RPQVVbqcxEMKLPovfDhP70kfD
 IolDpzl2RUQNL5ivFtTL0g9QY7xelDFze4bvax7w+f6Jyym+Mz5lSLX/oz6VI6hdySix
 qd3w==
X-Gm-Message-State: APjAAAW8lpw357ASIOppsptOMMxBdUhGl4GgaI0BC2DJenerhcdYUm52
 Ol+yPpTzTNptn7hLBQ826Ok+CoVHbFH22t/127jyxw==
X-Google-Smtp-Source: APXvYqzYYH+tW5YrglZD3ssrPMzlN82itd1CZ/QvnglBZm1r41ASPrFGsYEMpm4ullIwMLaJv6uPYWuFCaSzUvvy43I=
X-Received: by 2002:a37:9c8a:: with SMTP id f132mr2057012qke.432.1580989685049; 
 Thu, 06 Feb 2020 03:48:05 -0800 (PST)
MIME-Version: 1.0
References: <20200203015203.27882-1-leo.yan@linaro.org>
 <20200203015203.27882-5-leo.yan@linaro.org>
In-Reply-To: <20200203015203.27882-5-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 6 Feb 2020 11:47:54 +0000
Message-ID: <CAJ9a7VipUiYZYVkOA-rEakmOhRJp0EhKzoZMFQO0QZmfKhvScg@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] perf cs-etm: Optimize copying last branches
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_034806_593421_DCD3DDCA 
X-CRM114-Status: GOOD (  19.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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

Reviewed by: Mike Leach <mike.leach@linaro.org>

On Mon, 3 Feb 2020 at 01:53, Leo Yan <leo.yan@linaro.org> wrote:
>
> If an instruction range packet can generate multiple instruction
> samples, these samples share the same last branches; it's not necessary
> to copy the same last branches repeatedly for these samples within the
> same packet.
>
> This patch moves out the last branches copying from function
> cs_etm__synth_instruction_sample(), and execute it prior to generating
> instruction samples.
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 22 +++++++++++++++++-----
>  1 file changed, 17 insertions(+), 5 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index c5a05f728eac..dbddf1eec2be 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1134,10 +1134,8 @@ static int cs_etm__synth_instruction_sample(struct cs_etm_queue *etmq,
>
>         cs_etm__copy_insn(etmq, tidq->trace_chan_id, tidq->packet, &sample);
>
> -       if (etm->synth_opts.last_branch) {
> -               cs_etm__copy_last_branch_rb(etmq, tidq);
> +       if (etm->synth_opts.last_branch)
>                 sample.branch_stack = tidq->last_branch;
> -       }
>
>         if (etm->synth_opts.inject) {
>                 ret = cs_etm__inject_event(event, &sample,
> @@ -1407,6 +1405,10 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>                  */
>                 u64 instrs_over = instrs_executed;
>
> +               /* Prepare last branches for instruction sample */
> +               if (etm->synth_opts.last_branch)
> +                       cs_etm__copy_last_branch_rb(etmq, tidq);
> +
>                 /*
>                  * 'head' is the instructions number of the head in the new
>                  * packet, it combines with the tail of previous packet to
> @@ -1526,6 +1528,11 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
>
>         if (etmq->etm->synth_opts.last_branch &&
>             tidq->prev_packet->sample_type == CS_ETM_RANGE) {
> +               u64 addr;
> +
> +               /* Prepare last branches for instruction sample */
> +               cs_etm__copy_last_branch_rb(etmq, tidq);
> +
>                 /*
>                  * Generate a last branch event for the branches left in the
>                  * circular buffer at the end of the trace.
> @@ -1533,7 +1540,7 @@ static int cs_etm__flush(struct cs_etm_queue *etmq,
>                  * Use the address of the end of the last reported execution
>                  * range
>                  */
> -               u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
> +               addr = cs_etm__last_executed_instr(tidq->prev_packet);
>
>                 err = cs_etm__synth_instruction_sample(
>                         etmq, tidq, addr,
> @@ -1587,11 +1594,16 @@ static int cs_etm__end_block(struct cs_etm_queue *etmq,
>          */
>         if (etmq->etm->synth_opts.last_branch &&
>             tidq->prev_packet->sample_type == CS_ETM_RANGE) {
> +               u64 addr;
> +
> +               /* Prepare last branches for instruction sample */
> +               cs_etm__copy_last_branch_rb(etmq, tidq);
> +
>                 /*
>                  * Use the address of the end of the last reported execution
>                  * range.
>                  */
> -               u64 addr = cs_etm__last_executed_instr(tidq->prev_packet);
> +               addr = cs_etm__last_executed_instr(tidq->prev_packet);
>
>                 err = cs_etm__synth_instruction_sample(
>                         etmq, tidq, addr,
> --
> 2.17.1
>


-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
