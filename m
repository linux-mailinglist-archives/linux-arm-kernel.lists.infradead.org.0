Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFD69E6A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 13:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hESGCrJzFXAgoqagBoxM/n5AlC/4iqUY/lDqQXtHXao=; b=Gna3cu9oYYJEkX
	aoTXcKhNAZuzfkRNip5rMJkMQ9eg0w8ab18kX20M2SujDJI/VwFTWGbjuAIZ8MTDNNFsVl00P2evy
	Y0rsZHycd7s96iCMHGuhKsJlZ+9Dyyx9jiHztJPyZUAYmtDYcAWf+3r8609wNsMwqIvXNvvPis6MW
	b5uG0Gyd17fz1+uRJXxliLWCQYOR7KD3fsMTI6Zp2Pmqg7TEfxl6+GgmtiP0+++lz/8dAFSJ58zc1
	a010fnmVmSJuJmbT9gK+KkNEkPUI7SGyqtICDDafGL2qNpDt6GxyAX26XlyWxtgb03JE4PvfNy5aW
	5RYcWj0AFyGVIOfCOTOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ZUm-0000BF-MI; Tue, 27 Aug 2019 11:18:40 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ZUX-0000Ab-Rg
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 11:18:28 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 76BB6CA1B4BC945E8588;
 Tue, 27 Aug 2019 19:18:09 +0800 (CST)
Received: from localhost (10.227.98.71) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Tue, 27 Aug 2019
 19:18:05 +0800
Date: Tue, 27 Aug 2019 19:17:55 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Raphael Gault <raphael.gault@arm.com>
Subject: Re: [PATCH v4 1/7] perf: arm64: Add test to check userspace access
 to hardware counters.
Message-ID: <20190827191755.00007a57@huawei.com>
In-Reply-To: <20190822144220.27860-2-raphael.gault@arm.com>
References: <20190822144220.27860-1-raphael.gault@arm.com>
 <20190822144220.27860-2-raphael.gault@arm.com>
