Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A05954E59E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6PsOe7JaTdS8ydBnTtp1kl9aC+m5uyHi+VlKTukxTo=; b=kfNd6fWA2o9e2j
	+S1vvSEtIMDfj0Q6vyBlEvS19uJiF0BPmQaqlVgDlJcKRnCUBPv01GhThDbM/tpfKycBkj5D0jQzk
	ixTJs7/ab5BqsjZIU2zfJnZcOFn48Y6QzJ/SR4++lIukJTz2ulISXx9IYlr7IlG/UZ1JxzCgs97ll
	ma4d+WaEsGgp4+XxTEzOCOrploYG51mC33jr2ONPWRIeCGRZdufKJQ7BiWUwPZmCZ+HwLFOuc/ttx
	8Ibu9UtD/R2DS+TliRAT/8irJ/jo6+d4aF7j+YpavzhDzn8wd1GnQO5o2LLKpEB7onq3B8yehSGA5
	3RnhB96aNc03SaqIV/9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGWE-0006xE-Bn; Fri, 21 Jun 2019 10:11:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heG26-0000R3-6b
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:40:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 12BE1142F;
 Fri, 21 Jun 2019 02:40:34 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B322A3F246;
 Fri, 21 Jun 2019 02:40:32 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH 52/59] KVM: arm64: nv: vgic: Allow userland to set VGIC
 maintenance IRQ
Date: Fri, 21 Jun 2019 10:38:36 +0100
Message-Id: <20190621093843.220980-53-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190621093843.220980-1-marc.zyngier@arm.com>
References: <20190621093843.220980-1-marc.zyngier@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_024034_390455_CEB80D5A 
X-CRM114-Status: GOOD (  14.82  )
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
Cc: Julien Thierry <julien.thierry@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 James Morse <james.morse@arm.com>, Jintack Lim <jintack@cs.columbia.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

The VGIC maintenance IRQ signals various conditions about the LRs, when
the GIC's virtualization extension is used.
So far we didn't need it, but nested virtualization needs to know about
this interrupt, so add a userland interface to setup the IRQ number.
The architecture mandates that it must be a PPI, on top of that this code
only exports a per-device option, so the PPI is the same on all VCPUs.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
[added some bits of documentation]
Signed-off-by: Marc Zyngier <marc.zyngier@arm.com>
---
 .../virtual/kvm/devices/arm-vgic-v3.txt       |  9 ++++++++
 arch/arm/include/uapi/asm/kvm.h               |  1 +
 arch/arm64/include/uapi/asm/kvm.h             |  1 +
 include/kvm/arm_vgic.h                        |  3 +++
 virt/kvm/arm/vgic/vgic-kvm-device.c           | 22 +++++++++++++++++++
 5 files changed, 36 insertions(+)

diff --git a/Documentation/virtual/kvm/devices/arm-vgic-v3.txt b/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
index ff290b43c8e5..c70e8f2e0c9c 100644
--- a/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
+++ b/Documentation/virtual/kvm/devices/arm-vgic-v3.txt
@@ -249,3 +249,12 @@ Groups:
   Errors:
     -EINVAL: vINTID is not multiple of 32 or
      info field is not VGIC_LEVEL_INFO_LINE_LEVEL
+
+  KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ
+    The attr field of kvm_device_attr encodes the following values:
+    bits:     | 31   ....    5 | 4  ....  0 |
+    values:   |      RES0      |   vINTID   |
+
+    The vINTID specifies which interrupt is generated when the vGIC
+    must generate a maintenance interrupt. This must be a PPI.
+
diff --git a/arch/arm/include/uapi/asm/kvm.h b/arch/arm/include/uapi/asm/kvm.h
index 4602464ebdfb..a6af45645a6d 100644
--- a/arch/arm/include/uapi/asm/kvm.h
+++ b/arch/arm/include/uapi/asm/kvm.h
@@ -233,6 +233,7 @@ struct kvm_vcpu_events {
 #define KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS 6
 #define KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO  7
 #define KVM_DEV_ARM_VGIC_GRP_ITS_REGS	8
+#define KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ	9
 #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT	10
 #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK \
 			(0x3fffffULL << KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT)
diff --git a/arch/arm64/include/uapi/asm/kvm.h b/arch/arm64/include/uapi/asm/kvm.h
index 563e2a8bae93..8e1c6ffe1b59 100644
--- a/arch/arm64/include/uapi/asm/kvm.h
+++ b/arch/arm64/include/uapi/asm/kvm.h
@@ -295,6 +295,7 @@ struct kvm_vcpu_events {
 #define KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS 6
 #define KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO  7
 #define KVM_DEV_ARM_VGIC_GRP_ITS_REGS 8
+#define KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ  9
 #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT	10
 #define KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK \
 			(0x3fffffULL << KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_SHIFT)
diff --git a/include/kvm/arm_vgic.h b/include/kvm/arm_vgic.h
index 17d32c2797c0..95c6232663c3 100644
--- a/include/kvm/arm_vgic.h
+++ b/include/kvm/arm_vgic.h
@@ -229,6 +229,9 @@ struct vgic_dist {
 
 	int			nr_spis;
 
+	/* The GIC maintenance IRQ for nested hypervisors. */
+	u32			maint_irq;
+
 	/* base addresses in guest physical address space: */
 	gpa_t			vgic_dist_base;		/* distributor */
 	union {
diff --git a/virt/kvm/arm/vgic/vgic-kvm-device.c b/virt/kvm/arm/vgic/vgic-kvm-device.c
index 44419679f91a..dfb1d7cc66b3 100644
--- a/virt/kvm/arm/vgic/vgic-kvm-device.c
+++ b/virt/kvm/arm/vgic/vgic-kvm-device.c
@@ -241,6 +241,12 @@ static int vgic_get_common_attr(struct kvm_device *dev,
 			     VGIC_NR_PRIVATE_IRQS, uaddr);
 		break;
 	}
+	case KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ: {
+		u32 __user *uaddr = (u32 __user *)(long)attr->addr;
+
+		r = put_user(dev->kvm->arch.vgic.maint_irq, uaddr);
+		break;
+	}
 	}
 
 	return r;
@@ -627,6 +633,21 @@ static int vgic_v3_set_attr(struct kvm_device *dev,
 		reg = tmp32;
 		return vgic_v3_attr_regs_access(dev, attr, &reg, true);
 	}
+	case KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ: {
+		u32 __user *uaddr = (u32 __user *)(long)attr->addr;
+		u32 val;
+
+		if (get_user(val, uaddr))
+			return -EFAULT;
+
+		/* Must be a PPI. */
+		if ((val >= VGIC_NR_PRIVATE_IRQS) || (val < VGIC_NR_SGIS))
+			return -EINVAL;
+
+		dev->kvm->arch.vgic.maint_irq = val;
+
+		return 0;
+	}
 	case KVM_DEV_ARM_VGIC_GRP_CTRL: {
 		int ret;
 
@@ -712,6 +733,7 @@ static int vgic_v3_has_attr(struct kvm_device *dev,
 	case KVM_DEV_ARM_VGIC_GRP_CPU_SYSREGS:
 		return vgic_v3_has_attr_regs(dev, attr);
 	case KVM_DEV_ARM_VGIC_GRP_NR_IRQS:
+	case KVM_DEV_ARM_VGIC_GRP_MAINT_IRQ:
 		return 0;
 	case KVM_DEV_ARM_VGIC_GRP_LEVEL_INFO: {
 		if (((attr->attr & KVM_DEV_ARM_VGIC_LINE_LEVEL_INFO_MASK) >>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
