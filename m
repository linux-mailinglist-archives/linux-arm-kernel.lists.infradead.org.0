Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DFF178972
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 05:20:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B/tOQp3mYU5D8gwFmbQXL9r+7+uOF4pU5WUkHro/p2k=; b=G/V5vLClMxPoxrWzafRyS3q0F
	1zeEOiDvpOz47edzl03+Lk2YS23U/BLYzYhB0AhA/w3cmuJQ0e7VujR6YkFcV4MfmYJ3+0LpLfo/L
	v2g9qI3MVsIh1ejz3vjJBAOMPqQXsMFJyl7hRmNuKoxV0VV42Dj8yc0Thp33cnZ5XaI2Oc2SyhsJR
	pozzwmpvatNWqNC9ACt/8N8Tm5j4QOaJGRz7b4Amp9xZpLJx2eOgYMJxfpR/0ORF6F9y3lB0tkazd
	2uQ8dAr8ETfstG0eJFG1i2OO4RB1cBmNa8vBsE+To7MwxPgJjwPPEBKUQLYfG2nav8OQNsOABkjTR
	EDHmyO3Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9LW3-0002cU-IN; Wed, 04 Mar 2020 04:20:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9LVo-0002G2-QF
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 04:20:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583295595;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LkHofLWB71gRCdCy5VwXepxoLaKVeUjTJAzYAO5aKtE=;
 b=goi1n2vhNhe8IPb6Qdbdgh0Ut3vWBAismnreOe90oKcYz51Bzg+d3keuvDQ9Z9WhT2lfJX
 FF6Z3q+8+pHQ83w4cWDDDi0TsrA8xVKuxr2v8EepOmFZaaMNMrqiSSX7G6Bhojy8S6FIDA
 sldH5mJyzDTip44mm7yGFtLNZENjO1M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-118-okLIYrmtMKexR3NDQKxzKw-1; Tue, 03 Mar 2020 23:19:53 -0500
X-MC-Unique: okLIYrmtMKexR3NDQKxzKw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F0A8918A5508;
 Wed,  4 Mar 2020 04:19:51 +0000 (UTC)
Received: from t490s (ovpn-117-20.phx2.redhat.com [10.3.117.20])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C3E719481;
 Wed,  4 Mar 2020 04:19:50 +0000 (UTC)
Date: Tue, 3 Mar 2020 23:19:48 -0500
From: Rafael Aquini <aquini@redhat.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 3/3] arm64: tlb: skip tlbi broadcast
Message-ID: <20200304041948.GA125774@t490s>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-4-aarcange@redhat.com>
 <20200302152448.GB74754@t490s>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
