Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E45DE428AA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:21:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pminBBkYstkITQTIoMsjJmM4j+bErshkd7cbU9uD5g=; b=Z1mDM1SOmc4Igc
	HmMNwuWQK456rhrz8i8UQBZXPSd296fmMVd5bwB2rdUAq/2bU7QFzwRE+MFTqHJbq5QB5Og9tUFAo
	iwhsRXsAkfBU2HkrqUexF15wFMigrtyoGlDKzJ0GhcBhVE3ZBxSSGAZM5xXC/lg83Nq4Z+6XtBpaH
	OgFK1UdyevfaUL5Wcf4nGNCFggi6BPyeHj0cMTBMtoHX+O4J29v//NbPsFX7StFREX/7nbckggkv7
	9JwMC55zGVslPdRNMn9qCAiSnFe9aF93caBD3bW8PKJh+dZWyMSGM4VWTlc8bvKINL2RqxhujLP+n
	CuevprT6nWJju7/odY+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb48Q-0002uq-JX; Wed, 12 Jun 2019 14:21:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb480-0002gj-Fh
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:21:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6C827337;
 Wed, 12 Jun 2019 07:21:27 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 184D13F557;
 Wed, 12 Jun 2019 07:21:25 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org,
 linux-mm@kvack.org, linux-arch@vger.kernel.org,
 linux-kselftest@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] arm64: Define
 Documentation/arm64/tagged-address-abi.txt
Date: Wed, 12 Jun 2019 15:21:10 +0100
Message-Id: <20190612142111.28161-2-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190612142111.28161-1-vincenzo.frascino@arm.com>
References: <cover.1560339705.git.andreyknvl@google.com>
 <20190612142111.28161-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_072128_609535_6C281A70 
X-CRM114-Status: GOOD (  21.80  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Andrey Konovalov <andreyknvl@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On arm64 the TCR_EL1.TBI0 bit has been always enabled hence
the userspace (EL0) is allowed to set a non-zero value in the
top byte but the resulting pointers are not allowed at the
user-kernel syscall ABI boundary.

With the relaxed ABI proposed through this document, it is now possible
to pass tagged pointers to the syscalls, when these pointers are in
memory ranges obtained by an anonymous (MAP_ANONYMOUS) mmap().

This change in the ABI requires a mechanism to requires the userspace
to opt-in to such an option.

Specify and document the way in which sysctl and prctl() can be used
in combination to allow the userspace to opt-in this feature.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
CC: Andrey Konovalov <andreyknvl@google.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 Documentation/arm64/tagged-address-abi.txt | 111 +++++++++++++++++++++
 1 file changed, 111 insertions(+)
 create mode 100644 Documentation/arm64/tagged-address-abi.txt

diff --git a/Documentation/arm64/tagged-address-abi.txt b/Documentation/arm64/tagged-address-abi.txt
new file mode 100644
index 000000000000..96e149e2c55c
--- /dev/null
+++ b/Documentation/arm64/tagged-address-abi.txt
@@ -0,0 +1,111 @@
+ARM64 TAGGED ADDRESS ABI
+========================
+
+This document describes the usage and semantics of the Tagged Address
+ABI on arm64.
+
+1. Introduction
+---------------
+
+On arm64 the TCR_EL1.TBI0 bit has been always enabled on the arm64 kernel,
+hence the userspace (EL0) is allowed to set a non-zero value in the top
+byte but the resulting pointers are not allowed at the user-kernel syscall
+ABI boundary.
+
+This document describes a relaxation of the ABI with which it is possible
+to pass tagged tagged pointers to the syscalls, when these pointers are in
+memory ranges obtained as described in paragraph 2.
+
+Since it is not desirable to relax the ABI to allow tagged user addresses
+into the kernel indiscriminately, arm64 provides a new sysctl interface
+(/proc/sys/abi/tagged_addr) that is used to prevent the applications from
+enabling the relaxed ABI and a new prctl() interface that can be used to
+enable or disable the relaxed ABI.
+
+The sysctl is meant also for testing purposes in order to provide a simple
+way for the userspace to verify the return error checking of the prctl()
+command without having to reconfigure the kernel.
+
+The ABI properties are inherited by threads of the same application and
+fork()'ed children but cleared when a new process is spawn (execve()).
+
+2. ARM64 Tagged Address ABI
+---------------------------
+
+From the kernel syscall interface prospective, we define, for the purposes
+of this document, a "valid tagged pointer" as a pointer that either it has
+a zero value set in the top byte or it has a non-zero value, it is in memory
+ranges privately owned by a userspace process and it is obtained in one of
+the following ways:
+  - mmap() done by the process itself, where either:
+    * flags = MAP_PRIVATE | MAP_ANONYMOUS
+    * flags = MAP_PRIVATE and the file descriptor refers to a regular
+      file or "/dev/zero"
+  - a mapping below sbrk(0) done by the process itself
+  - any memory mapped by the kernel in the process's address space during
+    creation and following the restrictions presented above (i.e. data, bss,
+    stack).
+
+The ARM64 Tagged Address ABI is an opt-in feature, and an application can
+control it using the following prctl()s:
+  - PR_SET_TAGGED_ADDR_CTRL: can be used to enable the Tagged Address ABI.
+  - PR_GET_TAGGED_ADDR_CTRL: can be used to check the status of the Tagged
+                             Address ABI.
+
+As a consequence of invoking PR_SET_TAGGED_ADDR_CTRL prctl() by an applications,
+the ABI guarantees the following behaviours:
+
+  - Every current or newly introduced syscall can accept any valid tagged
+    pointers.
+
+  - If a non valid tagged pointer is passed to a syscall then the behaviour
+    is undefined.
+
+  - Every valid tagged pointer is expected to work as an untagged one.
+
+  - The kernel preserves any valid tagged pointers and returns them to the
+    userspace unchanged in all the cases except the ones documented in the
+    "Preserving tags" paragraph of tagged-pointers.txt.
+
+A definition of the meaning of tagged pointers on arm64 can be found in:
+Documentation/arm64/tagged-pointers.txt.
+
+3. ARM64 Tagged Address ABI Exceptions
+--------------------------------------
+
+The behaviours described in paragraph 2, with particular reference to the
+acceptance by the syscalls of any valid tagged pointer are not applicable
+to the following cases:
+  - mmap() addr parameter.
+  - mremap() new_address parameter.
+  - prctl_set_mm() struct prctl_map fields.
+  - prctl_set_mm_map() struct prctl_map fields.
+
+4. Example of correct usage
+---------------------------
+
+void main(void)
+{
+	static int tbi_enabled = 0;
+	unsigned long tag = 0;
+
+	char *ptr = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
+			 MAP_ANONYMOUS, -1, 0);
+
+	if (prctl(PR_SET_TAGGED_ADDR_CTRL, PR_TAGGED_ADDR_ENABLE,
+		  0, 0, 0) == 0)
+		tbi_enabled = 1;
+
+	if (!ptr)
+		return -1;
+
+	if (tbi_enabled)
+		tag = rand() & 0xff;
+
+	ptr = (char *)((unsigned long)ptr | (tag << TAG_SHIFT));
+
+	*ptr = 'a';
+
+	...
+}
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
