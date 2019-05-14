Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B4E1CD72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SZ7xP0SVOjfc6Fc//NiNAX1nsrq+ZfjvDRR2IarJmCk=; b=q1R/rmLUL9qfno
	JaRR5CviAK7mS9cjEzSC5+OAfG8BTOtpdBOjywEs1o2ylWkYq2B0vaImT6K60vCnbvutTKI679Wht
	dC/r9098pF/aJjaCxf40GUs4QIdzmh/lPtlwVYrfLN+FraDVhMN2B3gn8K98qLEyvP8o+S2qssaFf
	tRAQ7ZlSSUCdSaTzQT2WTd049mK47VkomBmK82sZYxP6cEh4nynuSOh/DKoaHp4emTvdBiK+TFMyB
	km3VsqIXTsRrse98z0EwVrOLTJAgvwlukAwvoBU/BZSsOOQvkIOPJCkN7ze61Cyoex/XZW/TCnR5x
	DgALWRFh82ZiLcJuV2iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQav1-0001Tk-W7; Tue, 14 May 2019 17:08:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQaut-0001T7-JR
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:08:41 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89C512147A;
 Tue, 14 May 2019 17:08:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557853719;
 bh=MOavOeczQJ6DV5EciJFsdN/++W6RKXDd+23T6rG9Vmw=;
 h=Subject:To:Cc:From:Date:From;
 b=0ddQdk8qUEPZUsMRa/kbpICqNGcYTv6BaU2S06C/EY/TLkEltx/Sg3VOgZPVOCnXK
 bpLiuF1AS/M3ZKO5cDjwWRFmKbK//Lfc5mfVhJbMgWPrLigWs0AJ8Mxsuz5n784q/4
 4PEnDoyiXJp6XkagAx2Q99fyJL4E/B9GxBEpngtg=
Subject: Patch "[PATCH 69/76] cpu/speculation: Add 'mitigations=' cmdline
 option" has been added to the 4.9-stable tree
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
Date: Tue, 14 May 2019 19:05:49 +0200
Message-ID: <1557853549321@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_100839_678019_7FCA7426 
X-CRM114-Status: GOOD (  17.40  )
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

    [PATCH 69/76] cpu/speculation: Add 'mitigations=' cmdline option

to the 4.9-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     0069-cpu-speculation-Add-mitigations-cmdline-option.patch
and it can be found in the queue-4.9 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 79645688fc822943af017fb90cf25f1af174139f Mon Sep 17 00:00:00 2001
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:28 -0500
Subject: [PATCH 69/76] cpu/speculation: Add 'mitigations=' cmdline option

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
[bwh: Backported to 4.9: adjust filename]
Signed-off-by: Ben Hutchings <ben@decadent.org.uk>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/kernel-parameters.txt | 24 ++++++++++++++++++++++++
 include/linux/cpu.h                 | 24 ++++++++++++++++++++++++
 kernel/cpu.c                        | 15 +++++++++++++++
 3 files changed, 63 insertions(+)

diff --git a/Documentation/kernel-parameters.txt b/Documentation/kernel-parameters.txt
index 4c134700c120..23af0afe24d1 100644
--- a/Documentation/kernel-parameters.txt
+++ b/Documentation/kernel-parameters.txt
@@ -2473,6 +2473,30 @@ bytes respectively. Such letter suffixes can also be entirely omitted.
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
+			auto,nosmt
+				Mitigate all CPU vulnerabilities, disabling SMT
+				if needed.  This is for users who always want to
+				be fully mitigated, even if it means losing SMT.
+
 	mminit_loglevel=
 			[KNL] When CONFIG_DEBUG_MEMORY_INIT is set, this
 			parameter allows control of the logging verbosity for
diff --git a/include/linux/cpu.h b/include/linux/cpu.h
index 1f88e86193ae..166686209f2c 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -278,4 +278,28 @@ static inline void cpu_smt_check_topology_early(void) { }
 static inline void cpu_smt_check_topology(void) { }
 #endif
 
+/*
+ * These are used for a global "mitigations=" cmdline option for toggling
+ * optional CPU mitigations.
+ */
+enum cpu_mitigations {
+	CPU_MITIGATIONS_OFF,
+	CPU_MITIGATIONS_AUTO,
+	CPU_MITIGATIONS_AUTO_NOSMT,
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
+/* mitigations=auto,nosmt */
+static inline bool cpu_mitigations_auto_nosmt(void)
+{
+	return cpu_mitigations == CPU_MITIGATIONS_AUTO_NOSMT;
+}
+
 #endif /* _LINUX_CPU_H_ */
diff --git a/kernel/cpu.c b/kernel/cpu.c
index a540ca031288..db1a0bc46c3e 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -2234,3 +2234,18 @@ void __init boot_cpu_hotplug_init(void)
 #endif
 	this_cpu_write(cpuhp_state.state, CPUHP_ONLINE);
 }
