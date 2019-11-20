Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C46610412C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:44:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Apmclerkeorw3G7Xn8LcLkX9Wb4lEWsikzrzKCfTYU=; b=LTmKw2cd+VYI4W
	1duAAEuAierfBEwReONut7NGlhYgW5qE/yhOXTHk4VNswVAspsjZY9uEinGgEi/v3wrmorETb5Nj3
	KSIyuNlo/CCfX6Qvi5kESMHJcfpd6Kz4rdpDM++0Zm5r0O3yn7KO5KhSZNmHxi0kKk1/3pPUW8Z9R
	eVFeZ9ewKgB4UpdqoptcJEu0kQRH3o8PCXeruAD9Jyb1qdQbZ0WApDvvtv6nuKTUWKpjtj5No7hel
	1zm45uML9msOy0336uY2+bWlkqlKDIm0ZeGy0PxJ7ZIPZ1XV9xkaZ7goA/6lqvT5eRgPZ8Cu61hri
	yXRPD1hMh/PRVsMvh4yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXT5T-0002fU-8L; Wed, 20 Nov 2019 16:44:15 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXT4M-0001tm-Mb
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 16:43:10 +0000
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by cheepnis.misterjones.org with esmtpsa
 (TLSv1.2:DHE-RSA-AES128-GCM-SHA256:128) (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXT4C-0007RI-58; Wed, 20 Nov 2019 17:42:56 +0100
From: Marc Zyngier <maz@kernel.org>
To: Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>
Subject: [PATCH 03/22] KVM: arm64: Document PV-time interface
Date: Wed, 20 Nov 2019 16:42:17 +0000
Message-Id: <20191120164236.29359-4-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191120164236.29359-1-maz@kernel.org>
References: <20191120164236.29359-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: pbonzini@redhat.com, rkrcmar@redhat.com, graf@amazon.com,
 drjones@redhat.com, borntraeger@de.ibm.com, christoffer.dall@arm.com,
 eric.auger@redhat.com, xypron.glpk@gmx.de, julien.grall@arm.com,
 mark.rutland@arm.com, bigeasy@linutronix.de, steven.price@arm.com,
 tglx@linutronix.de, will@kernel.org, yuzenghui@huawei.com, james.morse@arm.com,
 julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org,
 kvmarm@lists.cs.columbia.edu
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_084306_905499_346040A4 
X-CRM114-Status: GOOD (  17.75  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Jones <drjones@redhat.com>,
 kvm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>,
 Steven Price <steven.price@arm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Grall <julien.grall@arm.com>, Alexander Graf <graf@amazon.com>,
 linux-arm-kernel@lists.infradead.org, Zenghui Yu <yuzenghui@huawei.com>,
 James Morse <james.morse@arm.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Steven Price <steven.price@arm.com>

Introduce a paravirtualization interface for KVM/arm64 based on the
"Arm Paravirtualized Time for Arm-Base Systems" specification DEN 0057A.

This only adds the details about "Stolen Time" as the details of "Live
Physical Time" have not been fully agreed.

User space can specify a reserved area of memory for the guest and
inform KVM to populate the memory with information on time that the host
kernel has stolen from the guest.

A hypercall interface is provided for the guest to interrogate the
hypervisor's support for this interface and the location of the shared
memory structures.

Signed-off-by: Steven Price <steven.price@arm.com>
Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 Documentation/virt/kvm/arm/pvtime.rst   | 80 +++++++++++++++++++++++++
 Documentation/virt/kvm/devices/vcpu.txt | 14 +++++
 2 files changed, 94 insertions(+)
 create mode 100644 Documentation/virt/kvm/arm/pvtime.rst

diff --git a/Documentation/virt/kvm/arm/pvtime.rst b/Documentation/virt/kvm/arm/pvtime.rst
new file mode 100644
index 000000000000..2357dd2d8655
--- /dev/null
+++ b/Documentation/virt/kvm/arm/pvtime.rst
@@ -0,0 +1,80 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+Paravirtualized time support for arm64
+======================================
+
+Arm specification DEN0057/A defines a standard for paravirtualised time
+support for AArch64 guests:
+
+https://developer.arm.com/docs/den0057/a
+
+KVM/arm64 implements the stolen time part of this specification by providing
+some hypervisor service calls to support a paravirtualized guest obtaining a
+view of the amount of time stolen from its execution.
+
+Two new SMCCC compatible hypercalls are defined:
+
+* PV_TIME_FEATURES: 0xC5000020
+* PV_TIME_ST:       0xC5000021
+
+These are only available in the SMC64/HVC64 calling convention as
+paravirtualized time is not available to 32 bit Arm guests. The existence of
+the PV_FEATURES hypercall should be probed using the SMCCC 1.1 ARCH_FEATURES
+mechanism before calling it.
+
+PV_TIME_FEATURES
+    ============= ========    ==========
+    Function ID:  (uint32)    0xC5000020
+    PV_call_id:   (uint32)    The function to query for support.
+                              Currently only PV_TIME_ST is supported.
+    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
+                              PV-time feature is supported by the hypervisor.
+    ============= ========    ==========
+
+PV_TIME_ST
+    ============= ========    ==========
+    Function ID:  (uint32)    0xC5000021
+    Return value: (int64)     IPA of the stolen time data structure for this
+                              VCPU. On failure:
+                              NOT_SUPPORTED (-1)
+    ============= ========    ==========
+
+The IPA returned by PV_TIME_ST should be mapped by the guest as normal memory
+with inner and outer write back caching attributes, in the inner shareable
+domain. A total of 16 bytes from the IPA returned are guaranteed to be
+meaningfully filled by the hypervisor (see structure below).
+
+PV_TIME_ST returns the structure for the calling VCPU.
+
+Stolen Time
+-----------
+
+The structure pointed to by the PV_TIME_ST hypercall is as follows:
+
++-------------+-------------+-------------+----------------------------+
+| Field       | Byte Length | Byte Offset | Description                |
++=============+=============+=============+============================+
+| Revision    |      4      |      0      | Must be 0 for version 1.0  |
++-------------+-------------+-------------+----------------------------+
+| Attributes  |      4      |      4      | Must be 0                  |
++-------------+-------------+-------------+----------------------------+
+| Stolen time |      8      |      8      | Stolen time in unsigned    |
+|             |             |             | nanoseconds indicating how |
+|             |             |             | much time this VCPU thread |
+|             |             |             | was involuntarily not      |
+|             |             |             | running on a physical CPU. |
++-------------+-------------+-------------+----------------------------+
+
+All values in the structure are stored little-endian.
+
+The structure will be updated by the hypervisor prior to scheduling a VCPU. It
+will be present within a reserved region of the normal memory given to the
+guest. The guest should not attempt to write into this memory. There is a
+structure per VCPU of the guest.
+
+It is advisable that one or more 64k pages are set aside for the purpose of
+these structures and not used for other purposes, this enables the guest to map
+the region using 64k pages and avoids conflicting attributes with other memory.
+
+For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
+section "3. GROUP: KVM_ARM_VCPU_PVTIME_CTRL".
diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
index 2b5dab16c4f2..6f3bd64a05b0 100644
--- a/Documentation/virt/kvm/devices/vcpu.txt
+++ b/Documentation/virt/kvm/devices/vcpu.txt
@@ -60,3 +60,17 @@ time to use the number provided for a given timer, overwriting any previously
 configured values on other VCPUs.  Userspace should configure the interrupt
 numbers on at least one VCPU after creating all VCPUs and before running any
 VCPUs.
+
+3. GROUP: KVM_ARM_VCPU_PVTIME_CTRL
+Architectures: ARM64
+
+3.1 ATTRIBUTE: KVM_ARM_VCPU_PVTIME_IPA
+Parameters: 64-bit base address
+Returns: -ENXIO:  Stolen time not implemented
+         -EEXIST: Base address already set for this VCPU
+         -EINVAL: Base address not 64 byte aligned
+
+Specifies the base address of the stolen time structure for this VCPU. The
+base address must be 64 byte aligned and exist within a valid guest memory
+region. See Documentation/virt/kvm/arm/pvtime.txt for more information
+including the layout of the stolen time structure.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
