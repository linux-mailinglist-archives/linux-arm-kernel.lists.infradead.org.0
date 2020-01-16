Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A3F13DA6D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 13:48:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBywqP3YR7orvU5+C5c7CJV8wQ7QrSl7aNFIsO80gUg=; b=oB/+Sbjc2N35Si
	/HKVIonGpAqCFd5V0X4Q5jEpOeeXTr+jEv7A241MX8QGIhhr3BlJwN2Z9vaWdUk51zSBxccydlfcB
	Su30keWX3DkGRZDCJQ1X6AxG1CXFx4UhSVVJa5QVoJO281rKPBZf/2etgrUkypRL1WbEo+4v12n/u
	sIU2cDCam3796imotgCTjfolraUavs9sYDv3uOD2VUmjGFLrdqnMVv3OPYq37/bQEd3ZIUhuIoaPL
	v5nTecQSNRcb2Tc+0I3+ANI4kKPw5XnsD1lpMZf0O2Z2kKsQrEK34MqfHD7BbiKR4CgmgvnVnVWdM
	eFXMCpZHRFQaIJeGRXcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is4Yz-0005uF-JM; Thu, 16 Jan 2020 12:47:53 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is4YC-0005M9-75
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 12:47:13 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B12F5C83404AD649F118;
 Thu, 16 Jan 2020 20:46:54 +0800 (CST)
Received: from DESKTOP-1NISPDV.china.huawei.com (10.173.221.248) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Thu, 16 Jan 2020 20:46:45 +0800
From: Zengruan Ye <yezengruan@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <virtualization@lists.linux-foundation.org>
Subject: [PATCH v3 1/8] KVM: arm64: Document PV-lock interface
Date: Thu, 16 Jan 2020 20:46:19 +0800
Message-ID: <20200116124626.1155-2-yezengruan@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20200116124626.1155-1-yezengruan@huawei.com>
References: <20200116124626.1155-1-yezengruan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.248]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_044704_427300_E2C16BA6 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, peterz@infradead.org,
 maz@kernel.org, daniel.lezcano@linaro.org, linux@armlinux.org.uk,
 steven.price@arm.com, yezengruan@huawei.com, james.morse@arm.com,
 longman@redhat.com, catalin.marinas@arm.com, wanghaibin.wang@huawei.com,
 will@kernel.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a paravirtualization interface for KVM/arm64 to obtain the vCPU
that is currently running or not.

The PV lock structure of the guest is allocated by user space.

A hypercall interface is provided for the guest to interrogate the
hypervisor's support for this interface and the location of the shared
memory structures.

Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
---
 Documentation/virt/kvm/arm/pvlock.rst   | 68 +++++++++++++++++++++++++
 Documentation/virt/kvm/devices/vcpu.txt | 14 +++++
 2 files changed, 82 insertions(+)
 create mode 100644 Documentation/virt/kvm/arm/pvlock.rst

diff --git a/Documentation/virt/kvm/arm/pvlock.rst b/Documentation/virt/kvm/arm/pvlock.rst
new file mode 100644
index 000000000000..11776273c0a4
--- /dev/null
+++ b/Documentation/virt/kvm/arm/pvlock.rst
@@ -0,0 +1,68 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+Paravirtualized lock support for arm64
+======================================
+
+KVM/arm64 provides some hypervisor service calls to support a paravirtualized
+guest obtaining whether the vCPU is currently running or not.
+
+Two new SMCCC compatible hypercalls are defined:
+* ARM_SMCCC_VENDOR_HYP_KVM_PV_LOCK_FUNC_ID:  0x86000001
+  - KVM_PV_LOCK_FEATURES   0
+  - KVM_PV_LOCK_PREEMPTED  1
+
+The existence of the PV_LOCK hypercall should be probed using the SMCCC 1.1
+ARCH_FEATURES mechanism and the hypervisor should be KVM before calling it.
+
+KVM_PV_LOCK_FEATURES
+    ============= ========    ==========
+    Function ID:  (uint32)    0x86000001
+    PV_call_id:   (uint32)    0
+    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
+                              PV-lock feature is supported by the hypervisor.
+    ============= ========    ==========
+
+KVM_PV_LOCK_PREEMPTED
+    ============= ========    ==========
+    Function ID:  (uint32)    0x86000001
+    PV_call_id:   (uint32)    1
+    Return value: (int64)     IPA of the PV-lock data structure for this vCPU.
+                              On failure:
+                              NOT_SUPPORTED (-1)
+    ============= ========    ==========
+
+The IPA returned by KVM_PV_LOCK_PREEMPTED should be mapped by the guest as
+normal memory with inner and outer write back caching attributes, in the inner
+shareable domain.
+
+KVM_PV_LOCK_PREEMPTED returns the structure for the calling vCPU.
+
+PV lock state
+-------------
+
+The structure pointed to by the KVM_PV_LOCK_PREEMPTED hypercall is as follows:
+
++-----------+-------------+-------------+-----------------------------------+
+| Field     | Byte Length | Byte Offset | Description                       |
++===========+=============+=============+===================================+
+| preempted |      8      |      0      | Indicates that the vCPU that owns |
+|           |             |             | this struct is running or not.    |
+|           |             |             | Non-zero values mean the vCPU has |
+|           |             |             | been preempted. Zero means the    |
+|           |             |             | vCPU is not preempted.            |
++-----------+-------------+-------------+-----------------------------------+
+
+The preempted field will be updated to 1 by the hypervisor prior to scheduling
+a vCPU. When the vCPU is scheduled out, the preempted field will be updated
+to 0 by the hypervisor.
+
+The structure will be present within a reserved region of the normal memory
+given to the guest. The guest should not attempt to write into this memory.
+There is a structure per vCPU of the guest.
+
+It is advisable that one or more 64k pages are set aside for the purpose of
+these structures and not used for other purposes, this enables the guest to map
+the region using 64k pages and avoids conflicting attributes with other memory.
+
+For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
+section "4. GROUP: KVM_ARM_VCPU_PVLOCK_CTRL".
diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
index 6f3bd64a05b0..2c68d9a0f644 100644
--- a/Documentation/virt/kvm/devices/vcpu.txt
+++ b/Documentation/virt/kvm/devices/vcpu.txt
@@ -74,3 +74,17 @@ Specifies the base address of the stolen time structure for this VCPU. The
 base address must be 64 byte aligned and exist within a valid guest memory
 region. See Documentation/virt/kvm/arm/pvtime.txt for more information
 including the layout of the stolen time structure.
+
+4. GROUP: KVM_ARM_VCPU_PVLOCK_CTRL
+Architectures: ARM64
+
+4.1 ATTRIBUTE: KVM_ARM_VCPU_PVLOCK_IPA
+Parameters: 64-bit base address
+Returns: -ENXIO:  PV lock not implemented
+         -EEXIST: Base address already set for this vCPU
+         -EINVAL: Base address not 64 byte aligned
+
+Specifies the base address of the PV lock structure for this vCPU. The
+base address must be 64 byte aligned and exist within a valid guest memory
+region. See Documentation/virt/kvm/arm/pvlock.rst for more information
+including the layout of the pv lock structure.
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
