Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42EBB1CDA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bw4PYmlzNJ6IlKpvGrm8lD2XCoMGH7JDSVBSYowiY44=; b=iVFEXPArBSLa4L
	eDM8Vt9GCBD62dPwAZfX5YBiIPO7/9mZllqTt1M/gkyC+UOTTUsw7Iups2y5V1YuxYtUSUjjtDuvn
	CKQLFUQErUQMV2JOA9RkCPn403Fiz3mpXa1QvS/5JS+PIFDN/b7AagXuzaDv9tXvnRZxBf9/qeaCA
	LgwsQ+IaqLe4sZwppDVzYseyKh3Xza2ij5zbIqQKKsLl89DcK4PtPHYbhBbHyEdm+OHXsvLJiRtX+
	gaezIJ7rUxKuNZWVtIlfJXiyB6QFD90URm/NKcy2+xle0qEoQIva7EkHGB/ojPiX8QZgoBB8f0zb/
	/z7rdaBqli3YYavkn7Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQazB-0005kG-Os; Tue, 14 May 2019 17:13:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQaz3-0005jc-HY
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:12:59 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B89212084A;
 Tue, 14 May 2019 17:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557853977;
 bh=nyEcSvcfBiZoS5XSakcdiqs+EkhivYjylJNKmuUNiQQ=;
 h=Subject:To:Cc:From:Date:From;
 b=R8PsHWFZVLAR9jNfi5ofefe6olfjVVElXGkp/QNZy9Y4+hngWYhl3055YcIJAZnZB
 As9QUi0epgs+3V9wlIwQWJbUIluTr2j3oqNGVoYzX1gQlNOsUQ5q2w5dW0FrwYOuSi
 TjB7D4e/motOfhDXgyP1ySF6E2j3s2JA/hn/j+KA=
Subject: Patch "[PATCH 21/27] x86/speculation: Support 'mitigations=' cmdline
 option" has been added to the 5.0-stable tree
To: 6616d0ae169308516cfdf5216bedd169f8a8291b.1555085500.git.jpoimboe@redhat.com,
 aarcange@redhat.com, benh@kernel.crashing.org, bp@alien8.de,
 catalin.marinas@arm.com, gregkh@linuxfoundation.org, heiko.carstens@de.ibm.com,
 hpa@zytor.com, jcm@redhat.com, jikos@kernel.org, jkosina@suse.cz,
 jpoimboe@redhat.com, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, longman@redhat.com, luto@kernel.org,
 mpe@ellerman.id.au, pauld@redhat.com, paulus@samba.org, peterz@infradead.org,
 rdunlap@infradead.org, schwidefsky@de.ibm.com, steven.price@arm.com,
 tglx@linutronix.de, torvalds@linux-foundation.org, tyhicks@canonical.com,
 will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 14 May 2019 19:06:17 +0200
Message-ID: <15578535772964@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_101257_613144_B60D3163 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    [PATCH 21/27] x86/speculation: Support 'mitigations=' cmdline option

to the 5.0-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     0021-x86-speculation-Support-mitigations-cmdline-option.patch
and it can be found in the queue-5.0 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 1aaa69ec96c73918d45177d9d35680f648d0faed Mon Sep 17 00:00:00 2001
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:29 -0500
Subject: [PATCH 21/27] x86/speculation: Support 'mitigations=' cmdline option

commit d68be4c4d31295ff6ae34a8ddfaa4c1a8ff42812 upstream

Configure x86 runtime CPU speculation bug mitigations in accordance with
the 'mitigations=' cmdline option.  This affects Meltdown, Spectre v2,
Speculative Store Bypass, and L1TF.

The default behavior is unchanged.

Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Tested-by: Jiri Kosina <jkosina@suse.cz> (on x86)
Reviewed-by: Jiri Kosina <jkosina@suse.cz>
Cc: Borislav Petkov <bp@alien8.de>
Cc: "H . Peter Anvin" <hpa@zytor.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Jiri Kosina <jikos@kernel.org>
Cc: Waiman Long <longman@redhat.com>
Cc: Andrea Arcangeli <aarcange@redhat.com>
Cc: Jon Masters <jcm@redhat.com>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Paul Mackerras <paulus@samba.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org
Cc: Martin Schwidefsky <schwidefsky@de.ibm.com>
Cc: Heiko Carstens <heiko.carstens@de.ibm.com>
Cc: linux-s390@vger.kernel.org
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-arch@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Tyler Hicks <tyhicks@canonical.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Randy Dunlap <rdunlap@infradead.org>
Cc: Steven Price <steven.price@arm.com>
Cc: Phil Auld <pauld@redhat.com>
Link: https://lkml.kernel.org/r/6616d0ae169308516cfdf5216bedd169f8a8291b.1555085500.git.jpoimboe@redhat.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/admin-guide/kernel-parameters.txt | 16 +++++++++++-----
 arch/x86/kernel/cpu/bugs.c                      | 11 +++++++++--
 arch/x86/mm/pti.c                               |  4 +++-
 3 files changed, 23 insertions(+), 8 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index df6d9a7c1724..59a1181e52b8 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2540,15 +2540,20 @@
 			http://repo.or.cz/w/linux-2.6/mini2440.git
 
 	mitigations=
