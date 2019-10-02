Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AF61C8C1A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 16:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tpso1HdhSYQXN1edhNi4ZPuyuOo5uwcbOmdp5F1Igng=; b=unMsYynP5BwlPX
	2Q+58xEBd0kaw8W4dEAA3ot3JKsDShWp3N2thls/EaZ0dr6eu4/6CDtes+QQ+eMsnPT4JE6j4xJ3+
	k47NJuiYQqxPiBsoY5ISz4cBp1lAOREz+jUBqMz6eN5NqWH5dbDvZ3OLH8aJeM5Xi9AfnqqCmcMTj
	IzwQswOjP37gTQ1KPElGqjW4eC69F84lbJ/otHA8j/6nSdmZpirq3eudGe9pXfnPaG8BRDAjnuZLR
	mwwo+WwQ5za89JRzMDuIxwFkWdFS1ziAMHLZVb0V5JBck9YTIW9Aiz6TF6Mw+PjJXLj052+6SqO2p
	aJP6d32jHLBz8mRkg+rg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFg00-00046j-AW; Wed, 02 Oct 2019 14:53:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFfy8-0002Rh-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 14:51:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0A971597;
 Wed,  2 Oct 2019 07:51:07 -0700 (PDT)
Received: from e112269-lin.arm.com (e112269-lin.cambridge.arm.com
 [10.1.196.133])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CEAA93F706;
 Wed,  2 Oct 2019 07:51:05 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v5 07/10] KVM: arm64: Provide VCPU attributes for stolen time
Date: Wed,  2 Oct 2019 15:50:34 +0100
Message-Id: <20191002145037.51630-8-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191002145037.51630-1-steven.price@arm.com>
References: <20191002145037.51630-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_075108_480237_8BFB8991 
X-CRM114-Status: GOOD (  12.98  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 kvm@vger.kernel.org,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Pouloze <suzuki.poulose@arm.com>, linux-doc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>, Paolo Bonzini <pbonzini@redhat.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow user space to inform the KVM host where in the physical memory
map the paravirtualized time structures should be located.

User space can set an attribute on the VCPU providing the IPA base
address of the stolen time structure for that VCPU. This must be
repeated for every VCPU in the VM.

The address is given in terms of the physical address visible to
the guest and must be 64 byte aligned. The guest will discover the
address via a hypercall.

Signed-off-by: Steven Price <steven.price@arm.com>
---
 arch/arm64/include/asm/kvm_host.h |  7 +++++
 arch/arm64/include/uapi/asm/kvm.h |  2 ++
 arch/arm64/kvm/guest.c            |  9 ++++++
 include/uapi/linux/kvm.h          |  2 ++
 virt/kvm/arm/pvtime.c             | 47 +++++++++++++++++++++++++++++++
 5 files changed, 67 insertions(+)

diff --git a/arch/arm64/include/asm/kvm_host.h b/arch/arm64/include/asm/kvm_host.h
index 1697e63f6dd8..6af16b29a41f 100644
--- a/arch/arm64/include/asm/kvm_host.h
+++ b/arch/arm64/include/asm/kvm_host.h
@@ -489,6 +489,13 @@ long kvm_hypercall_pv_features(struct kvm_vcpu *vcpu);
 long kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu);
 int kvm_update_stolen_time(struct kvm_vcpu *vcpu, bool init);
 
