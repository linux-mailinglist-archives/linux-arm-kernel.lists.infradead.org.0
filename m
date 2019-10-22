Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD63EE0E92
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 01:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r92FjgnKeweiOYmzzR13/jvXBvQNMWFNApvJfUKXcqM=; b=VupqLwacTfDx+j
	QHhBngdWdG4tcjoxw/GgjjjR6lN0qJ2L2sqqY/+Mv13/BYD7/WarINe18oKJovTf/ZowQm9xPrkWK
	2n2tSw80IJRSyEmmOA42rkONFYIPQIKtoaoEwBBoGv1HEAPj0instBJ4zkKwRX6cOHIKcXGbc7Yu9
	7xq4EgJqOwwnktTODT79Fo5p8z4uUqDCHJtQU5sKzcfvEJUkWNNcR39uE2rPgbFN6HzH4S+zUK6e/
	Ro91isyVYg+THSs/ehhj3Aj9cGlzAIYa1sFWQVXcr80OXxGBMlE9tEd8I8L9PfeNbf22aPg2yy3GD
	fcLeAluvHPs/M2pw/EXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN3i2-0005kq-Lv; Tue, 22 Oct 2019 23:37:02 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN3hu-0005k2-5q
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 23:36:56 +0000
Received: by mail-qt1-x843.google.com with SMTP id z22so9042035qtq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 16:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cUuaR4LyEZB38AH7m3cbUEf4VRX283gO52TBH9+80dI=;
 b=F2/piHAoTO7ug6OtJnSE79CpcKBwRl9rSGdZTxaQzEpA1nQxNP64hIRCi1dDz1xGRH
 w9ShBQeoZN28WWXjblAvLRfr3s1xZWwGj4lSoHOj8fEpwc27CmC76TsHzORWrrWT/2vl
 nYt9gjpdENbQb+R1mrbrFHIZadSUTPxok49gRK6iJL30FhKwzcB8FBSZQk9hrK4NcXDh
 K8xkZ39jxIssT54yraW3PZ0p8202PxjXlwxDdCLwjcGY7KpQma5YqmQ44Qo9HIb5OeEJ
 4OAYo5QFimFQ7nbAftHrNad1nxG5ZnE2zpLypJBNk40bRF5IYCQabzU8/NnW3cczbcf1
 WiLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cUuaR4LyEZB38AH7m3cbUEf4VRX283gO52TBH9+80dI=;
 b=LsRuToyZHzTe5V4Ex6PeyHnrQl7c81tSCMdzKPavwycvKGVOdjE/FA33FLIDX2d09M
 v2+gp4XLkTM1Xqrwr+DrdTPLbGQP+tcu0RQL1Z9taK0gAZC+P+TZpGaAhMB66DgC11e8
 GbHLKSl/kKCmVYD1+YRo8ge+LzLZHDYzL4eNrdVreEalDAyyLX2OjTMKHYvKNH3rTBlO
 nuql4x4I/R4JQqFtByfe7xiS9KMbw7UYO6pMAY6NHPqeN9zXCaqtB4X+sp3nQApuOolK
 ajE98N2gVF0NI/I2aiGFpY2PEcrehA28OxJfaC2TbLqfCfJNq5lwJynMV5Cr3t68gY3l
 KLBg==
X-Gm-Message-State: APjAAAWHHyFC+k5hKZbvwG+qvakvvnoOH4S04LKg/xovdvzfrTx41zuV
 gbIi2VaD6KUPhsXI2wAURugL44h3Nc7e0dqeVuHfFw==
X-Google-Smtp-Source: APXvYqyP1T3mL5FaCeP16Y0+8KcxclZeem3fvNnJ5akb5TBXmPv5Jq1OOkgEMXg0LAZzOkxVOa9UVXEUV/siORLWkKs=
X-Received: by 2002:ac8:72ce:: with SMTP id o14mr6479979qtp.62.1571787410354; 
 Tue, 22 Oct 2019 16:36:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191005091614.11635-1-leo.yan@linaro.org>
 <20191005091614.11635-2-leo.yan@linaro.org>
 <20191011201606.GC13688@xps15> <20191022051020.GC32731@leoy-ThinkPad-X240s>
In-Reply-To: <20191022051020.GC32731@leoy-ThinkPad-X240s>
From: Mike Leach <mike.leach@linaro.org>
Date: Wed, 23 Oct 2019 00:36:39 +0100
Message-ID: <CAJ9a7VgLevM0mZV7tR=Uq8k5-9ZbrwCGM2KoetU8B4V-WFfTsw@mail.gmail.com>
Subject: Re: [PATCH v3 1/6] perf cs-etm: Fix unsigned variable comparison to
 zero
