Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 838BE1CA181
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:30:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=66hJLMXW+yoQj1b97FIJBGV5RGUGauqh9bqqqihRGvo=; b=TUbisIqPtAZHIO
	NYFp70G+oMSo4Wgm+rY5EvQX10386d1l0BMxAqEXklLVDUBIQ0ylgDgdMEiJjVOGN71V1DytmV/cy
	6HTQexS5PwcEmaqy2OpNkvR3zmn4u4mry0KFog1lAGkHEFKK8sXpGxdxmGvpHC3psQ9bpXF+SP89j
	XslvN7Ffg8jKrmUGGrdmxqZBiJkIxbQdfoswGS+PgKfDVknoPE7ItV008zvek5C78x7drFONqNeX7
	IlV/M8nVzibunrs/AQ47GSSx3ZCcSB6MgWO3L5AoBNWfaBqVP50FsIrqHjq0508S8qNZWHYot429R
	7zYiO0gxmLTppEPGRDwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtiY-0001TQ-0Y; Fri, 08 May 2020 03:30:30 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWtiN-0001SA-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 03:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588908615;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=uMmWKYvsn3nnZTAMQNA1F04i+bwvwBgW7960VIk8KxA=;
 b=OEY+QSjX8JGgwFE6+IVTwE5u4HURCThryVjW2JjUMukAUnie/3TywnB/SG/2CLW/3iliC4
 l27rR3gATRKcUEzXNh6VTxk3CKl3jv+66Xq+/RNa7yJGnQ+XyFYkjpn/c4w7tD2swH1Tke
 poyAo4J2IAeEd9hc7ZqUfsmd5tY7t3U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-279-rD_5F9cgPAGS1X_7Nk_q0Q-1; Thu, 07 May 2020 23:30:13 -0400
X-MC-Unique: rD_5F9cgPAGS1X_7Nk_q0Q-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 170E246B;
 Fri,  8 May 2020 03:30:12 +0000 (UTC)
Received: from localhost.localdomain.com (vpn2-54-199.bne.redhat.com
 [10.64.54.199])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 536FE99CF;
 Fri,  8 May 2020 03:29:57 +0000 (UTC)
From: Gavin Shan <gshan@redhat.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH RFCv2 0/9] kvm/arm64: Support Async Page Fault
Date: Fri,  8 May 2020 13:29:10 +1000
Message-Id: <20200508032919.52147-1-gshan@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_203020_012255_0C0A3FA5 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.81 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, aarcange@redhat.com, drjones@redhat.com,
 suzuki.poulose@arm.com, maz@kernel.org, linux-kernel@vger.kernel.org,
 eric.auger@redhat.com, james.morse@arm.com, shan.gavin@gmail.com,
 catalin.marinas@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There are two stages of page faults and the stage one page fault is
handled by guest itself. The guest is trapped to host when the page
fault is caused by stage 2 page table, for example missing. The guest
is suspended until the requested page is populated. There might be
IO activities involved for host to populate the requested page. For
instance, the requested page has been swapped out previously. In this
case, the guest (vCPU) has to suspend for a few of milliseconds, which
depends on the swapping media, regardless of the overall system load.

The series adds asychornous page fault to improve the situation. A
signal (PAGE_NOT_PRESENT) is sent from host to the guest if the requested
page isn't absent immediately. In the mean while, a worker is started
to populate the requested page in background. Guest either picks another
available process to run or puts current (faulting) process to power
saving mode when receiving the (PAGE_NOT_PRESENT) signal. After the
requested page is populated by the worker, another signal (PAGE_READY)
is sent from host to guest. Guest wakes up the (faulting) process when
receiving the (PAGE_READY) signal.

The signals are conveyed through control block. The control block physical
address is passed from guest to host through dedicated KVM vendor specific
hypercall. The control block is visible and accessible by host and guest
in the mean while. The hypercall is also used to enable, disable, configure
the functionality. Notifications, by injected abort data exception, are
fired when there are pending signals. The exception handler will be invoked
in guest kernel.

Testing
=======
The tests are carried on the following machine. A guest with single vCPU
and 4GB memory is started. Also, the QEMU process is put into memory cgroup
(v1) whose memory limit is set to 2GB. In the guest, there are two threads,
which are memory bound and CPU bound separately. The memory bound thread
allocates all available memory, accesses and them free them. The CPU bound
thread simply executes block of "nop". The test is carried out for 5 time
continuously and the average number (per minute) of executed blocks in the
CPU bound thread is taken as indicator of improvement.

   Vendor: GIGABYTE   CPU: 224 x Cavium ThunderX2(R) CPU CN9975 v2.2 @ 2.0GHz
   Memory: 32GB       Disk: Fusion-MPT SAS-3 (PCIe3.0 x8)

   Without-APF: 7029030180/minute = avg(7559625120 5962155840 7823208540
                                        7629633480 6170527920)
   With-APF:    8286827472/minute = avg(8464584540 8177073360 8262723180
                                        8095084020 8434672260)
   Outcome:     +17.8%

