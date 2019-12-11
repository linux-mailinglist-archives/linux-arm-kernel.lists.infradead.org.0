Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0938411BC26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfV0raABIGpZp1rkNOq5ihoUdtOIiJyaZjmiMbZF7rM=; b=nvLD6U/M9BMv06
	C9cyVPs+CiBhQi3ky3tr58Nqm1jHovCxHRbNMHJZYh2l6tuXPDznV8w1eqp2mUUgeqpmCpFSMUcBE
	hSC3RNUXc74zsRorseSBYDYq1B420JXmkCbQMydlA9hKXuzeOL/+C/fYS9dbGO/NPAxKntoU70pdO
	WlKq4l8ZvRuVKKEPM3H4mukS/aJ/6F9M6IEoFUksECUeUQ5YSxtIo0tcBSfAnHk0QHvfPjTcUOe6x
	NgMcLF07Fcn+y8OqpnlAJ85TcSirng3Gud1GrH1sUtEiYf1mYmRrbWE++v8iAWTK9cDgL2CQnyGmJ
	4MMviJdyaW4e7RR0i6FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if70I-0001CR-2q; Wed, 11 Dec 2019 18:46:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6vC-0003VV-AR
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:41:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2D83E1509;
 Wed, 11 Dec 2019 10:41:14 -0800 (PST)
Received: from arrakis.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B8FAD3F6CF;
 Wed, 11 Dec 2019 10:41:12 -0800 (PST)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 22/22] arm64: mte: Add Memory Tagging Extension documentation
Date: Wed, 11 Dec 2019 18:40:27 +0000
Message-Id: <20191211184027.20130-23-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211184027.20130-1-catalin.marinas@arm.com>
References: <20191211184027.20130-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_104114_559306_0DE7264B 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Vincenzo Frascino <vincenzo.frascino@arm.com>

Memory Tagging Extension (part of the ARMv8.5 Extensions) provides
a mechanism to detect the sources of memory related errors which
may be vulnerable to exploitation, including bounds violations,
use-after-free, use-after-return, use-out-of-scope and use before
initialization errors.

Add Memory Tagging Extension documentation for the arm64 linux
kernel support.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Co-developed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
---
 Documentation/arm64/cpu-feature-registers.rst |   4 +
 Documentation/arm64/elf_hwcaps.rst            |   4 +
 Documentation/arm64/index.rst                 |   1 +
 .../arm64/memory-tagging-extension.rst        | 229 ++++++++++++++++++
 4 files changed, 238 insertions(+)
 create mode 100644 Documentation/arm64/memory-tagging-extension.rst

diff --git a/Documentation/arm64/cpu-feature-registers.rst b/Documentation/arm64/cpu-feature-registers.rst
index b6e44884e3ad..67305a5f613a 100644
--- a/Documentation/arm64/cpu-feature-registers.rst
+++ b/Documentation/arm64/cpu-feature-registers.rst
@@ -172,8 +172,12 @@ infrastructure:
      +------------------------------+---------+---------+
      | Name                         |  bits   | visible |
      +------------------------------+---------+---------+
+     | MTE                          | [11-8]  |    y    |
+     +------------------------------+---------+---------+
      | SSBS                         | [7-4]   |    y    |
      +------------------------------+---------+---------+
+     | BT                           | [3-0]   |    n    |
+     +------------------------------+---------+---------+
 
 
   4) MIDR_EL1 - Main ID Register
diff --git a/Documentation/arm64/elf_hwcaps.rst b/Documentation/arm64/elf_hwcaps.rst
index 7fa3d215ae6a..0f52d22c28af 100644
--- a/Documentation/arm64/elf_hwcaps.rst
+++ b/Documentation/arm64/elf_hwcaps.rst
@@ -204,6 +204,10 @@ HWCAP2_FRINT
 
     Functionality implied by ID_AA64ISAR1_EL1.FRINTTS == 0b0001.
 
+HWCAP2_MTE
+
+    Functionality implied by ID_AA64PFR1_EL1.MTE == 0b0010.
+    Documentation/arm64/memory-tagging-extension.rst.
 
 4. Unused AT_HWCAP bits
 -----------------------
diff --git a/Documentation/arm64/index.rst b/Documentation/arm64/index.rst
index 5c0c69dc58aa..82970c6d384f 100644
--- a/Documentation/arm64/index.rst
+++ b/Documentation/arm64/index.rst
@@ -13,6 +13,7 @@ ARM64 Architecture
     hugetlbpage
     legacy_instructions
     memory
+    memory-tagging-extension
     pointer-authentication
     silicon-errata
     sve
