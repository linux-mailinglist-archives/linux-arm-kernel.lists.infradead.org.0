Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F8561FEFF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2BzDHjLOGWa7yx/MHU8mP4iHNQhg6Qf1xi3KgOlQS8M=; b=MujnHoJqxWW1GW
	tfOi4rB15I0TS3jtjLhoWoO2HoavhHIh99N1NafvySxqMQA2nqTxh6T5NycEnZB13MjiFxk0MT63v
	/Jy9SrKRwB+uUfhex/YBCFMCwJxdJpibwAT0wlY27TIGkdb2bltICbGDDqTuUcQujCJE5t69f7fF8
	3Tr8M2JLlMYNzf4+Xy5K0Iqe0WWuD1gS/IbeN5B1lH5Qtk3ooz6M83fvFAEAKEoKzceguHbfc3P+P
	FxMEdYS1hKLUCJxnf8eSy0IlLnMItzhoc7pqClbZCKvZK04tXxsVrj++aVC8+U/s21uDKbxppPTVM
	wr1BZMuqdJYY+5ndZDLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jls8i-0006Ub-Bu; Thu, 18 Jun 2020 10:51:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jls8A-0006DR-VE
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:50:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 304F231B;
 Thu, 18 Jun 2020 03:50:50 -0700 (PDT)
Received: from [192.168.0.110] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 606CD3F71F;
 Thu, 18 Jun 2020 03:50:48 -0700 (PDT)
Subject: Re: [PATCH v5 3/7] arm64: perf: Remove PMU locking
To: Stephen Boyd <swboyd@chromium.org>, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
References: <20200617113851.607706-1-alexandru.elisei@arm.com>
 <20200617113851.607706-4-alexandru.elisei@arm.com>
 <159242503203.62212.1690942414916053920@swboyd.mtv.corp.google.com>
From: Alexandru Elisei <alexandru.elisei@arm.com>
Message-ID: <bc265120-0d48-bcab-a58e-3b94f8c540ce@arm.com>
Date: Thu, 18 Jun 2020 11:51:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <159242503203.62212.1690942414916053920@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_035051_092469_1B054DFB 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, maz@kernel.org,
 Jiri Olsa <jolsa@redhat.com>, Will Deacon <will.deacon@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, catalin.marinas@arm.com,
 Namhyung Kim <namhyung@kernel.org>, will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/17/20 9:17 PM, Stephen Boyd wrote:
> Quoting Alexandru Elisei (2020-06-17 04:38:47)
>> From: Julien Thierry <julien.thierry@arm.com>
>>
>> The PMU is disabled and enabled, and the counters are programmed from
>> contexts where interrupts or preemption is disabled.
>>
>> The functions to toggle the PMU and to program the PMU counters access the
>> registers directly and don't access data modified by the interrupt handler.
>> That, and the fact that they're always called from non-preemptible
>> contexts, means that we don't need to disable interrupts or use a spinlock.
> Maybe we should add a lockdep assertion that the code isn't preemptible?
> I.e. add a cant_sleep() call? Or is it more that we don't need locking
> because we're just doing register accesses and don't need to protect
> those accesses from each other?

It's both. The spinlocks were there to protect the functions from being preempted
and possibly migrated to another CPU, and from being interrupted by the PMU irq
handler.

There was no data race with the interrupt handler, but before the previous patch
("arm64: perf: Avoid PMXEV* indirection"), in order to read/write/program a
counter, one had to write the counter number to a counter selection register, and
then write/read the desired value from another register. This was done from both
the armv8pmu_{enable,disable}_event() functions and the irq handler, and the
spinlock was necessary. Now that we can access a counter using a single register
access, there's no need to protect the functions from being interrupted by the IRQ
handler. As for armv8pmu_{start,stop}(), they consist of one register write, so
it's also safe for the irq handler to interrupt them.

For the preemption part of the locking. The armv8pmu_{enable,disable}_event(),
when called by the perf core code via the pmu->{start,stop,add,del} callbacks, are
guaranteed to be called with IRQs and preemption disabled, as per the comment in
include/linux/perf_event.h. They are also called from the arm_pmu driver by the
CPU PM notifiers, which should also be executed with interrupts disabled. Should
we check here that the top level code respects these guarantees?

The armv8pmu_{start,stop}() functions are called from the irq handler, so we're
safe from preemption in this case. They are also called via
pmu->pmu_{enable,disable} callbacks, and I didn't find an explicit contract
regarding preemption in include/linux/perf_event.h. I've checked the other call
sites, and I didn't find any instances where they are called with preemption
enabled, which makes sense as we don't want to disable the PMU on a another CPU by
accident.

I would be inclined to add cant_sleep() calls to armv8pmu_{start,stop}(). In the
previous iteration, there were WARN_ONs in these functions, and Will said [1] they
can be removed because they are per-CPU operations. Will, what do you think about
adding the lockdep assertions?

[1] https://www.spinics.net/lists/arm-kernel/msg745161.html

Thanks,
Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
