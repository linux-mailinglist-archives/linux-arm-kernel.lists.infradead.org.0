Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE96FE2ED6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:28:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jlGcWWgSu8RoroBxRYI4oIjqmcMB2EXmRdLMymgVq+c=; b=F1W
	yzLRJ6r7MZYJcwWUQimMWdBkgGygpsCr6PjQ3PZZLzNjePV9JlEredWQUXdi0mq4VpqsfzH3Xkfoi
	jxE5CYhgFMU4C7/SEXx/8erIsLSARO7//lS6PQ+bQijWWubIiABrYA2wcErNIk9Z6t3l6zIIbZw42
	vLBkvc/qOmBhTDdsOXCycnc98YGrOFn/anIi+pGPxpIGLLIngP/msFumbRNT8cj0slZHrmYetQbfs
	evRKXOuwsKhOKpTW2rKU7204k6AhEoLv+7m1kxv4wJG+MpPk/PVgSo7mwwoMKk46MhemCLEpiVixY
	nOtxWT+3aAV1pO4m9Q8dNdylKqpHX3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNaLP-0004gV-H7; Thu, 24 Oct 2019 10:27:51 +0000
Received: from out30-131.freemail.mail.aliyun.com ([115.124.30.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNaL6-0004dD-Gi
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:27:36 +0000
X-Alimail-AntiSpam: AC=PASS; BC=-1|-1; BR=01201311R141e4; CH=green; DM=||false|;
 FP=0|-1|-1|-1|0|-1|-1|-1; HT=e01e07417; MF=shannon.zhao@linux.alibaba.com;
 NM=1; PH=DS; RN=8; SR=0; TI=SMTPD_---0Tg33X4V_1571912836; 
Received: from localhost(mailfrom:shannon.zhao@linux.alibaba.com
 fp:SMTPD_---0Tg33X4V_1571912836) by smtp.aliyun-inc.com(127.0.0.1);
 Thu, 24 Oct 2019 18:27:27 +0800
From: Shannon Zhao <shannon.zhao@linux.alibaba.com>
To: kvmarm@lists.cs.columbia.edu, maz@kernel.org, james.morse@arm.com,
 suzuki.poulose@arm.com, christoffer.dall@arm.com
Subject: [PATCH RFC 0/7] Support KVM being compiled as a kernel module on arm64
Date: Thu, 24 Oct 2019 18:27:43 +0800
Message-Id: <1571912870-18471-1-git-send-email-shannon.zhao@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_032732_721064_3FD3FDE5 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [115.124.30.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Curently KVM ARM64 doesn't support to compile as a kernel module. It's
useful to compile KVM as a module. For example, it could reload kvm
without rebooting host machine.

This patchset support this feature while there are some limitations
to be solved. But I just send it out as RFC to get more suggestion and
comments.

The patchset could be fetched from:
https://github.com/shannonz88/linux/tree/kvm_module

Curently it only supports for VHE system due to the hyp code section
address variables like __hyp_text_start. Also it can't call
kvm_update_va_mask when loading kvm module and kernel panic with below
errors. So I make kern_hyp_va into a nop funtion.

Unable to handle kernel read from unreadable memory at virtual address
ffff800008eda580
Mem abort info:
  ESR = 0x8600000f
  EC = 0x21: IABT (current EL), IL = 32 bits
  SET = 0, FnV = 0
  EA = 0, S1PTW = 0
swapper pgtable: 4k pages, 48-bit VAs, pgdp=0000000000ca1000
[ffff800008eda580] pgd=00002057fffff003, pud=00002057ffffe003,
pmd=0000003799c63003, pte=00e800575140f713
Internal error: Oops: 8600000f [#1] SMP
CPU: 25 PID: 9307 Comm: insmod Tainted: G            E     5.4.0-rc4+ #39
pstate: 60400009 (nZCv daif +PAN -UAO)
pc : 0xffff800008eda580
lr : __apply_alternatives+0x130/0x26c
sp : ffff800022fdbb00
x29: ffff800022fdbb00 x28: ffff800008f105bc
x27: 0000000000000005 x26: ffff800008f105bc
x25: ffff800010b67dd0 x24: ffff800008eda580
x23: ffff800010f21eff x22: ffff800022fdbba8
x21: 0000000000000001 x20: ffff800022fdbba0
x19: ffff800008f232bc x18: ffff00379b437d90
x17: 0000000000000000 x16: 0000000000009000
x15: 0000000000000008 x14: 0000000000000a00
x13: 0000000000000001 x12: ffff205768d18010
x11: 00000000ffffffff x10: 0000000000aaaaaa
x9 : ffff8000109b0cc8 x8 : 0000000000000001
x7 : ffff00579f9391a8 x6 : 0000000000000001
x5 : 0000000000000000 x4 : 0000000000000000
x3 : 0000000000000005 x2 : ffff800008f105bc
x1 : ffff800008f105bc x0 : ffff800008f232bc
Call trace:
 0xffff800008eda580
 apply_alternatives_module+0x64/0x84
 module_finalize+0xa8/0xd0
 load_module+0xf88/0x1b34
 __do_sys_finit_module+0xd0/0xfc
 __arm64_sys_finit_module+0x28/0x34
 el0_svc_handler+0x120/0x1d4
 el0_svc+0x8/0xc
Code: d34b2c00 17ffffea d4000002 d65f03c0 (a9ba7bfd)
---[ end trace 6de8ebc787a78157 ]---
Kernel panic - not syncing: Fatal exception
SMP: stopping secondary CPUs

Shannon Zhao (7):
  KVM: ARM: call hyp_cpu_pm_exit on correct fail and exit path
  KVM: arch_timer: Fix resource leak on error path
  KVM: vgic: make vgic parameters work well for module
  KVM: vgic: Add hyp uninitialize function
  KVM: arch_timer: Add hyp uninitialize function
  KVM: arm/arm64: Move target table register into register table init
    function
  KVM: ARM: Support KVM being compiled as a kernel module

 arch/arm/kvm/coproc.c                |  3 ++
 arch/arm/kvm/coproc.h                |  3 ++
 arch/arm/kvm/coproc_a15.c            |  4 +--
 arch/arm/kvm/coproc_a7.c             |  4 +--
 arch/arm64/include/asm/cache.h       | 16 ++---------
 arch/arm64/include/asm/cpufeature.h  | 11 +-------
 arch/arm64/include/asm/fpsimd.h      |  6 +---
 arch/arm64/include/asm/kvm_host.h    |  3 --
 arch/arm64/include/asm/kvm_mmu.h     |  4 +++
 arch/arm64/include/asm/perf_event.h  |  2 ++
 arch/arm64/kernel/acpi.c             |  1 +
 arch/arm64/kernel/asm-offsets.c      |  2 +-
 arch/arm64/kernel/cpu_errata.c       | 15 +++++++++-
 arch/arm64/kernel/cpufeature.c       |  2 ++
 arch/arm64/kernel/cpuinfo.c          | 16 +++++++++++
 arch/arm64/kernel/entry-fpsimd.S     |  2 ++
 arch/arm64/kernel/entry.S            |  1 +
 arch/arm64/kernel/fpsimd.c           | 11 ++++++++
 arch/arm64/kernel/head.S             |  1 +
 arch/arm64/kernel/hibernate.c        |  6 ++++
 arch/arm64/kernel/hyp-stub.S         |  1 +
 arch/arm64/kernel/insn.c             |  2 ++
 arch/arm64/kernel/perf_event.c       | 19 +++++++++++--
 arch/arm64/kernel/probes/kprobes.c   |  2 ++
 arch/arm64/kernel/smp.c              |  1 +
 arch/arm64/kernel/traps.c            |  2 ++
 arch/arm64/kvm/Kconfig               | 19 ++++++++++---
 arch/arm64/kvm/Makefile              | 53 ++++++++++++++++++++----------------
 arch/arm64/kvm/hyp/Makefile          | 22 +++++++--------
 arch/arm64/kvm/sys_regs.c            |  1 +
 arch/arm64/kvm/sys_regs.h            |  2 ++
 arch/arm64/kvm/sys_regs_generic_v8.c |  5 +---
 arch/arm64/kvm/va_layout.c           |  7 ++++-
 arch/arm64/mm/cache.S                |  2 ++
 arch/arm64/mm/hugetlbpage.c          |  2 ++
 arch/arm64/mm/mmu.c                  |  4 +++
 drivers/clocksource/arm_arch_timer.c |  1 +
 drivers/irqchip/irq-gic-common.c     |  1 +
 drivers/irqchip/irq-gic-v4.c         |  8 ++++++
 include/kvm/arm_arch_timer.h         |  1 +
 include/kvm/arm_vgic.h               |  1 +
 include/linux/interrupt.h            |  6 +---
 kernel/irq/manage.c                  |  6 ++++
 mm/pgtable-generic.c                 |  1 +
 virt/kvm/arm/arch_timer.c            | 19 +++++++++++--
 virt/kvm/arm/arm.c                   | 41 ++++++++++++++++++++++++++--
 virt/kvm/arm/mmu.c                   |  4 +++
 virt/kvm/arm/vgic/vgic-init.c        |  7 +++++
 virt/kvm/arm/vgic/vgic-v3.c          |  7 +++++
 49 files changed, 264 insertions(+), 96 deletions(-)

-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
