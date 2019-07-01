Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7191CF61
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 20:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C6WtZIghUXXEF+cCQWWVPEaSZxsw0gk3aCY3bhPcWkQ=; b=QQ7CScLgO7LpJl
	Es9ojA1jP5/FixWBUz3yy7ycOpcxhd4k1Yq6cZFYBbta5CW35DKRdKCSqAimPpiLSB6cwBpcM4BtO
	nq5xJUN6+NCfp02Opauh1bZTnW8uRT19eoxq2XTJNydZKyX0K0IBugrB5IRRUBZdhKzDinRSljM7u
	AsSOrlBKiDIPxGeohgWxqHeCWB7HLFMzMtyMqJcI9yCQk+8CqbTTciYTpT3TMW3gxiGkKo0ilkuLC
	Tgysdn6cIX33ECHBxISAWKV6hoNCQC2EgqivZ/g8nGnrSZtgVisDPVGgamweOX+eiJM5HDjvhOibv
	PPEvz3hz9gmC1QbUsP0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQcUK-0002vF-Mn; Tue, 14 May 2019 18:49:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQcU8-0002r7-GL
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 18:49:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A9EE620818;
 Tue, 14 May 2019 18:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557859748;
 bh=1pAyRZx3iTT18J87CHH6TAFZwwrzTlyxcR6Hu8yBmAs=;
 h=Subject:To:Cc:From:Date:From;
 b=tgYjhWRdIdzD3USA2pBxlhBugY2NFks3uEcWbBq0T1j59nVYK1Xtwf33T2B+AuyNI
 SK1Bg+Xsp+07c+2XuUcCe4bfBRQ+pWjeFGu3FRU+FjghabxKfT2erY37Lo9Ly4TJzY
 t+KJiZ6TelTg0wBn9WyVEsfWLEPH3H/jV7dSHeKM=
Subject: Patch "cpu/speculation: Add 'mitigations=' cmdline option" has been
 added to the 4.4-stable tree
To: aarcange@redhat.com,
 b07a8ef9b7c5055c3a4637c87d07c296d5016fe0.1555085500.git.jpoimboe@redhat.com,
 ben@decadent.org.uk, benh@kernel.crashing.org, bp@alien8.de,
 catalin.marinas@arm.com, gregkh@linuxfoundation.org, heiko.carstens@de.ibm.com,
 hpa@zytor.com, jcm@redhat.com, jikos@kernel.org, jkosina@suse.cz,
 jpoimboe@redhat.com, linux-arm-kernel@lists.infradead.org,
 linuxppc-dev@lists.ozlabs.org, longman@redhat.com, luto@kernel.org,
 mpe@ellerman.id.au, pauld@redhat.com, paulus@samba.org, peterz@infradead.org,
 rdunlap@infradead.org, schwidefsky@de.ibm.com, steven.price@arm.com,
 tglx@linutronix.de, torvalds@linux-foundation.org, tyhicks@canonical.com,
 will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 14 May 2019 20:30:35 +0200
Message-ID: <1557858635226130@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_114908_652881_D5D6C1FE 
X-CRM114-Status: GOOD (  14.63  )
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

    cpu/speculation: Add 'mitigations=' cmdline option

to the 4.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     cpu-speculation-add-mitigations-cmdline-option.patch
and it can be found in the queue-4.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Tue 14 May 2019 08:29:35 PM CEST
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:28 -0500
Subject: cpu/speculation: Add 'mitigations=' cmdline option

From: Josh Poimboeuf <jpoimboe@redhat.com>

commit 98af8452945c55652de68536afdde3b520fec429 upstream.

Keeping track of the number of mitigations for all the CPU speculation
bugs has become overwhelming for many users.  It's getting more and more
complicated to decide which mitigations are needed for a given
architecture.  Complicating matters is the fact that each arch tends to
have its own custom way to mitigate the same vulnerability.

Most users fall into a few basic categories:

a) they want all mitigations off;

b) they want all reasonable mitigations on, with SMT enabled even if
   it's vulnerable; or

c) they want all reasonable mitigations on, with SMT disabled if
   vulnerable.

Define a set of curated, arch-independent options, each of which is an
aggregation of existing options:

- mitigations=off: Disable all mitigations.

- mitigations=auto: [default] Enable all the default mitigations, but
  leave SMT enabled, even if it's vulnerable.

- mitigations=auto,nosmt: Enable all the default mitigations, disabling
  SMT if needed by a mitigation.

Currently, these options are placeholders which don't actually do
anything.  They will be fleshed out in upcoming patches.

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
Link: https://lkml.kernel.org/r/b07a8ef9b7c5055c3a4637c87d07c296d5016fe0.1555085500.git.jpoimboe@redhat.com
[bwh: Backported to 4.4:
 - Drop the auto,nosmt option which we can't support
 - Adjust filename]
Signed-off-by: Ben Hutchings <ben@decadent.org.uk>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/kernel-parameters.txt |   19 +++++++++++++++++++
 include/linux/cpu.h                 |   17 +++++++++++++++++
 kernel/cpu.c                        |   13 +++++++++++++
 3 files changed, 49 insertions(+)

--- a/Documentation/kernel-parameters.txt
+++ b/Documentation/kernel-parameters.txt
@@ -2173,6 +2173,25 @@ bytes respectively. Such letter suffixes
 			in the "bleeding edge" mini2440 support kernel at
 			http://repo.or.cz/w/linux-2.6/mini2440.git
 
+	mitigations=
+			Control optional mitigations for CPU vulnerabilities.
+			This is a set of curated, arch-independent options, each
+			of which is an aggregation of existing arch-specific
+			options.
+
+			off
+				Disable all optional CPU mitigations.  This
+				improves system performance, but it may also
+				expose users to several CPU vulnerabilities.
+
+			auto (default)
+				Mitigate all CPU vulnerabilities, but leave SMT
+				enabled, even if it's vulnerable.  This is for
+				users who don't want to be surprised by SMT
+				getting disabled across kernel upgrades, or who
+				have other ways of avoiding SMT-based attacks.
+				This is the default behavior.
+
 	mminit_loglevel=
 			[KNL] When CONFIG_DEBUG_MEMORY_INIT is set, this
 			parameter allows control of the logging verbosity for
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -296,4 +296,21 @@ bool cpu_wait_death(unsigned int cpu, in
 bool cpu_report_death(void);
 #endif /* #ifdef CONFIG_HOTPLUG_CPU */
 
+/*
+ * These are used for a global "mitigations=" cmdline option for toggling
+ * optional CPU mitigations.
+ */
+enum cpu_mitigations {
+	CPU_MITIGATIONS_OFF,
+	CPU_MITIGATIONS_AUTO,
+};
+
+extern enum cpu_mitigations cpu_mitigations;
+
+/* mitigations=off */
+static inline bool cpu_mitigations_off(void)
+{
+	return cpu_mitigations == CPU_MITIGATIONS_OFF;
+}
+
 #endif /* _LINUX_CPU_H_ */
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -842,3 +842,16 @@ void init_cpu_online(const struct cpumas
 {
 	cpumask_copy(to_cpumask(cpu_online_bits), src);
 }
+
+enum cpu_mitigations cpu_mitigations = CPU_MITIGATIONS_AUTO;
+
+static int __init mitigations_parse_cmdline(char *arg)
+{
+	if (!strcmp(arg, "off"))
+		cpu_mitigations = CPU_MITIGATIONS_OFF;
+	else if (!strcmp(arg, "auto"))
+		cpu_mitigations = CPU_MITIGATIONS_AUTO;
+
+	return 0;
+}
+early_param("mitigations", mitigations_parse_cmdline);


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
