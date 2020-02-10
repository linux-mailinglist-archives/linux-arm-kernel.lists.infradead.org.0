Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C5BB157D33
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 15:14:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYZHr1ErXSAtvc/VNC/ZIrDttKRVDN0fMP3kJH5FLGs=; b=fME22c3vMlXUfh
	rQ+RZCs2cNmzeuZ++y9hCWQnqtC1SvIBwgbfpGAREeuRQIOq2ARAh2UAt++mBhQaedjhYXHH0FQqZ
	L33oD7HaWRxfJAn3s9qe/ydk3A2V8kOSAuLq+qb75GFAFvZ/0Lph1MnxNOAI5fP8XIFelQGjzrzEL
	k5B/6KxW7f7iDkbrXzm7/EL1+qCtzLxCxDKGi8EGeeHbE5qKJJ/+R5A8Xl1NydiFmO3/pa7EDjQWr
	Z0SOzeHQC57+Ig+e6ulOCYPATlYvNC/R/zzxybPMrgPa6piw6twI328mSyJGMAl6gku//WYcsu/yK
	bbNAaqYkQTVzps6Vtj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j19pM-0003j3-N8; Mon, 10 Feb 2020 14:14:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j19oa-00035W-Gy
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 14:13:34 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 119FB20838;
 Mon, 10 Feb 2020 14:13:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581344012;
 bh=v3QpBoPYdqFI3C7O37Q+C9zACBcp8QcfF/cEogiHvbQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=hCeiOj86eSBMPV56U1YGmqpyGpF7//Gjs1/2deHPqk3tOQCE1teGR2Q0u+H5NEkbQ
 zjwP5jE8jHEhNDsPob96k47eByiBF23oyS1Oup/pscfV/IEPWkHrrG+XOUj4rgbolj
 XD0tmPU8g1atjLEIeQMbf76LgrzWQ8wsN7Buu3HY=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j19oY-0048kH-Ad; Mon, 10 Feb 2020 14:13:30 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [RFC PATCH 3/5] arm: Remove 32bit KVM host support
