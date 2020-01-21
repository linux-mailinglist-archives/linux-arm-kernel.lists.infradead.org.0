Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028BE1447CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 23:37:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YNkDJg3GTajzcnYER0MJy1BJBw46+rhwKREAmqlX+Rc=; b=FH+RH/ZGI/24dy
	rE/a31oy/RlzAsBsBOU0kU58CW3Mo4Joea6Sv9cU+YniVSmYeosKuBZP48ytTPjIDdU/k0XCC8Ff6
	PlzntE3232rlBgY7Z3m3x1CB9/W6LcT2+m7QPJG+Ls9yppbkBGTMsG0ZBY7ZZMMnJkpUCWiGYy2Uf
	f7MT3RKJXhwS/wz8l20URHE764RbJS5R7C2M2waI0h6C39xDmXv0b54NgMtFpVPY3zC/4m4gc0FjK
	RixaTMzb68SNUAfoyKcgJ4vXgIstzz5BYykGX1JmM4kaz9luvNtx/u5X2h7vocWPbW2AQkM0HbDVU
	NFHOw54j3DhGu3KRXgkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu29M-00086J-JZ; Tue, 21 Jan 2020 22:37:32 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu24J-0002I5-AC
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 22:32:21 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Jan 2020 14:32:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,347,1574150400"; d="scan'208";a="244845183"
Received: from sjchrist-coffee.jf.intel.com ([10.54.74.202])
 by orsmga002.jf.intel.com with ESMTP; 21 Jan 2020 14:32:04 -0800
From: Sean Christopherson <sean.j.christopherson@intel.com>
To: Paolo Bonzini <pbonzini@redhat.com>
Subject: [PATCH v5 19/19] KVM: selftests: Add test for
 KVM_SET_USER_MEMORY_REGION
Date: Tue, 21 Jan 2020 14:31:57 -0800
Message-Id: <20200121223157.15263-20-sean.j.christopherson@intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200121223157.15263-1-sean.j.christopherson@intel.com>
References: <20200121223157.15263-1-sean.j.christopherson@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_143219_434088_2A7C13B5 
X-CRM114-Status: GOOD (  20.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: Wanpeng Li <wanpengli@tencent.com>, kvm@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, Paul Mackerras <paulus@ozlabs.org>,
 kvmarm@lists.cs.columbia.edu, Janosch Frank <frankja@linux.ibm.com>,
 Marc Zyngier <maz@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvm-ppc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Jim Mattson <jmattson@google.com>,
 Cornelia Huck <cohuck@redhat.com>, Christoffer Dall <christoffer.dall@arm.com>,
 Sean Christopherson <sean.j.christopherson@intel.com>,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>,
 =?UTF-8?q?Philippe=20Mathieu-Daud=C3=A9?= <f4bug@amsat.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a KVM selftest to test moving the base gfn of a userspace memory
region.  Although the basic concept of moving memory regions is not x86
specific, the assumptions regarding large pages and MMIO shenanigans
used to verify the correctness make this x86_64 only for the time being.

Signed-off-by: Sean Christopherson <sean.j.christopherson@intel.com>
---
 tools/testing/selftests/kvm/.gitignore        |   1 +
 tools/testing/selftests/kvm/Makefile          |   1 +
 .../testing/selftests/kvm/include/kvm_util.h  |   1 +
 tools/testing/selftests/kvm/lib/kvm_util.c    |  30 ++++
 .../kvm/x86_64/set_memory_region_test.c       | 142 ++++++++++++++++++
 5 files changed, 175 insertions(+)
 create mode 100644 tools/testing/selftests/kvm/x86_64/set_memory_region_test.c

diff --git a/tools/testing/selftests/kvm/.gitignore b/tools/testing/selftests/kvm/.gitignore
index 30072c3f52fb..513d340bfda7 100644
--- a/tools/testing/selftests/kvm/.gitignore
+++ b/tools/testing/selftests/kvm/.gitignore
@@ -5,6 +5,7 @@
 /x86_64/hyperv_cpuid
 /x86_64/mmio_warning_test
 /x86_64/platform_info_test
+/x86_64/set_memory_region_test
 /x86_64/set_sregs_test
 /x86_64/smm_test
 /x86_64/state_test
diff --git a/tools/testing/selftests/kvm/Makefile b/tools/testing/selftests/kvm/Makefile
index 3138a916574a..03b218b3b33e 100644
--- a/tools/testing/selftests/kvm/Makefile
+++ b/tools/testing/selftests/kvm/Makefile
@@ -17,6 +17,7 @@ TEST_GEN_PROGS_x86_64 += x86_64/evmcs_test
 TEST_GEN_PROGS_x86_64 += x86_64/hyperv_cpuid
 TEST_GEN_PROGS_x86_64 += x86_64/mmio_warning_test
 TEST_GEN_PROGS_x86_64 += x86_64/platform_info_test
+TEST_GEN_PROGS_x86_64 += x86_64/set_memory_region_test
 TEST_GEN_PROGS_x86_64 += x86_64/set_sregs_test
 TEST_GEN_PROGS_x86_64 += x86_64/smm_test
 TEST_GEN_PROGS_x86_64 += x86_64/state_test
diff --git a/tools/testing/selftests/kvm/include/kvm_util.h b/tools/testing/selftests/kvm/include/kvm_util.h
index 29cccaf96baf..15d3b8690ffb 100644
--- a/tools/testing/selftests/kvm/include/kvm_util.h
+++ b/tools/testing/selftests/kvm/include/kvm_util.h
@@ -100,6 +100,7 @@ int _vcpu_ioctl(struct kvm_vm *vm, uint32_t vcpuid, unsigned long ioctl,
 		void *arg);
 void vm_ioctl(struct kvm_vm *vm, unsigned long ioctl, void *arg);
 void vm_mem_region_set_flags(struct kvm_vm *vm, uint32_t slot, uint32_t flags);
+void vm_mem_region_move(struct kvm_vm *vm, uint32_t slot, uint64_t new_gpa);
 void vm_vcpu_add(struct kvm_vm *vm, uint32_t vcpuid);
 vm_vaddr_t vm_vaddr_alloc(struct kvm_vm *vm, size_t sz, vm_vaddr_t vaddr_min,
 			  uint32_t data_memslot, uint32_t pgd_memslot);
diff --git a/tools/testing/selftests/kvm/lib/kvm_util.c b/tools/testing/selftests/kvm/lib/kvm_util.c
index 41cf45416060..464a75ce9843 100644
--- a/tools/testing/selftests/kvm/lib/kvm_util.c
+++ b/tools/testing/selftests/kvm/lib/kvm_util.c
@@ -756,6 +756,36 @@ void vm_mem_region_set_flags(struct kvm_vm *vm, uint32_t slot, uint32_t flags)
 		ret, errno, slot, flags);
 }
 
