Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A915BF85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 14:37:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3BBBcD4Z4HH1X8yF3pl8ZPZDHON6MFWILgFety/3P8=; b=TKpM8fQGI4cL63
	thNqMZ4BfvxF87fouqmoehTAnbTZzF53VWjXdIcf9AEs9x+1GlHhWHlkq/X3/f5w7SFHyZrUSk8/P
	L/Af1fe3bh6fnGb9JERnyivBnkk07XSrw+T1VjIv8o3ahzJSWRRYhopc16hUeQ7sLQlJ5/bIIDwuy
	eQzwtkYUB5h/bw4M6WnHDOzAg8CZuYzUmYM4WecQVoVti1saNPshi99xrHvh5ukVpN8s5aBgjHycu
	YrjCaqoHlVut3lAVbVB3qp/sLYeSj30qLJiIXI33+MGcnPi+sJ4ZGRzZlo7KDfOpfJSDfA1Y4vFr6
	QDmXEuzt7UUIuDBbt2ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2EgK-0006RG-CD; Thu, 13 Feb 2020 13:37:28 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2EgA-0006QQ-Qb
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 13:37:21 +0000
Received: by mail-qt1-x843.google.com with SMTP id c5so4351016qtj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 05:37:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zkj4moyX3ExA3JZnxZnOdbwj7xLgfeduTVXJftss0No=;
 b=x4J7hsecZfskbx0MFkIaB+6D6tiFH482/wL2zMh8ETKzSXF1k3y6G43jc62Ex+EdMX
 0AaYUJ396uMAwEkihImcXRqU3RG1LmfW6JuZlN7AkSULnOw+0kpbHoeF0fcsxzdSui5M
 AZ3MW6H424BuVxAMVWMrhZh5rFpqghNFQbA/cXXy8MwAqtAyIxzlXLHO7iVnj3ADbQjr
 1bp8I/1leZb3WLPl5jrZ5ig8WUbvVti741NfMoGq7kdx1Eap2Smq4u8OOru6eqNXFEQJ
 d5S7RED7ykupKEdUuCqObzw2e4PJFmBSqR4kkpEc8u2u6jpvM1uERKv9AVV7zM3DNGGm
 fWYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zkj4moyX3ExA3JZnxZnOdbwj7xLgfeduTVXJftss0No=;
 b=g7IjkXoMQKEFI6tq1LFLTm0tOuxLBROjvuBjRdopnC7NK+HArYksRkcuVrYkXlAsVS
 sxMtmsau1Oi8ZjN7kVzE6JUs6oVvQ3lDS8mdb/28HeT2oXLNXRdTFfiOzPg5LpS+jyF/
 MdY8Eosv0bWPAgcl2cRLJyKlJBtFmfcpXN3ae87fYpWLPa8y8tHBLcrpYPewF5jNV2nJ
 M1Yh2BFvDfMUkTQUCdRR156ZwFUECNCVMc+Zg00drOtJFTzQDBGYSeomhEfbFBR8tN3k
 1UpWe9L5T0bF8SsWkvR8vfgMIOsyLkFpfnSYZwqAzHuL6IHkhUFw67BhKTFsSYKgzAco
 uSkw==
X-Gm-Message-State: APjAAAWGlpjU1z6VJ+Kb7zLmrlKg64xLiETgxhsreyHgw5kEYWyHyDSe
 kgCmYxzWaL9fgYu9YYJui4zHJHVPRwfWSFunhVhc7w==
X-Google-Smtp-Source: APXvYqwCUnjFCT76RhU5vaFtih2+z6CRDR+ymGIdkVC44d+hjMqG3DfOSq34nv5WP7zKlsR1W1MZeWPi6NsKXxUBnCQ=
X-Received: by 2002:aed:3786:: with SMTP id j6mr24680000qtb.62.1581601035887; 
 Thu, 13 Feb 2020 05:37:15 -0800 (PST)
MIME-Version: 1.0
References: <20200213094204.2568-1-leo.yan@linaro.org>
 <20200213094204.2568-4-leo.yan@linaro.org>