Date: Mon, 10 Feb 2020 14:13:22 +0000
Message-Id: <20200210141324.21090-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200210141324.21090-1-maz@kernel.org>
References: <20200210141324.21090-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com, pbonzini@redhat.com,
 Christoffer.Dall@arm.com, will@kernel.org, qperret@google.com,
 linux@arm.linux.org.uk, vladimir.murzin@arm.com, anders.berg@lsi.com,
 arnd@arndb.de
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_061332_601822_D5F3A32E 
X-CRM114-Status: GOOD (  16.48  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anders Berg <anders.berg@lsi.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 Russell King <linux@arm.linux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Quentin Perret <qperret@google.com>,
 Christoffer Dall <Christoffer.Dall@arm.com>, James Morse <james.morse@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

That's it. Remove all references to KVM itself, and document
that although it is no more, the ABI between SVC and HYP still
exists.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 Documentation/virt/kvm/arm/hyp-abi.txt |    5 +
 arch/arm/include/asm/kvm_arm.h         |  239 ----
 arch/arm/include/asm/kvm_asm.h         |   77 --
 arch/arm/include/asm/kvm_coproc.h      |   36 -
 arch/arm/include/asm/kvm_emulate.h     |  372 ------
 arch/arm/include/asm/kvm_host.h        |  459 --------
 arch/arm/include/asm/kvm_hyp.h         |  127 ---
 arch/arm/include/asm/kvm_mmu.h         |  435 -------
 arch/arm/include/asm/kvm_ras.h         |   14 -
 arch/arm/include/asm/stage2_pgtable.h  |   75 --
 arch/arm/include/asm/virt.h            |    5 -
 arch/arm/include/uapi/asm/kvm.h        |  314 -----
 arch/arm/kernel/asm-offsets.c          |   11 -
 arch/arm/kvm/Kconfig                   |   59 -
 arch/arm/kvm/Makefile                  |   43 -
 arch/arm/kvm/coproc.c                  | 1455 ------------------------
 arch/arm/kvm/coproc.h                  |  130 ---
 arch/arm/kvm/coproc_a15.c              |   39 -
 arch/arm/kvm/coproc_a7.c               |   42 -
 arch/arm/kvm/emulate.c                 |  166 ---
 arch/arm/kvm/guest.c                   |  387 -------
 arch/arm/kvm/handle_exit.c             |  175 ---
 arch/arm/kvm/hyp/Makefile              |   34 -
 arch/arm/kvm/hyp/banked-sr.c           |   70 --
 arch/arm/kvm/hyp/cp15-sr.c             |   72 --
 arch/arm/kvm/hyp/entry.S               |  121 --
 arch/arm/kvm/hyp/hyp-entry.S           |  295 -----
 arch/arm/kvm/hyp/s2-setup.c            |   22 -
 arch/arm/kvm/hyp/switch.c              |  242 ----
 arch/arm/kvm/hyp/tlb.c                 |   68 --
 arch/arm/kvm/hyp/vfp.S                 |   57 -
 arch/arm/kvm/init.S                    |  157 ---
 arch/arm/kvm/interrupts.S              |   36 -
 arch/arm/kvm/irq.h                     |   16 -
 arch/arm/kvm/reset.c                   |   86 --
 arch/arm/kvm/trace.h                   |   86 --
 arch/arm/kvm/vgic-v3-coproc.c          |   27 -
 37 files changed, 5 insertions(+), 6049 deletions(-)
 delete mode 100644 arch/arm/include/asm/kvm_arm.h
 delete mode 100644 arch/arm/include/asm/kvm_asm.h
 delete mode 100644 arch/arm/include/asm/kvm_coproc.h
 delete mode 100644 arch/arm/include/asm/kvm_emulate.h
 delete mode 100644 arch/arm/include/asm/kvm_host.h
 delete mode 100644 arch/arm/include/asm/kvm_hyp.h
 delete mode 100644 arch/arm/include/asm/kvm_mmu.h
 delete mode 100644 arch/arm/include/asm/kvm_ras.h
 delete mode 100644 arch/arm/include/asm/stage2_pgtable.h
 delete mode 100644 arch/arm/include/uapi/asm/kvm.h
 delete mode 100644 arch/arm/kvm/Kconfig
 delete mode 100644 arch/arm/kvm/Makefile
 delete mode 100644 arch/arm/kvm/coproc.c
 delete mode 100644 arch/arm/kvm/coproc.h
 delete mode 100644 arch/arm/kvm/coproc_a15.c
 delete mode 100644 arch/arm/kvm/coproc_a7.c
 delete mode 100644 arch/arm/kvm/emulate.c
 delete mode 100644 arch/arm/kvm/guest.c
 delete mode 100644 arch/arm/kvm/handle_exit.c
 delete mode 100644 arch/arm/kvm/hyp/Makefile
 delete mode 100644 arch/arm/kvm/hyp/banked-sr.c
 delete mode 100644 arch/arm/kvm/hyp/cp15-sr.c
 delete mode 100644 arch/arm/kvm/hyp/entry.S
 delete mode 100644 arch/arm/kvm/hyp/hyp-entry.S
 delete mode 100644 arch/arm/kvm/hyp/s2-setup.c
 delete mode 100644 arch/arm/kvm/hyp/switch.c
 delete mode 100644 arch/arm/kvm/hyp/tlb.c
 delete mode 100644 arch/arm/kvm/hyp/vfp.S
 delete mode 100644 arch/arm/kvm/init.S
 delete mode 100644 arch/arm/kvm/interrupts.S
 delete mode 100644 arch/arm/kvm/irq.h
 delete mode 100644 arch/arm/kvm/reset.c
 delete mode 100644 arch/arm/kvm/trace.h
 delete mode 100644 arch/arm/kvm/vgic-v3-coproc.c

diff --git a/Documentation/virt/kvm/arm/hyp-abi.txt b/Documentation/virt/kvm/arm/hyp-abi.txt
index a20a0bee268d..26a3be475000 100644
--- a/Documentation/virt/kvm/arm/hyp-abi.txt
+++ b/Documentation/virt/kvm/arm/hyp-abi.txt
@@ -7,6 +7,11 @@ hypervisor when running as a guest (under Xen, KVM or any other
 hypervisor), or any hypervisor-specific interaction when the kernel is
 used as a host.
 
+Note: KVM/arm has been removed from the kernel. The API described
+here is still valid though, as it allows the kernel to kexec when
+booted at HYP. It can also be used by a hypervisor other than KVM
+if necessary.
+
 On arm and arm64 (without VHE), the kernel doesn't run in hypervisor
 mode, but still needs to interact with it, allowing a built-in
 hypervisor to be either installed or torn down.
diff --git a/arch/arm/include/asm/kvm_arm.h b/arch/arm/include/asm/kvm_arm.h
deleted file mode 100644
index 9c04bd810d07..000000000000
diff --git a/arch/arm/include/asm/kvm_asm.h b/arch/arm/include/asm/kvm_asm.h
deleted file mode 100644
index f615830f9f57..000000000000
diff --git a/arch/arm/include/asm/kvm_coproc.h b/arch/arm/include/asm/kvm_coproc.h
deleted file mode 100644
index a23826117dd6..000000000000
diff --git a/arch/arm/include/asm/kvm_emulate.h b/arch/arm/include/asm/kvm_emulate.h
deleted file mode 100644
index 3944305e81df..000000000000
diff --git a/arch/arm/include/asm/kvm_host.h b/arch/arm/include/asm/kvm_host.h
deleted file mode 100644
index c3314b286a61..000000000000
diff --git a/arch/arm/include/asm/kvm_hyp.h b/arch/arm/include/asm/kvm_hyp.h
deleted file mode 100644
index 3c1b55ecc578..000000000000
diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
deleted file mode 100644
index 0d84d50bf9ba..000000000000
diff --git a/arch/arm/include/asm/kvm_ras.h b/arch/arm/include/asm/kvm_ras.h
deleted file mode 100644
index e9577292dfe4..000000000000
diff --git a/arch/arm/include/asm/stage2_pgtable.h b/arch/arm/include/asm/stage2_pgtable.h
deleted file mode 100644
index aaceec7855ec..000000000000
diff --git a/arch/arm/include/asm/virt.h b/arch/arm/include/asm/virt.h
index 17c26ccd126d..6cd4e33418e9 100644
--- a/arch/arm/include/asm/virt.h
+++ b/arch/arm/include/asm/virt.h
@@ -67,11 +67,6 @@ static inline bool is_kernel_in_hyp_mode(void)
 	return false;
 }
 
