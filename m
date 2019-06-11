Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124063D318
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:58:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uK7DRJNB8CZ4Fpsbs3pYVG6ZjF9GUZJd1IIIC2atDl8=; b=PUnpOkrKzPEQEL
	aEB+v99McnzIELxPpAHvhu8NIWgj54P4wVNQBvedlGWv1LymVEboTZZXdXGRdHJMmNbrmRD/SeX1H
	C8pZ3HjbwCqZJ21k1WG+59hOwiLFXlUvDQG1ThvfdguBzq7CtJcvGgqUA/ndo36kt5JBJzOYbXzWm
	nvWU4H75DFE49AOic3F77ldYBAxBzXywI5FaFyfYa/HZoTb8O/mfZHU2jD1H6HANa8SwLgVBzmBdM
	+ceE1sEZaB8LzlbDTckus4pl1se9O7RmV3APzR7PC9S8AwuXwJssxCt2XLFfbKxWeyHqw4xtDSRDO
	EGWDG3uw3fhBv7PZ0hsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hak68-00061h-E9; Tue, 11 Jun 2019 16:58:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hak5x-00060t-ES
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:58:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 74754337;
 Tue, 11 Jun 2019 09:57:59 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3880B3F73C;
 Tue, 11 Jun 2019 09:57:58 -0700 (PDT)
Date: Tue, 11 Jun 2019 17:57:56 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Subject: Re: [PATCH 3/7] perf: arm64: Use rseq to test userspace access to
 pmu counters
Message-ID: <20190611165755.GG29008@lakrids.cambridge.arm.com>
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-4-raphael.gault@arm.com>
 <20190611143346.GB28689@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611143346.GB28689@kernel.org>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_095801_578009_439D4AB5 
X-CRM114-Status: GOOD (  25.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com, mathieu.desnoyers@efficios.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaldo,

On Tue, Jun 11, 2019 at 11:33:46AM -0300, Arnaldo Carvalho de Melo wrote:
> Em Tue, Jun 11, 2019 at 01:53:11PM +0100, Raphael Gault escreveu:
> > Add an extra test to check userspace access to pmu hardware counters.
> > This test doesn't rely on the seqlock as a synchronisation mechanism but
> > instead uses the restartable sequences to make sure that the thread is
> > not interrupted when reading the index of the counter and the associated
> > pmu register.
> > 
> > In addition to reading the pmu counters, this test is run several time
> > in order to measure the ratio of failures:
> > I ran this test on the Juno development platform, which is big.LITTLE
> > with 4 Cortex A53 and 2 Cortex A57. The results vary quite a lot
> > (running it with 100 tests is not so long and I did it several times).
> > I ran it once with 10000 iterations:
> > `runs: 10000, abort: 62.53%, zero: 34.93%, success: 2.54%`
> > 
> > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> > ---
> >  tools/perf/arch/arm64/include/arch-tests.h    |   5 +-
> >  tools/perf/arch/arm64/include/rseq-arm64.h    | 220 ++++++++++++++++++
> 
> So, I applied the first patch in this series, but could you please break
> this patch into at least two, one introducing the facility
> (include/rseq*) and the second adding the test?
> 
> We try to enforce this kind of granularity as down the line we may want
> to revert one part while the other already has other uses and thus
> wouldn't allow a straight revert.
> 
> Also, can this go to tools/arch/ instead? Is this really perf specific?
> Isn't there any arch/arm64/include files for the kernel that we could
> mirror and have it checked for drift in tools/perf/check-headers.sh?

The rseq bits aren't strictly perf specific, and I think the existing
bits under tools/testing/selftests/rseq/ could be factored out to common
locations under tools/include/ and tools/arch/*/include/.

From a scan, those already duplicate barriers and other helpers which
already have definitions under tools/, which seems unfortunate. :/

Comments below are for Raphael and Matthieu.

[...]

> > +static u64 noinline mmap_read_self(void *addr, int cpu)
> > +{
> > +	struct perf_event_mmap_page *pc = addr;
> > +	u32 idx = 0;
> > +	u64 count = 0;
> > +
> > +	asm volatile goto(
> > +                     RSEQ_ASM_DEFINE_TABLE(0, 1f, 2f, 3f)
> > +		     "nop\n"
> > +                     RSEQ_ASM_STORE_RSEQ_CS(1, 0b, rseq_cs)
> > +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
> > +                     RSEQ_ASM_OP_R_LOAD(pc_idx)
> > +                     RSEQ_ASM_OP_R_AND(0xFF)
> > +		     RSEQ_ASM_OP_R_STORE(idx)
> > +                     RSEQ_ASM_OP_R_SUB(0x1)
> > +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
> > +                     "msr pmselr_el0, " RSEQ_ASM_TMP_REG "\n"
> > +                     "isb\n"
> > +		     RSEQ_ASM_CMP_CPU_ID(cpu_id, current_cpu_id, 3f)
> > +                     "mrs " RSEQ_ASM_TMP_REG ", pmxevcntr_el0\n"
> > +                     RSEQ_ASM_OP_R_FINAL_STORE(cnt, 2)
> > +		     "nop\n"
> > +                     RSEQ_ASM_DEFINE_ABORT(3, abort)
> > +                     :/* No output operands */
> > +		     :  [cpu_id] "r" (cpu),
> > +			[current_cpu_id] "Qo" (__rseq_abi.cpu_id),
> > +			[rseq_cs] "m" (__rseq_abi.rseq_cs),
> > +			[cnt] "m" (count),
> > +			[pc_idx] "r" (&pc->index),
> > +			[idx] "m" (idx)
> > +                     :"memory"
> > +                     :abort
> > +                    );

While baroque, this doesn't look as scary as I thought it would!

However, I'm very scared that this is modifying input operands without
clobbering them. IIUC this is beacause we're trying to use asm goto,
which doesn't permit output operands.

I'm very dubious to abusing asm goto in this way. Can we instead use a
regular asm volatile block, and place the abort handler _within_ the
asm? If performance is a concern, we can use .pushsection and
.popsection to move that far away...

> > +
> > +	if (idx)
> > +		count += READ_ONCE(pc->offset);

I'm rather scared that from GCC's PoV, idx was initialized to zero, and
not modified above (per the asm constraints). I realise that we've used
an "m" constraint and clobbered memory, but I could well imagine that
GCC can interpret that as needing to place a read-only copy in memory,
but still being permitted to use the original value in a register. That
would permit the above to be optimized away, since GCC knows no
registers were clobbered, and thus idx must still be zero.

> > +
> > +	return count;

... and for similar reasons, always return zero here.

> > +abort:
> > +        pr_debug("Abort handler\n");
> > +        exit(-2);
> > +}

Given the necessary complexity evident above, I'm also fearful that the
sort of folk that want userspace counter access aren't going to bother
with the above.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