+int kvm_arm_pvtime_set_attr(struct kvm_vcpu *vcpu,
+			    struct kvm_device_attr *attr);
+int kvm_arm_pvtime_get_attr(struct kvm_vcpu *vcpu,
+			    struct kvm_device_attr *attr);
+int kvm_arm_pvtime_has_attr(struct kvm_vcpu *vcpu,
+			    struct kvm_device_attr *attr);
+
 static inline void kvm_arm_pvtime_vcpu_init(struct kvm_vcpu_arch *vcpu_arch)
 {
 	vcpu_arch->steal.base = GPA_INVALID;
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index 67c21f9bdbad..cff1ba12c768 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -323,6 +323,8 @@ struct kvm_vcpu_events {
 #define KVM_ARM_VCPU_TIMER_CTRL		1
 #define   KVM_ARM_VCPU_TIMER_IRQ_VTIMER		0
 #define   KVM_ARM_VCPU_TIMER_IRQ_PTIMER		1
+#define KVM_ARM_VCPU_PVTIME_CTRL	2
+#define   KVM_ARM_VCPU_PVTIME_IPA	0
 
 /* KVM_IRQ_LINE irq field index values */
 #define KVM_ARM_IRQ_VCPU2_SHIFT		28
diff --git a/arch/arm64/kvm/guest.c b/arch/arm64/kvm/guest.c
index dfd626447482..d3ac9d2fd405 100644
--- a/arch/arm64/kvm/guest.c
+++ b/arch/arm64/kvm/guest.c
@@ -858,6 +858,9 @@ int kvm_arm_vcpu_arch_set_attr(struct kvm_vcpu *vcpu,
 	case KVM_ARM_VCPU_TIMER_CTRL:
 		ret = kvm_arm_timer_set_attr(vcpu, attr);
 		break;
+	case KVM_ARM_VCPU_PVTIME_CTRL:
+		ret = kvm_arm_pvtime_set_attr(vcpu, attr);
+		break;
 	default:
 		ret = -ENXIO;
 		break;
@@ -878,6 +881,9 @@ int kvm_arm_vcpu_arch_get_attr(struct kvm_vcpu *vcpu,
 	case KVM_ARM_VCPU_TIMER_CTRL:
 		ret = kvm_arm_timer_get_attr(vcpu, attr);
 		break;
+	case KVM_ARM_VCPU_PVTIME_CTRL:
+		ret = kvm_arm_pvtime_get_attr(vcpu, attr);
+		break;
 	default:
 		ret = -ENXIO;
 		break;
@@ -898,6 +904,9 @@ int kvm_arm_vcpu_arch_has_attr(struct kvm_vcpu *vcpu,
 	case KVM_ARM_VCPU_TIMER_CTRL:
 		ret = kvm_arm_timer_has_attr(vcpu, attr);
 		break;
+	case KVM_ARM_VCPU_PVTIME_CTRL:
+		ret = kvm_arm_pvtime_has_attr(vcpu, attr);
+		break;
 	default:
 		ret = -ENXIO;
 		break;
diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
index 52641d8ca9e8..a540c8357049 100644
--- a/include/uapi/linux/kvm.h
+++ b/include/uapi/linux/kvm.h
@@ -1227,6 +1227,8 @@ enum kvm_device_type {
 #define KVM_DEV_TYPE_ARM_VGIC_ITS	KVM_DEV_TYPE_ARM_VGIC_ITS
 	KVM_DEV_TYPE_XIVE,
 #define KVM_DEV_TYPE_XIVE		KVM_DEV_TYPE_XIVE
+	KVM_DEV_TYPE_ARM_PV_TIME,
+#define KVM_DEV_TYPE_ARM_PV_TIME	KVM_DEV_TYPE_ARM_PV_TIME
 	KVM_DEV_TYPE_MAX,
 };
 
diff --git a/virt/kvm/arm/pvtime.c b/virt/kvm/arm/pvtime.c
index d9d0dbc6994b..e8eba3e89197 100644
--- a/virt/kvm/arm/pvtime.c
+++ b/virt/kvm/arm/pvtime.c
@@ -2,7 +2,9 @@
 // Copyright (C) 2019 Arm Ltd.
 
 #include <linux/arm-smccc.h>
+#include <linux/kvm_host.h>
 
+#include <asm/kvm_mmu.h>
 #include <asm/pvclock-abi.h>
 
 #include <kvm/arm_hypercalls.h>
@@ -75,3 +77,48 @@ long kvm_hypercall_stolen_time(struct kvm_vcpu *vcpu)
 
 	return vcpu->arch.steal.base;
 }
+
+int kvm_arm_pvtime_set_attr(struct kvm_vcpu *vcpu,
+			    struct kvm_device_attr *attr)
+{
+	u64 __user *user = (u64 __user *)attr->addr;
+	u64 ipa;
+
+	if (attr->attr != KVM_ARM_VCPU_PVTIME_IPA)
+		return -ENXIO;
+
+	if (get_user(ipa, user))
+		return -EFAULT;
+	if (!IS_ALIGNED(ipa, 64))
+		return -EINVAL;
+	if (vcpu->arch.steal.base != GPA_INVALID)
+		return -EEXIST;
+	vcpu->arch.steal.base = ipa;
+	return 0;
+}
+
+int kvm_arm_pvtime_get_attr(struct kvm_vcpu *vcpu,
+			    struct kvm_device_attr *attr)
+{
+	u64 __user *user = (u64 __user *)attr->addr;
+	u64 ipa;
+
+	if (attr->attr != KVM_ARM_VCPU_PVTIME_IPA)
+		return -ENXIO;
+
+	ipa = vcpu->arch.steal.base;
+
+	if (put_user(ipa, user))
+		return -EFAULT;
+	return 0;
+}
+
+int kvm_arm_pvtime_has_attr(struct kvm_vcpu *vcpu,
+			    struct kvm_device_attr *attr)
+{
+	switch (attr->attr) {
+	case KVM_ARM_VCPU_PVTIME_IPA:
+		return 0;
+	}
+	return -ENXIO;
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