-static inline bool has_vhe(void)
-{
-	return false;
-}
-
 /* The section containing the hypervisor idmap text */
 extern char __hyp_idmap_text_start[];
 extern char __hyp_idmap_text_end[];
diff --git a/arch/arm/include/uapi/asm/kvm.h b/arch/arm/include/uapi/asm/kvm.h
deleted file mode 100644
index 03cd7c19a683..000000000000
diff --git a/arch/arm/kernel/asm-offsets.c b/arch/arm/kernel/asm-offsets.c
index c773b829ee8e..c036a4a2f8e2 100644
--- a/arch/arm/kernel/asm-offsets.c
+++ b/arch/arm/kernel/asm-offsets.c
@@ -11,9 +11,6 @@
 #include <linux/sched.h>
 #include <linux/mm.h>
 #include <linux/dma-mapping.h>
-#ifdef CONFIG_KVM_ARM_HOST
-#include <linux/kvm_host.h>
-#endif
 #include <asm/cacheflush.h>
 #include <asm/glue-df.h>
 #include <asm/glue-pf.h>
@@ -167,14 +164,6 @@ int main(void)
   DEFINE(CACHE_WRITEBACK_ORDER, __CACHE_WRITEBACK_ORDER);
   DEFINE(CACHE_WRITEBACK_GRANULE, __CACHE_WRITEBACK_GRANULE);
   BLANK();
-#ifdef CONFIG_KVM_ARM_HOST
-  DEFINE(VCPU_GUEST_CTXT,	offsetof(struct kvm_vcpu, arch.ctxt));
-  DEFINE(VCPU_HOST_CTXT,	offsetof(struct kvm_vcpu, arch.host_cpu_context));
-  DEFINE(CPU_CTXT_VFP,		offsetof(struct kvm_cpu_context, vfp));
-  DEFINE(CPU_CTXT_GP_REGS,	offsetof(struct kvm_cpu_context, gp_regs));
-  DEFINE(GP_REGS_USR,		offsetof(struct kvm_regs, usr_regs));
-#endif
-  BLANK();
 #ifdef CONFIG_VDSO
   DEFINE(VDSO_DATA_SIZE,	sizeof(union vdso_data_store));
 #endif