In-Reply-To: <20200302152448.GB74754@t490s>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_202001_009178_1BF5E93B 
X-CRM114-Status: GOOD (  21.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 02, 2020 at 10:24:51AM -0500, Rafael Aquini wrote:
[...]
> I'm testing these changes against RHEL integration + regression
> tests, and I'll also run them against a specially crafted test
> to measure the impact on task-switching, if any. (I'll report back,
> soon)
>

As promised, I ran the the patches against a full round of kernel
integration/regression tests (the same we use to run for RHEL kernels)
unfortunately, there is no easy way to share these internal results, 
but apart from a couple warnings -- which were not related to the test
build -- everything went on very smoothly with the patches on top of
a RHEL-8 test-kernel.


I grabbed some perf numbers, to serve as kernel build benchmark. 
Test system is a 1 socket 32 core 3.3Ghz ARMv8 Ampere eMAG 256GB RAM.
rpmbuild spawns the build with make -j32 and besides the stock kernel RPM,
it also builds the -debug flavor RPM and all the sub-RPMs for tools and
extra modules.

* stock RHEL-8 build:

 Performance counter stats for 'rpmbuild --rebuild kernel-4.18.0-184.el8.aatlb.src.rpm':

     27,817,487.14 msec task-clock                #   15.015 CPUs utilized          
         1,318,586      context-switches          #    0.047 K/sec                  
           515,342      cpu-migrations            #    0.019 K/sec                  
        68,513,346      page-faults               #    0.002 M/sec                  
91,713,983,302,759      cycles                    #    3.297 GHz                    
49,871,167,452,081      instructions              #    0.54  insn per cycle         
23,801,939,026,338      cache-references          #  855.647 M/sec                  
   568,847,557,178      cache-misses              #    2.390 % of all cache refs    
   145,305,286,469      dTLB-loads                #    5.224 M/sec                  
       752,451,698      dTLB-load-misses          #    0.52% of all dTLB cache hits 

    1852.656905157 seconds time elapsed

   26866.849105000 seconds user
     965.756120000 seconds sys


* RHEL8 kernel + Andrea's patches:

 Performance counter stats for 'rpmbuild --rebuild kernel-4.18.0-184.el8.aatlb.src.rpm':

     27,713,883.25 msec task-clock                #   15.137 CPUs utilized          
         1,310,196      context-switches          #    0.047 K/sec                  
           511,909      cpu-migrations            #    0.018 K/sec                  
        68,535,178      page-faults               #    0.002 M/sec                  
91,412,320,904,990      cycles                    #    3.298 GHz                    
49,844,016,063,738      instructions              #    0.55  insn per cycle         
23,795,774,331,203      cache-references          #  858.623 M/sec                  
   568,445,037,308      cache-misses              #    2.389 % of all cache refs    
   135,868,301,669      dTLB-loads                #    4.903 M/sec                  
       746,267,581      dTLB-load-misses          #    0.55% of all dTLB cache hits 

    1830.813507976 seconds time elapsed

   26785.529337000 seconds user
     943.251641000 seconds sys




I also wanted to measure the impact of the increased amount of code in
the task switching path (in order to decide which TLB invalidation
scheme to pick), to figure out what would be the worst case scenario
for single threads of execution constrained into one core and yelding
the CPU to each other. I wrote the small test (attached) and grabbed
some numbers in the same box, for the sake of comparison:

* stock RHEL-8 build:

 Performance counter stats for './tlb-test' (1000 runs):

            122.67 msec task-clock                #    0.997 CPUs utilized            ( +-  0.04% )
            32,297      context-switches          #    0.263 M/sec                    ( +-  0.00% )
                 0      cpu-migrations            #    0.000 K/sec                  
               325      page-faults               #    0.003 M/sec                    ( +-  0.01% )
       404,648,928      cycles                    #    3.299 GHz                      ( +-  0.04% )
       239,856,265      instructions              #    0.59  insn per cycle           ( +-  0.00% )
       121,189,080      cache-references          #  987.964 M/sec                    ( +-  0.00% )
         3,414,396      cache-misses              #    2.817 % of all cache refs      ( +-  0.05% )
         2,820,754      dTLB-loads                #   22.996 M/sec                    ( +-  0.04% )
            34,545      dTLB-load-misses          #    1.22% of all dTLB cache hits   ( +-  6.16% )

         0.1230361 +- 0.0000435 seconds time elapsed  ( +-  0.04% )


* RHEL8 kernel + Andrea's patches:

 Performance counter stats for './tlb-test' (1000 runs):

            125.57 msec task-clock                #    0.997 CPUs utilized            ( +-  0.05% )
            32,244      context-switches          #    0.257 M/sec                    ( +-  0.01% )
                 0      cpu-migrations            #    0.000 K/sec                  
               325      page-faults               #    0.003 M/sec                    ( +-  0.01% )
       413,692,492      cycles                    #    3.295 GHz                      ( +-  0.04% )
       241,017,764      instructions              #    0.58  insn per cycle           ( +-  0.00% )
       121,155,050      cache-references          #  964.856 M/sec                    ( +-  0.00% )
         3,512,035      cache-misses              #    2.899 % of all cache refs      ( +-  0.04% )
         2,912,475      dTLB-loads                #   23.194 M/sec                    ( +-  0.02% )
            45,340      dTLB-load-misses          #    1.56% of all dTLB cache hits   ( +-  5.07% )

         0.1259462 +- 0.0000634 seconds time elapsed  ( +-  0.05% )



AFAICS, the aforementioned benchmark numbers are suggesting that there is, 
virtually, no considerable impact, or very minimal and no detrimental impact 
to ordinary workloads imposed by the changes, and Andrea's benchmarks are 
showing/suggesting that a broad range of particular workloads will considerably
benefit from the changes. 

With the numbers above, added to what I've seen in our (internal)
integration tests, I'm confident on the stability of the changes.

-- Rafael

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="tlb-test.c"

// SPDX-License-Identifier: BSD-2-Clause
/*
 * Copyright (c) 2020, Rafael Aquini <aquini@redhat.com>
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 *  1. Redistributions of source code must retain the above copyright notice,
 *     this list of conditions and the following disclaimer.
 *
 *  2. Redistributions in binary form must reproduce the above copyright notice,
 *     this list of conditions and the following disclaimer in the documentation
 *     and/or other materials provided with the distribution.
 *
 *  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 *  AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 *  IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 *  ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
 *  BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 *  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 *  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 *  BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 *  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 *  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
 *  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * compile with:  gcc -o tlb-test -D_GNU_SOURCE -lpthread tlb-test.c
 * dependencies:
 *  - _GNU_SOURCE required for asprintf(3), sched_getcpu(3) && sched_setaffinity(2)
 *  - libpthreads required for POSIX semaphores
 */
#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>
#include <sched.h>
#include <time.h>
#include <semaphore.h>
#include <sys/types.h>
#include <sys/times.h>
#include <sys/time.h>
#include <sys/stat.h>
#include <sys/wait.h>
#include <sys/mman.h>

#ifndef NCHILDS
#define NCHILDS		4
#endif

#ifndef NPAGES
#define NPAGES		32
#endif

#ifndef NRUNS
#define NRUNS		8192
#endif

#ifdef DEBUG
#define DPRINTF(...)	fprintf(stderr, __VA_ARGS__)
#else
#define DPRINTF(...)
#endif

#define ERROR_EXIT(msg)							\
	do {								\
		char *estr = NULL;					\
		asprintf(&estr, "[%s:%d] %s", __FILE__, __LINE__, msg);	\
		perror(estr);						\
		exit(EXIT_FAILURE);					\
	} while (0)

static const char *prg_name = "tlb-test";
static long system_hz;
static long page_size;
static sem_t *sem;

/*
 * Fisher-Yates shuffler algorithm [Statistical Tables (London, 1938), Ex.12],
 * adapted to computer language by R. Durstenfeld [CACM 7 (1964), 420], and
 * presented by Donald E. Knuth at:
 *  "The Art of Computer Programming, Volume 2: Seminumerical Algorithms"
 *  [Algorithm P (shuffling) under Section 3.4 OTHER TYPES OF RANDOM QUANTITIES]
 */
void fy_shuffler(unsigned long *buf, unsigned long len)
{
	unsigned long j, u, tmp;

	for (j = len - 1; j > 0; j--) {
		u = rand() % j;
		tmp = *(buf + u);
		*(buf + u) = *(buf + j);
		*(buf + j) = tmp;
	}
}

unsigned long usec_diff(struct timeval *a, struct timeval *b)
{
	unsigned long usec;

	usec = (b->tv_sec - a->tv_sec) * 1000000;
	usec += b->tv_usec - a->tv_usec;
	return usec;
}

unsigned long workload(void *addr, size_t len, unsigned long *fault_order, int child)
{
	struct timeval start, end;
	unsigned long i;

	gettimeofday(&start, NULL);
	for (i = 0; i < len; i++) {
		unsigned long p = *(fault_order + i);
		*((unsigned char *)(addr + (p * page_size))) = ((i * p) % 0xff);
	}
	gettimeofday(&end, NULL);

	DPRINTF("[%s: child-%d (CPU=%d PID=%ld)] RUNNING! \n",
		prg_name, child, sched_getcpu(), (long) getpid());

	return usec_diff(&start, &end);
}

int child(int n, FILE *stream)
{
	unsigned long pages[NPAGES];
	size_t map_sz;
	int i, runs;
	void *addr;
	double elapsed = 0;

	for (i = 0; i < NPAGES; i++)
		pages[i] = i;

	map_sz = page_size * NPAGES;
	addr = mmap(NULL, map_sz, PROT_READ | PROT_WRITE,
				MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
	if (addr == MAP_FAILED)
		ERROR_EXIT("mmap");

	if (madvise(addr, map_sz, MADV_NOHUGEPAGE) == -1)
		ERROR_EXIT("madvise");

	srand(time(NULL));

	for (runs = 0; runs < NRUNS; runs++) {
		sem_wait(sem);
		elapsed += workload(addr, NPAGES, pages, n);
		fy_shuffler(pages, NPAGES);
		sem_post(sem);
		/*
		 * relinquish the CPU to provide a small backoff, so other tasks
		 * get a fair chance on aquiring the semaphore.
		 */
		sched_yield();
	}

	fprintf(stream, "[%s: child-%d (CPU=%d PID=%ld)]  %lf msecs\n",
		prg_name, n, sched_getcpu(), (long) getpid(), (double )(elapsed / 1000));

	return 0;
}

int main(int argc, char *argv[])
{
	pid_t pid[NCHILDS];
	int i, ret, status;
	cpu_set_t set;

	CPU_ZERO(&set);		/* clear the set */
	CPU_SET(1, &set);
	if (sched_setaffinity(0, sizeof(cpu_set_t), &set) == -1)
		ERROR_EXIT("sched_setaffinity");

	if ((system_hz = sysconf(_SC_CLK_TCK)) == -1)
		ERROR_EXIT("sysconf");

	if ((page_size = sysconf(_SC_PAGESIZE)) == -1)
		ERROR_EXIT("sysconf");

	sem = sem_open(prg_name, O_CREAT, S_IRUSR | S_IWUSR, 0);
	if (sem == SEM_FAILED)
		ERROR_EXIT("sem_open");

	for (i = 0; i < NCHILDS; i++) {
		pid[i] = fork();
		switch (pid[i]) {
		case -1:	/* fork() has failed */
			ERROR_EXIT("fork");
			break;
		case 0:		/* child of a sucessful fork() */
			ret = child(i+1, stdout);
			exit(ret);
			break;
		}
	}

	sem_post(sem);

	for (;;) {
		if (wait(&status) == -1) {
			if (errno == ECHILD) {
				goto out;
			} else {
				ERROR_EXIT("wait");
			}
		}
	}
out:
	sem_close(sem);
	sem_unlink(prg_name);
	exit(EXIT_SUCCESS);
}

--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--ZGiS0Q5IWpPtfppv--


