Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F021E22C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 15:09:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/iuI/nW8LMSewL5Gtx0b6UysaIJ0GEgfs78CRYeXPo=; b=Im+RLJ60+ENkAE
	lYI3p+IZUXEL1wi/mI4uBulTsdHO/xOGHrpyv7NhCV+jNGvpTO5+5k4QyGkcYxv6fzndnm00ufA6m
	Y7g1BATVV1GuGVK3cIT/yg2LkFoJvsWOiBRqTem3SmaXXKRPlL1nGTYk07C0sohg1SGJvYJo9URdu
	mMS4IzUth1L5KrYcB1cp/Mg0X0JrVjIOaFq/Z5JWfLJ5TD5e2EQthCbaXEBsXwn22yDau5xsSunB3
	GjJvx849DKGgF9E5xKSb2nSVmwRFCP8w5LQ4c9mR/UY/koWg0Xc17OJvrgLHivrlTT6eCGFRttcJd
	9lNwwvr7XLU9sNkkv0Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdZKz-0007IS-8n; Tue, 26 May 2020 13:09:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdZKo-0007Hd-1R
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 13:09:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A3161FB;
 Tue, 26 May 2020 06:09:33 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A45573F6C4;
 Tue, 26 May 2020 06:09:30 -0700 (PDT)
Date: Tue, 26 May 2020 14:09:27 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Gavin Shan <gshan@redhat.com>
Subject: Re: [PATCH RFCv2 0/9] kvm/arm64: Support Async Page Fault
Message-ID: <20200526130927.GH1363@C02TD0UTHF1T.local>
References: <20200508032919.52147-1-gshan@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200508032919.52147-1-gshan@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_060934_173854_E4567D35 
X-CRM114-Status: GOOD (  23.27  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: aarcange@redhat.com, drjones@redhat.com, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, linux-kernel@vger.kernel.org, eric.auger@redhat.com,
 james.morse@arm.com, shan.gavin@gmail.com, maz@kernel.org, will@kernel.org,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Gavin,

At a high-level I'm rather fearful of this series. I can see many ways
that this can break, and I can also see that even if/when we get things
into a working state, constant vigilance will be requried for any
changes to the entry code.

I'm not keen on injecting non-architectural exceptions in this way, and
I'm also not keen on how deep the PV hooks are injected currently (e.g.
in the ret_to_user path).

I see a few patches have preparator cleanup that I think would be
worthwhile regardless of this series; if you could factor those out and
send them on their own it would get that out of the way and make it
easier to review the series itself. Similarly, there's some duplication
of code from arch/x86 which I think can be factored out to virt/kvm
instead as preparatory work.

Generally, I also think that you need to spend some time on commit
messages and/or documentation to better explain the concepts and
expected usage. I had to reverse-engineer the series by reviewing it in
entirety before I had an idea as to how basic parts of it strung
together, and a more thorough conceptual explanation would make it much
easier to critique the approach rather than the individual patches.

On Fri, May 08, 2020 at 01:29:10PM +1000, Gavin Shan wrote:
> Testing
> =======
> The tests are carried on the following machine. A guest with single vCPU
> and 4GB memory is started. Also, the QEMU process is put into memory cgroup
> (v1) whose memory limit is set to 2GB. In the guest, there are two threads,
> which are memory bound and CPU bound separately. The memory bound thread
> allocates all available memory, accesses and them free them. The CPU bound
> thread simply executes block of "nop".

I appreciate this is a microbenchmark, but that sounds far from
realistic.

Is there a specitic real workload that's expected to be representative
of?

Can you run tests with a real workload? For example, a kernel build
inside the VM?

> The test is carried out for 5 time
> continuously and the average number (per minute) of executed blocks in the
> CPU bound thread is taken as indicator of improvement.
> 
>    Vendor: GIGABYTE   CPU: 224 x Cavium ThunderX2(R) CPU CN9975 v2.2 @ 2.0GHz
>    Memory: 32GB       Disk: Fusion-MPT SAS-3 (PCIe3.0 x8)
> 
>    Without-APF: 7029030180/minute = avg(7559625120 5962155840 7823208540
>                                         7629633480 6170527920)
>    With-APF:    8286827472/minute = avg(8464584540 8177073360 8262723180
>                                         8095084020 8434672260)
>    Outcome:     +17.8%
> 
> Another test case is to measure the time consumed by the application, but
> with the CPU-bound thread disabled.
> 
>    Without-APF: 40.3s = avg(40.6 39.3 39.2 41.6 41.2)
>    With-APF:    40.8s = avg(40.6 41.1 40.9 41.0 40.7)
>    Outcome:     +1.2%