diff --git a/arch/arm/kvm/Kconfig b/arch/arm/kvm/Kconfig
deleted file mode 100644
index f591026347a5..000000000000
diff --git a/arch/arm/kvm/Makefile b/arch/arm/kvm/Makefile
deleted file mode 100644
index e442d82821df..000000000000
diff --git a/arch/arm/kvm/coproc.c b/arch/arm/kvm/coproc.c
deleted file mode 100644
index 07745ee022a1..000000000000
diff --git a/arch/arm/kvm/coproc.h b/arch/arm/kvm/coproc.h
deleted file mode 100644
index 637065b13012..000000000000
diff --git a/arch/arm/kvm/coproc_a15.c b/arch/arm/kvm/coproc_a15.c
deleted file mode 100644
index 36bf15421ae8..000000000000
diff --git a/arch/arm/kvm/coproc_a7.c b/arch/arm/kvm/coproc_a7.c
deleted file mode 100644
index 40f643e1e05c..000000000000
diff --git a/arch/arm/kvm/emulate.c b/arch/arm/kvm/emulate.c
deleted file mode 100644
index 29bb852140c5..000000000000
diff --git a/arch/arm/kvm/guest.c b/arch/arm/kvm/guest.c
deleted file mode 100644
index 9f7ae0d8690f..000000000000
diff --git a/arch/arm/kvm/handle_exit.c b/arch/arm/kvm/handle_exit.c
deleted file mode 100644
index e58a89d2f13f..000000000000
diff --git a/arch/arm/kvm/hyp/Makefile b/arch/arm/kvm/hyp/Makefile
deleted file mode 100644
index ba88b1eca93c..000000000000
diff --git a/arch/arm/kvm/hyp/banked-sr.c b/arch/arm/kvm/hyp/banked-sr.c
deleted file mode 100644
index c4632ed9e819..000000000000
diff --git a/arch/arm/kvm/hyp/cp15-sr.c b/arch/arm/kvm/hyp/cp15-sr.c
deleted file mode 100644
index e6923306f698..000000000000
diff --git a/arch/arm/kvm/hyp/entry.S b/arch/arm/kvm/hyp/entry.S
deleted file mode 100644
index 4bd1f6a74180..000000000000
diff --git a/arch/arm/kvm/hyp/hyp-entry.S b/arch/arm/kvm/hyp/hyp-entry.S
deleted file mode 100644
index fe3d7811a908..000000000000
diff --git a/arch/arm/kvm/hyp/s2-setup.c b/arch/arm/kvm/hyp/s2-setup.c
deleted file mode 100644
index 5dfbea5adf65..000000000000
diff --git a/arch/arm/kvm/hyp/switch.c b/arch/arm/kvm/hyp/switch.c
deleted file mode 100644
index 1efeef3fd0ee..000000000000
diff --git a/arch/arm/kvm/hyp/tlb.c b/arch/arm/kvm/hyp/tlb.c
deleted file mode 100644
index 848f27bbad9d..000000000000
diff --git a/arch/arm/kvm/hyp/vfp.S b/arch/arm/kvm/hyp/vfp.S
deleted file mode 100644
index 675a52348d8d..000000000000
diff --git a/arch/arm/kvm/init.S b/arch/arm/kvm/init.S
deleted file mode 100644
index 33e34b6d24b2..000000000000
diff --git a/arch/arm/kvm/interrupts.S b/arch/arm/kvm/interrupts.S
deleted file mode 100644
index 064f4f118ca7..000000000000
diff --git a/arch/arm/kvm/irq.h b/arch/arm/kvm/irq.h
deleted file mode 100644
index 0d257de42c10..000000000000
diff --git a/arch/arm/kvm/reset.c b/arch/arm/kvm/reset.c
deleted file mode 100644
index eb4174f6ebbd..000000000000
diff --git a/arch/arm/kvm/trace.h b/arch/arm/kvm/trace.h
deleted file mode 100644
index 69a9d62a0ac6..000000000000
diff --git a/arch/arm/kvm/vgic-v3-coproc.c b/arch/arm/kvm/vgic-v3-coproc.c
deleted file mode 100644
index ed3b2e4759ce..000000000000
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