+/*
+ * VM Memory Region Move
+ *
+ * Input Args:
+ *   vm - Virtual Machine
+ *   slot - Slot of the memory region to move
+ *   flags - Starting guest physical address
+ *
+ * Output Args: None
+ *
+ * Return: None
+ *
+ * Change the gpa of a memory region.
+ */
+void vm_mem_region_move(struct kvm_vm *vm, uint32_t slot, uint64_t new_gpa)
+{
+	struct userspace_mem_region *region;
+	int ret;
+
+	region = memslot2region(vm, slot);
+
+	region->region.guest_phys_addr = new_gpa;
+
+	ret = ioctl(vm->fd, KVM_SET_USER_MEMORY_REGION, &region->region);
+
+	TEST_ASSERT(!ret, "KVM_SET_USER_MEMORY_REGION failed\n"
+		    "ret: %i errno: %i slot: %u flags: 0x%x",
+		    ret, errno, slot, new_gpa);
+}
+
 /*
  * VCPU mmap Size
  *
diff --git a/tools/testing/selftests/kvm/x86_64/set_memory_region_test.c b/tools/testing/selftests/kvm/x86_64/set_memory_region_test.c
new file mode 100644
index 000000000000..125aeab59ab6
--- /dev/null
+++ b/tools/testing/selftests/kvm/x86_64/set_memory_region_test.c
@@ -0,0 +1,142 @@
+// SPDX-License-Identifier: GPL-2.0
+#define _GNU_SOURCE /* for program_invocation_short_name */
+#include <fcntl.h>
+#include <pthread.h>
+#include <sched.h>
+#include <signal.h>
+#include <stdio.h>
+#include <stdlib.h>
+#include <string.h>
+#include <sys/ioctl.h>
+
+#include <linux/compiler.h>
+
+#include <test_util.h>
+#include <kvm_util.h>
+#include <processor.h>
+
+#define VCPU_ID 0
+
+/*
+ * Somewhat arbitrary location and slot, intended to not overlap anything.  The
+ * location and size are specifically 2mb sized/aligned so that the initial
+ * region corresponds to exactly one large page.
+ */
+#define MEM_REGION_GPA		0xc0000000
+#define MEM_REGION_SIZE		0x200000
+#define MEM_REGION_SLOT		10
+
+static void guest_code(void)
+{
+	uint64_t val;
+
+	do {
+		val = READ_ONCE(*((uint64_t *)MEM_REGION_GPA));
+	} while (!val);
+
+	if (val != 1)
+		ucall(UCALL_ABORT, 1, val);
+
+	GUEST_DONE();
+}
+
+static void *vcpu_worker(void *data)
+{
+	struct kvm_vm *vm = data;
+	struct kvm_run *run;
+	struct ucall uc;
+	uint64_t cmd;
+
+	/*
+	 * Loop until the guest is done.  Re-enter the guest on all MMIO exits,
+	 * which will occur if the guest attempts to access a memslot while it
+	 * is being moved.
+	 */
+	run = vcpu_state(vm, VCPU_ID);
+	do {
+		vcpu_run(vm, VCPU_ID);
+	} while (run->exit_reason == KVM_EXIT_MMIO);
+
+	TEST_ASSERT(run->exit_reason == KVM_EXIT_IO,
+		    "Unexpected exit reason = %d", run->exit_reason);
+
+	cmd = get_ucall(vm, VCPU_ID, &uc);
+	TEST_ASSERT(cmd == UCALL_DONE, "Unexpected val in guest = %llu",
+		    uc.args[0]);
+	return NULL;
+}
+
+static void test_move_memory_region(void)
+{
+	pthread_t vcpu_thread;
+	struct kvm_vm *vm;
+	uint64_t *hva;
+	uint64_t gpa;
+
+	vm = vm_create_default(VCPU_ID, 0, guest_code);
+
+	vcpu_set_cpuid(vm, VCPU_ID, kvm_get_supported_cpuid());
+
+	vm_userspace_mem_region_add(vm, VM_MEM_SRC_ANONYMOUS_THP,
+				    MEM_REGION_GPA, MEM_REGION_SLOT,
+				    MEM_REGION_SIZE / getpagesize(), 0);
+
+	/*
+	 * Allocate and map two pages so that the GPA accessed by guest_code()
+	 * stays valid across the memslot move.
+	 */
+	gpa = vm_phy_pages_alloc(vm, 2, MEM_REGION_GPA, MEM_REGION_SLOT);
+	TEST_ASSERT(gpa == MEM_REGION_GPA, "Failed vm_phy_pages_alloc\n");
+
+	virt_map(vm, MEM_REGION_GPA, MEM_REGION_GPA, 2 * 4096, 0);
+
+	/* Ditto for the host mapping so that both pages can be zeroed. */
+	hva = addr_gpa2hva(vm, MEM_REGION_GPA);
+	memset(hva, 0, 2 * 4096);
+
+	pthread_create(&vcpu_thread, NULL, vcpu_worker, vm);
+
+	/* Ensure the guest thread is spun up. */
+	usleep(100000);
+
+	/*
+	 * Shift the region's base GPA.  The guest should not see "2" as the
+	 * hva->gpa translation is misaligned, i.e. the guest is accessing a
+	 * different host pfn.
+	 */
+	vm_mem_region_move(vm, MEM_REGION_SLOT, MEM_REGION_GPA - 4096);
+	WRITE_ONCE(*hva, 2);
+
+	usleep(100000);
+
+	/*
+	 * Note, value in memory needs to be changed *before* restoring the
+	 * memslot, else the guest could race the update and see "2".
+	 */
+	WRITE_ONCE(*hva, 1);
+
+	/* Restore the original base, the guest should see "1". */
+	vm_mem_region_move(vm, MEM_REGION_SLOT, MEM_REGION_GPA);
+
+	pthread_join(vcpu_thread, NULL);
+
+	kvm_vm_free(vm);
+}
+
+int main(int argc, char *argv[])
+{
+	int i, loops;
+
+	/* Tell stdout not to buffer its content */
+	setbuf(stdout, NULL);
+
+	if (argc > 1)
+		loops = atoi(argv[1]);
+	else
+		loops = 10;
+
+	for (i = 0; i < loops; i++)
+		test_move_memory_region();
+
+	return 0;
+}
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
