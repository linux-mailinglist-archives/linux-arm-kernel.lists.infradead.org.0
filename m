Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E831FF9F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 19:12:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jNZUJus/nIUWM3LmYqpzDUUoLnYcPg/HIaXZ448jenw=; b=f3deIAMt8kr2xj
	st11aohmWb1pZ4QscWBCV6sBCrHJunLkN+vaPw7T30EU6LZ1T2wkFg7+hxnViqCy2O00c8y8rraA3
	mL5R0ESMnnd9ulcOrsC9RZA84F9mWvpuzc83K2+0CswxN5XfSs6hy//+6gCjG6N7dvU7duDUmVSo7
	THjMYe9bP//TYwSf8RLd9txpIIpMv6wAH/kfDyvumVTleIByf4sZF1znLNwmfO0NYCYmdSn9tuQwc
	ksXrXXglbF5GgpcFM05IvjLIBeCKmq4GnVbeb1JSQZLqSS4Ee/b+pDS3oO/RqE2qd8VQ6Awum1G4x
	pq8zFX0PTsqTR4QaaSXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jly5T-0002R4-OR; Thu, 18 Jun 2020 17:12:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jly5I-0002Qb-W3
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 17:12:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CB5931B;
 Thu, 18 Jun 2020 10:12:15 -0700 (PDT)
Received: from monolith.arm.com (unknown [10.37.8.10])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DE59A3F6CF;
 Thu, 18 Jun 2020 10:12:13 -0700 (PDT)
From: Alexandru Elisei <alexandru.elisei@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH] arm64: kvm: Annotate hyp NMI-related functions as
 __always_inline
Date: Thu, 18 Jun 2020 18:12:54 +0100
Message-Id: <20200618171254.1596055-1-alexandru.elisei@arm.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_101217_070334_F32D8907 
X-CRM114-Status: GOOD (  12.77  )
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
Cc: suzuki.poulose@arm.com, maz@kernel.org, james.morse@arm.com,
 catalin.marinas@arm.com, will@kernel.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The "inline" keyword is a hint for the compiler to inline a function.  The
functions system_uses_irq_prio_masking() and gic_write_pmr() are used by
the code running at EL2 on a non-VHE system, so mark them as
__always_inline to make sure they'll always be part of the .hyp.text
section.

This fixes the following splat when trying to run a VM:

[   47.625273] Kernel panic - not syncing: HYP panic:
[   47.625273] PS:a00003c9 PC:0000ca0b42049fc4 ESR:86000006
[   47.625273] FAR:0000ca0b42049fc4 HPFAR:0000000010001000 PAR:0000000000000000
[   47.625273] VCPU:0000000000000000
[   47.647261] CPU: 1 PID: 217 Comm: kvm-vcpu-0 Not tainted 5.8.0-rc1-ARCH+ #61
[   47.654508] Hardware name: Globalscale Marvell ESPRESSOBin Board (DT)
[   47.661139] Call trace:
[   47.663659]  dump_backtrace+0x0/0x1cc
[   47.667413]  show_stack+0x18/0x24
[   47.670822]  dump_stack+0xb8/0x108
[   47.674312]  panic+0x124/0x2f4
[   47.677446]  panic+0x0/0x2f4
[   47.680407] SMP: stopping secondary CPUs
[   47.684439] Kernel Offset: disabled
[   47.688018] CPU features: 0x240402,20002008
[   47.692318] Memory Limit: none
[   47.695465] ---[ end Kernel panic - not syncing: HYP panic:
[   47.695465] PS:a00003c9 PC:0000ca0b42049fc4 ESR:86000006
[   47.695465] FAR:0000ca0b42049fc4 HPFAR:0000000010001000 PAR:0000000000000000
[   47.695465] VCPU:0000000000000000 ]---

The instruction abort was caused by the code running at EL2 trying to fetch
an instruction which wasn't mapped in the EL2 translation tables. Using
objdump showed the two functions as separate symbols in the .text section.

Fixes: 85738e05dc38 ("arm64: kvm: Unmask PMR before entering guest")
Signed-off-by: Alexandru Elisei <alexandru.elisei@arm.com>
---
 arch/arm64/include/asm/arch_gicv3.h | 2 +-
 arch/arm64/include/asm/cpufeature.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/arch_gicv3.h b/arch/arm64/include/asm/arch_gicv3.h
index a358e97572c1..6647ae4f0231 100644
--- a/arch/arm64/include/asm/arch_gicv3.h
+++ b/arch/arm64/include/asm/arch_gicv3.h
@@ -109,7 +109,7 @@ static inline u32 gic_read_pmr(void)
 	return read_sysreg_s(SYS_ICC_PMR_EL1);
 }
 
-static inline void gic_write_pmr(u32 val)
+static __always_inline void gic_write_pmr(u32 val)
 {
 	write_sysreg_s(val, SYS_ICC_PMR_EL1);
 }
diff --git a/arch/arm64/include/asm/cpufeature.h b/arch/arm64/include/asm/cpufeature.h
index 5d1f4ae42799..f7c3d1ff091d 100644
--- a/arch/arm64/include/asm/cpufeature.h
+++ b/arch/arm64/include/asm/cpufeature.h
@@ -675,7 +675,7 @@ static inline bool system_supports_generic_auth(void)
 		cpus_have_const_cap(ARM64_HAS_GENERIC_AUTH);
 }
 
-static inline bool system_uses_irq_prio_masking(void)
+static __always_inline bool system_uses_irq_prio_masking(void)
 {
 	return IS_ENABLED(CONFIG_ARM64_PSEUDO_NMI) &&
 	       cpus_have_const_cap(ARM64_HAS_IRQ_PRIO_MASKING);
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