Another test case is to measure the time consumed by the application, but
with the CPU-bound thread disabled.

   Without-APF: 40.3s = avg(40.6 39.3 39.2 41.6 41.2)
   With-APF:    40.8s = avg(40.6 41.1 40.9 41.0 40.7)
   Outcome:     +1.2%

I also have some code in the host to capture the number of async page faults,
time used to do swapin and its maximal/minimal values when async page fault
is enabled. During the test, the CPU-bound thread is disabled. There is about
30% of the time used to do swapin.

   Number of async page fault:     7555 times
   Total time used by application: 42.2 seconds
   Total time used by swapin:      12.7 seconds   (30%)
         Minimal swapin time:      36.2 us
         Maximal swapin time:      55.7 ms

Changelog
=========
RFCv1 -> RFCv2
   * Rebase to 5.7.rc3
   * Performance data                                                   (Marc Zyngier)
   * Replace IMPDEF system register with KVM vendor specific hypercall  (Mark Rutland)
   * Based on Will's KVM vendor hypercall probe mechanism               (Will Deacon)
   * Don't use IMPDEF DFSC (0x43). Async page fault reason is conveyed
     by the control block                                               (Mark Rutland)
   * Delayed wakeup mechanism in guest kernel                           (Gavin Shan)
   * Stability improvement in the guest kernel: delayed wakeup mechanism,
     external abort disallowed region, lazily clear async page fault,
     disabled interrupt on acquiring the head's lock and so on          (Gavin Shan)
   * Stability improvement in the host kernel: serialized async page
     faults etc.                                                        (Gavin Shan)
   * Performance improvement in guest kernel: percpu sleeper head       (Gavin Shan)

Gavin Shan (7):
  kvm/arm64: Rename kvm_vcpu_get_hsr() to kvm_vcpu_get_esr()
  kvm/arm64: Detach ESR operator from vCPU struct
  kvm/arm64: Replace hsr with esr
  kvm/arm64: Export kvm_handle_user_mem_abort() with prefault mode
  kvm/arm64: Support async page fault
  kernel/sched: Add cpu_rq_is_locked()
  arm64: Support async page fault

Will Deacon (2):
  arm64: Probe for the presence of KVM hypervisor services during boot
  arm/arm64: KVM: Advertise KVM UID to guests via SMCCC

 arch/arm64/Kconfig                       |  11 +
 arch/arm64/include/asm/exception.h       |   3 +
 arch/arm64/include/asm/hypervisor.h      |  11 +
 arch/arm64/include/asm/kvm_emulate.h     |  83 +++--
 arch/arm64/include/asm/kvm_host.h        |  47 +++
 arch/arm64/include/asm/kvm_para.h        |  40 +++
 arch/arm64/include/uapi/asm/Kbuild       |   2 -
 arch/arm64/include/uapi/asm/kvm_para.h   |  22 ++
 arch/arm64/kernel/entry.S                |  33 ++
 arch/arm64/kernel/process.c              |   4 +
 arch/arm64/kernel/setup.c                |  35 ++
 arch/arm64/kvm/Kconfig                   |   1 +
 arch/arm64/kvm/Makefile                  |   2 +
 arch/arm64/kvm/handle_exit.c             |  48 +--
 arch/arm64/kvm/hyp/switch.c              |  33 +-
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |   7 +-
 arch/arm64/kvm/inject_fault.c            |   4 +-
 arch/arm64/kvm/sys_regs.c                |  38 +-
 arch/arm64/mm/fault.c                    | 434 +++++++++++++++++++++++
 include/linux/arm-smccc.h                |  32 ++
 include/linux/sched.h                    |   1 +
 kernel/sched/core.c                      |   8 +
 virt/kvm/arm/arm.c                       |  40 ++-
 virt/kvm/arm/async_pf.c                  | 335 +++++++++++++++++
 virt/kvm/arm/hyp/aarch32.c               |   4 +-
 virt/kvm/arm/hyp/vgic-v3-sr.c            |   7 +-
 virt/kvm/arm/hypercalls.c                |  37 +-
 virt/kvm/arm/mmio.c                      |  27 +-
 virt/kvm/arm/mmu.c                       |  69 +++-
 29 files changed, 1264 insertions(+), 154 deletions(-)
 create mode 100644 arch/arm64/include/asm/kvm_para.h
 create mode 100644 arch/arm64/include/uapi/asm/kvm_para.h
 create mode 100644 virt/kvm/arm/async_pf.c

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
