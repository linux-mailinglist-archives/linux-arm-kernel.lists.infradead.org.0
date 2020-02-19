Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73225164DC4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 19:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMmNWjQqC48tJ49PfRq1nnRReFgDxVr3PXDBAtxfQQg=; b=Ro8viJQPOnXg9R
	tD7NmkX2jX9f79GaGJ3tu4Gr7PnIHCVBoZydPekH2obTIJ3fRYAmuBSeDo2x9SYJfNRwbaHl0vfSX
	Wrz55LmnnbaU07vIt75+Awyt9OztBBAl/i7BhbY9koGgy0y9EvPxGxfhtlRqGyuSAcRBDLv2oG+M3
	/InKtRhGIZme923FtxzRIxOCX4GV8iQBBTMHyIcL+vzn0qN4qbxi8wocUvrq5q89WC8oimx7UTbC2
	8DGbNo93J9sptG19CI/lewsSMefV8PizC5sbxJ/u/wrBJLSyjS37LXuqn7v+aQtcQ6nlKWzp37sEt
	9q1lmvzrlqqkT1J5/rNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4UEv-0004O6-Fq; Wed, 19 Feb 2020 18:38:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4UEn-0004NF-DL
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 18:38:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B807031B;
 Wed, 19 Feb 2020 10:38:18 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6CE273F703;
 Wed, 19 Feb 2020 10:38:16 -0800 (PST)
Subject: Re: [PATCH v8 00/12] add support for Clang's Shadow Call Stack
To: Sami Tolvanen <samitolvanen@google.com>, Marc Zyngier <maz@kernel.org>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200219000817.195049-1-samitolvanen@google.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0386ecad-f3d6-f1dc-90da-7f05b2793839@arm.com>
Date: Wed, 19 Feb 2020 18:38:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_103821_539863_0795C15E 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Jann Horn <jannh@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>,
 Marc Zyngier <maz@kernel.org>, kernel-hardening@lists.openwall.com,
 Laura Abbott <labbott@redhat.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sami,

(CC: +Marc)

On 19/02/2020 00:08, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites.

I took this for a spin on some real hardware. cpu-idle, kexec hibernate etc all work
great... but starting a KVM guest causes the CPU to get stuck in EL2.

With CONFIG_SHADOW_CALL_STACK disabled, this doesn't happen ... so its something about the
feature being enabled.


I'm using clang-9 from debian bullseye/sid. (I tried to build tip of tree ... that doesn't
go so well on arm64)

KVM takes an instruction abort from EL2 to EL2, because some of the code it runs is not
mapped at EL2:

| ffffa00011588308 <__kvm_tlb_flush_local_vmid>:
| ffffa00011588308:       d10103ff        sub     sp, sp, #0x40
| ffffa0001158830c:       f90013f3        str     x19, [sp, #32]
| ffffa00011588310:       a9037bfd        stp     x29, x30, [sp, #48]
| ffffa00011588314:       9100c3fd        add     x29, sp, #0x30
| ffffa00011588318:       97ae18bf        bl      ffffa0001010e614 <__kern_hyp_va>

INSTRUCTION ABORT!

| ffffa0001158831c:       f9400000        ldr     x0, [x0]
| ffffa00011588320:       97ae18bd        bl      ffffa0001010e614 <__kern_hyp_va>
| ffffa00011588324:       aa0003f3        mov     x19, x0
| ffffa00011588328:       97ae18c1        bl      ffffa0001010e62c <has_vhe>


__kern_hyp_va() is static-inline which is patched wherever it appears at boot with the EL2
ASLR values, it converts a kernel linear-map address to its EL2 KVM alias:

| ffffa0001010dc5c <__kern_hyp_va>:
| ffffa0001010dc5c:       92400000        and     x0, x0, #0x1
| ffffa0001010dc60:       93c00400        ror     x0, x0, #1
| ffffa0001010dc64:       91000000        add     x0, x0, #0x0
| ffffa0001010dc68:       91400000        add     x0, x0, #0x0, lsl #12
| ffffa0001010dc6c:       93c0fc00        ror     x0, x0, #63
| ffffa0001010dc70:       d65f03c0        ret


The problem here is where __kern_hyp_va() is. Its outside the __hyp_text section:
| morse@eglon:~/kernel/linux-pigs$ nm -s vmlinux | grep hyp_text
| ffffa0001158b800 T __hyp_text_end
| ffffa000115838a0 T __hyp_text_start


If I disable CONFIG_SHADOW_CALL_STACK in Kconfig, I get:
| ffffa00011527fe0 <__kvm_tlb_flush_local_vmid>:
| ffffa00011527fe0:       d100c3ff        sub     sp, sp, #0x30
| ffffa00011527fe4:       a9027bfd        stp     x29, x30, [sp, #32]
| ffffa00011527fe8:       910083fd        add     x29, sp, #0x20
| ffffa00011527fec:       92400000        and     x0, x0, #0x1
| ffffa00011527ff0:       93c00400        ror     x0, x0, #1
| ffffa00011527ff4:       91000000        add     x0, x0, #0x0
| ffffa00011527ff8:       91400000        add     x0, x0, #0x0, lsl #12
| ffffa00011527ffc:       93c0fc00        ror     x0, x0, #63
| ffffa00011528000:       f9400000        ldr     x0, [x0]
| ffffa00011528004:       910023e1        add     x1, sp, #0x8
| ffffa00011528008:       92400000        and     x0, x0, #0x1
| ffffa0001152800c:       93c00400        ror     x0, x0, #1
| ffffa00011528010:       91000000        add     x0, x0, #0x0
| ffffa00011528014:       91400000        add     x0, x0, #0x0, lsl #12
| ffffa00011528018:       93c0fc00        ror     x0, x0, #63
| ffffa0001152801c:       97ffff78        bl      ffffa00011527dfc <__tlb_switch_>
| ffffa00011528020:       d508871f        tlbi    vmalle1
| ffffa00011528024:       d503201f        nop


This looks like reserving x18 is causing Clang to not-inline the __kern_hyp_va() calls,
losing the vitally important section information. (I can see why the compiler thinks this
is fair)

Is this a known, er, thing, with clang-9?

From eyeballing the disassembly __always_inline on __kern_hyp_va() is enough of a hint to
stop this, ... with this configuration of clang-9. But KVM still doesn't work, so it isn't
the only inlining decision KVM relies on that is changed by SCS.

I suspect repainting all KVM's 'inline' with __always_inline will fix it. (yuck!) I'll try
tomorrow.

I don't think keeping the compiler-flags as they are today for KVM is the right thing to
do, it could lead to x18 getting corrupted with the shared vhe/non-vhe code. Splitting
that code up would lead to duplication.

(hopefully objtool will be able to catch these at build time)


Thanks,

James

> SCS is currently supported only on arm64, where the compiler
> requires the x18 register to be reserved for holding the current
> task's shadow stack pointer.

> Changes in v8:
>  - Added __noscs to __hyp_text instead of filtering SCS flags from
>    the entire arch/arm64/kvm/hyp directory

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