So this is pure overhead in that case?

I think we need to see a real workload that this benefits. As it stands
it seems that this is a lot of complexity to game a synthetic benchmark.

Thanks,
Mark.

> I also have some code in the host to capture the number of async page faults,
> time used to do swapin and its maximal/minimal values when async page fault
> is enabled. During the test, the CPU-bound thread is disabled. There is about
> 30% of the time used to do swapin.
> 
>    Number of async page fault:     7555 times
>    Total time used by application: 42.2 seconds
>    Total time used by swapin:      12.7 seconds   (30%)
>          Minimal swapin time:      36.2 us
>          Maximal swapin time:      55.7 ms
> 
> Changelog
> =========
> RFCv1 -> RFCv2
>    * Rebase to 5.7.rc3
>    * Performance data                                                   (Marc Zyngier)
>    * Replace IMPDEF system register with KVM vendor specific hypercall  (Mark Rutland)
>    * Based on Will's KVM vendor hypercall probe mechanism               (Will Deacon)
>    * Don't use IMPDEF DFSC (0x43). Async page fault reason is conveyed
>      by the control block                                               (Mark Rutland)
>    * Delayed wakeup mechanism in guest kernel                           (Gavin Shan)
>    * Stability improvement in the guest kernel: delayed wakeup mechanism,
>      external abort disallowed region, lazily clear async page fault,
>      disabled interrupt on acquiring the head's lock and so on          (Gavin Shan)
>    * Stability improvement in the host kernel: serialized async page
>      faults etc.                                                        (Gavin Shan)
>    * Performance improvement in guest kernel: percpu sleeper head       (Gavin Shan)
> 
> Gavin Shan (7):
>   kvm/arm64: Rename kvm_vcpu_get_hsr() to kvm_vcpu_get_esr()
>   kvm/arm64: Detach ESR operator from vCPU struct
>   kvm/arm64: Replace hsr with esr
>   kvm/arm64: Export kvm_handle_user_mem_abort() with prefault mode
>   kvm/arm64: Support async page fault
>   kernel/sched: Add cpu_rq_is_locked()
>   arm64: Support async page fault
> 
> Will Deacon (2):
>   arm64: Probe for the presence of KVM hypervisor services during boot
>   arm/arm64: KVM: Advertise KVM UID to guests via SMCCC
> 
>  arch/arm64/Kconfig                       |  11 +
>  arch/arm64/include/asm/exception.h       |   3 +
>  arch/arm64/include/asm/hypervisor.h      |  11 +
>  arch/arm64/include/asm/kvm_emulate.h     |  83 +++--
>  arch/arm64/include/asm/kvm_host.h        |  47 +++
>  arch/arm64/include/asm/kvm_para.h        |  40 +++
>  arch/arm64/include/uapi/asm/Kbuild       |   2 -
>  arch/arm64/include/uapi/asm/kvm_para.h   |  22 ++
>  arch/arm64/kernel/entry.S                |  33 ++
>  arch/arm64/kernel/process.c              |   4 +
>  arch/arm64/kernel/setup.c                |  35 ++
>  arch/arm64/kvm/Kconfig                   |   1 +
>  arch/arm64/kvm/Makefile                  |   2 +
>  arch/arm64/kvm/handle_exit.c             |  48 +--
>  arch/arm64/kvm/hyp/switch.c              |  33 +-
>  arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |   7 +-
>  arch/arm64/kvm/inject_fault.c            |   4 +-
>  arch/arm64/kvm/sys_regs.c                |  38 +-
>  arch/arm64/mm/fault.c                    | 434 +++++++++++++++++++++++
>  include/linux/arm-smccc.h                |  32 ++
>  include/linux/sched.h                    |   1 +
>  kernel/sched/core.c                      |   8 +
>  virt/kvm/arm/arm.c                       |  40 ++-
>  virt/kvm/arm/async_pf.c                  | 335 +++++++++++++++++
>  virt/kvm/arm/hyp/aarch32.c               |   4 +-
>  virt/kvm/arm/hyp/vgic-v3-sr.c            |   7 +-
>  virt/kvm/arm/hypercalls.c                |  37 +-
>  virt/kvm/arm/mmio.c                      |  27 +-
>  virt/kvm/arm/mmu.c                       |  69 +++-
>  29 files changed, 1264 insertions(+), 154 deletions(-)
>  create mode 100644 arch/arm64/include/asm/kvm_para.h
>  create mode 100644 arch/arm64/include/uapi/asm/kvm_para.h
>  create mode 100644 virt/kvm/arm/async_pf.c
> 
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
