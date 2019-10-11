Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2F1D3DF5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xo9mjPrkgIOlyQRywV5inWoO1gEpwdJ6v34N3yFv8dw=; b=aGpZ6+7n5KaSk7mBkRhJMFp+zX
	i1LitcKJLWtqQ0YofeP14VCw2ydUCixPKPVorXlqC+LSHqN52Svsr5dTmEMTPAjGPUSM4NsiAwPjY
	6Q8gaRcKCXLa1lSFx6RncAQnai8G/jt9mKMAN7D9R/uVlBHJUT8BOlS4AFa5SdVTyfZYrGaWpQq3z
	2vLF71ca3/RofoW7r3FI2tV+Fx6DZxIwEi9X1BwWkg19UNSCBikM+DLWZLpAS0hR/gKCnLvGuXXmU
	dUxRjnfSlvVNQsIgnxB2iU1c4gqG+s1VI45zy56rypjUyWrbD2D86v3ax9mkZiTtx+O75Za/H3wQi
	4mNkjRYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsmP-00014A-To; Fri, 11 Oct 2019 11:08:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIslX-0000DO-Fe
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:07:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EC8231000;
 Fri, 11 Oct 2019 04:07:22 -0700 (PDT)
Received: from localhost (e113682-lin.copenhagen.arm.com [10.32.145.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F2163F703;
 Fri, 11 Oct 2019 04:07:22 -0700 (PDT)
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [kvmtool v3 4/5] arm: Handle exits from undecoded load/store
 instructions
Date: Fri, 11 Oct 2019 13:07:08 +0200
Message-Id: <20191011110709.2764-5-christoffer.dall@arm.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191011110709.2764-1-christoffer.dall@arm.com>
References: <20191011110709.2764-1-christoffer.dall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_040723_664980_0C867D6D 
X-CRM114-Status: GOOD (  17.61  )
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

KVM occasionally encounters guests that attempt to access memory outside
the registered RAM memory slots using instructions that don't provide
decoding information in the ESR_EL2 (the ISV bit is not set), and
historically this has led to the kernel printing a confusing error
message in dmesg and returning -ENOYSYS from KVM_RUN.

KVM/Arm now has KVM_CAP_ARM_NISV_TO_USER, which can be enabled from
userspace, and which allows us to handle this with a little bit more
helpful information to the user.  For example, we can at least tell the
user if the guest just hit a hole in the guest's memory map, or if this
appeared to be an attempt at doing MMIO.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
---
 arm/kvm-cpu.c     | 20 +++++++++++++++++++-
 arm/kvm.c         |  8 ++++++++
 include/kvm/kvm.h |  1 +
 kvm.c             |  1 +
 mmio.c            | 11 +++++++++++
 5 files changed, 40 insertions(+), 1 deletion(-)

diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
index 7780251..25bd3ed 100644
--- a/arm/kvm-cpu.c
+++ b/arm/kvm-cpu.c
@@ -136,7 +136,25 @@ void kvm_cpu__delete(struct kvm_cpu *vcpu)
 
 bool kvm_cpu__handle_exit(struct kvm_cpu *vcpu)
 {
-	return false;
+	switch (vcpu->kvm_run->exit_reason) {
+	case KVM_EXIT_ARM_NISV: {
+		u64 phys_addr = vcpu->kvm_run->arm_nisv.fault_ipa;
+
+		if (!arm_addr_in_ioport_region(phys_addr) &&
+		    !kvm__mmio_exists(vcpu, phys_addr))
+			die("Guest accessed memory outside RAM and IO ranges");
+
+		/*
+		 * We cannot fetch and decode instructions from a KVM guest,
+		 * which used a load/store instruction that doesn't get
+		 * decoded in the ESR towards an I/O device, so we have no
+		 * choice but to exit to the user with an error.
+		 */
+		die("Guest accessed I/O device with unsupported load/store instruction");
+	}
+	default:
+		return false;
+	}
 }
 
 void kvm_cpu__show_page_tables(struct kvm_cpu *vcpu)
diff --git a/arm/kvm.c b/arm/kvm.c
index 1f85fc6..2572ac2 100644
--- a/arm/kvm.c
+++ b/arm/kvm.c
@@ -59,6 +59,8 @@ void kvm__arch_set_cmdline(char *cmdline, bool video)
 
 void kvm__arch_init(struct kvm *kvm, const char *hugetlbfs_path, u64 ram_size)
 {
+	struct kvm_enable_cap enable_cap = { .flags = 0 };
+
 	/*
 	 * Allocate guest memory. We must align our buffer to 64K to
 	 * correlate with the maximum guest page size for virtio-mmio.
@@ -83,6 +85,12 @@ void kvm__arch_init(struct kvm *kvm, const char *hugetlbfs_path, u64 ram_size)
 	madvise(kvm->arch.ram_alloc_start, kvm->arch.ram_alloc_size,
 		MADV_HUGEPAGE);
 
+	if (kvm__supports_extension(kvm, KVM_CAP_ARM_NISV_TO_USER)) {
+		enable_cap.cap = KVM_CAP_ARM_NISV_TO_USER;
+		if (ioctl(kvm->vm_fd, KVM_ENABLE_CAP, &enable_cap) < 0)
+			die("unable to enable NISV_TO_USER capability");
+	}
+
 	/* Create the virtual GIC. */
 	if (gic__create(kvm, kvm->cfg.arch.irqchip))
 		die("Failed to create virtual GIC");
diff --git a/include/kvm/kvm.h b/include/kvm/kvm.h
index 7a73818..05d90ee 100644
--- a/include/kvm/kvm.h
+++ b/include/kvm/kvm.h
@@ -107,6 +107,7 @@ bool kvm__emulate_io(struct kvm_cpu *vcpu, u16 port, void *data, int direction,
 bool kvm__emulate_mmio(struct kvm_cpu *vcpu, u64 phys_addr, u8 *data, u32 len, u8 is_write);
 int kvm__register_mem(struct kvm *kvm, u64 guest_phys, u64 size, void *userspace_addr,
 		      enum kvm_mem_type type);
+bool kvm__mmio_exists(struct kvm_cpu *vcpu, u64 phys_addr);
 static inline int kvm__register_ram(struct kvm *kvm, u64 guest_phys, u64 size,
 				    void *userspace_addr)
 {
diff --git a/kvm.c b/kvm.c
index 57c4ff9..03ec43f 100644
--- a/kvm.c
+++ b/kvm.c
@@ -55,6 +55,7 @@ const char *kvm_exit_reasons[] = {
 #ifdef CONFIG_PPC64
 	DEFINE_KVM_EXIT_REASON(KVM_EXIT_PAPR_HCALL),
 #endif
+	DEFINE_KVM_EXIT_REASON(KVM_EXIT_ARM_NISV),
 };
 
 static int pause_event;
diff --git a/mmio.c b/mmio.c
index 61e1d47..2ab7fa7 100644
--- a/mmio.c
+++ b/mmio.c
@@ -139,3 +139,14 @@ bool kvm__emulate_mmio(struct kvm_cpu *vcpu, u64 phys_addr, u8 *data, u32 len, u
 
 	return true;
 }
+
+bool kvm__mmio_exists(struct kvm_cpu *vcpu, u64 phys_addr)
+{
+	struct mmio_mapping *mmio;
+
+	br_read_lock(vcpu->kvm);
+	mmio = mmio_search(&mmio_tree, phys_addr, 1);
+	br_read_unlock(vcpu->kvm);
+
+	return mmio != NULL;
+}
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
