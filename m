Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B6712EA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:01:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7r/+qhaUxItOUZNYuAGi/FN71GBAK5PIHUP/DxlH/I=; b=N7+1TjjLz7nJSJ
	Lj1miZ8VqnZxwH0MIdFsZs14uGlJ5KZk8sUuGRefAKWg69FMl4SQBLjUTdvSiJIx6uhtiXvRkpv9w
	hK8JwX6fSLkZgojV2e9pPEBeZ+S8HVn01Zxe9ORr45pmRKlnd9dCv5D4TIzSvxeSHEVx4qVzd/Fhj
	zwuAU7NmYyLvQxlJ3qMokdlGt+eMfaVt7aLHdr+3Y0BHUxVDBsyNyJGn/6yjIXIN+7Vz1DeJALmYR
	bG6GCceficpJUghW0+5oWDYxdnVtKN5Ga2rv2rO2PCjFm+Kzhibo60ztj3s0G3m7fSq9k8rmO0PJE
	rDH1dIkTHwrm88GNieqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXoW-000188-1R; Fri, 03 May 2019 13:01:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXo1-0000NO-Cy
 for linux-arm-kernel@bombadil.infradead.org; Fri, 03 May 2019 13:00:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0PtrOz2GYadQQACRhn1Ids4d3S2epNoBAJ74cyRdtNI=; b=MPjJIvkFspYB+sXS9sz0mHPi0J
 mLMJ6r7Zy9ykiiChAhsU/+RbY0ZYFylp1heDqNh5jH0vXK9uDIR9DOmBkRg2fjPHTseJBhCTDPKXQ
 tk4mTDOF6VRZnZULMSiTlbJa3JAmgz5FMP33f4skJqpH0jL5PxY1ZsoxUiwCfkrdeug3oI5YJnsxf
 cjPwSk6bFqE9zhdCnWWCqQ3wSaDBwVq3+fL6qFmnCrpIGpRL6D21AbN36LkkxUDMTJQbLhdOIulE/
 8jHWOlP09y9h2POxp90PFDgsZ4wwztjE77GiOMkWV9YUhKvuMYwXh3ER8qGGHJ2I2jQQNh5Tkj9ms
 KwmJKdMg==;
Received: from foss.arm.com ([217.140.101.70])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXaz-0002EL-3o
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 12:47:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AD860165C;
 Fri,  3 May 2019 05:47:20 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 75A0B3F220;
 Fri,  3 May 2019 05:47:17 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 45/56] KVM: arm64: Add userspace flag to enable pointer
 authentication
