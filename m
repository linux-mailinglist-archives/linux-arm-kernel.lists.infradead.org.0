Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A69E1D3316
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 16:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0ng2uMwZv25+F8e3ABrvSnrLVxr88akJHOu/kb/b/vI=; b=Swz5TZvJ2K5NzpWi9ylqXjP4/8
	611t+irWGbxi1GSrn14lr9HNfsd0BD1b4/m0LzE3uVAkxHGvoVy0giaklvXN0izFBkeof2USmfo2d
	9ThD8Z1oOumA4NRjXjVtF7sRjT+F5W9rY9JqCS1oEnOjTdfXJ2gRPUUPIVetnXnGH4Jw9HGHazgDz
	BFuV3sZW5ZprQ3aaXbVPU4qiXHLL/Sf6XKkrt9NnCZOBaWftunxNOQ9K/AcBJ2PHTHLLKNDNQ8PtI
	CiMQX6hS+cEwfZIdyze5XTtqpM7f7zBKs28qjZ+M5smD4qVVN/kRwEEu6gVqJ91gtNTAuI+PDQQ26
	aZIILobg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZEyB-0004O1-R9; Thu, 14 May 2020 14:36:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZEuw-0007Qb-TH
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 14:33:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9939A1396;
 Thu, 14 May 2020 07:32:58 -0700 (PDT)
Received: from seattle-bionic.arm.com.Home (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9FCAB3F71E;
 Thu, 14 May 2020 07:32:57 -0700 (PDT)
From: Oliver Swede <oli.swede@arm.com>
To: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v3 10/13] arm64: Store the arguments to copy_*_user on the
 stack
Date: Thu, 14 May 2020 14:32:24 +0000
Message-Id: <20200514143227.605-11-oli.swede@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514143227.605-1-oli.swede@arm.com>
References: <20200514143227.605-1-oli.swede@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_073259_103872_2125BA64 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This preserves the initial arguments of the user copy calls so that
they can be restored by the fixup routines.

The values in the relevant three registers (x0/dstin, x1/src,
x2/count) may be modified by the optimized memcpy algorithm for large
copy sizes, and this stores them before it begins executing.

The stack is used instead of other general-purpose registers due to
resource constraints: the algorithm is optimized with respect to the
Procedure Call Standard in the Arm ABI, which assumes that x0-x17
can be used as scratch registers and utilizes all of them during
copying, but leaves alone the rest that have specific uses in the
broader system. As there are no more temporary registers, the stack
can be used to preserve the initial arguments to provide fixup
routines with more information to use in the calculation of the
number of bytes that failed to copy.

The stack pointer is restored to its initial position, either from
the fixup code in the case of a fault, or at the end of the copy
algorithm otherwise (uaccess_finish is extended to restore the sp,
and this code is also moved to copy_template_user.S as it is common
to all of the copy routines that access userspace memory).

Signed-off-by: Oliver Swede <oli.swede@arm.com>
---
 arch/arm64/lib/copy_from_user.S     | 3 ---
 arch/arm64/lib/copy_in_user.S       | 3 ---
 arch/arm64/lib/copy_template_user.S | 6 ++++++
 arch/arm64/lib/copy_to_user.S       | 3 ---
 arch/arm64/lib/copy_user_fixup.S    | 1 +
 5 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/lib/copy_from_user.S b/arch/arm64/lib/copy_from_user.S
index 9c3805725bea..45009fb07081 100644
--- a/arch/arm64/lib/copy_from_user.S
+++ b/arch/arm64/lib/copy_from_user.S
@@ -111,9 +111,6 @@
 
 SYM_FUNC_START(__arch_copy_from_user)
 #include "copy_template_user.S"
-.Luaccess_finish:
-	mov	x0, #0
-	ret
 SYM_FUNC_END(__arch_copy_from_user)
 EXPORT_SYMBOL(__arch_copy_from_user)
 #include "copy_user_fixup.S"
diff --git a/arch/arm64/lib/copy_in_user.S b/arch/arm64/lib/copy_in_user.S
index bdf9bfecf31f..c1647a9b3a22 100644
--- a/arch/arm64/lib/copy_in_user.S
+++ b/arch/arm64/lib/copy_in_user.S
@@ -118,9 +118,6 @@
 
 SYM_FUNC_START(__arch_copy_in_user)
 #include "copy_template_user.S"
-.Luaccess_finish:
-	mov	x0, #0
-	ret
 SYM_FUNC_END(__arch_copy_in_user)
 EXPORT_SYMBOL(__arch_copy_in_user)
 #include "copy_user_fixup.S"
diff --git a/arch/arm64/lib/copy_template_user.S b/arch/arm64/lib/copy_template_user.S
index 3db24dcdab05..1d13daf314b0 100644
--- a/arch/arm64/lib/copy_template_user.S
+++ b/arch/arm64/lib/copy_template_user.S
@@ -21,4 +21,10 @@
 L(copy_non_uao):
 #undef L
 #define L(l) .Lnuao ## l
+	str     x2, [sp, #-16]!		// count
+	stp     x0, x1, [sp, #-16]!	// dstin, src
 #include "copy_template.S"
+.Luaccess_finish:
+	add	sp, sp, 32
+	mov	x0, #0
+	ret
diff --git a/arch/arm64/lib/copy_to_user.S b/arch/arm64/lib/copy_to_user.S
index b936bc10594e..ac10d2d32b03 100644
--- a/arch/arm64/lib/copy_to_user.S
+++ b/arch/arm64/lib/copy_to_user.S
@@ -111,9 +111,6 @@
 
 SYM_FUNC_START(__arch_copy_to_user)
 #include "copy_template_user.S"
-.Luaccess_finish:
-	mov	x0, #0
-	ret
 SYM_FUNC_END(__arch_copy_to_user)
 EXPORT_SYMBOL(__arch_copy_to_user)
 #include "copy_user_fixup.S"
diff --git a/arch/arm64/lib/copy_user_fixup.S b/arch/arm64/lib/copy_user_fixup.S
index 117c37598691..fe9f5ac19605 100644
--- a/arch/arm64/lib/copy_user_fixup.S
+++ b/arch/arm64/lib/copy_user_fixup.S
@@ -5,5 +5,6 @@ addr	.req	x15
 .align	2
 9998:
 	// TODO: add accurate fixup
+	add	sp, sp, 32
 	ret
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
