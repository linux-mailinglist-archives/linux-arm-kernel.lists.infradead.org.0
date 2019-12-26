Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E39E12AC9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 15:00:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvydFjrxLxz93oE5hn06EJOK4iA4vDi8mRthm/LKTXE=; b=ipdyetxHP3N2Rn
	893eq5txS78IR2DT1a+ebVcKWzb4Xea32vikkDvg2xiQVm6Q93oviLBcP+PAN3rOorwTqjy+XsZ9U
	Aj9DVaIHiCjpq0Pl6Ylfb5ZzGpisVTtgXLuV8M7xH0grPdMQZxbC67FM7c5dRGeNwPpb61FR8DM7O
	xKjn8VhnD8UCV24o8pCNAWADBGdVqtBUUTVujaJOEWrXvueYEEvxuMoB5GpIRh3L8TZE5Ho8mLv1G
	7vCGLLhiOFE/hS20pjleWE1xhJCrcKQvZSoTzCFnKEsrEBWd4/u9CW/l4/QMnVYUYOGbIFUqVYwCB
	X1LkNrXDpq2KIVhuMFRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikTgF-0005uD-TV; Thu, 26 Dec 2019 13:59:59 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikTfO-0005Og-I7
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 13:59:09 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 6E72A2A2BBC19AC3737B;
 Thu, 26 Dec 2019 21:59:02 +0800 (CST)
Received: from DESKTOP-1NISPDV.china.huawei.com (10.173.221.248) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Thu, 26 Dec 2019 21:58:52 +0800
From: Zengruan Ye <yezengruan@huawei.com>
To: <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <kvmarm@lists.cs.columbia.edu>, <kvm@vger.kernel.org>,
 <linux-doc@vger.kernel.org>, <virtualization@lists.linux-foundation.org>
Subject: [PATCH v2 1/6] KVM: arm64: Document PV-lock interface
Date: Thu, 26 Dec 2019 21:58:28 +0800
Message-ID: <20191226135833.1052-2-yezengruan@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20191226135833.1052-1-yezengruan@huawei.com>
References: <20191226135833.1052-1-yezengruan@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.221.248]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_055906_779367_7EB18C03 
X-CRM114-Status: GOOD (  14.00  )
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
Cc: mark.rutland@arm.com, suzuki.poulose@arm.com, maz@kernel.org,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, steven.price@arm.com,
 yezengruan@huawei.com, james.morse@arm.com, catalin.marinas@arm.com,
 will@kernel.org, julien.thierry.kdev@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce a paravirtualization interface for KVM/arm64 to obtain the VCPU
is currently running or not.

The PV lock structure of the guest is allocated by user space.

A hypercall interface is provided for the guest to interrogate the
hypervisor's support for this interface and the location of the shared
memory structures.

Signed-off-by: Zengruan Ye <yezengruan@huawei.com>
---
 Documentation/virt/kvm/arm/pvlock.rst   | 63 +++++++++++++++++++++++++
 Documentation/virt/kvm/devices/vcpu.txt | 14 ++++++
 2 files changed, 77 insertions(+)
 create mode 100644 Documentation/virt/kvm/arm/pvlock.rst

diff --git a/Documentation/virt/kvm/arm/pvlock.rst b/Documentation/virt/kvm/arm/pvlock.rst
new file mode 100644
index 000000000000..58b3b8ee7537
--- /dev/null
+++ b/Documentation/virt/kvm/arm/pvlock.rst
@@ -0,0 +1,63 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+Paravirtualized lock support for arm64
+======================================
+
+KVM/arm64 provides some hypervisor service calls to support a paravirtualized
+guest obtaining the VCPU is currently running or not.
+
+Two new SMCCC compatible hypercalls are defined:
+
+* PV_LOCK_FEATURES:   0xC6000020
+* PV_LOCK_PREEMPTED:  0xC6000021
+
+The existence of the PV_LOCK hypercall should be probed using the SMCCC 1.1
+ARCH_FEATURES mechanism before calling it.
+
+PV_LOCK_FEATURES
+    ============= ========    ==========
+    Function ID:  (uint32)    0xC6000020
+    PV_call_id:   (uint32)    The function to query for support.
+    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the relevant
+                              PV-lock feature is supported by the hypervisor.
+    ============= ========    ==========
+
+PV_LOCK_PREEMPTED
+    ============= ========    ==========
+    Function ID:  (uint32)    0xC6000021
+    Return value: (int64)     NOT_SUPPORTED (-1) or SUCCESS (0) if the IPA of
+                              this VCPU's pv data structure is configured by
+                              the hypervisor.
+    ============= ========    ==========
+
+The IPA returned by PV_LOCK_PREEMPTED should be mapped by the guest as normal
+memory with inner and outer write back caching attributes, in the inner
+shareable domain.
+
+PV_LOCK_PREEMPTED returns the structure for the calling VCPU.
+
+PV lock state
+-------------
+
+The structure pointed to by the PV_LOCK_PREEMPTED hypercall is as follows:
+
++-----------+-------------+-------------+---------------------------------+
+| Field     | Byte Length | Byte Offset | Description                     |
++===========+=============+=============+=================================+
+| preempted |      8      |      0      | Indicate the VCPU who owns this |
+|           |             |             | struct is running or not.       |
+|           |             |             | Non-zero values mean the VCPU   |
+|           |             |             | has been preempted. Zero means  |
+|           |             |             | the VCPU is not preempted.      |
++-----------+-------------+-------------+---------------------------------+
+
+The preempted field will be updated to 1 by the hypervisor prior to scheduling
+a VCPU. When the VCPU is scheduled out, the preempted field will be updated
+to 0 by the hypervisor.
+
+The structure will be present within a reserved region of the normal memory
+given to the guest. The guest should not attempt to write into this memory.
+There is a structure per VCPU of the guest.
+
+For the user space interface see Documentation/virt/kvm/devices/vcpu.txt
+section "4. GROUP: KVM_ARM_VCPU_PVLOCK_CTRL".
diff --git a/Documentation/virt/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
index 6f3bd64a05b0..c10a5945075b 100644
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
+         -EEXIST: Base address already set for this VCPU
+         -EINVAL: Base address not 64 byte aligned
+
+Specifies the base address of the PV lock structure for this VCPU. The
+base address must be 64 byte aligned and exist within a valid guest memory
+region. See Documentation/virt/kvm/arm/pvlock.rst for more information
+including the layout of the pv lock structure.
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
