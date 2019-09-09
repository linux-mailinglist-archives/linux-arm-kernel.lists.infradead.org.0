Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E147AD8A3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fdcVcBWZgpx/zeP+XzL11f49V3MBdedYL/ztWXBdqpU=; b=OlQQREX75D+zmGZ7iOk8FsBtC3
	5okNxBsvbQ3ArFAUvlstDzgL+HDrCmI48qP1FcmlZQyNmIIiWofx+0JuNay7dUVPininYe3/Z2mUD
	r0NVu/ksjQE5F3aEO5LsHJI3e/2g+2r3Po1R20Pc4NRAuOSwfP+/oAjLmPKNI3ghKve+k64Ri1zNA
	ZXz4zlp3SYEIWdFXK2z5ioaawmvhxn6Z0nA8/P6WFUnANdCg9YHG4z1clY1FNVNKrXPAzK7m0qh5R
	snzSby4odUH1dzh8RNXh5Dxm7dFuH5lFJ9Np2DgYJSFu5jb+bK5ShHNxBf4H04pAKNVtjE5CnLpAk
	RCEfQIpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7IYn-00073U-Oc; Mon, 09 Sep 2019 12:14:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7IYI-0006XS-Su
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:13:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4E4C11576;
 Mon,  9 Sep 2019 05:13:50 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DC943F59C;
 Mon,  9 Sep 2019 05:13:47 -0700 (PDT)
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH 2/2] KVM: arm/arm64: Allow user injection of external data
 aborts
