Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E833E1CF69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y8O9t6kgF0kfc3LVgmOISYUcXr3+eHflB6PaPlUrxYk=; b=G/jsEgmuZ9p0EQ
	lOFB0Tab+pRKI0h/fDS3YNM2ei+Jv7JqoRzFhrDymh5mQWyfKAu1k5xEQW1c7K2v4EwBlDg7iij5O
	LMJhN5CsiVfmJnSWRmIS9b9/SVgA0/OkoyCtnkyAkTBwocc7VFxnGCVC8/llmMlo7p18Xb+qEyGtk
	6sf2P6SgzijIJpYFuZr8ox+hsCPJr3Jf2vbJKlLCaljTQeTS9haZW5uN9qianJTikySzxCcxT6YWv
	JxSVfDA5vq+1K3sI5DnXnbatjjq5LGnWEnnrBQQPqmiQCN8hi2nO04k1OpYhA3ld9Q1uxW7ZuRaFE
	jTzP6M6MSMlxIj9UAXkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcWn-0004VK-71; Tue, 14 May 2019 18:51:53 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcWe-0004V1-Uz
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 18:51:47 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A33420881;
 Tue, 14 May 2019 18:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557859904;
 bh=VGp6G7WBo75TIjlb/MR2z2MnnjmhZTgWCXdktMbfxXI=;
 h=Subject:To:Cc:From:Date:From;
 b=DjoDOKY5DVPW7HD0SKMXn7l29ElKvqsr0yntPGOQPFV1FZBNU6k6LJaTbL1+FL8qU
 mEZhbFftMZklsXnTpFipgiKnbXTdxDL077C9B2XCa9oIrkKreZMEtWG8epIrPHA22b
 Dbr1uzvb+vChEGUNduTtsq8mMpcY0YeNgQD0IpsU=
Subject: Patch "x86/speculation: Support 'mitigations=' cmdline option" has
 been added to the 4.4-stable tree
To: 6616d0ae169308516cfdf5216bedd169f8a8291b.1555085500.git.jpoimboe@redhat.com,
 aarcange@redhat.com, ben@decadent.org.uk, benh@kernel.crashing.org,
 bp@alien8.de, catalin.marinas@arm.com, gregkh@linuxfoundation.org,
 heiko.carstens@de.ibm.com, hpa@zytor.com, jcm@redhat.com, jikos@kernel.org,
 jkosina@suse.cz, jpoimboe@redhat.com, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, longman@redhat.com, luto@kernel.org,
 mpe@ellerman.id.au, pauld@redhat.com, paulus@samba.org, peterz@infradead.org,
 rdunlap@infradead.org, schwidefsky@de.ibm.com, steven.price@arm.com,
 tglx@linutronix.de, torvalds@linux-foundation.org, tyhicks@canonical.com,
 will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 14 May 2019 20:30:41 +0200
Message-ID: <1557858641110224@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_115145_037556_AD69C3D9 
X-CRM114-Status: GOOD (  15.17  )
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

    x86/speculation: Support 'mitigations=' cmdline option

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     x86-speculation-support-mitigations-cmdline-option.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue 14 May 2019 08:29:35 PM CEST
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:29 -0500
Subject: x86/speculation: Support 'mitigations=' cmdline option

From: Josh Poimboeuf <jpoimboe@redhat.com>

commit d68be4c4d31295ff6ae34a8ddfaa4c1a8ff42812 upstream.

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
[bwh: Backported to 4.4:
 - Drop the auto,nosmt option and the l1tf mitigation selection, which we can't
   support
 - Adjust filenames, context]
Signed-off-by: Ben Hutchings <ben@decadent.org.uk>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/kernel-parameters.txt |   14 +++++++++-----
 arch/x86/kernel/cpu/bugs.c          |    6 ++++--
 arch/x86/mm/kaiser.c                |    4 +++-
 3 files changed, 16 insertions(+), 8 deletions(-)

--- a/Documentation/kernel-parameters.txt
+++ b/Documentation/kernel-parameters.txt
@@ -2174,15 +2174,19 @@ bytes respectively. Such letter suffixes
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
 
 			auto (default)
 				Mitigate all CPU vulnerabilities, but leave SMT
@@ -2190,7 +2194,7 @@ bytes respectively. Such letter suffixes
 				users who don't want to be surprised by SMT
 				getting disabled across kernel upgrades, or who
 				have other ways of avoiding SMT-based attacks.
-				This is the default behavior.
+				Equivalent to: (default behavior)
 
 	mminit_loglevel=
 			[KNL] When CONFIG_DEBUG_MEMORY_INIT is set, this
--- a/arch/x86/kernel/cpu/bugs.c
+++ b/arch/x86/kernel/cpu/bugs.c
@@ -479,7 +479,8 @@ static enum spectre_v2_mitigation_cmd __
 	char arg[20];
 	int ret, i;
 