-			Control optional mitigations for CPU vulnerabilities.
-			This is a set of curated, arch-independent options, each
-			of which is an aggregation of existing arch-specific
-			options.
+			[X86] Control optional mitigations for CPU
+			vulnerabilities.  This is a set of curated,
+			arch-independent options, each of which is an
+			aggregation of existing arch-specific options.
 
 			off
 				Disable all optional CPU mitigations.  This
 				improves system performance, but it may also
 				expose users to several CPU vulnerabilities.
+				Equivalent to: nopti [X86]
+					       nospectre_v2 [X86]
+					       spectre_v2_user=off [X86]
+					       spec_store_bypass_disable=off [X86]
+					       l1tf=off [X86]
 
 			auto (default)
 				Mitigate all CPU vulnerabilities, but leave SMT
@@ -2556,12 +2561,13 @@
 				users who don't want to be surprised by SMT
 				getting disabled across kernel upgrades, or who
 				have other ways of avoiding SMT-based attacks.
-				This is the default behavior.
+				Equivalent to: (default behavior)
 
 			auto,nosmt
 				Mitigate all CPU vulnerabilities, disabling SMT
 				if needed.  This is for users who always want to
 				be fully mitigated, even if it means losing SMT.
+				Equivalent to: l1tf=flush,nosmt [X86]
 
 	mminit_loglevel=
 			[KNL] When CONFIG_DEBUG_MEMORY_INIT is set, this
diff --git a/arch/x86/kernel/cpu/bugs.c b/arch/x86/kernel/cpu/bugs.c
index 04c140ac36af..7c79672234e4 100644
--- a/arch/x86/kernel/cpu/bugs.c
+++ b/arch/x86/kernel/cpu/bugs.c
@@ -506,7 +506,8 @@ static enum spectre_v2_mitigation_cmd __init spectre_v2_parse_cmdline(void)
 	char arg[20];
 	int ret, i;
 
-	if (cmdline_find_option_bool(boot_command_line, "nospectre_v2"))
+	if (cmdline_find_option_bool(boot_command_line, "nospectre_v2") ||
+	    cpu_mitigations_off())
 		return SPECTRE_V2_CMD_NONE;
 
 	ret = cmdline_find_option(boot_command_line, "spectre_v2", arg, sizeof(arg));
@@ -771,7 +772,8 @@ static enum ssb_mitigation_cmd __init ssb_parse_cmdline(void)
 	char arg[20];
 	int ret, i;
 
-	if (cmdline_find_option_bool(boot_command_line, "nospec_store_bypass_disable")) {
+	if (cmdline_find_option_bool(boot_command_line, "nospec_store_bypass_disable") ||
+	    cpu_mitigations_off()) {
 		return SPEC_STORE_BYPASS_CMD_NONE;
 	} else {
 		ret = cmdline_find_option(boot_command_line, "spec_store_bypass_disable",
@@ -1095,6 +1097,11 @@ static void __init l1tf_select_mitigation(void)
 	if (!boot_cpu_has_bug(X86_BUG_L1TF))
 		return;
 
+	if (cpu_mitigations_off())
+		l1tf_mitigation = L1TF_MITIGATION_OFF;
+	else if (cpu_mitigations_auto_nosmt())
+		l1tf_mitigation = L1TF_MITIGATION_FLUSH_NOSMT;
+
 	override_cache_bits(&boot_cpu_data);
 
 	switch (l1tf_mitigation) {
diff --git a/arch/x86/mm/pti.c b/arch/x86/mm/pti.c
index 4fee5c3003ed..5890f09bfc19 100644
--- a/arch/x86/mm/pti.c
+++ b/arch/x86/mm/pti.c
@@ -35,6 +35,7 @@
 #include <linux/spinlock.h>
 #include <linux/mm.h>
 #include <linux/uaccess.h>
+#include <linux/cpu.h>
 
 #include <asm/cpufeature.h>
 #include <asm/hypervisor.h>
@@ -115,7 +116,8 @@ void __init pti_check_boottime_disable(void)
 		}
 	}
 
-	if (cmdline_find_option_bool(boot_command_line, "nopti")) {
+	if (cmdline_find_option_bool(boot_command_line, "nopti") ||
+	    cpu_mitigations_off()) {
 		pti_mode = PTI_FORCE_OFF;
 		pti_print_if_insecure("disabled on command line.");
 		return;
-- 
2.21.0



Patches currently in stable-queue which might be from jpoimboe@redhat.com are

queue-5.0/0019-x86-speculation-mds-Print-SMT-vulnerable-on-MSBDS-wi.patch
queue-5.0/0016-x86-speculation-Move-arch_smt_update-call-to-after-m.patch
queue-5.0/0024-x86-speculation-mds-Add-mitigations-support-for-MDS.patch
queue-5.0/0021-x86-speculation-Support-mitigations-cmdline-option.patch
queue-5.0/0022-powerpc-speculation-Support-mitigations-cmdline-opti.patch
queue-5.0/0020-cpu-speculation-Add-mitigations-cmdline-option.patch
queue-5.0/0023-s390-speculation-Support-mitigations-cmdline-option.patch
queue-5.0/0015-x86-speculation-mds-Add-mds-full-nosmt-cmdline-optio.patch
queue-5.0/0027-x86-speculation-mds-Fix-documentation-typo.patch
queue-5.0/0017-x86-speculation-mds-Add-SMT-warning-message.patch
queue-5.0/0018-x86-speculation-mds-Fix-comment.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
