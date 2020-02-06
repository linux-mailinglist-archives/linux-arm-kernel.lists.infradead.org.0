Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 073BD154013
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 09:25:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyF9RHhnXMR+rZNQ9FtWEOobCjUDLoEygKHDwqNb7HQ=; b=bSYDG2pMTAIUSc
	DGhSmIGwwzpRtMqdllGENx0ZrD9+R+vokFYvoFSFwVMVPgrGmvytlFl1gre241GrguPqeo4M7lm/1
	FGjTC6ICsJgaqDex9mVRh33PrG3remBdItfm17VC/bHvXcLcOzzJdnxptJSqDO0g3/l7s8nHYWyyQ
	AHoIhhVOBzATJWr1vdBHbPwOw94sgECkvob6ZK3FaWjD2rDuub8pYUnLGVKBPvCvhUXMnE82ULV1l
	WWc0ALTF2ENj/KA+CP8Uj2Mtv02tgV75nginMiGeX9Dg03wR0BV49rbYPh/r9yw36XGEJT3o1aerX
	r0VqZih2OEEU5fT2opSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izcSv-00019L-Hx; Thu, 06 Feb 2020 08:24:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izcSo-000190-1S
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 08:24:43 +0000
Received: by mail-pf1-x443.google.com with SMTP id y73so2713814pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 00:24:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Gcu/MBD5y+k9GL2qLXcd5S94TlBigL82zSNhw+41Llk=;
 b=VN66oejD5fgAZQzVbEXrqzaYUucPCYjlpvNELrtDM/KSzAGiRv/AwJhpwjCB06E3kD
 oLSt/lp4LB762EDY6O8xFhzIEFr7cK6f1tos4uV11kzQUSgrBVbB5ONOD47g4P53LfUd
 8YCYY/iCtHSG7ZkIbSm3Pp8jmilgGg2LhBVqOl899vhhIbMdSSiM0fwL4ebnl9Wi9Mwp
 NLlByLuqaTEMEvDYbSxox4BhXjz7j8F5e30gE+1M/2OKySpgssHh+Aiai3VthGnDCxCE
 i5+1yj2Z0x7pKD/GnkUeknYJ8AuJHEQZnyKo0W98nMIvuhlHxUzgXS/rwbN9tPmnpolv
 wJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Gcu/MBD5y+k9GL2qLXcd5S94TlBigL82zSNhw+41Llk=;
 b=HJ5XL3WD7UPvqqVSz1Kh6QpPGG/FbhLcJhQljdB6Zswcai7eTFkbrpa7uP+wZjlqEL
 o6pZDjDXkHENipcslEcvrqmH/3jgGtvKvKhHbxGvpTrw75XbTxHF3m0LMGsvKRVUzty+
 CKHi4xGuanWK1SWu0yPT8M7OP1EjLHMB2lWZFo7/o6TZboNycx33xmsk0MWbWoj4hU0z
 oSFiybxe89wEoMP/JrqnuzRVE8jvT8GrvhJN3wasd2SG4jn72+Ko35gXqfagZRvsTDtD
 gzJ9vpEG8c2iJTCZOCT305jyjvv/DLt9mJJOEsUr5hPh8XLAADqnndm5xg4cwYt32EUf
 6/Kg==
X-Gm-Message-State: APjAAAUuLNxJ3bDV3pyRaVP1YVmC2FT3jusbjIsvAGKV2PEkmP8dRP97
 3vhDAgDsn5UPeNYkp4gVSkB5lA==
X-Google-Smtp-Source: APXvYqw6w48vSVE7b0D1eb4Hp2oAIKvE7+Ltn2LDvENbjt++jAfqC0toL081vOsJteIwmkD0kJJuqg==
X-Received: by 2002:a62:78c1:: with SMTP id t184mr2478380pfc.222.1580977481254; 
 Thu, 06 Feb 2020 00:24:41 -0800 (PST)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:32da])
 by smtp.gmail.com with ESMTPSA id n2sm2294912pfq.50.2020.02.06.00.24.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Feb 2020 00:24:40 -0800 (PST)
