Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42B71B2280
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 11:17:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u1ry2yOWvLErmra+1PBRHv6bRorV0PHUnIf3CVX4u2I=; b=UR6TQUyHSktxz3
	O8xF2Q9/r25rqXs8q+/Bxxv75oqFY+K69h57q/NwzHiC5m/e7WbpR0lMy/P0/IXA88QGrHWw7Ewu+
	EiA5yBKmr+SLEV4fCCCrShYEoVNXlWDeRDKRSethWl6wJaTxKWkQjOxgnAgnKcAnk5lGRcLZk734p
	ronEEvm1ILNLioQyQz1U3MDmvNqYgfp0nMbO4PqMlYXzQepyWiPxAGMSslQoiCtlyRBWesnJ5hXr+
	P52iFtDFcFmUrwUwT4HOp8uvgEo0p/V7UGabkbtYfMWgZoTzWAvKzbF3w4DoARw5wigjO0jKgyym2
	W/U4wu6pPVQBDhL1WdVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQp22-0004go-Bw; Tue, 21 Apr 2020 09:17:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQp1q-0004et-Fa
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 09:17:21 +0000
Received: from localhost.localdomain (236.31.169.217.in-addr.arpa
 [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 23E0720857;
 Tue, 21 Apr 2020 09:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587460635;
 bh=YPwfx+ahsyKLrlMkKUVfda/ZBqL+sL/q7S43wdONAGY=;
 h=From:To:Cc:Subject:Date:From;
 b=qHJJbgqm8PEK59sWfucoIfEvQZq+B+ucnQJ7Nv4ZpQ6qoKR+aa8sOQncXYIFzXZPs
 d//YD9RhT6TUE8twfeixyHTobvvRnjvBdcfVcBcnoMo3yJNs4w/yjtjbM2WKC5JaYn
 xZ65x7j7vdO88uengb4WlYtHWAlrWuxbgg3lQUoE=
From: Will Deacon <will@kernel.org>
To: maz@kernel.org
Subject: [PATCH] arm64/kvm: Fix duplicate tracepoint definitions after KVM
 consolidation
Date: Tue, 21 Apr 2020 10:17:07 +0100
Message-Id: <20200421091707.16743-1-will@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_021718_568976_768D9220 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Will Deacon <will@kernel.org>, tabba@google.com,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Both kvm/{arm,handle_exit}.c include trace.h and attempt to instantiate
the same tracepoints, resulting in failures at link-time:

  | aarch64-linux-gnu-ld: arch/arm64/kvm/handle_exit.o:(__tracepoints+0x30):
  |   multiple definition of `__tracepoint_kvm_wfx_arm64';
  |   arch/arm64/kvm/arm.o:(__tracepoints+0x510): first defined here
  | ...

Split trace.h into two files so that the tracepoints are only created
in the C files that use them.

Cc: Marc Zyngier <maz@kernel.org>
Signed-off-by: Will Deacon <will@kernel.org>
---

Applies against kvm-arm64/welcome-home. Probably worth just folding in
to the only commit on that branch.

 arch/arm64/kvm/arm.c               |   2 +-
 arch/arm64/kvm/handle_exit.c       |   2 +-
 arch/arm64/kvm/trace.h             | 575 +----------------------------
 arch/arm64/kvm/trace_arm.h         | 378 +++++++++++++++++++
 arch/arm64/kvm/trace_handle_exit.h | 215 +++++++++++
 5 files changed, 599 insertions(+), 573 deletions(-)
 create mode 100644 arch/arm64/kvm/trace_arm.h
 create mode 100644 arch/arm64/kvm/trace_handle_exit.h

diff --git a/arch/arm64/kvm/arm.c b/arch/arm64/kvm/arm.c
index 48d0ec44ad77..c958bb37b769 100644
--- a/arch/arm64/kvm/arm.c
+++ b/arch/arm64/kvm/arm.c
@@ -22,7 +22,7 @@
 #include <trace/events/kvm.h>
 
 #define CREATE_TRACE_POINTS
-#include "trace.h"
+#include "trace_arm.h"
 
 #include <linux/uaccess.h>
 #include <asm/ptrace.h>
diff --git a/arch/arm64/kvm/handle_exit.c b/arch/arm64/kvm/handle_exit.c
index aacfc55de44c..eb194696ef62 100644
--- a/arch/arm64/kvm/handle_exit.c
+++ b/arch/arm64/kvm/handle_exit.c
@@ -23,7 +23,7 @@
 #include <kvm/arm_hypercalls.h>
 
 #define CREATE_TRACE_POINTS
-#include "trace.h"
+#include "trace_handle_exit.h"
 
 typedef int (*exit_handle_fn)(struct kvm_vcpu *, struct kvm_run *);
 
diff --git a/arch/arm64/kvm/trace.h b/arch/arm64/kvm/trace.h
index e83eafb2ba0c..86f9ea47be29 100644
--- a/arch/arm64/kvm/trace.h
+++ b/arch/arm64/kvm/trace.h
@@ -1,575 +1,8 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#if !defined(_TRACE_ARM64_KVM_H) || defined(TRACE_HEADER_MULTI_READ)
+#ifndef _TRACE_ARM64_KVM_H
 #define _TRACE_ARM64_KVM_H
 
-#include <kvm/arm_arch_timer.h>
-#include <linux/tracepoint.h>
-#include "sys_regs.h"
+#include "trace_arm.h"
+#include "trace_handle_exit.h"
 
-#undef TRACE_SYSTEM
-#define TRACE_SYSTEM kvm
-
-TRACE_EVENT(kvm_wfx_arm64,
-	TP_PROTO(unsigned long vcpu_pc, bool is_wfe),
-	TP_ARGS(vcpu_pc, is_wfe),
-
-	TP_STRUCT__entry(
-		__field(unsigned long,	vcpu_pc)
-		__field(bool,		is_wfe)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc = vcpu_pc;
-		__entry->is_wfe  = is_wfe;
-	),
-
-	TP_printk("guest executed wf%c at: 0x%08lx",
-		  __entry->is_wfe ? 'e' : 'i', __entry->vcpu_pc)
-);
-
-TRACE_EVENT(kvm_hvc_arm64,
-	TP_PROTO(unsigned long vcpu_pc, unsigned long r0, unsigned long imm),
-	TP_ARGS(vcpu_pc, r0, imm),
-
-	TP_STRUCT__entry(
-		__field(unsigned long, vcpu_pc)
-		__field(unsigned long, r0)
-		__field(unsigned long, imm)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc = vcpu_pc;
-		__entry->r0 = r0;
-		__entry->imm = imm;
-	),
-
-	TP_printk("HVC at 0x%08lx (r0: 0x%08lx, imm: 0x%lx)",
-		  __entry->vcpu_pc, __entry->r0, __entry->imm)
-);
-
-TRACE_EVENT(kvm_arm_setup_debug,
-	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
-	TP_ARGS(vcpu, guest_debug),
-
-	TP_STRUCT__entry(
-		__field(struct kvm_vcpu *, vcpu)
-		__field(__u32, guest_debug)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu = vcpu;
-		__entry->guest_debug = guest_debug;
-	),
-
-	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
-);
-
-TRACE_EVENT(kvm_arm_clear_debug,
-	TP_PROTO(__u32 guest_debug),
-	TP_ARGS(guest_debug),
-
-	TP_STRUCT__entry(
-		__field(__u32, guest_debug)
-	),
-
-	TP_fast_assign(
-		__entry->guest_debug = guest_debug;
-	),
-
-	TP_printk("flags: 0x%08x", __entry->guest_debug)
-);
-
-TRACE_EVENT(kvm_arm_set_dreg32,
-	TP_PROTO(const char *name, __u32 value),
-	TP_ARGS(name, value),
-
-	TP_STRUCT__entry(
-		__field(const char *, name)
-		__field(__u32, value)
-	),
-
-	TP_fast_assign(
-		__entry->name = name;
-		__entry->value = value;
-	),
-
-	TP_printk("%s: 0x%08x", __entry->name, __entry->value)
-);
-
-TRACE_DEFINE_SIZEOF(__u64);
-
-TRACE_EVENT(kvm_arm_set_regset,
-	TP_PROTO(const char *type, int len, __u64 *control, __u64 *value),
-	TP_ARGS(type, len, control, value),
-	TP_STRUCT__entry(
-		__field(const char *, name)
-		__field(int, len)
-		__array(u64, ctrls, 16)
-		__array(u64, values, 16)
-	),
-	TP_fast_assign(
-		__entry->name = type;
-		__entry->len = len;
-		memcpy(__entry->ctrls, control, len << 3);
-		memcpy(__entry->values, value, len << 3);
-	),
-	TP_printk("%d %s CTRL:%s VALUE:%s", __entry->len, __entry->name,
-		__print_array(__entry->ctrls, __entry->len, sizeof(__u64)),
-		__print_array(__entry->values, __entry->len, sizeof(__u64)))
-);
-
-TRACE_EVENT(trap_reg,
-	TP_PROTO(const char *fn, int reg, bool is_write, u64 write_value),
-	TP_ARGS(fn, reg, is_write, write_value),
-
-	TP_STRUCT__entry(
-		__field(const char *, fn)
-		__field(int, reg)
-		__field(bool, is_write)
-		__field(u64, write_value)
-	),
-
-	TP_fast_assign(
-		__entry->fn = fn;
-		__entry->reg = reg;
-		__entry->is_write = is_write;
-		__entry->write_value = write_value;
-	),
-
-	TP_printk("%s %s reg %d (0x%08llx)", __entry->fn,  __entry->is_write?"write to":"read from", __entry->reg, __entry->write_value)
-);
-
-TRACE_EVENT(kvm_handle_sys_reg,
-	TP_PROTO(unsigned long hsr),
-	TP_ARGS(hsr),
-
-	TP_STRUCT__entry(
-		__field(unsigned long,	hsr)
-	),
-
-	TP_fast_assign(
-		__entry->hsr = hsr;
-	),
-
-	TP_printk("HSR 0x%08lx", __entry->hsr)
-);
-
-TRACE_EVENT(kvm_sys_access,
-	TP_PROTO(unsigned long vcpu_pc, struct sys_reg_params *params, const struct sys_reg_desc *reg),
-	TP_ARGS(vcpu_pc, params, reg),
-
-	TP_STRUCT__entry(
-		__field(unsigned long,			vcpu_pc)
-		__field(bool,				is_write)
-		__field(const char *,			name)
-		__field(u8,				Op0)
-		__field(u8,				Op1)
-		__field(u8,				CRn)
-		__field(u8,				CRm)
-		__field(u8,				Op2)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc = vcpu_pc;
-		__entry->is_write = params->is_write;
-		__entry->name = reg->name;
-		__entry->Op0 = reg->Op0;
-		__entry->Op0 = reg->Op0;
-		__entry->Op1 = reg->Op1;
-		__entry->CRn = reg->CRn;
-		__entry->CRm = reg->CRm;
-		__entry->Op2 = reg->Op2;
-	),
-
-	TP_printk("PC: %lx %s (%d,%d,%d,%d,%d) %s",
-		  __entry->vcpu_pc, __entry->name ?: "UNKN",
-		  __entry->Op0, __entry->Op1, __entry->CRn,
-		  __entry->CRm, __entry->Op2,
-		  __entry->is_write ? "write" : "read")
-);
-
-TRACE_EVENT(kvm_set_guest_debug,
-	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
-	TP_ARGS(vcpu, guest_debug),
-
-	TP_STRUCT__entry(
-		__field(struct kvm_vcpu *, vcpu)
-		__field(__u32, guest_debug)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu = vcpu;
-		__entry->guest_debug = guest_debug;
-	),
-
-	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
-);
-
-/*
- * Tracepoints for entry/exit to guest
- */
-TRACE_EVENT(kvm_entry,
-	TP_PROTO(unsigned long vcpu_pc),
-	TP_ARGS(vcpu_pc),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	vcpu_pc		)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc		= vcpu_pc;
-	),
-
-	TP_printk("PC: 0x%08lx", __entry->vcpu_pc)
-);
-
-TRACE_EVENT(kvm_exit,
-	TP_PROTO(int ret, unsigned int esr_ec, unsigned long vcpu_pc),
-	TP_ARGS(ret, esr_ec, vcpu_pc),
-
-	TP_STRUCT__entry(
-		__field(	int,		ret		)
-		__field(	unsigned int,	esr_ec		)
-		__field(	unsigned long,	vcpu_pc		)
-	),
-
-	TP_fast_assign(
-		__entry->ret			= ARM_EXCEPTION_CODE(ret);
-		__entry->esr_ec = ARM_EXCEPTION_IS_TRAP(ret) ? esr_ec : 0;
-		__entry->vcpu_pc		= vcpu_pc;
-	),
-
-	TP_printk("%s: HSR_EC: 0x%04x (%s), PC: 0x%08lx",
-		  __print_symbolic(__entry->ret, kvm_arm_exception_type),
-		  __entry->esr_ec,
-		  __print_symbolic(__entry->esr_ec, kvm_arm_exception_class),
-		  __entry->vcpu_pc)
-);
-
-TRACE_EVENT(kvm_guest_fault,
-	TP_PROTO(unsigned long vcpu_pc, unsigned long hsr,
-		 unsigned long hxfar,
-		 unsigned long long ipa),
-	TP_ARGS(vcpu_pc, hsr, hxfar, ipa),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	vcpu_pc		)
-		__field(	unsigned long,	hsr		)
-		__field(	unsigned long,	hxfar		)
-		__field(   unsigned long long,	ipa		)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc		= vcpu_pc;
-		__entry->hsr			= hsr;
-		__entry->hxfar			= hxfar;
-		__entry->ipa			= ipa;
-	),
-
-	TP_printk("ipa %#llx, hsr %#08lx, hxfar %#08lx, pc %#08lx",
-		  __entry->ipa, __entry->hsr,
-		  __entry->hxfar, __entry->vcpu_pc)
-);
-
-TRACE_EVENT(kvm_access_fault,
-	TP_PROTO(unsigned long ipa),
-	TP_ARGS(ipa),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	ipa		)
-	),
-
-	TP_fast_assign(
-		__entry->ipa		= ipa;
-	),
-
-	TP_printk("IPA: %lx", __entry->ipa)
-);
-
-TRACE_EVENT(kvm_irq_line,
-	TP_PROTO(unsigned int type, int vcpu_idx, int irq_num, int level),
-	TP_ARGS(type, vcpu_idx, irq_num, level),
-
-	TP_STRUCT__entry(
-		__field(	unsigned int,	type		)
-		__field(	int,		vcpu_idx	)
-		__field(	int,		irq_num		)
-		__field(	int,		level		)
-	),
-
-	TP_fast_assign(
-		__entry->type		= type;
-		__entry->vcpu_idx	= vcpu_idx;
-		__entry->irq_num	= irq_num;
-		__entry->level		= level;
-	),
-
-	TP_printk("Inject %s interrupt (%d), vcpu->idx: %d, num: %d, level: %d",
-		  (__entry->type == KVM_ARM_IRQ_TYPE_CPU) ? "CPU" :
-		  (__entry->type == KVM_ARM_IRQ_TYPE_PPI) ? "VGIC PPI" :
-		  (__entry->type == KVM_ARM_IRQ_TYPE_SPI) ? "VGIC SPI" : "UNKNOWN",
-		  __entry->type, __entry->vcpu_idx, __entry->irq_num, __entry->level)
-);
-
-TRACE_EVENT(kvm_mmio_emulate,
-	TP_PROTO(unsigned long vcpu_pc, unsigned long instr,
-		 unsigned long cpsr),
-	TP_ARGS(vcpu_pc, instr, cpsr),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	vcpu_pc		)
-		__field(	unsigned long,	instr		)
-		__field(	unsigned long,	cpsr		)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_pc		= vcpu_pc;
-		__entry->instr			= instr;
-		__entry->cpsr			= cpsr;
-	),
-
-	TP_printk("Emulate MMIO at: 0x%08lx (instr: %08lx, cpsr: %08lx)",
-		  __entry->vcpu_pc, __entry->instr, __entry->cpsr)
-);
-
-TRACE_EVENT(kvm_unmap_hva_range,
-	TP_PROTO(unsigned long start, unsigned long end),
-	TP_ARGS(start, end),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	start		)
-		__field(	unsigned long,	end		)
-	),
-
-	TP_fast_assign(
-		__entry->start		= start;
-		__entry->end		= end;
-	),
-
-	TP_printk("mmu notifier unmap range: %#08lx -- %#08lx",
-		  __entry->start, __entry->end)
-);
-
-TRACE_EVENT(kvm_set_spte_hva,
-	TP_PROTO(unsigned long hva),
-	TP_ARGS(hva),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	hva		)
-	),
-
-	TP_fast_assign(
-		__entry->hva		= hva;
-	),
-
-	TP_printk("mmu notifier set pte hva: %#08lx", __entry->hva)
-);
-
-TRACE_EVENT(kvm_age_hva,
-	TP_PROTO(unsigned long start, unsigned long end),
-	TP_ARGS(start, end),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	start		)
-		__field(	unsigned long,	end		)
-	),
-
-	TP_fast_assign(
-		__entry->start		= start;
-		__entry->end		= end;
-	),
-
-	TP_printk("mmu notifier age hva: %#08lx -- %#08lx",
-		  __entry->start, __entry->end)
-);
-
-TRACE_EVENT(kvm_test_age_hva,
-	TP_PROTO(unsigned long hva),
-	TP_ARGS(hva),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	hva		)
-	),
-
-	TP_fast_assign(
-		__entry->hva		= hva;
-	),
-
-	TP_printk("mmu notifier test age hva: %#08lx", __entry->hva)
-);
-
-TRACE_EVENT(kvm_set_way_flush,
-	    TP_PROTO(unsigned long vcpu_pc, bool cache),
-	    TP_ARGS(vcpu_pc, cache),
-
-	    TP_STRUCT__entry(
-		    __field(	unsigned long,	vcpu_pc		)
-		    __field(	bool,		cache		)
-	    ),
-
-	    TP_fast_assign(
-		    __entry->vcpu_pc		= vcpu_pc;
-		    __entry->cache		= cache;
-	    ),
-
-	    TP_printk("S/W flush at 0x%016lx (cache %s)",
-		      __entry->vcpu_pc, __entry->cache ? "on" : "off")
-);
-
-TRACE_EVENT(kvm_toggle_cache,
-	    TP_PROTO(unsigned long vcpu_pc, bool was, bool now),
-	    TP_ARGS(vcpu_pc, was, now),
-
-	    TP_STRUCT__entry(
-		    __field(	unsigned long,	vcpu_pc		)
-		    __field(	bool,		was		)
-		    __field(	bool,		now		)
-	    ),
-
-	    TP_fast_assign(
-		    __entry->vcpu_pc		= vcpu_pc;
-		    __entry->was		= was;
-		    __entry->now		= now;
-	    ),
-
-	    TP_printk("VM op at 0x%016lx (cache was %s, now %s)",
-		      __entry->vcpu_pc, __entry->was ? "on" : "off",
-		      __entry->now ? "on" : "off")
-);
-
-/*
- * Tracepoints for arch_timer
- */
-TRACE_EVENT(kvm_timer_update_irq,
-	TP_PROTO(unsigned long vcpu_id, __u32 irq, int level),
-	TP_ARGS(vcpu_id, irq, level),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,	vcpu_id	)
-		__field(	__u32,		irq	)
-		__field(	int,		level	)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_id	= vcpu_id;
-		__entry->irq		= irq;
-		__entry->level		= level;
-	),
-
-	TP_printk("VCPU: %ld, IRQ %d, level %d",
-		  __entry->vcpu_id, __entry->irq, __entry->level)
-);
-
-TRACE_EVENT(kvm_get_timer_map,
-	TP_PROTO(unsigned long vcpu_id, struct timer_map *map),
-	TP_ARGS(vcpu_id, map),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,		vcpu_id	)
-		__field(	int,			direct_vtimer	)
-		__field(	int,			direct_ptimer	)
-		__field(	int,			emul_ptimer	)
-	),
-
-	TP_fast_assign(
-		__entry->vcpu_id		= vcpu_id;
-		__entry->direct_vtimer		= arch_timer_ctx_index(map->direct_vtimer);
-		__entry->direct_ptimer =
-			(map->direct_ptimer) ? arch_timer_ctx_index(map->direct_ptimer) : -1;
-		__entry->emul_ptimer =
-			(map->emul_ptimer) ? arch_timer_ctx_index(map->emul_ptimer) : -1;
-	),
-
-	TP_printk("VCPU: %ld, dv: %d, dp: %d, ep: %d",
-		  __entry->vcpu_id,
-		  __entry->direct_vtimer,
-		  __entry->direct_ptimer,
-		  __entry->emul_ptimer)
-);
-
-TRACE_EVENT(kvm_timer_save_state,
-	TP_PROTO(struct arch_timer_context *ctx),
-	TP_ARGS(ctx),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,		ctl		)
-		__field(	unsigned long long,	cval		)
-		__field(	int,			timer_idx	)
-	),
-
-	TP_fast_assign(
-		__entry->ctl			= ctx->cnt_ctl;
-		__entry->cval			= ctx->cnt_cval;
-		__entry->timer_idx		= arch_timer_ctx_index(ctx);
-	),
-
-	TP_printk("   CTL: %#08lx CVAL: %#16llx arch_timer_ctx_index: %d",
-		  __entry->ctl,
-		  __entry->cval,
-		  __entry->timer_idx)
-);
-
-TRACE_EVENT(kvm_timer_restore_state,
-	TP_PROTO(struct arch_timer_context *ctx),
-	TP_ARGS(ctx),
-
-	TP_STRUCT__entry(
-		__field(	unsigned long,		ctl		)
-		__field(	unsigned long long,	cval		)
-		__field(	int,			timer_idx	)
-	),
-
-	TP_fast_assign(
-		__entry->ctl			= ctx->cnt_ctl;
-		__entry->cval			= ctx->cnt_cval;
-		__entry->timer_idx		= arch_timer_ctx_index(ctx);
-	),
-
-	TP_printk("CTL: %#08lx CVAL: %#16llx arch_timer_ctx_index: %d",
-		  __entry->ctl,
-		  __entry->cval,
-		  __entry->timer_idx)
-);
-
-TRACE_EVENT(kvm_timer_hrtimer_expire,
-	TP_PROTO(struct arch_timer_context *ctx),
-	TP_ARGS(ctx),
-
-	TP_STRUCT__entry(
-		__field(	int,			timer_idx	)
-	),
-
-	TP_fast_assign(
-		__entry->timer_idx		= arch_timer_ctx_index(ctx);
-	),
-
-	TP_printk("arch_timer_ctx_index: %d", __entry->timer_idx)
-);
-
-TRACE_EVENT(kvm_timer_emulate,
-	TP_PROTO(struct arch_timer_context *ctx, bool should_fire),
-	TP_ARGS(ctx, should_fire),
-
-	TP_STRUCT__entry(
-		__field(	int,			timer_idx	)
-		__field(	bool,			should_fire	)
-	),
-
-	TP_fast_assign(
-		__entry->timer_idx		= arch_timer_ctx_index(ctx);
-		__entry->should_fire		= should_fire;
-	),
-
-	TP_printk("arch_timer_ctx_index: %d (should_fire: %d)",
-		  __entry->timer_idx, __entry->should_fire)
-);
-
-#endif /* _TRACE_ARM64_KVM_H */
-
-#undef TRACE_INCLUDE_PATH
-#define TRACE_INCLUDE_PATH .
-#undef TRACE_INCLUDE_FILE
-#define TRACE_INCLUDE_FILE trace
-
-/* This part must be outside protection */
-#include <trace/define_trace.h>
+#endif	/* _TRACE_ARM64_KVM_H */
diff --git a/arch/arm64/kvm/trace_arm.h b/arch/arm64/kvm/trace_arm.h
new file mode 100644
index 000000000000..4c71270cc097
--- /dev/null
+++ b/arch/arm64/kvm/trace_arm.h
@@ -0,0 +1,378 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#if !defined(_TRACE_ARM_ARM64_KVM_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_ARM_ARM64_KVM_H
+
+#include <kvm/arm_arch_timer.h>
+#include <linux/tracepoint.h>
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM kvm
+
+/*
+ * Tracepoints for entry/exit to guest
+ */
+TRACE_EVENT(kvm_entry,
+	TP_PROTO(unsigned long vcpu_pc),
+	TP_ARGS(vcpu_pc),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	vcpu_pc		)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc		= vcpu_pc;
+	),
+
+	TP_printk("PC: 0x%08lx", __entry->vcpu_pc)
+);
+
+TRACE_EVENT(kvm_exit,
+	TP_PROTO(int ret, unsigned int esr_ec, unsigned long vcpu_pc),
+	TP_ARGS(ret, esr_ec, vcpu_pc),
+
+	TP_STRUCT__entry(
+		__field(	int,		ret		)
+		__field(	unsigned int,	esr_ec		)
+		__field(	unsigned long,	vcpu_pc		)
+	),
+
+	TP_fast_assign(
+		__entry->ret			= ARM_EXCEPTION_CODE(ret);
+		__entry->esr_ec = ARM_EXCEPTION_IS_TRAP(ret) ? esr_ec : 0;
+		__entry->vcpu_pc		= vcpu_pc;
+	),
+
+	TP_printk("%s: HSR_EC: 0x%04x (%s), PC: 0x%08lx",
+		  __print_symbolic(__entry->ret, kvm_arm_exception_type),
+		  __entry->esr_ec,
+		  __print_symbolic(__entry->esr_ec, kvm_arm_exception_class),
+		  __entry->vcpu_pc)
+);
+
+TRACE_EVENT(kvm_guest_fault,
+	TP_PROTO(unsigned long vcpu_pc, unsigned long hsr,
+		 unsigned long hxfar,
+		 unsigned long long ipa),
+	TP_ARGS(vcpu_pc, hsr, hxfar, ipa),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	vcpu_pc		)
+		__field(	unsigned long,	hsr		)
+		__field(	unsigned long,	hxfar		)
+		__field(   unsigned long long,	ipa		)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc		= vcpu_pc;
+		__entry->hsr			= hsr;
+		__entry->hxfar			= hxfar;
+		__entry->ipa			= ipa;
+	),
+
+	TP_printk("ipa %#llx, hsr %#08lx, hxfar %#08lx, pc %#08lx",
+		  __entry->ipa, __entry->hsr,
+		  __entry->hxfar, __entry->vcpu_pc)
+);
+
+TRACE_EVENT(kvm_access_fault,
+	TP_PROTO(unsigned long ipa),
+	TP_ARGS(ipa),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	ipa		)
+	),
+
+	TP_fast_assign(
+		__entry->ipa		= ipa;
+	),
+
+	TP_printk("IPA: %lx", __entry->ipa)
+);
+
+TRACE_EVENT(kvm_irq_line,
+	TP_PROTO(unsigned int type, int vcpu_idx, int irq_num, int level),
+	TP_ARGS(type, vcpu_idx, irq_num, level),
+
+	TP_STRUCT__entry(
+		__field(	unsigned int,	type		)
+		__field(	int,		vcpu_idx	)
+		__field(	int,		irq_num		)
+		__field(	int,		level		)
+	),
+
+	TP_fast_assign(
+		__entry->type		= type;
+		__entry->vcpu_idx	= vcpu_idx;
+		__entry->irq_num	= irq_num;
+		__entry->level		= level;
+	),
+
+	TP_printk("Inject %s interrupt (%d), vcpu->idx: %d, num: %d, level: %d",
+		  (__entry->type == KVM_ARM_IRQ_TYPE_CPU) ? "CPU" :
+		  (__entry->type == KVM_ARM_IRQ_TYPE_PPI) ? "VGIC PPI" :
+		  (__entry->type == KVM_ARM_IRQ_TYPE_SPI) ? "VGIC SPI" : "UNKNOWN",
+		  __entry->type, __entry->vcpu_idx, __entry->irq_num, __entry->level)
+);
+
+TRACE_EVENT(kvm_mmio_emulate,
+	TP_PROTO(unsigned long vcpu_pc, unsigned long instr,
+		 unsigned long cpsr),
+	TP_ARGS(vcpu_pc, instr, cpsr),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	vcpu_pc		)
+		__field(	unsigned long,	instr		)
+		__field(	unsigned long,	cpsr		)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc		= vcpu_pc;
+		__entry->instr			= instr;
+		__entry->cpsr			= cpsr;
+	),
+
+	TP_printk("Emulate MMIO at: 0x%08lx (instr: %08lx, cpsr: %08lx)",
+		  __entry->vcpu_pc, __entry->instr, __entry->cpsr)
+);
+
+TRACE_EVENT(kvm_unmap_hva_range,
+	TP_PROTO(unsigned long start, unsigned long end),
+	TP_ARGS(start, end),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	start		)
+		__field(	unsigned long,	end		)
+	),
+
+	TP_fast_assign(
+		__entry->start		= start;
+		__entry->end		= end;
+	),
+
+	TP_printk("mmu notifier unmap range: %#08lx -- %#08lx",
+		  __entry->start, __entry->end)
+);
+
+TRACE_EVENT(kvm_set_spte_hva,
+	TP_PROTO(unsigned long hva),
+	TP_ARGS(hva),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	hva		)
+	),
+
+	TP_fast_assign(
+		__entry->hva		= hva;
+	),
+
+	TP_printk("mmu notifier set pte hva: %#08lx", __entry->hva)
+);
+
+TRACE_EVENT(kvm_age_hva,
+	TP_PROTO(unsigned long start, unsigned long end),
+	TP_ARGS(start, end),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	start		)
+		__field(	unsigned long,	end		)
+	),
+
+	TP_fast_assign(
+		__entry->start		= start;
+		__entry->end		= end;
+	),
+
+	TP_printk("mmu notifier age hva: %#08lx -- %#08lx",
+		  __entry->start, __entry->end)
+);
+
+TRACE_EVENT(kvm_test_age_hva,
+	TP_PROTO(unsigned long hva),
+	TP_ARGS(hva),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	hva		)
+	),
+
+	TP_fast_assign(
+		__entry->hva		= hva;
+	),
+
+	TP_printk("mmu notifier test age hva: %#08lx", __entry->hva)
+);
+
+TRACE_EVENT(kvm_set_way_flush,
+	    TP_PROTO(unsigned long vcpu_pc, bool cache),
+	    TP_ARGS(vcpu_pc, cache),
+
+	    TP_STRUCT__entry(
+		    __field(	unsigned long,	vcpu_pc		)
+		    __field(	bool,		cache		)
+	    ),
+
+	    TP_fast_assign(
+		    __entry->vcpu_pc		= vcpu_pc;
+		    __entry->cache		= cache;
+	    ),
+
+	    TP_printk("S/W flush at 0x%016lx (cache %s)",
+		      __entry->vcpu_pc, __entry->cache ? "on" : "off")
+);
+
+TRACE_EVENT(kvm_toggle_cache,
+	    TP_PROTO(unsigned long vcpu_pc, bool was, bool now),
+	    TP_ARGS(vcpu_pc, was, now),
+
+	    TP_STRUCT__entry(
+		    __field(	unsigned long,	vcpu_pc		)
+		    __field(	bool,		was		)
+		    __field(	bool,		now		)
+	    ),
+
+	    TP_fast_assign(
+		    __entry->vcpu_pc		= vcpu_pc;
+		    __entry->was		= was;
+		    __entry->now		= now;
+	    ),
+
+	    TP_printk("VM op at 0x%016lx (cache was %s, now %s)",
+		      __entry->vcpu_pc, __entry->was ? "on" : "off",
+		      __entry->now ? "on" : "off")
+);
+
+/*
+ * Tracepoints for arch_timer
+ */
+TRACE_EVENT(kvm_timer_update_irq,
+	TP_PROTO(unsigned long vcpu_id, __u32 irq, int level),
+	TP_ARGS(vcpu_id, irq, level),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,	vcpu_id	)
+		__field(	__u32,		irq	)
+		__field(	int,		level	)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_id	= vcpu_id;
+		__entry->irq		= irq;
+		__entry->level		= level;
+	),
+
+	TP_printk("VCPU: %ld, IRQ %d, level %d",
+		  __entry->vcpu_id, __entry->irq, __entry->level)
+);
+
+TRACE_EVENT(kvm_get_timer_map,
+	TP_PROTO(unsigned long vcpu_id, struct timer_map *map),
+	TP_ARGS(vcpu_id, map),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,		vcpu_id	)
+		__field(	int,			direct_vtimer	)
+		__field(	int,			direct_ptimer	)
+		__field(	int,			emul_ptimer	)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_id		= vcpu_id;
+		__entry->direct_vtimer		= arch_timer_ctx_index(map->direct_vtimer);
+		__entry->direct_ptimer =
+			(map->direct_ptimer) ? arch_timer_ctx_index(map->direct_ptimer) : -1;
+		__entry->emul_ptimer =
+			(map->emul_ptimer) ? arch_timer_ctx_index(map->emul_ptimer) : -1;
+	),
+
+	TP_printk("VCPU: %ld, dv: %d, dp: %d, ep: %d",
+		  __entry->vcpu_id,
+		  __entry->direct_vtimer,
+		  __entry->direct_ptimer,
+		  __entry->emul_ptimer)
+);
+
+TRACE_EVENT(kvm_timer_save_state,
+	TP_PROTO(struct arch_timer_context *ctx),
+	TP_ARGS(ctx),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,		ctl		)
+		__field(	unsigned long long,	cval		)
+		__field(	int,			timer_idx	)
+	),
+
+	TP_fast_assign(
+		__entry->ctl			= ctx->cnt_ctl;
+		__entry->cval			= ctx->cnt_cval;
+		__entry->timer_idx		= arch_timer_ctx_index(ctx);
+	),
+
+	TP_printk("   CTL: %#08lx CVAL: %#16llx arch_timer_ctx_index: %d",
+		  __entry->ctl,
+		  __entry->cval,
+		  __entry->timer_idx)
+);
+
+TRACE_EVENT(kvm_timer_restore_state,
+	TP_PROTO(struct arch_timer_context *ctx),
+	TP_ARGS(ctx),
+
+	TP_STRUCT__entry(
+		__field(	unsigned long,		ctl		)
+		__field(	unsigned long long,	cval		)
+		__field(	int,			timer_idx	)
+	),
+
+	TP_fast_assign(
+		__entry->ctl			= ctx->cnt_ctl;
+		__entry->cval			= ctx->cnt_cval;
+		__entry->timer_idx		= arch_timer_ctx_index(ctx);
+	),
+
+	TP_printk("CTL: %#08lx CVAL: %#16llx arch_timer_ctx_index: %d",
+		  __entry->ctl,
+		  __entry->cval,
+		  __entry->timer_idx)
+);
+
+TRACE_EVENT(kvm_timer_hrtimer_expire,
+	TP_PROTO(struct arch_timer_context *ctx),
+	TP_ARGS(ctx),
+
+	TP_STRUCT__entry(
+		__field(	int,			timer_idx	)
+	),
+
+	TP_fast_assign(
+		__entry->timer_idx		= arch_timer_ctx_index(ctx);
+	),
+
+	TP_printk("arch_timer_ctx_index: %d", __entry->timer_idx)
+);
+
+TRACE_EVENT(kvm_timer_emulate,
+	TP_PROTO(struct arch_timer_context *ctx, bool should_fire),
+	TP_ARGS(ctx, should_fire),
+
+	TP_STRUCT__entry(
+		__field(	int,			timer_idx	)
+		__field(	bool,			should_fire	)
+	),
+
+	TP_fast_assign(
+		__entry->timer_idx		= arch_timer_ctx_index(ctx);
+		__entry->should_fire		= should_fire;
+	),
+
+	TP_printk("arch_timer_ctx_index: %d (should_fire: %d)",
+		  __entry->timer_idx, __entry->should_fire)
+);
+
+#endif /* _TRACE_ARM_ARM64_KVM_H */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH .
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE trace_arm
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
diff --git a/arch/arm64/kvm/trace_handle_exit.h b/arch/arm64/kvm/trace_handle_exit.h
new file mode 100644
index 000000000000..2c56d1e0f5bd
--- /dev/null
+++ b/arch/arm64/kvm/trace_handle_exit.h
@@ -0,0 +1,215 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#if !defined(_TRACE_HANDLE_EXIT_ARM64_KVM_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_HANDLE_EXIT_ARM64_KVM_H
+
+#include <linux/tracepoint.h>
+#include "sys_regs.h"
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM kvm
+
+TRACE_EVENT(kvm_wfx_arm64,
+	TP_PROTO(unsigned long vcpu_pc, bool is_wfe),
+	TP_ARGS(vcpu_pc, is_wfe),
+
+	TP_STRUCT__entry(
+		__field(unsigned long,	vcpu_pc)
+		__field(bool,		is_wfe)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc = vcpu_pc;
+		__entry->is_wfe  = is_wfe;
+	),
+
+	TP_printk("guest executed wf%c at: 0x%08lx",
+		  __entry->is_wfe ? 'e' : 'i', __entry->vcpu_pc)
+);
+
+TRACE_EVENT(kvm_hvc_arm64,
+	TP_PROTO(unsigned long vcpu_pc, unsigned long r0, unsigned long imm),
+	TP_ARGS(vcpu_pc, r0, imm),
+
+	TP_STRUCT__entry(
+		__field(unsigned long, vcpu_pc)
+		__field(unsigned long, r0)
+		__field(unsigned long, imm)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc = vcpu_pc;
+		__entry->r0 = r0;
+		__entry->imm = imm;
+	),
+
+	TP_printk("HVC at 0x%08lx (r0: 0x%08lx, imm: 0x%lx)",
+		  __entry->vcpu_pc, __entry->r0, __entry->imm)
+);
+
+TRACE_EVENT(kvm_arm_setup_debug,
+	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
+	TP_ARGS(vcpu, guest_debug),
+
+	TP_STRUCT__entry(
+		__field(struct kvm_vcpu *, vcpu)
+		__field(__u32, guest_debug)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu = vcpu;
+		__entry->guest_debug = guest_debug;
+	),
+
+	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
+);
+
+TRACE_EVENT(kvm_arm_clear_debug,
+	TP_PROTO(__u32 guest_debug),
+	TP_ARGS(guest_debug),
+
+	TP_STRUCT__entry(
+		__field(__u32, guest_debug)
+	),
+
+	TP_fast_assign(
+		__entry->guest_debug = guest_debug;
+	),
+
+	TP_printk("flags: 0x%08x", __entry->guest_debug)
+);
+
+TRACE_EVENT(kvm_arm_set_dreg32,
+	TP_PROTO(const char *name, __u32 value),
+	TP_ARGS(name, value),
+
+	TP_STRUCT__entry(
+		__field(const char *, name)
+		__field(__u32, value)
+	),
+
+	TP_fast_assign(
+		__entry->name = name;
+		__entry->value = value;
+	),
+
+	TP_printk("%s: 0x%08x", __entry->name, __entry->value)
+);
+
+TRACE_DEFINE_SIZEOF(__u64);
+
+TRACE_EVENT(kvm_arm_set_regset,
+	TP_PROTO(const char *type, int len, __u64 *control, __u64 *value),
+	TP_ARGS(type, len, control, value),
+	TP_STRUCT__entry(
+		__field(const char *, name)
+		__field(int, len)
+		__array(u64, ctrls, 16)
+		__array(u64, values, 16)
+	),
+	TP_fast_assign(
+		__entry->name = type;
+		__entry->len = len;
+		memcpy(__entry->ctrls, control, len << 3);
+		memcpy(__entry->values, value, len << 3);
+	),
+	TP_printk("%d %s CTRL:%s VALUE:%s", __entry->len, __entry->name,
+		__print_array(__entry->ctrls, __entry->len, sizeof(__u64)),
+		__print_array(__entry->values, __entry->len, sizeof(__u64)))
+);
+
+TRACE_EVENT(trap_reg,
+	TP_PROTO(const char *fn, int reg, bool is_write, u64 write_value),
+	TP_ARGS(fn, reg, is_write, write_value),
+
+	TP_STRUCT__entry(
+		__field(const char *, fn)
+		__field(int, reg)
+		__field(bool, is_write)
+		__field(u64, write_value)
+	),
+
+	TP_fast_assign(
+		__entry->fn = fn;
+		__entry->reg = reg;
+		__entry->is_write = is_write;
+		__entry->write_value = write_value;
+	),
+
+	TP_printk("%s %s reg %d (0x%08llx)", __entry->fn,  __entry->is_write?"write to":"read from", __entry->reg, __entry->write_value)
+);
+
+TRACE_EVENT(kvm_handle_sys_reg,
+	TP_PROTO(unsigned long hsr),
+	TP_ARGS(hsr),
+
+	TP_STRUCT__entry(
+		__field(unsigned long,	hsr)
+	),
+
+	TP_fast_assign(
+		__entry->hsr = hsr;
+	),
+
+	TP_printk("HSR 0x%08lx", __entry->hsr)
+);
+
+TRACE_EVENT(kvm_sys_access,
+	TP_PROTO(unsigned long vcpu_pc, struct sys_reg_params *params, const struct sys_reg_desc *reg),
+	TP_ARGS(vcpu_pc, params, reg),
+
+	TP_STRUCT__entry(
+		__field(unsigned long,			vcpu_pc)
+		__field(bool,				is_write)
+		__field(const char *,			name)
+		__field(u8,				Op0)
+		__field(u8,				Op1)
+		__field(u8,				CRn)
+		__field(u8,				CRm)
+		__field(u8,				Op2)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu_pc = vcpu_pc;
+		__entry->is_write = params->is_write;
+		__entry->name = reg->name;
+		__entry->Op0 = reg->Op0;
+		__entry->Op0 = reg->Op0;
+		__entry->Op1 = reg->Op1;
+		__entry->CRn = reg->CRn;
+		__entry->CRm = reg->CRm;
+		__entry->Op2 = reg->Op2;
+	),
+
+	TP_printk("PC: %lx %s (%d,%d,%d,%d,%d) %s",
+		  __entry->vcpu_pc, __entry->name ?: "UNKN",
+		  __entry->Op0, __entry->Op1, __entry->CRn,
+		  __entry->CRm, __entry->Op2,
+		  __entry->is_write ? "write" : "read")
+);
+
+TRACE_EVENT(kvm_set_guest_debug,
+	TP_PROTO(struct kvm_vcpu *vcpu, __u32 guest_debug),
+	TP_ARGS(vcpu, guest_debug),
+
+	TP_STRUCT__entry(
+		__field(struct kvm_vcpu *, vcpu)
+		__field(__u32, guest_debug)
+	),
+
+	TP_fast_assign(
+		__entry->vcpu = vcpu;
+		__entry->guest_debug = guest_debug;
+	),
+
+	TP_printk("vcpu: %p, flags: 0x%08x", __entry->vcpu, __entry->guest_debug)
+);
+
+#endif /* _TRACE_HANDLE_EXIT_ARM64_KVM_H */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH .
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE trace_handle_exit
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
-- 
2.26.1.301.g55bc3eb7cb9-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
