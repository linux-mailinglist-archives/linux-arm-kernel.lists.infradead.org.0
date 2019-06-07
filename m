Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8D038907
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 13:29:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=s1plfEVg+aaD4vSAyo1+glUsi8ONYs/d98/FU44jNSM=; b=GMQHf6ooBMudJyv4AXXi8P+9FN
	EjbtXmth29dRST0b/b2vV/ne4zCIIiGBgkVVrBP9jxueMQc3qhnJcP2lkH9+p0ZZqNwNPdmXDuEmR
	J81PSHvW0Jc5QePPvuzO68XnngBHk0FljY/psv5VJV4eQnL+5sqJDMy0aj78egtiFoiHj1NJDHQWl
	0qJj+axmclBh3oO17LVwNi2yV4gL+Nt+CjXhRDJeMm8PX8AY5rLdddOKOwGIZ9hOny5IgnIAxxjGu
	gDDK0rh7L1Te7GC6TWrj7wOvogDt2db638+ExTVG+QcM/Mqad2xs7xUJbrF+ZqulkuclJXS0h34fS
	35JtwZKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZD3K-0000oE-2Y; Fri, 07 Jun 2019 11:28:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZD1q-0007ni-UV
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 11:27:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 88D8E707;
 Fri,  7 Jun 2019 04:27:26 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AD1BB3F246;
 Fri,  7 Jun 2019 04:29:05 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v4 8/8] arm64: Add SVE support
Date: Fri,  7 Jun 2019 12:26:29 +0100
Message-Id: <1559906789-20936-9-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
References: <1559906789-20936-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_042727_094118_A99471E8 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables the Scalable Vector Extension for the guest when
the host supports it.

This requires use of the new KVM_ARM_VCPU_FINALIZE ioctl before the
vcpu is runnable, so a new hook kvm_cpu__configure_features() is
added to provide an appropriate place to do this work.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>

---

Changes since v3:

 * Drop command-line options and simply default SVE to on where
   supported.
---
 arm/aarch32/include/kvm/kvm-cpu-arch.h |  4 ++++
 arm/aarch64/include/kvm/kvm-cpu-arch.h |  1 +
 arm/aarch64/kvm-cpu.c                  | 18 ++++++++++++++++++
 arm/kvm-cpu.c                          |  3 +++
 4 files changed, 26 insertions(+)

diff --git a/arm/aarch32/include/kvm/kvm-cpu-arch.h b/arm/aarch32/include/kvm/kvm-cpu-arch.h
index 01983f0..780e0e2 100644
--- a/arm/aarch32/include/kvm/kvm-cpu-arch.h
+++ b/arm/aarch32/include/kvm/kvm-cpu-arch.h
@@ -15,5 +15,9 @@
 
 static inline void kvm_cpu__select_features(struct kvm *kvm,
 					    struct kvm_vcpu_init *init) { }
+static inline int kvm_cpu__configure_features(struct kvm_cpu *vcpu)
+{
+	return 0;
+}
 
 #endif /* KVM__KVM_CPU_ARCH_H */
diff --git a/arm/aarch64/include/kvm/kvm-cpu-arch.h b/arm/aarch64/include/kvm/kvm-cpu-arch.h
index e6875fc..8dfb82e 100644
--- a/arm/aarch64/include/kvm/kvm-cpu-arch.h
+++ b/arm/aarch64/include/kvm/kvm-cpu-arch.h
@@ -18,5 +18,6 @@
 #define ARM_CPU_CTRL_SCTLR_EL1	0
 
 void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init);
+int kvm_cpu__configure_features(struct kvm_cpu *vcpu);
 
 #endif /* KVM__KVM_CPU_ARCH_H */
diff --git a/arm/aarch64/kvm-cpu.c b/arm/aarch64/kvm-cpu.c
index 8c29a21..9f3e858 100644
--- a/arm/aarch64/kvm-cpu.c
+++ b/arm/aarch64/kvm-cpu.c
@@ -136,6 +136,24 @@ void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init)
 		init->features[0] |= 1UL << KVM_ARM_VCPU_PTRAUTH_ADDRESS;
 		init->features[0] |= 1UL << KVM_ARM_VCPU_PTRAUTH_GENERIC;
 	}
+
+	/* Enable SVE if available */
+	if (kvm__supports_extension(kvm, KVM_CAP_ARM_SVE))
+		init->features[0] |= 1UL << KVM_ARM_VCPU_SVE;
+}
+
+int kvm_cpu__configure_features(struct kvm_cpu *vcpu)
+{
+	if (kvm__supports_extension(vcpu->kvm, KVM_CAP_ARM_SVE)) {
+		int feature = KVM_ARM_VCPU_SVE;
+
+		if (ioctl(vcpu->vcpu_fd, KVM_ARM_VCPU_FINALIZE, &feature)) {
+			pr_err("KVM_ARM_VCPU_FINALIZE: %s", strerror(errno));
+			return -1;
+		}
+	}
+
+	return 0;
 }
 
 void kvm_cpu__reset_vcpu(struct kvm_cpu *vcpu)
diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
index 1652f6f..554414f 100644
--- a/arm/kvm-cpu.c
+++ b/arm/kvm-cpu.c
@@ -124,6 +124,9 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
 	vcpu->cpu_compatible	= target->compatible;
 	vcpu->is_running	= true;
 
+	if (kvm_cpu__configure_features(vcpu))
+		die("Unable to configure requested vcpu features");
+
 	return vcpu;
 }
 
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
