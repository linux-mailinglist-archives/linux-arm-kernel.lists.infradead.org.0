Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6544AD8A8
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 14:14:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CuAbI9hwoNyu6dS9I/efLfAOomOJJDedDgfqvUjVeik=; b=UYd/lwjQffNCaK4WvJK7ZE/Iit
	ccQbTA8hhJabH0AjM6NxzcPaTLUs6c3aHZI7LgrJ7Qlc78QCFAHbYQvIZBkQjis0ZIHu6FdIcEhyW
	0oudh9v+kxqjNeZ5GvlK6Opeq47oDLRdDJREFuwau1tLphbdes2UsXUEfawiX9Gr6dlRqaDJ+Dynm
	QWYx/fMFNu3VfaBlX7URxKYhyDDJYtOrGwrJQERKGkSAgDlEQOMxlADaKJ99ed7/Yl5nH/2KyK3s8
	d2+av36tA5b6fGy78WGU8pO/1IynEcL4xY8EnjsRBGxlFIpAPpD08g5y0iH6zqXcf7FQ0kQ/ZPSck
	NGFxsqEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7IZG-0007j9-AY; Mon, 09 Sep 2019 12:14:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i7IYS-0006lA-H9
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 12:14:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDB2F1570;
 Mon,  9 Sep 2019 05:13:59 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 240513F59C;
 Mon,  9 Sep 2019 05:13:56 -0700 (PDT)
From: Christoffer Dall <christoffer.dall@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [kvmtool PATCH 5/5] arm: Inject external data aborts when accessing
 holes in the memory map
Date: Mon,  9 Sep 2019 14:13:37 +0200
Message-Id: <20190909121337.27287-6-christoffer.dall@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909121337.27287-1-christoffer.dall@arm.com>
References: <20190909121337.27287-1-christoffer.dall@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_051400_702461_5318793F 
X-CRM114-Status: GOOD (  13.24  )
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

Occasionally guests will attempt to access parts of the guest memory map
where there is... nothing at all.  Until now, we've handled this by
either forcefully killing the guest, or silently (unless a debug option
was enabled) ignoring the access.  Neither is very helpful to a user,
who is most likely running either a broken or misconfigured guest.

A more appropriate action is to inject an external abort to the guest.
Luckily, with KVM_CAP_ARM_INJECT_EXT_DABT, we can use the set event
mechanism and ask KVM to do this for us.

So we add an architecture specific hook to handle accesses to MMIO
regions which cannot be found, and allow them to return if the invalid
access was handled or not.

Signed-off-by: Christoffer Dall <christoffer.dall@arm.com>
---
 arm/include/arm-common/kvm-cpu-arch.h | 16 ++++++++++++++++
 arm/kvm-cpu.c                         |  2 +-
 mips/include/kvm/kvm-cpu-arch.h       |  5 +++++
 mmio.c                                |  3 ++-
 powerpc/include/kvm/kvm-cpu-arch.h    |  5 +++++
 x86/include/kvm/kvm-cpu-arch.h        |  5 +++++
 6 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/arm/include/arm-common/kvm-cpu-arch.h b/arm/include/arm-common/kvm-cpu-arch.h
index 923d2c4..33defa2 100644
--- a/arm/include/arm-common/kvm-cpu-arch.h
+++ b/arm/include/arm-common/kvm-cpu-arch.h
@@ -57,6 +57,22 @@ static inline bool kvm_cpu__emulate_mmio(struct kvm_cpu *vcpu, u64 phys_addr,
 	return kvm__emulate_mmio(vcpu, phys_addr, data, len, is_write);
 }
 
+static inline bool kvm_cpu__mmio_not_found(struct kvm_cpu *vcpu, u64 phys_addr)
+{
+	struct kvm_vcpu_events events = {
+		.exception.ext_dabt_pending = 1,
+	};
+	int err;
+
+	if (!kvm__supports_extension(vcpu->kvm, KVM_CAP_ARM_INJECT_EXT_DABT))
+		return false;
+
+	err = ioctl(vcpu->vcpu_fd, KVM_SET_VCPU_EVENTS, &events);
+	if (err)
+		die("failed to inject external abort");
+	return true;
+}
+
 unsigned long kvm_cpu__get_vcpu_mpidr(struct kvm_cpu *vcpu);
 
 #endif /* ARM_COMMON__KVM_CPU_ARCH_H */
diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
index 25bd3ed..321a3e4 100644
--- a/arm/kvm-cpu.c
+++ b/arm/kvm-cpu.c
@@ -142,7 +142,7 @@ bool kvm_cpu__handle_exit(struct kvm_cpu *vcpu)
 
 		if (!arm_addr_in_ioport_region(phys_addr) &&
 		    !kvm__mmio_exists(vcpu, phys_addr))
-			die("Guest accessed memory outside RAM and IO ranges");
+			return kvm_cpu__mmio_not_found(vcpu, phys_addr);
 
 		/*
 		 * We cannot fetch and decode instructions from a KVM guest,
diff --git a/mips/include/kvm/kvm-cpu-arch.h b/mips/include/kvm/kvm-cpu-arch.h
index 45e69f6..512ab34 100644
--- a/mips/include/kvm/kvm-cpu-arch.h
+++ b/mips/include/kvm/kvm-cpu-arch.h
@@ -40,4 +40,9 @@ static inline bool kvm_cpu__emulate_mmio(struct kvm_cpu *vcpu, u64 phys_addr, u8
 	return kvm__emulate_mmio(vcpu, phys_addr, data, len, is_write);
 }
 
+static inline bool kvm_cpu__mmio_not_found(struct kvm_cpu *vcpu, u64 phys_addr)
+{
+	return false;
+}
+
 #endif /* KVM__KVM_CPU_ARCH_H */
diff --git a/mmio.c b/mmio.c
index 2ab7fa7..d6df303 100644
--- a/mmio.c
+++ b/mmio.c
@@ -130,7 +130,8 @@ bool kvm__emulate_mmio(struct kvm_cpu *vcpu, u64 phys_addr, u8 *data, u32 len, u
 	if (mmio)
 		mmio->mmio_fn(vcpu, phys_addr, data, len, is_write, mmio->ptr);
 	else {
-		if (vcpu->kvm->cfg.mmio_debug)
+		if (!kvm_cpu__mmio_not_found(vcpu, phys_addr) &&
+		    vcpu->kvm->cfg.mmio_debug)
 			fprintf(stderr,	"Warning: Ignoring MMIO %s at %016llx (length %u)\n",
 				to_direction(is_write),
 				(unsigned long long)phys_addr, len);
diff --git a/powerpc/include/kvm/kvm-cpu-arch.h b/powerpc/include/kvm/kvm-cpu-arch.h
index a69e0cc..64b69b1 100644
--- a/powerpc/include/kvm/kvm-cpu-arch.h
+++ b/powerpc/include/kvm/kvm-cpu-arch.h
@@ -76,4 +76,9 @@ static inline bool kvm_cpu__emulate_io(struct kvm_cpu *vcpu, u16 port, void *dat
 
 bool kvm_cpu__emulate_mmio(struct kvm_cpu *vcpu, u64 phys_addr, u8 *data, u32 len, u8 is_write);
 
+static inline bool kvm_cpu__mmio_not_found(struct kvm_cpu *vcpu, u64 phys_addr)
+{
+	return false;
+}
+
 #endif /* KVM__KVM_CPU_ARCH_H */
diff --git a/x86/include/kvm/kvm-cpu-arch.h b/x86/include/kvm/kvm-cpu-arch.h
index 05e5bb6..10cbe6e 100644
--- a/x86/include/kvm/kvm-cpu-arch.h
+++ b/x86/include/kvm/kvm-cpu-arch.h
@@ -47,4 +47,9 @@ static inline bool kvm_cpu__emulate_mmio(struct kvm_cpu *vcpu, u64 phys_addr, u8
 	return kvm__emulate_mmio(vcpu, phys_addr, data, len, is_write);
 }
 
+static inline bool kvm_cpu__mmio_not_found(struct kvm_cpu *vcpu, u64 phys_addr)
+{
+	return false;
+}
+
 #endif /* KVM__KVM_CPU_ARCH_H */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
