Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0500F1CDB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=07o3ROOtEoz3dy4X/qUk44J7Oh93/bLNSpK0bbvoamM=; b=PBbFcTreCDBzeg
	myhNnPOF7VRQgqT4+DkHjwWfBO+wo+bhO1A4q7cNf4DfGpPlfF5VgZzNoES8y851a7UAMQrwRK1wb
	TYg97w263pNGesSDKqC81Fed2h6upn7kBEFXgLXzM+IcaYIC7djUJoXTMXTA+sbHgIGnLPObNP7hP
	qMQ/4ZQljJPTi1L3xuW9+zXDB8drpq2ZFs9cq/ef8FeBrBS8s97Mlo48GiRM1YJWa3WB9IqAxgbTN
	GL0IlfvdoL4M4jSAfE2wHIsT5CqjYYZCB1eSyAIaw8a5NgScgaWk/hDvgs2vOJFbESxfNctuew4JZ
	LrjL83z1oNlG2J5ITSXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQb07-0006kN-Ck; Tue, 14 May 2019 17:14:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQazn-0006YI-O4
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:13:54 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E128C20881;
 Tue, 14 May 2019 17:13:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557854023;
 bh=uXfn21iV82fnPU2p/vgmcsuadKa7tBJq79AgwWyF9Pc=;
 h=Subject:To:Cc:From:Date:From;
 b=CG13edOoEK+md2OSus8UhV7tvDK13q64x03LDfuWcvSClLAg5B3si3b7mnOCkskO3
 zm3rrcK3sFgms9QEu+cifODmRiIpLccZgV4HH2Xj8+dct1Am0s0sW19YSOD7H4zIGl
 YKdI4WmGGTJE0sQ7g/yNWYOm+wL8EKQJJD7qGSIo=
Subject: Patch "[PATCH 20/27] cpu/speculation: Add 'mitigations=' cmdline
 option" has been added to the 5.1-stable tree
To: aarcange@redhat.com,
 b07a8ef9b7c5055c3a4637c87d07c296d5016fe0.1555085500.git.jpoimboe@redhat.com,
 benh@kernel.crashing.org, bp@alien8.de, catalin.marinas@arm.com,
 gregkh@linuxfoundation.org, heiko.carstens@de.ibm.com, hpa@zytor.com,
 jcm@redhat.com, jikos@kernel.org, jkosina@suse.cz, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 longman@redhat.com, luto@kernel.org, mpe@ellerman.id.au, pauld@redhat.com,
 paulus@samba.org, peterz@infradead.org, rdunlap@infradead.org,
 schwidefsky@de.ibm.com, steven.price@arm.com, tglx@linutronix.de,
 torvalds@linux-foundation.org, tyhicks@canonical.com, will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 14 May 2019 19:06:19 +0200
Message-ID: <15578535796283@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_101344_094053_DD3F4437 
X-CRM114-Status: GOOD (  17.19  )
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

    [PATCH 20/27] cpu/speculation: Add 'mitigations=' cmdline option

to the 5.1-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     0020-cpu-speculation-Add-mitigations-cmdline-option.patch
and it can be found in the queue-5.1 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 5ef5d563d124711c025378fee5aed0d69311fb59 Mon Sep 17 00:00:00 2001
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:28 -0500
Subject: [PATCH 20/27] cpu/speculation: Add 'mitigations=' cmdline option

commit 98af8452945c55652de68536afdde3b520fec429 upstream

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
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 .../admin-guide/kernel-parameters.txt         | 24 +++++++++++++++++++
 include/linux/cpu.h                           | 24 +++++++++++++++++++
 kernel/cpu.c                                  | 15 ++++++++++++
 3 files changed, 63 insertions(+)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index c079f001663b..fcc4d1bc4526 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2570,6 +2570,30 @@
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
index 3c87ad888ed3..57ae83c4d5f4 100644
--- a/include/linux/cpu.h
+++ b/include/linux/cpu.h
@@ -189,4 +189,28 @@ static inline void cpu_smt_disable(bool force) { }
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
index 6754f3ecfd94..43e741e88691 100644
--- a/kernel/cpu.c
+++ b/kernel/cpu.c
@@ -2304,3 +2304,18 @@ void __init boot_cpu_hotplug_init(void)
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

queue-5.1/0019-x86-speculation-mds-Print-SMT-vulnerable-on-MSBDS-wi.patch
queue-5.1/0016-x86-speculation-Move-arch_smt_update-call-to-after-m.patch
queue-5.1/0024-x86-speculation-mds-Add-mitigations-support-for-MDS.patch
queue-5.1/0021-x86-speculation-Support-mitigations-cmdline-option.patch
queue-5.1/0022-powerpc-speculation-Support-mitigations-cmdline-opti.patch
queue-5.1/0020-cpu-speculation-Add-mitigations-cmdline-option.patch
queue-5.1/0023-s390-speculation-Support-mitigations-cmdline-option.patch
queue-5.1/0015-x86-speculation-mds-Add-mds-full-nosmt-cmdline-optio.patch
queue-5.1/0027-x86-speculation-mds-Fix-documentation-typo.patch
queue-5.1/0017-x86-speculation-mds-Add-SMT-warning-message.patch
queue-5.1/0018-x86-speculation-mds-Fix-comment.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
