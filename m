Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 213781534FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 17:09:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpdxuRQd5M7Ys34Cwx8VfXLRZ5nezKNAxWkJrRBiHUU=; b=umRTob8Uo1hkPd
	KzSXLMpcoyEReHoWIaebSHjiGLXb/LySHKKyn6Zeg1gwd6kt6GLLCqm5LD0bdX3B2zuYxAGXw2W7w
	mvuRe2OrxPQAveEsfWnvgXyw5mhFQOjGCQ60V6uttMpMKebXVISoMdKWaUOi4KEna/J3UbLg60Yl6
	ukz0Ff679mKrHWtdXhxmNmWtwMqfTRKaZyzCnxymhzTTgSYaMRXPaeQILu/14BIiV7ON8/9aNrUPe
	hD5VKHUyRVxM3Djn+nP2EmV1e/35pbhUGCcW4WVf833P+tKTGIt/kyGbXbxzsh3nGzX9zjKSaNCKd
	BaylpTy/EyIbrKPtJ/8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izNEy-0003jW-FU; Wed, 05 Feb 2020 16:09:24 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izNEo-0003is-KU
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 16:09:16 +0000
Received: by mail-qt1-x843.google.com with SMTP id h12so1963285qtu.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 08:09:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PvMgtmCypa6dN2YRTNmRQCzXIANAtMCLKhGHOwYDoYY=;
 b=EdrGDqRyMunjHbYpc5wP887ggphFAl5426HJY9WayFNhFqCaCpknkK3F0SlcTYfGiI
 cgLKTtp1+9KAeJx00gF+Ef08HCs2IzX156DZAWGB++CbeHDxPfZWUauUZufYbiGLGekV
 83q5BfXwUOuuDj1rwng3JpCrZL/abv51l5TexSgSBcblOAD4C0Ru0U/FMHRXUz4ax3s2
 kyGjuJUJtFJxWT+T4BqKX+yVfMo3Rj2LrSWFQY7rxZ6CqY/kkvnp5kK51etPgzI9W3gh
 S5HYUmZjGUNZpPoGEyD6XvAkv7SpZOMK2pZI1JNHJeTRzSndGsjmu0lbdJZlxesgKGhg
 lhPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PvMgtmCypa6dN2YRTNmRQCzXIANAtMCLKhGHOwYDoYY=;
 b=eYnOTlh8nufpM3JrcwwhkBzop0X98SgA9xIL9Q4UXsYIeqftrjFVjKLFBp644CNg6r
 qIx07PYnX+iEUV/pbbVG1PbD4FRvmhl9odP6OeK6MzQ0+brQhz2sc8KjJpsr7zegDCTe
 qi+YW3HT4lhsguoCkW0TjD2TLbp1qW2gz3stRfRahEb07T2Xxn0FAUFqoyW1IH4Axslu
 7avm2qIX+zcQAgOSXCOAZ8wSm+61qIqZp77iCUAEuqjCQDBzVjxAb3ocx/qHzT1ACjRp
 Uk0CV1Sx9iwiP2cKi1+8T7moZ/NMai5uiax8JNcn6rfTDgZVktaXc139LpiGjMZsjwoN
 DtOQ==
X-Gm-Message-State: APjAAAV/nFwFZR4fqLCJT2w0g7Gg21d1lpTy95fzVjGGvg7x9jgwgdPR
 UJu/7/Ri5G9W1//qyMrVFtjG15Kh+6BUHLaOhyXCog==
X-Google-Smtp-Source: APXvYqxVKtTV3F3WyzBJFJ8fLJYXNEpn4L0pyPcYZbS2t12iiyJHC1nVhn0ShSOXvJt3ABJnDADv3vEQuaHk0F8Vbmo=
X-Received: by 2002:ac8:718e:: with SMTP id w14mr33945370qto.266.1580918952671; 
 Wed, 05 Feb 2020 08:09:12 -0800 (PST)
MIME-Version: 1.0
References: <20200203015203.27882-1-leo.yan@linaro.org>
 <20200203015203.27882-4-leo.yan@linaro.org>