To: Leo Yan <leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_163654_359382_69B432B1 
X-CRM114-Status: GOOD (  29.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Leo,

Two points here - both related.

On Tue, 22 Oct 2019 at 06:10, Leo Yan <leo.yan@linaro.org> wrote:
>
> Hi Mathieu,
>
> On Fri, Oct 11, 2019 at 02:16:06PM -0600, Mathieu Poirier wrote:
> > On Sat, Oct 05, 2019 at 05:16:09PM +0800, Leo Yan wrote:
> > > If the u64 variable 'offset' is a negative integer, comparison it with
> > > bigger than zero is always going to be true because it is unsigned.
> > > Fix this by using s64 type for variable 'offset'.
> > >
> > > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > > ---
> > >  tools/perf/util/cs-etm.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> > > index 4ba0f871f086..4bc2d9709d4f 100644
> > > --- a/tools/perf/util/cs-etm.c
> > > +++ b/tools/perf/util/cs-etm.c
> > > @@ -940,7 +940,7 @@ u64 cs_etm__last_executed_instr(const struct cs_etm_packet *packet)
> > >  static inline u64 cs_etm__instr_addr(struct cs_etm_queue *etmq,
> > >                                  u64 trace_chan_id,
> > >                                  const struct cs_etm_packet *packet,
> > > -                                u64 offset)
> > > +                                s64 offset)
> >
Issue 1:

OK - it appears that cs_etm__instr_addr() is supposed to be returning
the address within the current trace sample of the instruction related
to offset.
For T32 - then if offset < 0, packet->start_addr is returned - not
good but at least within the current trace range
For A32/A64 - if offset < 0 then an address _before_
packet->start_addr is returned - clearly wrong and possibly a
completely invalid address that was never actually traced.

> > In Suzuki's reply there was two choices, 1) move the while(offset > 0) to
> > while (offset) or change the type of @offset to an s64.  Here we know offset
> > can't be negative because of the
> >         tidq->period_instructions >= etm->instructions_sample_period
> >
> > in function cs_etm__sample().  As such I think option #1 is the right way to
> > deal with this rather than changing the type of the variable.
>
> I took sometime to use formulas to prove that 'offset' is possible to
> be a negative value :)
>
> Just paste the updated commit log at here for review:
>
>   Pi: period_instructions
>   Ie: instrs_executed
>   Io: instrs_over
>   Ip: instructions_sample_period
>
>   Pi' = Pi + Ie   -> New period_instructions equals to the old
>                      period_instructions + instrs_executed
>   Io  = Pi' - Ip  -> period_instructions - instructions_sample_period
>
>   offset = Ie - Io - 1
>          = Ie - (Pi' - Ip) -1
>          = Ie - (Pi + Ie - Ip) -1
>          = Ip - Pi - 1
>
> In theory, if Ip (instructions_sample_period) is small enough and Pi
> (period_instructions) is bigger than Ip, then it will lead to the
> negative value for 'offset'.
>
> So let's see below command:
>
>   perf inject --itrace=i1il128 -i perf.data -o perf.data.new
>
> With this command, 'offset' is very easily to be a negative value when
> handling packets; this is because if use the inject option 'i1', then
> instructions_sample_period equals to 1; so:
>
>   offset = 1 - Pi - 1
>          = -Pi
>
> Any Pi bigger than zero leads 'offset' to a negative value.
>
> Thanks,
> Leo Yan
>

Issue 2:

Assuming I have understood the logic of this code correctly - there is
an issue were sample_period < period_instructions as you say -
but I believe the problem is in the logic of the sampling function itself.

Suppose we have a sample_period of 4.

Now on an initial pass through the function, period_instructions must
be 0. (i.e. none left over from the previous pass.)
Suppose also that the number of instructions executed in this sample
is 10 - thus updating period_instructions.
Therefore:
instr_over = 10 - 4 -> 6
offset = 10 - 6 - 1 -> 3.
We therefore call cs_etm_instr_addr to find the address an offset of 3
instructions from the start of the trace sample and synthesize the
sample.
After this we set period_instructions to the instr_over value of 6.

Next pass, assume 10 instructions in the trace sample again.
period_instructions = 6 + 10 -> 16
instr_over = 16 - 4 -> 12
offset = 10 - 12 - 1 -> -3  - the negative value your formulae predict.

This implies that the sample we want is actually in the previous trace
packet - which I believe is in fact the case - as explained below.

My reading of the code is that cs_etm__sample() is called once per
trace range packet extracted from the decoder - and a trace range
packet represents N instructions_executed.
Further I am assuming that instructions_sample_period represents the
desired periodicity of the instruction samples - i.e. 1 sample every
instructions_sample_period number of instructions.

Thus my conclusion here is that where M = instructions_executed +
period_instructions, the function should generate quotient ( M /
instructions_sample_period ) samples and set period_instructions to M
mod instructions_sample_period on exit, ensuring period_instructions
is never larger than the sample_period.

i.e. loop to generate multiple samples until instr_over and therefore
the output value of period_instructions is less than the value of
instructions_sample_period - for the example above, with 10
instructions and a periodicity of 4, we generate 2 samples with a
remainder of 2 instructions carried forwards.

In short leave offset as unsigned and fix the logic of the
cs_etm__sample() function.

Regards

Mike

> > >  {
> > >     if (packet->isa == CS_ETM_ISA_T32) {
> > >             u64 addr = packet->start_addr;
> > > @@ -1372,7 +1372,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq,
> > >              * sample is reported as though instruction has just been
> > >              * executed, but PC has not advanced to next instruction)
> > >              */
> > > -           u64 offset = (instrs_executed - instrs_over - 1);
> > > +           s64 offset = (instrs_executed - instrs_over - 1);
> > >             u64 addr = cs_etm__instr_addr(etmq, trace_chan_id,
> > >                                           tidq->packet, offset);
> > >
> > > --
> > > 2.17.1
> > >



--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
