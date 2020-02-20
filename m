Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070F61663A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okZqs4470FRGxHOsRy9+jlUaTSuf6vsAItx4sDuXAU0=; b=op6w9YI4B8NGbP
	0aozv2EUGnafHIjpFvhF3s/n+dNQ3qWkjVSup/B+d5fwX9iftt84gEUOxsswRRul81hNfpIOrGOtB
	jGVF6e8SozoGaI8aWdPOVBDfQGufGBkDZxcfgvWjL8DZiCH3dPHltTvcqjyBOCwAr7jHjg2mP3P+F
	aV23ib7g6kkZaoUswdB0w/av4XMWYIga9PzT6gZ9tuFHy3E9ookvduAHUvuDtfWkilbFk+67dlHd2
	tY8X4ICZSEEW0zvoP5p3M9KldeBY+VtUFW7/fXw43nRpy7zjyujuPmFApHyUj+Mvz6eW6UAUj4c/2
	Nnqold4JtduNhuC6PSdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pAv-00066h-0i; Thu, 20 Feb 2020 16:59:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pAH-0005mS-O2
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:59:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 48BA4328;
 Thu, 20 Feb 2020 08:59:05 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE1153F68F;
 Thu, 20 Feb 2020 08:59:03 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH 2/3] KVM: arm64: define our own swab32() to avoid a uapi
 static inline
Date: Thu, 20 Feb 2020 16:58:38 +0000
Message-Id: <20200220165839.256881-3-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200220165839.256881-1-james.morse@arm.com>
References: <20200220165839.256881-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_085905_828821_EA450394 
X-CRM114-Status: GOOD (  13.94  )
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

KVM uses swab32() when mediating GIC MMIO accesses if the GICV is badly
aligned, and the host and guest differ in endianness.

arm64 doesn't provide a __arch_swab32(), so __fswab32() is always backed
by the macro implementation that the compiler reduces to a single
instruction. But the static-inline causes problems for KVM if the compiler
chooses not to inline this function, it may not be located in the
__hyp_text where __vgic_v2_perform_cpuif_access() needs it.

Create our own __kvm_swab32() macro that calls ___constant_swab32()
directly. This way we know it will always be inlined.

Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/kvm_hyp.h         | 7 +++++++
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c | 4 ++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/kvm_hyp.h b/arch/arm64/include/asm/kvm_hyp.h
index a3a6a2ba9a63..fe57f60f06a8 100644
--- a/arch/arm64/include/asm/kvm_hyp.h
+++ b/arch/arm64/include/asm/kvm_hyp.h
@@ -47,6 +47,13 @@
 #define read_sysreg_el2(r)	read_sysreg_elx(r, _EL2, _EL1)
 #define write_sysreg_el2(v,r)	write_sysreg_elx(v, r, _EL2, _EL1)
 
+/*
+ * Without an __arch_swab32(), we fall back to ___constant_swab32(), but the
+ * static inline can allow the compiler to out-of-line this. KVM always wants
+ * the macro version as its always inlined.
+ */
+#define __kvm_swab32(x)	___constant_swab32(x)
+
 int __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu);
 
 void __vgic_v3_save_state(struct kvm_vcpu *vcpu);
diff --git a/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c b/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c
index 29ee1feba4eb..4f3a087e36d5 100644
--- a/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c
+++ b/arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c
@@ -69,14 +69,14 @@ int __hyp_text __vgic_v2_perform_cpuif_access(struct kvm_vcpu *vcpu)
 		u32 data = vcpu_get_reg(vcpu, rd);
 		if (__is_be(vcpu)) {
 			/* guest pre-swabbed data, undo this for writel() */
-			data = swab32(data);
+			data = __kvm_swab32(data);
 		}
 		writel_relaxed(data, addr);
 	} else {
 		u32 data = readl_relaxed(addr);
 		if (__is_be(vcpu)) {
 			/* guest expects swabbed data */
-			data = swab32(data);
+			data = __kvm_swab32(data);
 		}
 		vcpu_set_reg(vcpu, rd, data);
 	}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