In-Reply-To: <20200203015203.27882-4-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 5 Feb 2020 16:09:01 +0000
Message-ID: <CAJ9a7Vgx+-8Etcak=NDJ1p1yQeexyqRDFFWPW=bW5ZHNLyeP6A@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] perf cs-etm: Correct synthesizing instruction
 samples
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_080914_677884_26152AA9 
X-CRM114-Status: GOOD (  36.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

There are a couple of typos in the comments below, but I also believe
that the sample loop could be considerably simplified

On Mon, 3 Feb 2020 at 01:52, Leo Yan <leo.yan@linaro.org> wrote:
>
> When 'etm->instructions_sample_period' is less than
> 'tidq->period_instructions', the function cs_etm__sample() cannot handle
> this case properly with its logic.
>
> Let's see below flow as an example:
>
> - If we set itrace option '--itrace=i4', then function cs_etm__sample()
>   has variables with initialized values:
>
>   tidq->period_instructions = 0
>   etm->instructions_sample_period = 4
>
> - When the first packet is coming:
>
>   packet->instr_count = 10; the number of instructions executed in this
>   packet is 10, thus update period_instructions as below:
>
>   tidq->period_instructions = 0 + 10 = 10
>   instrs_over = 10 - 4 = 6
>   offset = 10 - 6 - 1 = 3
>   tidq->period_instructions = instrs_over = 6
>
> - When the second packet is coming:
>
>   packet->instr_count = 10; in the second pass, assume 10 instructions
>   in the trace sample again:
>
>   tidq->period_instructions = 6 + 10 = 16
>   instrs_over = 16 - 4 = 12
>   offset = 10 - 12 - 1 = -3  -> the negative value
>   tidq->period_instructions = instrs_over = 12
>
> So after handle these two packets, there have below issues:
>
> The first issue is that cs_etm__instr_addr() returns the address within
> the current trace sample of the instruction related to offset, so the
> offset is supposed to be always unsigned value.  But in fact, function
> cs_etm__sample() might calculate a negative offset value (in handling
> the second packet, the offset is -3) and pass to cs_etm__instr_addr()
> with u64 type with a big positive integer.
>
> The second issue is it only synthesizes 2 samples for sample period = 4.
> In theory, every packet has 10 instructions so the two packets have
> total 20 instructions, 20 instructions should generate 5 samples
> (4 x 5 = 20).  This is because cs_etm__sample() only calls once
> cs_etm__synth_instruction_sample() to generate instruction sample per
> range packet.
>
> This patch fixes the logic in function cs_etm__sample(); the basic
> idea is to divide into three parts for handling coming packet:
>
> - The first part is for synthesizing the first instruction sample, it
>   combines the instructions from the tail of previous packet and the
>   instructions from the head of the new packet;
> - The second part is to simply generate samples with sample period
>   aligned;
> - The third part is the tail of new packet, the rest instructions will
>   be left for the sequential sample handling.
>
> Suggested-by: Mike Leach <mike.leach@linaro.org>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 105 ++++++++++++++++++++++++++++++++++-----
>  1 file changed, 92 insertions(+), 13 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 3e28462609e7..c5a05f728eac 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1360,23 +1360,102 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>                  * TODO: allow period to be defined in cycles and clock time
>                  */
>
> -               /* Get number of instructions executed after the sample point */
> -               u64 instrs_over = tidq->period_instructions -
> -                       etm->instructions_sample_period;
> +               /*
> +                * Below diagram demonstrates the instruction samples
> +                * generation flows:
> +                *
> +                *    Instrs     Instrs       Instrs       Instrs
> +                *   Sample(n)  Sample(n+1)  Sample(n+2)  Sample(n+3)
> +                *    |            |            |            |
> +                *    V            V            V            V
> +                *   --------------------------------------------------
> +                *            ^                                  ^
> +                *            |                                  |
> +                *         Period                             Period
> +                *    instructions(Pi)                   instructions(Pi')
> +                *
> +                *            |                                  |
> +                *            \---------------- -----------------/
> +                *                             V
> +                *                      instrs_executed
> +                *
> +                * Period instructions (Pi) contains the the number of
> +                * instructions executed after the sample point(n).  When a new
> +                * instruction packet is coming and generate for the next sample
> +                * (n+1), it combines with two parts instructions, one is the
> +                * tail of the old packet and another is the head of the new
> +                * coming packet.  So 'head' variable is used to cauclate the
typo : s/cauclate/calculate
> +                * instruction numbers in the new packet for sample(n+1).
> +                *
> +                * Sample(n+2) and sample(n+3) consume the instructions with
> +                * sample period, so directly generate samples based on the
> +                * sampe period.
> +                *
typo: s/sampe/sample
> +                * After sample(n+3), the rest instructions will be used by
> +                * later packet; so use 'instrs_over' to track the rest
> +                * instruction number and it is assigned to
> +                * 'tidq->period_instructions' for next round calculation.
> +                */
> +               u64 head, offset = 0;
> +               u64 addr;
>
>                 /*
> -                * Calculate the address of the sampled instruction (-1 as
> -                * sample is reported as though instruction has just been
> -                * executed, but PC has not advanced to next instruction)
> +                * 'instrs_over' is the number of instructions executed after
> +                * sample points, initialise it to 'instrs_executed' and will
> +                * decrease it for consumed instructions in every synthesized
> +                * instruction sample.
>                  */
> -               u64 offset = (instrs_executed - instrs_over - 1);
> -               u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
> -                                             tidq->packet, offset);
> +               u64 instrs_over = instrs_executed;
>
> -               ret = cs_etm__synth_instruction_sample(
> -                       etmq, tidq, addr, etm->instructions_sample_period);
> -               if (ret)
> -                       return ret;
> +               /*
> +                * 'head' is the instructions number of the head in the new
> +                * packet, it combines with the tail of previous packet to
> +                * generate a sample.  So 'head' uses the sample period to
> +                * decrease the instruction number introduced by the previous
> +                * packet.
> +                */
> +               head = etm->instructions_sample_period -
> +                                 (tidq->period_instructions - instrs_executed);
> +
> +               if (head) {
> +                       offset = head;
> +
> +                       /*
> +                        * Calculate the address of the sampled instruction (-1
> +                        * as sample is reported as though instruction has just
> +                        * been executed, but PC has not advanced to next
> +                        * instruction)
> +                        */
> +                       addr = cs_etm__instr_addr(etmq, trace_chan_id,
> +                                                 tidq->packet, offset - 1);
> +                       ret = cs_etm__synth_instruction_sample(
> +                               etmq, tidq, addr,
> +                               etm->instructions_sample_period);
> +                       if (ret)
> +                               return ret;
> +
> +                       instrs_over -= head;
> +               }
> +
> +               while (instrs_over >= etm->instructions_sample_period) {
> +                       offset += etm->instructions_sample_period;
> +
> +                       /*
> +                        * Calculate the address of the sampled instruction (-1
> +                        * as sample is reported as though instruction has just
> +                        * been executed, but PC has not advanced to next
> +                        * instruction)
> +                        */
> +                       addr = cs_etm__instr_addr(etmq, trace_chan_id,
> +                                                 tidq->packet, offset - 1);
> +                       ret = cs_etm__synth_instruction_sample(
> +                               etmq, tidq, addr,
> +                               etm->instructions_sample_period);
> +                       if (ret)
> +                               return ret;
> +
> +                       instrs_over -= etm->instructions_sample_period;
> +               }
>
>                 /* Carry remaining instructions into next sample period */
>                 tidq->period_instructions = instrs_over;
> --
> 2.17.1
>

