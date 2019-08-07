Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B0785078
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:59:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pAUB3ayjd4ey2+ZHnrnRUlqzpXE8fnvBXtWv4uis7Q4=; b=W522QCkyFS1/R5
	p9w61NuR+JUC//Clm48vjjGOHxr4lvcr3EidAjDdMVpy7o+BNxr2O5Olpc2lwDRM4BhykuvwXG5aw
	q2oaUS/L/EGXM1dWf6Yy8cz7jUg7o7Ga8NwQZWQek2Ew013Pl9pfvjRT+fpE3j85xGUmgEUInfKrm
	Vd+yyrDwCARhJP0FFj7BVrxay3/WBvdUclwnLEuMyd2q8L8W2KQapSu1sN9DHZUq0KnDbqS4rJqs6
	GrS/HWxXr50vwg8aTOfBnMBjsxbHhipsh9ltfEpU8U62OL+6e9tKamhHBL4InGJW3EolyA9Q6b3sg
	3WRAzQIqyTOY8ER/k4Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOLR-0000py-H9; Wed, 07 Aug 2019 15:59:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvOIE-0006V0-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:56:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4E9B1570;
 Wed,  7 Aug 2019 08:56:02 -0700 (PDT)
Received: from capper-ampere.manchester.arm.com
 (capper-ampere.manchester.arm.com [10.32.98.74])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 7BB633F706;
 Wed,  7 Aug 2019 08:56:01 -0700 (PDT)
From: Steve Capper <steve.capper@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V5 12/12] docs: arm64: Add layout and 52-bit info to memory
 document
Date: Wed,  7 Aug 2019 16:55:24 +0100
Message-Id: <20190807155524.5112-13-steve.capper@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190807155524.5112-1-steve.capper@arm.com>
References: <20190807155524.5112-1-steve.capper@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_085603_040613_385F13E0 
X-CRM114-Status: GOOD (  18.86  )
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
Cc: crecklin@redhat.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 bhsharma@redhat.com, Steve Capper <steve.capper@arm.com>, maz@kernel.org,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As the kernel no longer prints out the memory layout on boot, this patch
adds this information back to the memory document.

Also, as the 52-bit support introduces some subtle changes to the arm64
memory, the rationale behind these changes are also added to the memory
document.

Signed-off-by: Steve Capper <steve.capper@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>

---

V5: tables reduced to 2, typos fixed.

New in V4
---
 Documentation/arm64/memory.rst | 123 +++++++++++++++++++++++++--------
 1 file changed, 95 insertions(+), 28 deletions(-)

diff --git a/Documentation/arm64/memory.rst b/Documentation/arm64/memory.rst
index 464b880fc4b7..b040909e45f8 100644
--- a/Documentation/arm64/memory.rst
+++ b/Documentation/arm64/memory.rst
@@ -14,6 +14,10 @@ with the 4KB page configuration, allowing 39-bit (512GB) or 48-bit
 64KB pages, only 2 levels of translation tables, allowing 42-bit (4TB)
 virtual address, are used but the memory layout is the same.
 
+ARMv8.2 adds optional support for Large Virtual Address space. This is
+only available when running with a 64KB page size and expands the
+number of descriptors in the first level of translation.
+
 User addresses have bits 63:48 set to 0 while the kernel addresses have
 the same bits set to 1. TTBRx selection is given by bit 63 of the
 virtual address. The swapper_pg_dir contains only kernel (global)
@@ -22,40 +26,43 @@ The swapper_pg_dir address is written to TTBR1 and never written to
 TTBR0.
 
 
-AArch64 Linux memory layout with 4KB pages + 3 levels::
-
-  Start			End			Size		Use
-  -----------------------------------------------------------------------
-  0000000000000000	0000007fffffffff	 512GB		user
-  ffffff8000000000	ffffffffffffffff	 512GB		kernel
-
-
-AArch64 Linux memory layout with 4KB pages + 4 levels::
+AArch64 Linux memory layout with 4KB pages + 4 levels (48-bit)::
 
   Start			End			Size		Use
   -----------------------------------------------------------------------
   0000000000000000	0000ffffffffffff	 256TB		user
-  ffff000000000000	ffffffffffffffff	 256TB		kernel
-
-
-AArch64 Linux memory layout with 64KB pages + 2 levels::
+  ffff000000000000	ffff7fffffffffff	 128TB		kernel logical memory map
+  ffff800000000000	ffff9fffffffffff	  32TB		kasan shadow region
+  ffffa00000000000	ffffa00007ffffff	 128MB		bpf jit region
+  ffffa00008000000	ffffa0000fffffff	 128MB		modules
+  ffffa00010000000	fffffdffbffeffff	 ~93TB		vmalloc
+  fffffdffbfff0000	fffffdfffe5f8fff	~998MB		[guard region]
+  fffffdfffe5f9000	fffffdfffe9fffff	4124KB		fixed mappings
+  fffffdfffea00000	fffffdfffebfffff	   2MB		[guard region]
+  fffffdfffec00000	fffffdffffbfffff	  16MB		PCI I/O space
+  fffffdffffc00000	fffffdffffdfffff	   2MB		[guard region]
+  fffffdffffe00000	ffffffffffdfffff	   2TB		vmemmap
+  ffffffffffe00000	ffffffffffffffff	   2MB		[guard region]
+
+
+AArch64 Linux memory layout with 64KB pages + 3 levels (52-bit with HW support)::
 
   Start			End			Size		Use
   -----------------------------------------------------------------------
