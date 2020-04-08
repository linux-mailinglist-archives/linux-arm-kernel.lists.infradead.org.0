Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE881A1A64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 05:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:
	From:To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nQHmzZ6KGWRUHUf4Y4aczfWgTDfXNypj3/ZDkn19pCc=; b=uCvIXpLCs9bBMe
	xrR/hH5SX3AzP0eWF6Q5GBR/hhLbD48uGtTYU6L0Bk4zu99VvPdoflcKZjaa4zVgbvqRzMaYHp9BK
	S0q8NrdqgSbdneHRn0z4bzPXbbsNl9ztUCGLHeCoJpuJ6ihAXqMh3vBrWDM7VTc2OklMuV4zshm3O
	2Pq9zy08gxDYxrDz1g/+TC4KgHZIc89N2ZglSvdwenU0AS0X5BOBjG2pZj/DLVbEfy/Y7+KaWkK5D
	+hfoCtuSES3ZWEUfwX7PQSWs0XaUHv7W4WFL1OZWE9nqbD/fUSlX5UYIxwd0MBwcEn+V/rUokW2bT
	HbSBb77VIRBPW0o3Cs0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM1mW-0003UJ-MW; Wed, 08 Apr 2020 03:53:40 +0000
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM1mP-0003Tl-AZ; Wed, 08 Apr 2020 03:53:33 +0000
To: LKML <linux-kernel@vger.kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH -next] Documentation: arm64: fix amu.rst doc warnings
Message-ID: <ffbdd805-7322-1943-38cf-8bb9a2e7fe9e@infradead.org>
Date: Tue, 7 Apr 2020 20:53:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
Content-Language: en-US
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
 Ionela Voinescu <ionela.voinescu@arm.com>,
 LAK <linux-arm-kernel@lists.infradead.org>, Will Deacon <will@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Randy Dunlap <rdunlap@infradead.org>

Fix bullet list formatting to eliminate doc warnings:

Documentation/arm64/amu.rst:26: WARNING: Unexpected indentation.
Documentation/arm64/amu.rst:60: WARNING: Unexpected indentation.
Documentation/arm64/amu.rst:81: WARNING: Unexpected indentation.
Documentation/arm64/amu.rst:108: WARNING: Unexpected indentation.

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Ionela Voinescu <ionela.voinescu@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
---
 Documentation/arm64/amu.rst |   47 ++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 21 deletions(-)

--- linux-next-20200407.orig/Documentation/arm64/amu.rst
+++ linux-next-20200407/Documentation/arm64/amu.rst
@@ -23,13 +23,14 @@ optional external memory-mapped interfac
 
 Version 1 of the Activity Monitors architecture implements a counter group
 of four fixed and architecturally defined 64-bit event counters.
-  - CPU cycle counter: increments at the frequency of the CPU.
-  - Constant counter: increments at the fixed frequency of the system
-    clock.
-  - Instructions retired: increments with every architecturally executed
-    instruction.
-  - Memory stall cycles: counts instruction dispatch stall cycles caused by
-    misses in the last level cache within the clock domain.
+
+- CPU cycle counter: increments at the frequency of the CPU.
+- Constant counter: increments at the fixed frequency of the system
+  clock.
+- Instructions retired: increments with every architecturally executed
+  instruction.
+- Memory stall cycles: counts instruction dispatch stall cycles caused by
+  misses in the last level cache within the clock domain.
 
 When in WFI or WFE these counters do not increment.
 
@@ -57,11 +58,12 @@ counters, only the presence of the exten
 
 Firmware (code running at higher exception levels, e.g. arm-tf) support is
 needed to:
- - Enable access for lower exception levels (EL2 and EL1) to the AMU
-   registers.
- - Enable the counters. If not enabled these will read as 0.
- - Save/restore the counters before/after the CPU is being put/brought up
-   from the 'off' power state.
+
+- Enable access for lower exception levels (EL2 and EL1) to the AMU
+  registers.
+- Enable the counters. If not enabled these will read as 0.
+- Save/restore the counters before/after the CPU is being put/brought up
+  from the 'off' power state.
 
 When using kernels that have this feature enabled but boot with broken
 firmware the user may experience panics or lockups when accessing the
@@ -78,10 +80,11 @@ are not trapped in EL2/EL3.
 
 The fixed counters of AMUv1 are accessible though the following system
 register definitions:
- - SYS_AMEVCNTR0_CORE_EL0
- - SYS_AMEVCNTR0_CONST_EL0
- - SYS_AMEVCNTR0_INST_RET_EL0
- - SYS_AMEVCNTR0_MEM_STALL_EL0
+
+- SYS_AMEVCNTR0_CORE_EL0
+- SYS_AMEVCNTR0_CONST_EL0
+- SYS_AMEVCNTR0_INST_RET_EL0
+- SYS_AMEVCNTR0_MEM_STALL_EL0
 
 Auxiliary platform specific counters can be accessed using
 SYS_AMEVCNTR1_EL0(n), where n is a value between 0 and 15.
@@ -93,9 +96,10 @@ Userspace access
 ----------------
 
 Currently, access from userspace to the AMU registers is disabled due to:
- - Security reasons: they might expose information about code executed in
-   secure mode.
- - Purpose: AMU counters are intended for system management use.
+
+- Security reasons: they might expose information about code executed in
+  secure mode.
+- Purpose: AMU counters are intended for system management use.
 
 Also, the presence of the feature is not visible to userspace.
 
@@ -105,8 +109,9 @@ Virtualization
 
 Currently, access from userspace (EL0) and kernelspace (EL1) on the KVM
 guest side is disabled due to:
- - Security reasons: they might expose information about code executed
-   by other guests or the host.
+
+- Security reasons: they might expose information about code executed
+  by other guests or the host.
 
 Any attempt to access the AMU registers will result in an UNDEFINED
 exception being injected into the guest.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