+
+enum cpu_mitigations cpu_mitigations __ro_after_init = CPU_MITIGATIONS_AUTO;
+
+static int __init mitigations_parse_cmdline(char *arg)
+{
+	if (!strcmp(arg, "off"))
+		cpu_mitigations = CPU_MITIGATIONS_OFF;
+	else if (!strcmp(arg, "auto"))
+		cpu_mitigations = CPU_MITIGATIONS_AUTO;
+	else if (!strcmp(arg, "auto,nosmt"))
+		cpu_mitigations = CPU_MITIGATIONS_AUTO_NOSMT;
+
+	return 0;
+}
+early_param("mitigations", mitigations_parse_cmdline);
-- 
2.21.0



Patches currently in stable-queue which might be from jpoimboe@redhat.com are

queue-4.9/0037-x86-speculation-Add-command-line-control-for-indirec.patch
queue-4.9/0026-x86-speculation-Disable-STIBP-when-enhanced-IBRS-is-.patch
queue-4.9/0022-x86-speculation-Update-the-TIF_SSBD-comment.patch
queue-4.9/0046-x86-speculation-Enable-prctl-mode-for-spectre_v2_use.patch
queue-4.9/0042-x86-speculation-Split-out-TIF-update.patch
queue-4.9/0044-x86-speculation-Prevent-stale-SPEC_CTRL-msr-content.patch
queue-4.9/0069-cpu-speculation-Add-mitigations-cmdline-option.patch
queue-4.9/0047-x86-speculation-Add-seccomp-Spectre-v2-user-space-pr.patch
queue-4.9/0038-x86-speculation-Prepare-for-per-task-indirect-branch.patch
queue-4.9/0034-x86-speculation-Mark-string-arrays-const-correctly.patch
queue-4.9/0068-x86-speculation-mds-Print-SMT-vulnerable-on-MSBDS-wi.patch
queue-4.9/0035-x86-speculataion-Mark-command-line-parser-data-__ini.patch
queue-4.9/0041-x86-speculation-Prepare-for-conditional-IBPB-in-swit.patch
queue-4.9/0033-x86-speculation-Reorder-the-spec_v2-code.patch
queue-4.9/0045-x86-speculation-Add-prctl-control-for-indirect-branc.patch
queue-4.9/0025-x86-speculation-Move-STIPB-IBPB-string-conditionals-.patch
queue-4.9/0040-x86-speculation-Avoid-__switch_to_xtra-calls.patch
queue-4.9/0043-x86-speculation-Prepare-arch_smt_update-for-PRCTL-mo.patch
queue-4.9/0028-x86-speculation-Reorganize-speculation-control-MSRs-.patch
queue-4.9/0031-x86-speculation-Rework-SMT-state-change.patch
queue-4.9/0024-x86-speculation-Remove-unnecessary-ret-variable-in-c.patch
queue-4.9/0018-x86-speculation-Apply-IBPB-more-strictly-to-avoid-cr.patch
queue-4.9/0029-x86-Kconfig-Select-SCHED_SMT-if-SMP-enabled.patch
queue-4.9/0071-x86-speculation-mds-Add-mitigations-support-for-MDS.patch
queue-4.9/0070-x86-speculation-Support-mitigations-cmdline-option.patch
queue-4.9/0065-x86-speculation-Move-arch_smt_update-call-to-after-m.patch
queue-4.9/0017-Documentation-l1tf-Fix-small-spelling-typo.patch
queue-4.9/0067-x86-speculation-mds-Fix-comment.patch
queue-4.9/0064-x86-speculation-mds-Add-mds-full-nosmt-cmdline-optio.patch
queue-4.9/0036-x86-speculation-Unify-conditional-spectre-v2-print-f.patch
queue-4.9/0027-x86-speculation-Rename-SSBD-update-functions.patch
queue-4.9/0074-x86-speculation-mds-Fix-documentation-typo.patch
queue-4.9/0020-x86-speculation-Propagate-information-about-RSB-fill.patch
queue-4.9/0032-x86-l1tf-Show-actual-SMT-state.patch
queue-4.9/0023-x86-speculation-Clean-up-spectre_v2_parse_cmdline.patch
queue-4.9/0066-x86-speculation-mds-Add-SMT-warning-message.patch
queue-4.9/0048-x86-speculation-Provide-IBPB-always-command-line-opt.patch
queue-4.9/0039-x86-process-Consolidate-and-simplify-switch_to_xtra-.patch
queue-4.9/0019-x86-speculation-Enable-cross-hyperthread-spectre-v2-.patch
queue-4.9/0011-x86-mm-Use-WRITE_ONCE-when-setting-PTEs.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