-  0000000000000000	000003ffffffffff	   4TB		user
-  fffffc0000000000	ffffffffffffffff	   4TB		kernel
-
-
-AArch64 Linux memory layout with 64KB pages + 3 levels::
-
-  Start			End			Size		Use
-  -----------------------------------------------------------------------
-  0000000000000000	0000ffffffffffff	 256TB		user
-  ffff000000000000	ffffffffffffffff	 256TB		kernel
-
-
-For details of the virtual kernel memory layout please see the kernel
-booting log.
+  0000000000000000	000fffffffffffff	   4PB		user
+  fff0000000000000	fff7ffffffffffff	   2PB		kernel logical memory map
+  fff8000000000000	fffd9fffffffffff	1440TB		[gap]
+  fffda00000000000	ffff9fffffffffff	 512TB		kasan shadow region
+  ffffa00000000000	ffffa00007ffffff	 128MB		bpf jit region
+  ffffa00008000000	ffffa0000fffffff	 128MB		modules
+  ffffa00010000000	fffff81ffffeffff	 ~88TB		vmalloc
+  fffff81fffff0000	fffffc1ffe58ffff	  ~3TB		[guard region]
+  fffffc1ffe590000	fffffc1ffe9fffff	4544KB		fixed mappings
+  fffffc1ffea00000	fffffc1ffebfffff	   2MB		[guard region]
+  fffffc1ffec00000	fffffc1fffbfffff	  16MB		PCI I/O space
+  fffffc1fffc00000	fffffc1fffdfffff	   2MB		[guard region]
+  fffffc1fffe00000	ffffffffffdfffff	3968GB		vmemmap
+  ffffffffffe00000	ffffffffffffffff	   2MB		[guard region]
 
 
 Translation table lookup with 4KB pages::
@@ -83,7 +90,8 @@ Translation table lookup with 64KB pages::
    |                 |    |               |            [15:0]  in-page offset
    |                 |    |               +----------> [28:16] L3 index
    |                 |    +--------------------------> [41:29] L2 index
-   |                 +-------------------------------> [47:42] L1 index
+   |                 +-------------------------------> [47:42] L1 index (48-bit)
+   |                                                   [51:42] L1 index (52-bit)
    +-------------------------------------------------> [63] TTBR0/1
 
 
@@ -96,3 +104,62 @@ ARM64_HARDEN_EL2_VECTORS is selected for particular CPUs.
 
 When using KVM with the Virtualization Host Extensions, no additional
 mappings are created, since the host kernel runs directly in EL2.
+
+52-bit VA support in the kernel
+-------------------------------
+If the ARMv8.2-LVA optional feature is present, and we are running
+with a 64KB page size; then it is possible to use 52-bits of address
+space for both userspace and kernel addresses. However, any kernel
+binary that supports 52-bit must also be able to fall back to 48-bit
+at early boot time if the hardware feature is not present.
+
+This fallback mechanism necessitates the kernel .text to be in the
+higher addresses such that they are invariant to 48/52-bit VAs. Due
+to the kasan shadow being a fraction of the entire kernel VA space,
+the end of the kasan shadow must also be in the higher half of the
+kernel VA space for both 48/52-bit. (Switching from 48-bit to 52-bit,
+the end of the kasan shadow is invariant and dependent on ~0UL,
+whilst the start address will "grow" towards the lower addresses).
+
+In order to optimise phys_to_virt and virt_to_phys, the PAGE_OFFSET
+is kept constant at 0xFFF0000000000000 (corresponding to 52-bit),
+this obviates the need for an extra variable read. The physvirt
+offset and vmemmap offsets are computed at early boot to enable
+this logic.
+
+As a single binary will need to support both 48-bit and 52-bit VA
+spaces, the VMEMMAP must be sized large enough for 52-bit VAs and
+also must be sized large enought to accommodate a fixed PAGE_OFFSET.
+
+Most code in the kernel should not need to consider the VA_BITS, for
+code that does need to know the VA size the variables are
+defined as follows:
+
+VA_BITS		constant	the *maximum* VA space size
+
+VA_BITS_MIN	constant	the *minimum* VA space size
+
+vabits_actual	variable	the *actual* VA space size
+
+
+Maximum and minimum sizes can be useful to ensure that buffers are
+sized large enough or that addresses are positioned close enough for
+the "worst" case.
+
+52-bit userspace VAs
+--------------------
+To maintain compatibility with software that relies on the ARMv8.0
+VA space maximum size of 48-bits, the kernel will, by default,
+return virtual addresses to userspace from a 48-bit range.
+
+Software can "opt-in" to receiving VAs from a 52-bit space by
+specifying an mmap hint parameter that is larger than 48-bit.
+For example:
+    maybe_high_address = mmap(~0UL, size, prot, flags,...);
+
+It is also possible to build a debug kernel that returns addresses
+from a 52-bit space by enabling the following kernel config options:
+   CONFIG_EXPERT=y && CONFIG_ARM64_FORCE_52BIT=y
+
+Note that this option is only intended for debugging applications
+and should not be used in production.
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