diff --git a/Documentation/arm64/memory-tagging-extension.rst b/Documentation/arm64/memory-tagging-extension.rst
new file mode 100644
index 000000000000..ae02f0771971
--- /dev/null
+++ b/Documentation/arm64/memory-tagging-extension.rst
@@ -0,0 +1,229 @@
+===============================================
+Memory Tagging Extension (MTE) in AArch64 Linux
+===============================================
+
+Authors: Vincenzo Frascino <vincenzo.frascino@arm.com>
+         Catalin Marinas <catalin.marinas@arm.com>
+
+Date: 2019-11-29
+
+This document describes the provision of the Memory Tagging Extension
+functionality in AArch64 Linux.
+
+Introduction
+============
+
+ARMv8.5 based processors introduce the Memory Tagging Extension (MTE)
+feature. MTE is built on top of the ARMv8.0 virtual address tagging TBI
+(Top Byte Ignore) feature and allows software to access a 4-bit
+allocation tag for each 16-byte granule in the physical address space.
+Such memory range must be mapped with the Normal-Tagged memory
+attribute. A logical tag is derived from bits 59-56 of the virtual
+address used for the memory access. A CPU with MTE enabled will compare
+the logical tag against the allocation tag and potentially raise an
+exception on mismatch, subject to system registers configuration.
+
+Userspace Support
+=================
+
+Memory Tagging Extension Linux support depends on AArch64 Tagged Address
+ABI being enabled in the kernel. For more details on AArch64 Tagged
+Address ABI refer to Documentation/arm64/tagged-address-abi.rst.
+
+When ``CONFIG_ARM64_MTE`` is selected and Memory Tagging Extension is
+supported by the hardware, the kernel advertises the feature to
+userspace via ``HWCAP2_MTE``.
+
+PROT_MTE
+--------
+
+To access the allocation tags, a user process must enable the Tagged
+memory attribute on an address range using a new ``prot`` flag for
+``mmap()`` and ``mprotect()``:
+
+``PROT_MTE`` - Pages allow access to the MTE allocation tags.
+
+The allocation tag is set to 0 when such pages are first mapped in the
+user address space and preserved on copy-on-write. ``MAP_SHARED`` is
+supported and the allocation tags can be shared between processes.
+
+**Note**: ``PROT_MTE`` is only supported on ``MAP_ANONYMOUS`` and
+RAM-based file mappings (``tmpfs``, ``memfd``). Passing it to other
+types of mapping will result in ``-EINVAL`` returned by these system
+calls.
+
+**Note**: The ``PROT_MTE`` flag (and corresponding memory type) cannot
+be cleared by ``mprotect()``. If this is desirable, ``munmap()``
+(followed by ``mmap()``) must be used.
+
+Tag Check Faults
+----------------
+
+When ``PROT_MTE`` is enabled on an address range and a mismatch between
+the logical and allocation tags occurs on access, there are three
+configurable behaviours:
+
+- *Ignore* - This is the default mode. The CPU (and kernel) ignores the
+  tag check fault.
+
+- *Synchronous* - The kernel raises a ``SIGSEGV`` synchronously, with
+  ``.si_code = SEGV_MTESERR`` and ``.si_addr = <fault-address>``. The
+  memory access is not performed.
+
+- *Asynchronous* - The kernel raises a ``SIGSEGV``, in the current
+  thread, asynchronously following one or multiple tag check faults,
+  with ``.si_code = SEGV_MTEAERR`` and ``.si_addr = 0``.
+
+**Note**: There are no *match-all* logical tags available for user
+applications.
+
+The user can select the above modes, per thread, using the
+``prctl(PR_SET_TAGGED_ADDR_CTRL, flags, 0, 0, 0)`` system call where
+``flags`` contain one of the following values in the ``PR_MTE_TCF_MASK``
+bit-field:
+
+- ``PR_MTE_TCF_NONE``  - *Ignore* tag check faults
+- ``PR_MTE_TCF_SYNC``  - *Synchronous* tag check fault mode
+- ``PR_MTE_TCF_ASYNC`` - *Asynchronous* tag check fault mode
+
+Tag checking can also be disabled for a user thread by setting the
+``PSTATE.TCO`` bit with ``MSR TCO, #1``.
+
+**Note**: Signal handlers are always invoked with ``PSTATE.TCO = 0``,
+irrespective of the interrupted context.
+
+**Note**: Kernel accesses to user memory (e.g. ``read()`` system call)
+do not generate a tag check fault.
+
+Excluding Tags in the ``IRG``, ``ADDG`` and ``SUBG`` instructions
+-----------------------------------------------------------------
+
+The architecture allows excluding certain tags to be randomly generated
+via the ``GCR_EL1.Exclude`` register bit-field. This can be configured,
+per thread, using the ``prctl(PR_SET_TAGGED_ADDR_CTRL, flags, 0, 0, 0)``
+system call where ``flags`` contains the exclusion bitmap in the
+``PR_MTE_EXCL_MASK`` bit-field.
+
+Example of correct usage
+========================
+
+*MTE Example code*
+
+.. code-block:: c
+
+    /*
+     * To be compiled with -march=armv8.5-a+memtag
+     */
+    #include <errno.h>
+    #include <stdio.h>
+    #include <stdlib.h>
+    #include <unistd.h>
+    #include <sys/auxv.h>
+    #include <sys/mman.h>
+    #include <sys/prctl.h>
+
+    /*
+     * From arch/arm64/include/uapi/asm/hwcap.h
+     */
+    #define HWCAP2_MTE              (1 << 10)
+
+    /*
+     * From arch/arm64/include/uapi/asm/mman.h
+     */
+    #define PROT_MTE                 0x20
+
+    /*
+     * From include/uapi/linux/prctl.h
+     */
+    #define PR_SET_TAGGED_ADDR_CTRL 55
+    #define PR_GET_TAGGED_ADDR_CTRL 56
+    # define PR_TAGGED_ADDR_ENABLE  (1UL << 0)
+    # define PR_MTE_TCF_SHIFT       1
+    # define PR_MTE_TCF_NONE        (0UL << PR_MTE_TCF_SHIFT)
+    # define PR_MTE_TCF_SYNC        (1UL << PR_MTE_TCF_SHIFT)
+    # define PR_MTE_TCF_ASYNC       (2UL << PR_MTE_TCF_SHIFT)
+    # define PR_MTE_TCF_MASK        (3UL << PR_MTE_TCF_SHIFT)
+    # define PR_MTE_EXCL_SHIFT      3
+    # define PR_MTE_EXCL_MASK       (0xffffUL << PR_MTE_EXCL_SHIFT)
+
+    /*
+     * Insert a random logical tag into the given pointer.
+     */
+    #define insert_random_tag(ptr) ({                       \
+            __u64 __val;                                    \
+            asm("irg %0, %1" : "=r" (__val) : "r" (ptr));   \
+            __val;                                          \
+    })
+
+    /*
+     * Set the allocation tag on the destination address.
+     */
+    #define set_tag(tag, addr) do {                                 \
+            asm volatile("stg %0, [%1]" : : "r" (tag), "r" (addr)); \
+    } while (0)
+
+    int main()
+    {
+            unsigned long *a;
+            unsigned long page_sz = getpagesize();
+            unsigned long hwcap2 = getauxval(AT_HWCAP2);
+
+            /* check if MTE is present */
+            if (!(hwcap2 & HWCAP2_MTE))
+                    return -1;
+
+            /*
+             * Enable the tagged address ABI, synchronous MTE tag check faults and
+             * exclude tag 0 from the randomly generated set.
+             */
+            if (prctl(PR_SET_TAGGED_ADDR_CTRL,
+                      PR_TAGGED_ADDR_ENABLE | PR_MTE_TCF_SYNC | (1 << PR_MTE_EXCL_SHIFT),
+                      0, 0, 0)) {
+                    perror("prctl() failed");
+                    return -1;
+            }
+
+            a = mmap(0, page_sz, PROT_READ | PROT_WRITE,
+                     MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
+            if (a == MAP_FAILED) {
+                    perror("mmap() failed");
+                    return -1;
+            }
+
+            /*
+             * Enable MTE on the above anonymous mmap. The flag could be passed
+             * directly to mmap() and skip this step.
+             */
+            if (mprotect(a, page_sz, PROT_READ | PROT_WRITE | PROT_MTE)) {
+                    perror("mprotect() failed");
+                    return -1;
+            }
+
+            /* access with the default tag (0) */
+            a[0] = 1;
+            a[1] = 2;
+
+            printf("a[0] = %lu a[1] = %lu\n", a[0], a[1]);
+
+            /* set the logical and allocation tags */
+            a = (unsigned long *)insert_random_tag(a);
+            set_tag(a, a);
+
+            printf("%p\n", a);
+
+            /* non-zero tag access */
+            a[0] = 3;
+            printf("a[0] = %lu a[1] = %lu\n", a[0], a[1]);
+
+            /*
+             * If MTE is enabled correctly the next instruction will generate an
+             * exception.
+             */
+            printf("Expecting SIGSEGV...\n");
+            a[2] = 0xdead;
+
+            /* this should not be printed in the PR_MTE_TCF_SYNC mode */
+            printf("...done\n");
+
+            return 0;
+    }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