-	if (cmdline_find_option_bool(boot_command_line, "nospectre_v2"))
+	if (cmdline_find_option_bool(boot_command_line, "nospectre_v2") ||
+	    cpu_mitigations_off())
 		return SPECTRE_V2_CMD_NONE;
 
 	ret = cmdline_find_option(boot_command_line, "spectre_v2", arg, sizeof(arg));
@@ -743,7 +744,8 @@ static enum ssb_mitigation_cmd __init ss
 	char arg[20];
 	int ret, i;
 
-	if (cmdline_find_option_bool(boot_command_line, "nospec_store_bypass_disable")) {
+	if (cmdline_find_option_bool(boot_command_line, "nospec_store_bypass_disable") ||
+	    cpu_mitigations_off()) {
 		return SPEC_STORE_BYPASS_CMD_NONE;
 	} else {
 		ret = cmdline_find_option(boot_command_line, "spec_store_bypass_disable",
--- a/arch/x86/mm/kaiser.c
+++ b/arch/x86/mm/kaiser.c
@@ -10,6 +10,7 @@
 #include <linux/mm.h>
 #include <linux/uaccess.h>
 #include <linux/ftrace.h>
+#include <linux/cpu.h>
 
 #undef pr_fmt
 #define pr_fmt(fmt)     "Kernel/User page tables isolation: " fmt
@@ -297,7 +298,8 @@ void __init kaiser_check_boottime_disabl
 			goto skip;
 	}
 
-	if (cmdline_find_option_bool(boot_command_line, "nopti"))
+	if (cmdline_find_option_bool(boot_command_line, "nopti") ||
+	    cpu_mitigations_off())
 		goto disable;
 
 skip:


Patches currently in stable-queue which might be from jpoimboe@redhat.com are

queue-4.4/x86-speculation-mds-fix-documentation-typo.patch
queue-4.4/x86-speculation-mds-add-mitigations-support-for-mds.patch
queue-4.4/x86-speculation-rework-smt-state-change.patch
queue-4.4/cpu-speculation-add-mitigations-cmdline-option.patch
queue-4.4/x86-speculation-mds-fix-comment.patch
queue-4.4/x86-speculation-reorder-the-spec_v2-code.patch
queue-4.4/x86-speculation-add-prctl-control-for-indirect-branch-speculation.patch
queue-4.4/x86-speculation-provide-ibpb-always-command-line-options.patch
queue-4.4/x86-kconfig-select-sched_smt-if-smp-enabled.patch
queue-4.4/x86-speculation-mds-add-smt-warning-message.patch
queue-4.4/x86-process-consolidate-and-simplify-switch_to_xtra-code.patch
queue-4.4/x86-speculation-reorganize-speculation-control-msrs-update.patch
queue-4.4/x86-speculation-update-the-tif_ssbd-comment.patch
queue-4.4/x86-speculation-propagate-information-about-rsb-filling-mitigation-to-sysfs.patch
queue-4.4/x86-speculation-unify-conditional-spectre-v2-print-functions.patch
queue-4.4/x86-speculation-disable-stibp-when-enhanced-ibrs-is-in-use.patch
queue-4.4/x86-speculation-rename-ssbd-update-functions.patch
queue-4.4/x86-speculation-enable-prctl-mode-for-spectre_v2_user.patch
queue-4.4/x86-speculation-mark-string-arrays-const-correctly.patch
queue-4.4/x86-speculation-move-arch_smt_update-call-to-after-mitigation-decisions.patch
queue-4.4/x86-speculation-add-seccomp-spectre-v2-user-space-protection-mode.patch
queue-4.4/x86-speculation-clean-up-spectre_v2_parse_cmdline.patch
queue-4.4/x86-mm-use-write_once-when-setting-ptes.patch
queue-4.4/x86-speculation-apply-ibpb-more-strictly-to-avoid-cross-process-data-leak.patch
queue-4.4/x86-speculation-add-command-line-control-for-indirect-branch-speculation.patch
queue-4.4/x86-speculation-move-stipb-ibpb-string-conditionals-out-of-cpu_show_common.patch
queue-4.4/x86-speculation-support-mitigations-cmdline-option.patch
queue-4.4/x86-speculation-remove-unnecessary-ret-variable-in-cpu_show_common.patch
queue-4.4/x86-speculation-prepare-for-per-task-indirect-branch-speculation-control.patch
queue-4.4/x86-speculation-avoid-__switch_to_xtra-calls.patch
queue-4.4/x86-speculation-mds-print-smt-vulnerable-on-msbds-with-mitigations-off.patch
queue-4.4/x86-speculation-split-out-tif-update.patch
queue-4.4/x86-speculation-prepare-for-conditional-ibpb-in-switch_mm.patch
queue-4.4/x86-speculation-prepare-arch_smt_update-for-prctl-mode.patch
queue-4.4/x86-speculation-enable-cross-hyperthread-spectre-v2-stibp-mitigation.patch
queue-4.4/x86-speculataion-mark-command-line-parser-data-__initdata.patch
queue-4.4/x86-speculation-prevent-stale-spec_ctrl-msr-content.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
