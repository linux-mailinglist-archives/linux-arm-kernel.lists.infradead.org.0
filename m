Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D4D1CD95
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kTCTpxz5bXn1RS6JX3DeXN44eWpaIo3qOE6N0AlqqVg=; b=EzINdgSSripyav
	+WxcUyuYambyQ2X6VYTssWHet7Cj9mAUeHjrNWsSRQF3JdI/jbRFmHWvt4qtPQsW5iMLHhGzIM7mv
	pmmIpDOjYPe5O22TcChFHyQn6z2CLMPkue6KbkmU8QhcUCjK1/nwbEctVvl8tdn3kNYWzvcAvQuwf
	TIi2a9bkIi0jdKsGuP9sezJyyvjQmzwHdgdqFuhXO0C4edNVTwKtphYnE49GK1leN8uZwVSsKZfUO
	1OIAQ7NmDggcUAWv2F2sWiD9bzSNsz4LaEkQo+CmeoLjUigfNjKB6nWz6YF3hLu70gWj6o5Oy9rZx
	U1zHA9egynsfjTHbJvCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQawl-0003KZ-6u; Tue, 14 May 2019 17:10:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQawF-0002Xg-1G
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:10:06 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22E2220881;
 Tue, 14 May 2019 17:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557853802;
 bh=lBdzOuykqHk/X2iQwa/89Xx9cq67n105hbCpZhUa7HA=;
 h=Subject:To:Cc:From:Date:From;
 b=bxSHVWIyP9V7Fx1IQ1ayWFWcSiZinBp4T/vV5d+Dm+6x3H5FpzjoMMOCKHSTGx4IU
 QxgiHb4E0O/zWEBGZUqlLsLPSY+hpXQilFaCKF0i2zvQNqp2qK5Ux9zoo1vIMUshx5
 t6OzIs8y1mC6i8jQy7iN77+3dgeXKSj0JVlAS5r0=
Subject: Patch "[PATCH 26/32] x86/speculation: Support 'mitigations=' cmdline
 option" has been added to the 4.14-stable tree
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
Date: Tue, 14 May 2019 19:06:11 +0200
Message-ID: <15578535718794@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_101003_365737_EEF36EA6 
X-CRM114-Status: GOOD (  17.80  )
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

    [PATCH 26/32] x86/speculation: Support 'mitigations=' cmdline option

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     0026-x86-speculation-Support-mitigations-cmdline-option.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 8df962be6e151b7e6f0e6be02f5b9e5afe774c4d Mon Sep 17 00:00:00 2001
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:29 -0500
Subject: [PATCH 26/32] x86/speculation: Support 'mitigations=' cmdline option

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
index 5177e01a2c6b..480ec3a4e185 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2389,15 +2389,20 @@
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
@@ -2405,12 +2410,13 @@
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
index e4016b33b761..4891101cf990 100644
--- a/arch/x86/kernel/cpu/bugs.c
+++ b/arch/x86/kernel/cpu/bugs.c
@@ -494,7 +494,8 @@ static enum spectre_v2_mitigation_cmd __init spectre_v2_parse_cmdline(void)
 	char arg[20];
 	int ret, i;
 
-	if (cmdline_find_option_bool(boot_command_line, "nospectre_v2"))
+	if (cmdline_find_option_bool(boot_command_line, "nospectre_v2") ||
+	    cpu_mitigations_off())
 		return SPECTRE_V2_CMD_NONE;
 
 	ret = cmdline_find_option(boot_command_line, "spectre_v2", arg, sizeof(arg));
@@ -756,7 +757,8 @@ static enum ssb_mitigation_cmd __init ssb_parse_cmdline(void)
 	char arg[20];
 	int ret, i;
 
-	if (cmdline_find_option_bool(boot_command_line, "nospec_store_bypass_disable")) {
+	if (cmdline_find_option_bool(boot_command_line, "nospec_store_bypass_disable") ||
+	    cpu_mitigations_off()) {
 		return SPEC_STORE_BYPASS_CMD_NONE;
 	} else {
 		ret = cmdline_find_option(boot_command_line, "spec_store_bypass_disable",
@@ -1077,6 +1079,11 @@ static void __init l1tf_select_mitigation(void)
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
index 60c48f5d6b0e..33c6ee9aebbd 100644
--- a/arch/x86/mm/pti.c
+++ b/arch/x86/mm/pti.c
@@ -35,6 +35,7 @@
 #include <linux/spinlock.h>
 #include <linux/mm.h>
 #include <linux/uaccess.h>
+#include <linux/cpu.h>
 
 #include <asm/cpufeature.h>
 #include <asm/hypervisor.h>
@@ -91,7 +92,8 @@ void __init pti_check_boottime_disable(void)
 			goto autosel;
 	}
 
-	if (cmdline_find_option_bool(boot_command_line, "nopti")) {
+	if (cmdline_find_option_bool(boot_command_line, "nopti") ||
+	    cpu_mitigations_off()) {
 		pti_print_if_insecure("disabled on command line.");
 		return;
 	}
-- 
2.21.0



Patches currently in stable-queue which might be from jpoimboe@redhat.com are

queue-4.14/0022-x86-speculation-mds-Add-SMT-warning-message.patch
queue-4.14/0027-powerpc-speculation-Support-mitigations-cmdline-opti.patch
queue-4.14/0025-cpu-speculation-Add-mitigations-cmdline-option.patch
queue-4.14/0029-x86-speculation-mds-Add-mitigations-support-for-MDS.patch
queue-4.14/0028-s390-speculation-Support-mitigations-cmdline-option.patch
queue-4.14/0032-x86-speculation-mds-Fix-documentation-typo.patch
queue-4.14/0023-x86-speculation-mds-Fix-comment.patch
queue-4.14/0002-Documentation-l1tf-Fix-small-spelling-typo.patch
queue-4.14/0024-x86-speculation-mds-Print-SMT-vulnerable-on-MSBDS-wi.patch
queue-4.14/0026-x86-speculation-Support-mitigations-cmdline-option.patch
queue-4.14/0021-x86-speculation-Move-arch_smt_update-call-to-after-m.patch
queue-4.14/0020-x86-speculation-mds-Add-mds-full-nosmt-cmdline-optio.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