Organization: Huawei R&D UK Ltd.
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.227.98.71]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_041826_225051_575E84B9 
X-CRM114-Status: GOOD (  25.64  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 22 Aug 2019 15:42:14 +0100
Raphael Gault <raphael.gault@arm.com> wrote:

> This test relies on the fact that the PMU registers are accessible
> from userspace. It then uses the perf_event_mmap_page to retrieve
> the counter index and access the underlying register.
> 
> This test uses sched_setaffinity(2) in order to run on all CPU and thus
> check the behaviour of the PMU of all cpus in a big.LITTLE environment.
> 
> Signed-off-by: Raphael Gault <raphael.gault@arm.com>

Hi Raphael,

I just tested this on 1620 and it works fairly nicely with one exception...

The test will run and generate garbage numbers if the rest of the
series isn't yet applied to the kernel.  Is there anything we can do
to prevent that?

It's a slightly silly complaint, but this also take a while compared to all 
the other tests if you have lots of cores, so maybe a slightly shorter
test?

Thanks,

Jonathan

> ---
>  tools/perf/arch/arm64/include/arch-tests.h |   7 +
>  tools/perf/arch/arm64/tests/Build          |   1 +
>  tools/perf/arch/arm64/tests/arch-tests.c   |   4 +
>  tools/perf/arch/arm64/tests/user-events.c  | 254 +++++++++++++++++++++
>  4 files changed, 266 insertions(+)
>  create mode 100644 tools/perf/arch/arm64/tests/user-events.c
> 
> diff --git a/tools/perf/arch/arm64/include/arch-tests.h b/tools/perf/arch/arm64/include/arch-tests.h
> index 90ec4c8cb880..6a8483de1015 100644
> --- a/tools/perf/arch/arm64/include/arch-tests.h
> +++ b/tools/perf/arch/arm64/include/arch-tests.h
> @@ -2,11 +2,18 @@
>  #ifndef ARCH_TESTS_H
>  #define ARCH_TESTS_H
>  
> +#include <linux/compiler.h>
> +
>  #ifdef HAVE_DWARF_UNWIND_SUPPORT
>  struct thread;
>  struct perf_sample;
> +int test__arch_unwind_sample(struct perf_sample *sample,
> +			     struct thread *thread);
>  #endif
>  
>  extern struct test arch_tests[];
> +int test__rd_pmevcntr(struct test *test __maybe_unused,
> +		      int subtest __maybe_unused);
> +
>  
>  #endif
> diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
> index a61c06bdb757..3f9a20c17fc6 100644
> --- a/tools/perf/arch/arm64/tests/Build
> +++ b/tools/perf/arch/arm64/tests/Build
> @@ -1,4 +1,5 @@
>  perf-y += regs_load.o
>  perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
>  
> +perf-y += user-events.o
>  perf-y += arch-tests.o
> diff --git a/tools/perf/arch/arm64/tests/arch-tests.c b/tools/perf/arch/arm64/tests/arch-tests.c
> index 5b1543c98022..57df9b89dede 100644
> --- a/tools/perf/arch/arm64/tests/arch-tests.c
> +++ b/tools/perf/arch/arm64/tests/arch-tests.c
> @@ -10,6 +10,10 @@ struct test arch_tests[] = {
>  		.func = test__dwarf_unwind,
>  	},
>  #endif
> +	{
> +		.desc = "User counter access",
> +		.func = test__rd_pmevcntr,
> +	},
>  	{
>  		.func = NULL,
>  	},
> diff --git a/tools/perf/arch/arm64/tests/user-events.c b/tools/perf/arch/arm64/tests/user-events.c
> new file mode 100644
> index 000000000000..b048d7e392bc
> --- /dev/null
> +++ b/tools/perf/arch/arm64/tests/user-events.c
> @@ -0,0 +1,254 @@
> +// SPDX-License-Identifier: GPL-2.0
> +#include <asm/bug.h>
> +#include <errno.h>
> +#include <unistd.h>
> +#include <sched.h>
> +#include <stdlib.h>
> +#include <signal.h>
> +#include <sys/mman.h>
> +#include <sys/sysinfo.h>
> +#include <sys/types.h>
> +#include <sys/wait.h>
> +#include <linux/types.h>
> +#include "perf.h"
> +#include "debug.h"
> +#include "tests/tests.h"
> +#include "cloexec.h"
> +#include "util.h"
> +#include "arch-tests.h"
> +
> +/*
> + * ARMv8 ARM reserves the following encoding for system registers:
> + * (Ref: ARMv8 ARM, Section: "System instruction class encoding overview",
> + *  C5.2, version:ARM DDI 0487A.f)
> + *      [20-19] : Op0
> + *      [18-16] : Op1
> + *      [15-12] : CRn
> + *      [11-8]  : CRm
> + *      [7-5]   : Op2
> + */
> +#define Op0_shift       19
> +#define Op0_mask        0x3
> +#define Op1_shift       16
> +#define Op1_mask        0x7
> +#define CRn_shift       12
> +#define CRn_mask        0xf
> +#define CRm_shift       8
> +#define CRm_mask        0xf
> +#define Op2_shift       5
> +#define Op2_mask        0x7
> +
> +#define __stringify(x)	#x
> +
> +#define read_sysreg(r) ({						\
> +	u64 __val;							\
> +	asm volatile("mrs %0, " __stringify(r) : "=r" (__val));		\
> +	__val;								\
> +})
> +
> +#define PMEVCNTR_READ_CASE(idx)					\
> +	case idx:						\
> +		return read_sysreg(pmevcntr##idx##_el0)
> +
> +#define PMEVCNTR_CASES(readwrite)		\
> +	PMEVCNTR_READ_CASE(0);			\
> +	PMEVCNTR_READ_CASE(1);			\
> +	PMEVCNTR_READ_CASE(2);			\
> +	PMEVCNTR_READ_CASE(3);			\
> +	PMEVCNTR_READ_CASE(4);			\
> +	PMEVCNTR_READ_CASE(5);			\
> +	PMEVCNTR_READ_CASE(6);			\
> +	PMEVCNTR_READ_CASE(7);			\
> +	PMEVCNTR_READ_CASE(8);			\
> +	PMEVCNTR_READ_CASE(9);			\
> +	PMEVCNTR_READ_CASE(10);			\
> +	PMEVCNTR_READ_CASE(11);			\
> +	PMEVCNTR_READ_CASE(12);			\
> +	PMEVCNTR_READ_CASE(13);			\
> +	PMEVCNTR_READ_CASE(14);			\
> +	PMEVCNTR_READ_CASE(15);			\
> +	PMEVCNTR_READ_CASE(16);			\
> +	PMEVCNTR_READ_CASE(17);			\
> +	PMEVCNTR_READ_CASE(18);			\
> +	PMEVCNTR_READ_CASE(19);			\
> +	PMEVCNTR_READ_CASE(20);			\
> +	PMEVCNTR_READ_CASE(21);			\
> +	PMEVCNTR_READ_CASE(22);			\
> +	PMEVCNTR_READ_CASE(23);			\
> +	PMEVCNTR_READ_CASE(24);			\
> +	PMEVCNTR_READ_CASE(25);			\
> +	PMEVCNTR_READ_CASE(26);			\
> +	PMEVCNTR_READ_CASE(27);			\
> +	PMEVCNTR_READ_CASE(28);			\
> +	PMEVCNTR_READ_CASE(29);			\
> +	PMEVCNTR_READ_CASE(30)
> +
> +/*
> + * Read a value direct from PMEVCNTR<idx>
> + */
> +static u64 read_evcnt_direct(int idx)
> +{
> +	switch (idx) {
> +	PMEVCNTR_CASES(READ);
> +	default:
> +		WARN_ON(1);
> +	}
> +
> +	return 0;
> +}
> +
> +static u64 mmap_read_self(void *addr)
> +{
> +	struct perf_event_mmap_page *pc = addr;
> +	u32 seq, idx, time_mult = 0, time_shift = 0;
> +	u64 count, cyc = 0, time_offset = 0, enabled, running, delta;
> +
> +	do {
> +		seq = READ_ONCE(pc->lock);
> +		barrier();
> +
> +		enabled = READ_ONCE(pc->time_enabled);
> +		running = READ_ONCE(pc->time_running);
> +
> +		if (enabled != running) {
> +			cyc = read_sysreg(cntvct_el0);
> +			time_mult = READ_ONCE(pc->time_mult);
> +			time_shift = READ_ONCE(pc->time_shift);
> +			time_offset = READ_ONCE(pc->time_offset);
> +		}
> +
> +		idx = READ_ONCE(pc->index);
> +		count = READ_ONCE(pc->offset);
> +		if (idx)
> +			count += read_evcnt_direct(idx - 1);
> +
> +		barrier();
> +	} while (READ_ONCE(pc->lock) != seq);
> +
> +	if (enabled != running) {
> +		u64 quot, rem;
> +
> +		quot = (cyc >> time_shift);
> +		rem = cyc & (((u64)1 << time_shift) - 1);
> +		delta = time_offset + quot * time_mult +
> +			((rem * time_mult) >> time_shift);
> +
> +		enabled += delta;
> +		if (idx)
> +			running += delta;
> +
> +		quot = count / running;
> +		rem = count % running;
> +		count = quot * enabled + (rem * enabled) / running;
> +	}
> +
> +	return count;
> +}
> +
> +static int __test__rd_pmevcntr(void)
> +{
> +	volatile int tmp = 0;
> +	u64 i, loops = 1000;
> +	int n;
> +	int fd;
> +	void *addr;
> +	struct perf_event_attr attr = {
> +		.type = PERF_TYPE_HARDWARE,
> +		.config = PERF_COUNT_HW_INSTRUCTIONS,
> +		.exclude_kernel = 1,
> +	};
> +	u64 delta_sum = 0;
> +	char sbuf[STRERR_BUFSIZE];
> +
> +	fd = sys_perf_event_open(&attr, 0, -1, -1,
> +				 perf_event_open_cloexec_flag());
> +	if (fd < 0) {
> +		pr_err("Error: sys_perf_event_open() syscall returned with %d (%s)\n", fd,
> +		       str_error_r(errno, sbuf, sizeof(sbuf)));
> +		return -1;
> +	}
> +
> +	addr = mmap(NULL, page_size, PROT_READ, MAP_SHARED, fd, 0);
> +	if (addr == (void *)(-1)) {
> +		pr_err("Error: mmap() syscall returned with (%s)\n",
> +		       str_error_r(errno, sbuf, sizeof(sbuf)));
> +		goto out_close;
> +	}
> +
> +	for (n = 0; n < 6; n++) {
> +		u64 stamp, now, delta;
> +
> +		stamp = mmap_read_self(addr);
> +
> +		for (i = 0; i < loops; i++)
> +			tmp++;
> +
> +		now = mmap_read_self(addr);
> +		loops *= 10;
> +
> +		delta = now - stamp;
> +		pr_debug("%14d: %14llu\n", n, (long long)delta);
> +
> +		delta_sum += delta;
> +	}
> +
> +	munmap(addr, page_size);
> +	pr_debug("   ");
> +
> +out_close:
> +	close(fd);
> +
> +	if (!delta_sum)
> +		return -1;
> +
> +	return 0;
> +}
> +
> +int test__rd_pmevcntr(struct test __maybe_unused *test,
> +		      int __maybe_unused subtest)
> +{
> +	int status = 0;
> +	int wret = 0;
> +	int ret = 0;
> +	int pid;
> +	int cpu;
> +	cpu_set_t cpu_set;
> +
> +	pid = fork();
> +	if (pid < 0)
> +		return -1;
> +
> +	if (!pid) {
> +		for (cpu = 0; cpu < get_nprocs(); cpu++) {
> +			pr_info("setting affinity to cpu: %d\n", cpu);
> +			CPU_ZERO(&cpu_set);
> +			CPU_SET(cpu, &cpu_set);
> +			if (sched_setaffinity(getpid(),
> +					      sizeof(cpu_set),
> +					      &cpu_set) == -1) {
> +				pr_err("Error: impossible to set cpu (%d) affinity\n",
> +				       cpu);
> +				continue;
> +			}
> +			ret = __test__rd_pmevcntr();
> +		}
> +		exit(ret);
> +	}
> +
> +	wret = waitpid(pid, &status, 0);
> +	if (wret < 0)
> +		return -1;
> +
> +	if (WIFSIGNALED(status)) {
> +		pr_err("Error: the child process was interrupted by a signal\n");
> +		return -1;
> +
> +	if (WIFEXITED(status) && WEXITSTATUS(status)) {
> +		pr_err("Error: the child process exited with: %d\n",
> +		       WEXITSTATUS(status));
> +		return -1;
> +	}
> +
> +	return 0;
> +}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