I believe the following change would work and make for easier reading...

.... at the start of the function remove instrs_executed and replace ....
/* get instructions remainder from previous packet */
u64 instrs_prev = tidq->period_instructions;

/* set available instructions to previous packet remainder + the
current packet count  */
tidq->period_instructions += tidq->packet->instr_count;


.... within the if(etm->sample_instructions && ...) statement I would
be more explicit what the elements of the diagram are ....

/*
 * Below diagram demonstrates the instruction samples
 * generation flows:
 *
 *    Instrs     Instrs       Instrs       Instrs
 *   Sample(n)  Sample(n+1)  Sample(n+2)  Sample(n+3)
 *    |            |            |            |
 *    V            V            V            V
 *   --------------------------------------------------
 *            ^                                  ^
 *            |                                  |
 *         Period                             Period
 *    instructions(Pi)                   instructions(Pi')
 *
 *            |                                  |
 *            \---------------- -----------------/
 *                             V
 *                      tidq->packet->instr_count;
 *
 * Instrs Sample(n...) are the synthesised samples occuring every
etm->instructions_sample_period
 * instructions - as defined on the perf command line. Sample(n) being
the last sample before the
 * current etm packet, n+1 to n+3 samples generated from the current etm packet.
 *
 * tidq->packet->instr_count represents the number of instructions in
the current etm packet.
 *
 * Period instructions (Pi) contains the the number of instructions
executed after the sample point(n)
 * from the previous etm packet. This will always be less than
etm->instructions_sample_period.
 *

.... continue with explanation here ....


.... then we can simplify the loop code removing some of the temporary
variables ....

/* get the initial offset into the current packet instructions
   (entry conditions ensure that instrs_prev < etm->instructions_sample_period)
 */
u64 offset = etm->instructions_sample_period - instrs_prev;
u64 addr;

/* Prepare last branches for instruction sample */
if (etm->synth_opts.last_branch)
    cs_etm__copy_last_branch_rb(etmq, tidq);

while (tidq->period_instructions >= etm->instructions_sample_period) {

      /*
       * Calculate the address of the sampled instruction (-1
       * as sample is reported as though instruction has just
       * been executed, but PC has not advanced to next
       * instruction)
       */
    addr = cs_etm__instr_addr(etmq, trace_chan_id, tidq->packet, offset - 1);
    ret = cs_etm__synth_instruction_sample( etmq, tidq, addr,
                etm->instructions_sample_period);
    if (ret)
        return ret;

    offset += etm->instructions_sample_period;
    tidq->period_instructions -= etm->instructions_sample_period;
}

.....
I believe the above should work, but cannot claim to have tried it
out. What do you think?

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