Date: Fri,  3 May 2019 13:44:16 +0100
Message-Id: <20190503124427.190206-46-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190503124427.190206-1-marc.zyngier@arm.com>
References: <20190503124427.190206-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_134721_452446_49F96E9A 
X-CRM114-Status: GOOD (  22.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-5.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Peter Maydell <peter.maydell@linaro.org>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Julien Thierry <julien.thierry@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 "zhang . lei" <zhang.lei@jp.fujitsu.com>, Julien Grall <julien.grall@arm.com>,
 kvmarm@lists.cs.columbia.edu, Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Amit Daniel Kachhap <amit.kachhap@arm.com>

Now that the building blocks of pointer authentication are present, lets
add userspace flags KVM_ARM_VCPU_PTRAUTH_ADDRESS and
KVM_ARM_VCPU_PTRAUTH_GENERIC. These flags will enable pointer
authentication for the KVM guest on a per-vcpu basis through the ioctl
KVM_ARM_VCPU_INIT.

This features will allow the KVM guest to allow the handling of
pointer authentication instructions or to treat them as undefined
if not set.

Necessary documentations are added to reflect the changes done.

Reviewed-by: Dave Martin <Dave.Martin@arm.com>
Signed-off-by: Amit Daniel Kachhap <amit.kachhap@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Marc Zyngier <marc.zyngier@arm.com>
Cc: Christoffer Dall <christoffer.dall@arm.com>
Cc: kvmarm@lists.cs.columbia.edu
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 .../arm64/pointer-authentication.txt          | 22 ++++++++++++---
 Documentation/virtual/kvm/api.txt             | 10 +++++++
 arch/arm64/include/asm/kvm_host.h             |  2 +-
 arch/arm64/include/uapi/asm/kvm.h             |  2 ++
 arch/arm64/kvm/reset.c                        | 27 +++++++++++++++++++
 5 files changed, 58 insertions(+), 5 deletions(-)

diff --git a/Documentation/arm64/pointer-authentication.txt b/Documentation/arm64/pointer-authentication.txt
index 5baca42ba146..fc71b33de87e 100644
--- a/Documentation/arm64/pointer-authentication.txt
+++ b/Documentation/arm64/pointer-authentication.txt
@@ -87,7 +87,21 @@ used to get and set the keys for a thread.
 Virtualization
 --------------
 
-Pointer authentication is not currently supported in KVM guests. KVM
-will mask the feature bits from ID_AA64ISAR1_EL1, and attempted use of
-the feature will result in an UNDEFINED exception being injected into
-the guest.
+Pointer authentication is enabled in KVM guest when each virtual cpu is
+initialised by passing flags KVM_ARM_VCPU_PTRAUTH_[ADDRESS/GENERIC] and
+requesting these two separate cpu features to be enabled. The current KVM
+guest implementation works by enabling both features together, so both
+these userspace flags are checked before enabling pointer authentication.
+The separate userspace flag will allow to have no userspace ABI changes
+if support is added in the future to allow these two features to be
+enabled independently of one another.
+
+As Arm Architecture specifies that Pointer Authentication feature is
+implemented along with the VHE feature so KVM arm64 ptrauth code relies
+on VHE mode to be present.
+
+Additionally, when these vcpu feature flags are not set then KVM will
+filter out the Pointer Authentication system key registers from
+KVM_GET/SET_REG_* ioctls and mask those features from cpufeature ID
+register. Any attempt to use the Pointer Authentication instructions will
+result in an UNDEFINED exception being injected into the guest.
diff --git a/Documentation/virtual/kvm/api.txt b/Documentation/virtual/kvm/api.txt
index e410a9f0f0d4..32afe7f5c35a 100644
--- a/Documentation/virtual/kvm/api.txt
+++ b/Documentation/virtual/kvm/api.txt
@@ -2761,6 +2761,16 @@ Possible features:
 	- KVM_ARM_VCPU_PMU_V3: Emulate PMUv3 for the CPU.
 	  Depends on KVM_CAP_ARM_PMU_V3.
 
+	- KVM_ARM_VCPU_PTRAUTH_ADDRESS: Enables Address Pointer authentication
+	  for arm64 only.
+	  Both KVM_ARM_VCPU_PTRAUTH_ADDRESS and KVM_ARM_VCPU_PTRAUTH_GENERIC
+	  must be requested or neither must be requested.
+
+	- KVM_ARM_VCPU_PTRAUTH_GENERIC: Enables Generic Pointer authentication
+	  for arm64 only.
+	  Both KVM_ARM_VCPU_PTRAUTH_ADDRESS and KVM_ARM_VCPU_PTRAUTH_GENERIC
+	  must be requested or neither must be requested.
+
 	- KVM_ARM_VCPU_SVE: Enables SVE for the CPU (arm64 only).
 	  Depends on KVM_CAP_ARM_SVE.
 	  Requires KVM_ARM_VCPU_FINALIZE(KVM_ARM_VCPU_SVE):
diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 7eebea7059c6..f772ac2fb3e9 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -49,7 +49,7 @@
 
 #define KVM_MAX_VCPUS VGIC_V3_MAX_CPUS
 
-#define KVM_VCPU_MAX_FEATURES 5
+#define KVM_VCPU_MAX_FEATURES 7
 
 #define KVM_REQ_SLEEP \
 	KVM_ARCH_REQ_FLAGS(0, KVM_REQUEST_WAIT | KVM_REQUEST_NO_WAKEUP)
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index edd2db8e5160..7b7ac0f6cec9 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -104,6 +104,8 @@ struct kvm_regs {
 #define KVM_ARM_VCPU_PSCI_0_2		2 /* CPU uses PSCI v0.2 */
 #define KVM_ARM_VCPU_PMU_V3		3 /* Support guest PMUv3 */
 #define KVM_ARM_VCPU_SVE		4 /* enable SVE for this CPU */
+#define KVM_ARM_VCPU_PTRAUTH_ADDRESS	5 /* VCPU uses address authentication */
+#define KVM_ARM_VCPU_PTRAUTH_GENERIC	6 /* VCPU uses generic authentication */
 
 struct kvm_vcpu_init {
 	__u32 target;
diff --git a/arch/arm64/kvm/reset.c b/arch/arm64/kvm/reset.c
index 3402543fdcd3..028d0c604652 100644
--- a/arch/arm64/kvm/reset.c
+++ b/arch/arm64/kvm/reset.c
@@ -221,6 +221,27 @@ static void kvm_vcpu_reset_sve(struct kvm_vcpu *vcpu)
 		memset(vcpu->arch.sve_state, 0, vcpu_sve_state_size(vcpu));
 }
 
+static int kvm_vcpu_enable_ptrauth(struct kvm_vcpu *vcpu)
+{
+	/* Support ptrauth only if the system supports these capabilities. */
+	if (!has_vhe())
+		return -EINVAL;
+
+	if (!system_supports_address_auth() ||
+	    !system_supports_generic_auth())
+		return -EINVAL;
+	/*
+	 * For now make sure that both address/generic pointer authentication
+	 * features are requested by the userspace together.
+	 */
+	if (!test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
+	    !test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features))
+		return -EINVAL;
+
+	vcpu->arch.flags |= KVM_ARM64_GUEST_HAS_PTRAUTH;
+	return 0;
+}
+
 /**
  * kvm_reset_vcpu - sets core registers and sys_regs to reset value
  * @vcpu: The VCPU pointer
@@ -261,6 +282,12 @@ int kvm_reset_vcpu(struct kvm_vcpu *vcpu)
 		kvm_vcpu_reset_sve(vcpu);
 	}
 
+	if (test_bit(KVM_ARM_VCPU_PTRAUTH_ADDRESS, vcpu->arch.features) ||
+	    test_bit(KVM_ARM_VCPU_PTRAUTH_GENERIC, vcpu->arch.features)) {
+		if (kvm_vcpu_enable_ptrauth(vcpu))
+			goto out;
+	}
+
 	switch (vcpu->arch.target) {
 	default:
 		if (test_bit(KVM_ARM_VCPU_EL1_32BIT, vcpu->arch.features)) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