Date: Mon,  9 Sep 2019 14:13:34 +0200
Message-Id: <20190909121337.27287-3-christoffer.dall@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909121337.27287-1-christoffer.dall@arm.com>
References: <20190909121337.27287-1-christoffer.dall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_051351_067442_763AEFAE 
X-CRM114-Status: GOOD (  21.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Peter Maydell <peter.maydell@linaro.org>,
 =?UTF-8?q?Daniel=20P=2E=20Berrang=C3=A9?= <berrange@redhat.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Stefan Hajnoczi <stefanha@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In some scenarios, such as buggy guest or incorrect configuration of the
VMM and firmware description data, userspace will detect a memory access
to a portion of the IPA, which is not mapped to any MMIO region.

For this purpose, the appropriate action is to inject an external abort
to the guest.  The kernel already has functionality to inject an
external abort, but we need to wire up a signal from user space that
lets user space tell the kernel to do this.

It turns out, we already have the set event functionality which we can
perfectly reuse for this.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
---
 Documentation/virt/kvm/api.txt    | 15 ++++++++++++++-
 arch/arm/include/uapi/asm/kvm.h   |  3 ++-
 arch/arm/kvm/guest.c              |  3 +++
 arch/arm64/include/uapi/asm/kvm.h |  3 ++-
 arch/arm64/kvm/guest.c            |  3 +++
 arch/arm64/kvm/inject_fault.c     |  4 ++--
 include/uapi/linux/kvm.h          |  1 +
 virt/kvm/arm/arm.c                |  1 +
 8 files changed, 28 insertions(+), 5 deletions(-)

diff --git a/Documentation/virt/kvm/api.txt b/Documentation/virt/kvm/api.txt
index 02501333f746..edd6cdc470ca 100644
--- a/Documentation/virt/kvm/api.txt
+++ b/Documentation/virt/kvm/api.txt
@@ -955,6 +955,8 @@ The following bits are defined in the flags field:
 
 ARM/ARM64:
 
+User space may need to inject several types of events to the guest.
+
 If the guest accesses a device that is being emulated by the host kernel in
 such a way that a real device would generate a physical SError, KVM may make
 a virtual SError pending for that VCPU. This system error interrupt remains
@@ -989,12 +991,23 @@ Specifying exception.has_esr on a system that does not support it will return
 -EINVAL. Setting anything other than the lower 24bits of exception.serror_esr
 will return -EINVAL.
 
+If the guest performed an access to I/O memory which could not be handled by
+user space, for example because of missing instruction syndrome decode
+information or because there is no device mapped at the accessed IPA, then
+user space can ask the kernel to inject an external abort using the address
+from the exiting fault on the VCPU. It is a programming error to set
+ext_dabt_pending at the same time as any of the serror fields, or to set
+ext_dabt_pending on an exit which was not either KVM_EXIT_MMIO or
+KVM_EXIT_ARM_NISV. This feature is only available if the system supports
+KVM_CAP_ARM_INJECT_EXT_DABT;
+
 struct kvm_vcpu_events {
 	struct {
 		__u8 serror_pending;
 		__u8 serror_has_esr;
+		__u8 ext_dabt_pending;
 		/* Align it to 8 bytes */
-		__u8 pad[6];
+		__u8 pad[5];
 		__u64 serror_esr;
 	} exception;
 	__u32 reserved[12];
diff --git a/arch/arm/include/uapi/asm/kvm.h b/arch/arm/include/uapi/asm/kvm.h
index a4217c1a5d01..d2449a5bf8d5 100644
--- a/arch/arm/include/uapi/asm/kvm.h
+++ b/arch/arm/include/uapi/asm/kvm.h
@@ -131,8 +131,9 @@ struct kvm_vcpu_events {
 	struct {
 		__u8 serror_pending;
 		__u8 serror_has_esr;
+		__u8 ext_dabt_pending;
 		/* Align it to 8 bytes */
-		__u8 pad[6];
+		__u8 pad[5];
 		__u64 serror_esr;
 	} exception;
 	__u32 reserved[12];
diff --git a/arch/arm/kvm/guest.c b/arch/arm/kvm/guest.c
index 684cf64b4033..4154c5589501 100644
--- a/arch/arm/kvm/guest.c
+++ b/arch/arm/kvm/guest.c
@@ -263,11 +263,14 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
 {
 	bool serror_pending = events->exception.serror_pending;
 	bool has_esr = events->exception.serror_has_esr;
+	bool has_ext_dabt_pending = events->exception.ext_dabt_pending;
 
 	if (serror_pending && has_esr)
 		return -EINVAL;
 	else if (serror_pending)
 		kvm_inject_vabt(vcpu);
+	else if (has_ext_dabt_pending)
+		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
 
 	return 0;
 }
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index 9a507716ae2f..7729efdb1c0c 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -164,8 +164,9 @@ struct kvm_vcpu_events {
 	struct {
 		__u8 serror_pending;
 		__u8 serror_has_esr;
+		__u8 ext_dabt_pending;
 		/* Align it to 8 bytes */
-		__u8 pad[6];
+		__u8 pad[5];
 		__u64 serror_esr;
 	} exception;
 	__u32 reserved[12];
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index dfd626447482..10e6e2144dca 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -720,6 +720,7 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
 {
 	bool serror_pending = events->exception.serror_pending;
 	bool has_esr = events->exception.serror_has_esr;
+	bool has_ext_dabt_pending = events->exception.ext_dabt_pending;
 
 	if (serror_pending && has_esr) {
 		if (!cpus_have_const_cap(ARM64_HAS_RAS_EXTN))
@@ -731,6 +732,8 @@ int __kvm_arm_vcpu_set_events(struct kvm_vcpu *vcpu,
 			return -EINVAL;
 	} else if (serror_pending) {
 		kvm_inject_vabt(vcpu);
+	} else if (has_ext_dabt_pending) {
+		kvm_inject_dabt(vcpu, kvm_vcpu_get_hfar(vcpu));
 	}
 
 	return 0;
diff --git a/arch/arm64/kvm/inject_fault.c b/arch/arm64/kvm/inject_fault.c
index a9d25a305af5..ccdb6a051ab2 100644
--- a/arch/arm64/kvm/inject_fault.c
+++ b/arch/arm64/kvm/inject_fault.c
@@ -109,7 +109,7 @@ static void inject_undef64(struct kvm_vcpu *vcpu)
 
 /**
  * kvm_inject_dabt - inject a data abort into the guest
- * @vcpu: The VCPU to receive the undefined exception
+ * @vcpu: The VCPU to receive the data abort
  * @addr: The address to report in the DFAR
  *
  * It is assumed that this code is called from the VCPU thread and that the
@@ -125,7 +125,7 @@ void kvm_inject_dabt(struct kvm_vcpu *vcpu, unsigned long addr)
 
 /**
  * kvm_inject_pabt - inject a prefetch abort into the guest
- * @vcpu: The VCPU to receive the undefined exception
+ * @vcpu: The VCPU to receive the prefetch abort
  * @addr: The address to report in the DFAR
  *
  * It is assumed that this code is called from the VCPU thread and that the
diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index dd79235b6435..a80ee820e700 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -1003,6 +1003,7 @@ struct kvm_ppc_resize_hpt {
 #define KVM_CAP_ARM_PTRAUTH_GENERIC 172
 #define KVM_CAP_PMU_EVENT_FILTER 173
 #define KVM_CAP_ARM_NISV_TO_USER 174
+#define KVM_CAP_ARM_INJECT_EXT_DABT 175
 
 #ifdef KVM_CAP_IRQ_ROUTING
 
diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
index 7153504bb106..56a97dd9b292 100644
--- a/virt/kvm/arm/arm.c
+++ b/virt/kvm/arm/arm.c
@@ -217,6 +217,7 @@ int kvm_vm_ioctl_check_extension(struct kvm *kvm, long ext)
 	case KVM_CAP_IMMEDIATE_EXIT:
 	case KVM_CAP_VCPU_EVENTS:
 	case KVM_CAP_ARM_NISV_TO_USER:
+	case KVM_CAP_ARM_INJECT_EXT_DABT:
 		r = 1;
 		break;
 	case KVM_CAP_ARM_SET_DEVICE_ADDR:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
