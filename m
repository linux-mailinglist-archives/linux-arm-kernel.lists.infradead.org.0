Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D06F1597DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 19:13:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sw+MSwPsiuaPNr0G6eZddNTIKRxEVXrhYKimmucvT/4=; b=X8qBJbhBPq152U
	/rg7w4dGT0Z4Gg3xx4p6A1fDmwFzNpBZ53yTE/ggGoJsNTYAFFgSg6PMRakEnfg6tycOI9jiaN3B1
	tJTCI5gThu5M1AaG6OE5HTJ8mrFyhgkH8Q2ktm4qJUFBYtrzN2a3ygYqTlpY3TWuY4idpGnxsM9eV
	txQ5vNzNUQVu3icxW+SmdVxXnQxTNvwUtDVXdNmjRESvYUOZVxuyuTkB0M6JUoRhoPPOtyAMtxTIh
	9Ht+2rM3Yi163c5qRojepqtz2Pbb2uNvzJsdMQkP0MA2vvLPGbcp13phf6802KV8i7iTc2ptL8txQ
	XyYugnKr4L/dD0qQsEyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1a1s-0007oY-Ta; Tue, 11 Feb 2020 18:13:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1ZiV-0002ul-FA
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 17:53:02 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D83FE20578;
 Tue, 11 Feb 2020 17:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581443579;
 bh=uSp/qawlZOx/68y9N8aqpzHmqTR1tge0KqerXZ4jmX0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1BBe8VosogcMLhIH1Cxow3e5tH7Wwclup3MQxlYhoLyks6Vq13UX5mWOjZRxZm6z5
 coSjZmrZOD2IAtKdQTCTgeha/vBa5ose381LtQ1g+87ETGSrL5mZHc0a/jEt/M607O
 53oOuEhj3X7V3/1Jl7MerCrqY3ORuFVMAlPQKoco=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1j1Zfp-004O7k-OW; Tue, 11 Feb 2020 17:50:13 +0000
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 35/94] KVM: arm64: Check advertised Stage-2 page size
 capability
Date: Tue, 11 Feb 2020 17:48:39 +0000
Message-Id: <20200211174938.27809-36-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200211174938.27809-1-maz@kernel.org>
References: <20200211174938.27809-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_095259_661143_D065EE24 
X-CRM114-Status: GOOD (  16.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With ARMv8.5-GTG, the hardware (or more likely a hypervisor) can
advertise the supported Stage-2 page sizes.

Let's check this at boot time.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm/include/asm/kvm_mmu.h    |  2 +-
 arch/arm64/include/asm/kvm_host.h |  2 +-
 arch/arm64/kernel/cpufeature.c    |  8 +++++++
 arch/arm64/kvm/reset.c            | 39 ++++++++++++++++++++++++++++---
 virt/kvm/arm/arm.c                |  4 +---
 5 files changed, 47 insertions(+), 8 deletions(-)

diff --git a/arch/arm/include/asm/kvm_mmu.h b/arch/arm/include/asm/kvm_mmu.h
index 0d84d50bf9ba..053a5f434b3e 100644
--- a/arch/arm/include/asm/kvm_mmu.h
+++ b/arch/arm/include/asm/kvm_mmu.h
@@ -418,7 +418,7 @@ static inline int hyp_map_aux_data(void)
 
 #define kvm_phys_to_vttbr(addr)		(addr)
 
-static inline void kvm_set_ipa_limit(void) {}
+static inline int kvm_set_ipa_limit(void) { return 0; }
 
 static __always_inline u64 kvm_get_vttbr(struct kvm *kvm)
 {
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 1bda11cc0f39..87ccceb9f5d8 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -734,7 +734,7 @@ static inline int kvm_arm_have_ssbd(void)
 void kvm_vcpu_load_sysregs(struct kvm_vcpu *vcpu);
 void kvm_vcpu_put_sysregs(struct kvm_vcpu *vcpu);
 
-void kvm_set_ipa_limit(void);
+int kvm_set_ipa_limit(void);
 
 #define __KVM_HAVE_ARCH_VM_ALLOC
 struct kvm *kvm_arch_alloc_vm(void);
diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index f0e58450eb16..157700590aa8 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -205,6 +205,14 @@ static const struct arm64_ftr_bits ftr_id_aa64zfr0[] = {
 };
 
 static const struct arm64_ftr_bits ftr_id_aa64mmfr0[] = {
+	/*
+	 * Page size not being supported at Stage-2 are not fatal. You
+	 * just give up KVM if PAGE_SIZE isn't supported there. Go fix
+	 * your favourite nesting hypervisor.
+	 */
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN4_2_SHIFT, 4, 1),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN64_2_SHIFT, 4, 1),
+	ARM64_FTR_BITS(FTR_HIDDEN, FTR_NONSTRICT, FTR_EXACT, ID_AA64MMFR0_TGRAN16_2_SHIFT, 4, 1),
 	/*
 	 * We already refuse to boot CPUs that don't support our configured
 	 * page size, so we can only detect mismatches for a page size other
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 5c50df274239..038765d1e60d 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -348,11 +348,42 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
 	return ret;
 }
 
-void kvm_set_ipa_limit(void)
+int kvm_set_ipa_limit(void)
 {
-	unsigned int ipa_max, pa_max, va_max, parange;
+	unsigned int ipa_max, pa_max, va_max, parange, tgran_2;
+	u64 mmfr0 = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1);
 
-	parange = read_sanitised_ftr_reg(SYS_ID_AA64MMFR0_EL1) & 0x7;
+	/*
+	 * Check with ARMv8.5-GTG that our PAGE_SIZE is supported at
+	 * Stage-2. If not, things will stop very quickly.
+	 */
+	switch (PAGE_SIZE) {
+	default:
+	case SZ_4K:
+		tgran_2 = ID_AA64MMFR0_TGRAN4_2_SHIFT;
+		break;
+	case SZ_16K:
+		tgran_2 = ID_AA64MMFR0_TGRAN16_2_SHIFT;
+		break;
+	case SZ_64K:
+		tgran_2 = ID_AA64MMFR0_TGRAN64_2_SHIFT;
+		break;
+	}
+
+	switch (FIELD_GET(0xFUL << tgran_2, mmfr0)) {
+	default:
+	case 1:
+		kvm_err("PAGE_SIZE not supported at Stage-2, giving up\n");
+		return -EINVAL;
+	case 0:
+		kvm_debug("PAGE_SIZE supported at Stage-2 (default)\n");
+		break;
+	case 2:
+		kvm_debug("PAGE_SIZE supported at Stage-2 (advertised)\n");
+		break;
+	}
+
+	parange = mmfr0 & 0x7;
 	pa_max = id_aa64mmfr0_parange_to_phys_shift(parange);
 
 	/* Clamp the IPA limit to the PA size supported by the kernel */
@@ -386,6 +417,8 @@ void kvm_set_ipa_limit(void)
 	     "KVM IPA limit (%d bit) is smaller than default size\n", ipa_max);
 	kvm_ipa_limit = ipa_max;
 	kvm_info("IPA Size Limit: %dbits\n", kvm_ipa_limit);
+
+	return 0;
 }
 
 /*
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index d65a0faa46d8..d1359b2079df 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -1421,9 +1421,7 @@ static inline void hyp_cpu_pm_exit(void)
 
 static int init_common_resources(void)
 {
-	kvm_set_ipa_limit();
-
-	return 0;
+	return kvm_set_ipa_limit();
 }
 
 static int init_subsystems(void)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
