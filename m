Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2CAD402A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Em/sBsYSyjawTtxShzl3bFyI9x8h5p3Zj1k9bO9jlTQ=; b=bQw3PWggmF3PHL
	gbBJSopEtGOEByZ8W9mc1TQyJK6nm6Hs3GmxhO08s9qIeboQR0v247MUPAZ1JTUeNNFmgKvxOWnd7
	gbTKcp8S/dYensAG+u0WC1Iy4h2aIOmIxfyl/jIr33BNpct6qZEh/zPpLxMA1J65ssjm44pDhfGWF
	lfF7mIBDeBxKnd4vmLvET51ZADP3uukPJ+c1rXB9vn+2WzYvj435eILY2hxWvBXMTAytJ+eF8bq3m
	MsUPf1k2mbgk5hZ1el7EuB+lBd0xd+Yc9q3UGHC1PAeIxvNUNOk6bFiaLqQV4OD6NQNv+o1cup+QJ
	vFl4xnbQUnO+0jel1FFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuWz-0002gX-Nk; Fri, 11 Oct 2019 13:00:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuWC-0002SA-MX
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:59:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 570791000;
 Fri, 11 Oct 2019 05:59:40 -0700 (PDT)
Received: from e112269-lin.cambridge.arm.com (e112269-lin.cambridge.arm.com
 [10.1.194.43])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 554E73F6C4;
 Fri, 11 Oct 2019 05:59:38 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Marc Zyngier <maz@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu
Subject: [PATCH v6 01/10] KVM: arm64: Document PV-time interface
Date: Fri, 11 Oct 2019 13:59:21 +0100
Message-Id: <20191011125930.40834-2-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191011125930.40834-1-steven.price@arm.com>
References: <20191011125930.40834-1-steven.price@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_055940_818641_FEB6DD47 
X-CRM114-Status: GOOD (  18.57  )
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
---
 Documentation/virt/kvm/arm/pvtime.rst   | 77 +++++++++++++++++++++++++
 Documentation/virt/kvm/devices/vcpu.txt | 14 +++++
 2 files changed, 91 insertions(+)
 create mode 100644 Documentation/virt/kvm/arm/pvtime.rst

diff --git a/Documentation/virt/kvm/arm/pvtime.rst b/Documentation/virt/kvm/arm/pvtime.rst
new file mode 100644
index 000000000000..de949933ec78
--- /dev/null
+++ b/Documentation/virt/kvm/arm/pvtime.rst
@@ -0,0 +1,77 @@
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
+For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
+section "3. GROUP: KVM_ARM_VCPU_PVTIME_CTRL".
+
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