In-Reply-To: <20200213094204.2568-4-leo.yan@linaro.org>
From: Mike Leach <mike.leach@linaro.org>
Date: Thu, 13 Feb 2020 13:37:05 +0000
Message-ID: <CAJ9a7ViMH6XpSVFMewnxApcy8kvQp-5jAQuXoZvEBuYYaTQ0RA@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] perf cs-etm: Correct synthesizing instruction
 samples
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_053718_869546_C8FA849D 
X-CRM114-Status: GOOD (  30.45  )
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

Reviewed by: Mike Leach <mike.leach@linaro.org>

On Thu, 13 Feb 2020 at 09:43, Leo Yan <leo.yan@linaro.org> wrote:
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
> idea for handling coming packet is:
>
> - To synthesize the first instruction sample, it combines the left
>   instructions from the previous packet and the head of the new
>   packet; then generate continuous samples with sample period;
> - At the tail of the new packet, if it has the rest instructions,
>   these instructions will be left for the sequential sample.
>
> Suggested-by: Mike Leach <mike.leach@linaro.org>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>  tools/perf/util/cs-etm.c | 87 ++++++++++++++++++++++++++++++++--------
>  1 file changed, 70 insertions(+), 17 deletions(-)
>
> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index b2f31390126a..4b7d6c36ce3c 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -1356,9 +1356,12 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
>         struct cs_etm_auxtrace *etm = etmq->etm;
>         int ret;
>         u8 trace_chan_id = tidq->trace_chan_id;
> -       u64 instrs_executed = tidq->packet->instr_count;
> +       u64 instrs_prev;
>
> -       tidq->period_instructions += instrs_executed;
> +       /* Get instructions remainder from previous packet */
> +       instrs_prev = tidq->period_instructions;
> +
> +       tidq->period_instructions += tidq->packet->instr_count;
>
>         /*
>          * Record a branch when the last instruction in
> @@ -1376,26 +1379,76 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
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
> +                *                 tidq->packet->instr_count
> +                *
> +                * Instrs Sample(n...) are the synthesised samples occurring
> +                * every etm->instructions_sample_period instructions - as
> +                * defined on the perf command line.  Sample(n) is being the
> +                * last sample before the current etm packet, n+1 to n+3
> +                * samples are generated from the current etm packet.
> +                *
> +                * tidq->packet->instr_count represents the number of
> +                * instructions in the current etm packet.
> +                *
> +                * Period instructions (Pi) contains the the number of
> +                * instructions executed after the sample point(n) from the
> +                * previous etm packet.  This will always be less than
> +                * etm->instructions_sample_period.
> +                *
> +                * When generate new samples, it combines with two parts
> +                * instructions, one is the tail of the old packet and another
> +                * is the head of the new coming packet, to generate
> +                * sample(n+1); sample(n+2) and sample(n+3) consume the
> +                * instructions with sample period.  After sample(n+3), the rest
> +                * instructions will be used by later packet and it is assigned
> +                * to tidq->period_instructions for next round calculation.
> +                */
>
>                 /*
> -                * Calculate the address of the sampled instruction (-1 as
> -                * sample is reported as though instruction has just been
> -                * executed, but PC has not advanced to next instruction)
> +                * Get the initial offset into the current packet instructions;
> +                * entry conditions ensure that instrs_prev is less than
> +                * etm->instructions_sample_period.
>                  */
> -               u64 offset = (instrs_executed - instrs_over - 1);
> -               u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
> -                                             tidq->packet, offset);
> +               u64 offset = etm->instructions_sample_period - instrs_prev;
> +               u64 addr;
>
> -               ret = cs_etm__synth_instruction_sample(
> -                       etmq, tidq, addr, etm->instructions_sample_period);
> -               if (ret)
> -                       return ret;
> +               while (tidq->period_instructions >=
> +                               etm->instructions_sample_period) {
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
>
> -               /* Carry remaining instructions into next sample period */
> -               tidq->period_instructions = instrs_over;
> +                       offset += etm->instructions_sample_period;
> +                       tidq->period_instructions -=
> +                               etm->instructions_sample_period;
> +               }
>         }
>
>         if (etm->sample_branches) {
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
