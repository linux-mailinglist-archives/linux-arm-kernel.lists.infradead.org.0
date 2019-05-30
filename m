Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DECE12FF28
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:15:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UD+lvn8QK2ELjBM3H+Fz5A0+eeZRckLgJG19kwoPvcY=; b=DJYtjwTLM728bjrfkc6/am+Sbn
	nsI+BBGfQNPExx0d17qFxM0TtKDriQoDnIxdxgmPzUOppQ79ofEOIv/l+be1blXZjzVNkav2mJH5L
	QT7HKzUmVr6PUxqZH5i4nFXGE3U8Uwp63a2iUFxlhTBo5KtqEqU8jjdMvVGF/IvK/806uNP5AJk9Y
	2PHUsUnh+3oziJw12bBO0APa1MPylYDe5JAr879mk/48iM0iuK3QbdDwPyAI9sShwWHiK7eC1CeSX
	9ERrxnTAtZ+5boPBFQ7FslONprSlKKxj0/IaG6mTHePqhRICRKyFSCCTa03ZOvM49fVcfJBII4eUT
	DcI5dGug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMlt-0003Bo-JQ; Thu, 30 May 2019 15:15:13 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMkw-0002FV-TS
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:14:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BED0D15AD;
 Thu, 30 May 2019 08:14:14 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 1F45E3F59C;
 Thu, 30 May 2019 08:14:12 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 6/9] arm/arm64: Factor out ptrauth vcpu feature
 setup
Date: Thu, 30 May 2019 16:13:11 +0100
Message-Id: <1559229194-3036-7-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081415_202213_548648C2 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

In the interest of readability, factor out the vcpu feature setup
for ptrauth into a separate function.

Also, because aarch32 doesn't have this feature or the related
command line options anyway, move the actual code into aarch64/.

Since ARM_VCPU_PTRAUTH_FEATURE is only there to make the ptrauth
feature setup code compile on arm, it is no longer needed: inline
and remove it.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arm/aarch32/include/kvm/kvm-cpu-arch.h |  3 ++-
 arm/aarch64/include/kvm/kvm-cpu-arch.h |  3 +--
 arm/aarch64/kvm-cpu.c                  | 22 ++++++++++++++++++++++
 arm/kvm-cpu.c                          | 12 +-----------
 4 files changed, 26 insertions(+), 14 deletions(-)

diff --git a/arm/aarch32/include/kvm/kvm-cpu-arch.h b/arm/aarch32/include/kvm/kvm-cpu-arch.h
index 3ec6f03..01983f0 100644
--- a/arm/aarch32/include/kvm/kvm-cpu-arch.h
+++ b/arm/aarch32/include/kvm/kvm-cpu-arch.h
@@ -13,6 +13,7 @@
 #define ARM_CPU_ID		0, 0, 0
 #define ARM_CPU_ID_MPIDR	5
 
-#define ARM_VCPU_PTRAUTH_FEATURE	0
+static inline void kvm_cpu__select_features(struct kvm *kvm,
+					    struct kvm_vcpu_init *init) { }
 
 #endif /* KVM__KVM_CPU_ARCH_H */
diff --git a/arm/aarch64/include/kvm/kvm-cpu-arch.h b/arm/aarch64/include/kvm/kvm-cpu-arch.h
index 9fa99fb..e6875fc 100644
--- a/arm/aarch64/include/kvm/kvm-cpu-arch.h
+++ b/arm/aarch64/include/kvm/kvm-cpu-arch.h
@@ -17,7 +17,6 @@
 #define ARM_CPU_CTRL		3, 0, 1, 0
 #define ARM_CPU_CTRL_SCTLR_EL1	0
 
-#define ARM_VCPU_PTRAUTH_FEATURE	((1UL << KVM_ARM_VCPU_PTRAUTH_ADDRESS) \
-					| (1UL << KVM_ARM_VCPU_PTRAUTH_GENERIC))
+void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init);
 
 #endif /* KVM__KVM_CPU_ARCH_H */
diff --git a/arm/aarch64/kvm-cpu.c b/arm/aarch64/kvm-cpu.c
index 0aaefaf..d3c32e0 100644
--- a/arm/aarch64/kvm-cpu.c
+++ b/arm/aarch64/kvm-cpu.c
@@ -128,6 +128,28 @@ static void reset_vcpu_aarch64(struct kvm_cpu *vcpu)
 	}
 }
 
+static void select_ptrauth_feature(struct kvm *kvm, struct kvm_vcpu_init *init)
+{
+	/* Check Pointer Authentication command line arguments. */
+	if (kvm->cfg.arch.enable_ptrauth && kvm->cfg.arch.disable_ptrauth)
+		die("Both enable-ptrauth and disable-ptrauth option cannot be present");
+	/*
+	 * Always enable Pointer Authentication if system supports
+	 * this extension unless disable-ptrauth option is present.
+	 */
+	if (kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
+	    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC) &&
+	    !kvm->cfg.arch.disable_ptrauth) {
+		init->features[0] |= 1UL << KVM_ARM_VCPU_PTRAUTH_ADDRESS;
+		init->features[0] |= 1UL << KVM_ARM_VCPU_PTRAUTH_GENERIC;
+	}
+}
+
+void kvm_cpu__select_features(struct kvm *kvm, struct kvm_vcpu_init *init)
+{
+	select_ptrauth_feature(kvm, init);
+}
+
 void kvm_cpu__reset_vcpu(struct kvm_cpu *vcpu)
 {
 	if (vcpu->kvm->cfg.arch.aarch32_guest)
diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
index acd1d5f..764fb05 100644
--- a/arm/kvm-cpu.c
+++ b/arm/kvm-cpu.c
@@ -68,17 +68,7 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
 		vcpu_init.features[0] |= (1UL << KVM_ARM_VCPU_PSCI_0_2);
 	}
 
-	/* Check Pointer Authentication command line arguments. */
-	if (kvm->cfg.arch.enable_ptrauth && kvm->cfg.arch.disable_ptrauth)
-		die("Both enable-ptrauth and disable-ptrauth option cannot be present");
-	/*
-	 * Always enable Pointer Authentication if system supports
-	 * this extension unless disable-ptrauth option is present.
-	 */
-	if (kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
-	    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC) &&
-	    !kvm->cfg.arch.disable_ptrauth)
-			vcpu_init.features[0] |= ARM_VCPU_PTRAUTH_FEATURE;
+	kvm_cpu__select_features(kvm, &vcpu_init);
 
 	/*
 	 * If the preferred target ioctl is successful then
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