Date: Thu, 6 Feb 2020 16:24:23 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Mike Leach <mike.leach@linaro.org>
Subject: Re: [PATCH v3 3/5] perf cs-etm: Correct synthesizing instruction
 samples
Message-ID: <20200206081834.GB3807@leoy-ThinkPad-X240s>
References: <20200203015203.27882-1-leo.yan@linaro.org>
 <20200203015203.27882-4-leo.yan@linaro.org>
 <CAJ9a7Vgx+-8Etcak=NDJ1p1yQeexyqRDFFWPW=bW5ZHNLyeP6A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ9a7Vgx+-8Etcak=NDJ1p1yQeexyqRDFFWPW=bW5ZHNLyeP6A@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_002442_123027_D9EB4728 
X-CRM114-Status: GOOD (  40.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

On Wed, Feb 05, 2020 at 04:09:01PM +0000, Mike Leach wrote:
> Hi Leo,
> 
> There are a couple of typos in the comments below, but I also believe
> that the sample loop could be considerably simplified
> 
> On Mon, 3 Feb 2020 at 01:52, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > When 'etm->instructions_sample_period' is less than
> > 'tidq->period_instructions', the function cs_etm__sample() cannot handle
> > this case properly with its logic.
> >
> > Let's see below flow as an example:
> >
> > - If we set itrace option '--itrace=i4', then function cs_etm__sample()
> >   has variables with initialized values:
> >
> >   tidq->period_instructions = 0
> >   etm->instructions_sample_period = 4
> >
> > - When the first packet is coming:
> >
> >   packet->instr_count = 10; the number of instructions executed in this
> >   packet is 10, thus update period_instructions as below:
> >
> >   tidq->period_instructions = 0 + 10 = 10
> >   instrs_over = 10 - 4 = 6
> >   offset = 10 - 6 - 1 = 3
> >   tidq->period_instructions = instrs_over = 6
> >
> > - When the second packet is coming:
> >
> >   packet->instr_count = 10; in the second pass, assume 10 instructions
> >   in the trace sample again:
> >
> >   tidq->period_instructions = 6 + 10 = 16
> >   instrs_over = 16 - 4 = 12
> >   offset = 10 - 12 - 1 = -3  -> the negative value
> >   tidq->period_instructions = instrs_over = 12
> >
> > So after handle these two packets, there have below issues:
> >
> > The first issue is that cs_etm__instr_addr() returns the address within
> > the current trace sample of the instruction related to offset, so the
> > offset is supposed to be always unsigned value.  But in fact, function
> > cs_etm__sample() might calculate a negative offset value (in handling
> > the second packet, the offset is -3) and pass to cs_etm__instr_addr()
> > with u64 type with a big positive integer.
> >
> > The second issue is it only synthesizes 2 samples for sample period = 4.
> > In theory, every packet has 10 instructions so the two packets have
> > total 20 instructions, 20 instructions should generate 5 samples
> > (4 x 5 = 20).  This is because cs_etm__sample() only calls once
> > cs_etm__synth_instruction_sample() to generate instruction sample per
> > range packet.
> >
> > This patch fixes the logic in function cs_etm__sample(); the basic
> > idea is to divide into three parts for handling coming packet:
> >
> > - The first part is for synthesizing the first instruction sample, it
> >   combines the instructions from the tail of previous packet and the
> >   instructions from the head of the new packet;
> > - The second part is to simply generate samples with sample period
> >   aligned;
> > - The third part is the tail of new packet, the rest instructions will
> >   be left for the sequential sample handling.
> >
> > Suggested-by: Mike Leach <mike.leach@linaro.org>
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > ---
> >  tools/perf/util/cs-etm.c | 105 ++++++++++++++++++++++++++++++++++-----
> >  1 file changed, 92 insertions(+), 13 deletions(-)
> >
> > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > index 3e28462609e7..c5a05f728eac 100644
> > --- a/tools/perf/util/cs-etm.c
> > +++ b/tools/perf/util/cs-etm.c
> > @@ -1360,23 +1360,102 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> >                  * TODO: allow period to be defined in cycles and clock time
> >                  */
> >
> > -               /* Get number of instructions executed after the sample point */
> > -               u64 instrs_over = tidq->period_instructions -
> > -                       etm->instructions_sample_period;
> > +               /*
> > +                * Below diagram demonstrates the instruction samples
> > +                * generation flows:
> > +                *
> > +                *    Instrs     Instrs       Instrs       Instrs
> > +                *   Sample(n)  Sample(n+1)  Sample(n+2)  Sample(n+3)
> > +                *    |            |            |            |
> > +                *    V            V            V            V
> > +                *   --------------------------------------------------
> > +                *            ^                                  ^
> > +                *            |                                  |
> > +                *         Period                             Period
> > +                *    instructions(Pi)                   instructions(Pi')
> > +                *
> > +                *            |                                  |
> > +                *            \---------------- -----------------/
> > +                *                             V
> > +                *                      instrs_executed
> > +                *
> > +                * Period instructions (Pi) contains the the number of
> > +                * instructions executed after the sample point(n).  When a new
> > +                * instruction packet is coming and generate for the next sample
> > +                * (n+1), it combines with two parts instructions, one is the
> > +                * tail of the old packet and another is the head of the new
> > +                * coming packet.  So 'head' variable is used to cauclate the
> typo : s/cauclate/calculate

Used checkpatch.pl but didn't see any complaints for this.

Thanks for pointing out and will fix it.

> > +                * instruction numbers in the new packet for sample(n+1).
> > +                *
> > +                * Sample(n+2) and sample(n+3) consume the instructions with
> > +                * sample period, so directly generate samples based on the
> > +                * sampe period.
> > +                *
> typo: s/sampe/sample

Will fix.

> > +                * After sample(n+3), the rest instructions will be used by
> > +                * later packet; so use 'instrs_over' to track the rest
> > +                * instruction number and it is assigned to
> > +                * 'tidq->period_instructions' for next round calculation.
> > +                */
> > +               u64 head, offset = 0;
> > +               u64 addr;
> >
> >                 /*
> > -                * Calculate the address of the sampled instruction (-1 as
> > -                * sample is reported as though instruction has just been
> > -                * executed, but PC has not advanced to next instruction)
> > +                * 'instrs_over' is the number of instructions executed after
> > +                * sample points, initialise it to 'instrs_executed' and will
> > +                * decrease it for consumed instructions in every synthesized
> > +                * instruction sample.
> >                  */
> > -               u64 offset = (instrs_executed - instrs_over - 1);
> > -               u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > -                                             tidq->packet, offset);
> > +               u64 instrs_over = instrs_executed;
> >
> > -               ret = cs_etm__synth_instruction_sample(
> > -                       etmq, tidq, addr, etm->instructions_sample_period);
> > -               if (ret)
> > -                       return ret;
> > +               /*
> > +                * 'head' is the instructions number of the head in the new
> > +                * packet, it combines with the tail of previous packet to
> > +                * generate a sample.  So 'head' uses the sample period to
> > +                * decrease the instruction number introduced by the previous
> > +                * packet.
> > +                */
> > +               head = etm->instructions_sample_period -
> > +                                 (tidq->period_instructions - instrs_executed);
> > +
> > +               if (head) {
> > +                       offset = head;
> > +
> > +                       /*
> > +                        * Calculate the address of the sampled instruction (-1
> > +                        * as sample is reported as though instruction has just
> > +                        * been executed, but PC has not advanced to next
> > +                        * instruction)
> > +                        */
> > +                       addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > +                                                 tidq->packet, offset - 1);
> > +                       ret = cs_etm__synth_instruction_sample(
> > +                               etmq, tidq, addr,
> > +                               etm->instructions_sample_period);
> > +                       if (ret)
> > +                               return ret;
> > +
> > +                       instrs_over -= head;
> > +               }
> > +
> > +               while (instrs_over >= etm->instructions_sample_period) {
> > +                       offset += etm->instructions_sample_period;
> > +
> > +                       /*
> > +                        * Calculate the address of the sampled instruction (-1
> > +                        * as sample is reported as though instruction has just
> > +                        * been executed, but PC has not advanced to next
> > +                        * instruction)
> > +                        */
> > +                       addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > +                                                 tidq->packet, offset - 1);
> > +                       ret = cs_etm__synth_instruction_sample(
> > +                               etmq, tidq, addr,
> > +                               etm->instructions_sample_period);
> > +                       if (ret)
> > +                               return ret;
> > +
> > +                       instrs_over -= etm->instructions_sample_period;
> > +               }
> >
> >                 /* Carry remaining instructions into next sample period */
> >                 tidq->period_instructions = instrs_over;
> > --
> > 2.17.1
> >
> 
> I believe the following change would work and make for easier reading...
> 
> .... at the start of the function remove instrs_executed and replace ....
> /* get instructions remainder from previous packet */
> u64 instrs_prev = tidq->period_instructions;
> 
> /* set available instructions to previous packet remainder + the
> current packet count  */
> tidq->period_instructions += tidq->packet->instr_count;
> 
> 
> .... within the if(etm->sample_instructions && ...) statement I would
> be more explicit what the elements of the diagram are ....
> 
> /*
>  * Below diagram demonstrates the instruction samples
>  * generation flows:
>  *
>  *    Instrs     Instrs       Instrs       Instrs
>  *   Sample(n)  Sample(n+1)  Sample(n+2)  Sample(n+3)
>  *    |            |            |            |
>  *    V            V            V            V
>  *   --------------------------------------------------
>  *            ^                                  ^
>  *            |                                  |
>  *         Period                             Period
>  *    instructions(Pi)                   instructions(Pi')
>  *
>  *            |                                  |
>  *            \---------------- -----------------/
>  *                             V
>  *                      tidq->packet->instr_count;
>  *
>  * Instrs Sample(n...) are the synthesised samples occuring every
> etm->instructions_sample_period
>  * instructions - as defined on the perf command line. Sample(n) being
> the last sample before the
>  * current etm packet, n+1 to n+3 samples generated from the current etm packet.
>  *
>  * tidq->packet->instr_count represents the number of instructions in
> the current etm packet.
>  *
>  * Period instructions (Pi) contains the the number of instructions
> executed after the sample point(n)
>  * from the previous etm packet. This will always be less than
> etm->instructions_sample_period.
>  *
> 
> .... continue with explanation here ....
> 
> 
> .... then we can simplify the loop code removing some of the temporary
> variables ....
> 
> /* get the initial offset into the current packet instructions
>    (entry conditions ensure that instrs_prev < etm->instructions_sample_period)
>  */
> u64 offset = etm->instructions_sample_period - instrs_prev;
> u64 addr;
> 
> /* Prepare last branches for instruction sample */
> if (etm->synth_opts.last_branch)
>     cs_etm__copy_last_branch_rb(etmq, tidq);
> 
> while (tidq->period_instructions >= etm->instructions_sample_period) {
> 
>       /*
>        * Calculate the address of the sampled instruction (-1
>        * as sample is reported as though instruction has just
>        * been executed, but PC has not advanced to next
>        * instruction)
>        */
>     addr = cs_etm__instr_addr(etmq, trace_chan_id, tidq->packet, offset - 1);
>     ret = cs_etm__synth_instruction_sample( etmq, tidq, addr,
>                 etm->instructions_sample_period);
>     if (ret)
>         return ret;
> 
>     offset += etm->instructions_sample_period;
>     tidq->period_instructions -= etm->instructions_sample_period;
> }
> 
> .....
> I believe the above should work, but cannot claim to have tried it
> out. What do you think?

Agree.  To be honest, I considered to use your suggested way, but I
worried about the boundary conditions for 'offset', so went back to
use explict method with two code segments (head and sequential samples).

After review the suggested code, I don't find any issue.  Will refine
code as this way and give testing for it.

Very appreciate the suggestions :)

Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
