Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FF81CD96
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kV/fnunAkRqIS6LwaZEPElroojdBpK900GmrsZ9mnW4=; b=ABFvZ8eYiUUqIt
	E8CWSh/TVbLbxxZ6qfy1sG8Fb8j/rNj3XkRsijhQvehxZF5RN+BTuV1OHdmUkx5d+LcBmvzGzuheV
	fgpo1+9X8qth55RgQzWnOtQAdxBrsIsto/oEVOJKctEu1LnQhnjbQh1JqIS6GO/Ret2/Z/GosZEEE
	naL8yxdICMo5uP7uwtg7oYiqLG1KE/V7h8mmDboshfMP9rOsZQ6gE6Ig43v4/Wf40atxya9Ncg4tL
	TyKx/+p5yrSLMuxSyaUIZoPBrWkZRaZsQj/3fDyaniPfLuLd5vBHiG3uKzmGlvoR47ZsduFLQ3/TB
	DWebJG6doZm7u6vyBLxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQawv-00045k-Mg; Tue, 14 May 2019 17:10:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQawW-0002qV-K0
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:10:23 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C59AF2084A;
 Tue, 14 May 2019 17:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557853820;
 bh=Ht/GR8HB1FUSUzS8AN032OUyYJxPZRJheUXYadqgqq0=;
 h=Subject:To:Cc:From:Date:From;
 b=OkVsBYjgE/lEMyZox6TLpalUu/fjN8L6oraou4BhOx/s31+cb26DCXlYYs4KsOZxE
 G3F0etSLME92TAjYZCxIR9pfUGwALWqPnToA8VcgpbHyF9vP8AXLllEOdVyTueiDeL
 Gz8ljAUYxeldj69itWgq/HgMghX58w1dyokxY6XM=
Subject: Patch "[PATCH 28/32] s390/speculation: Support 'mitigations=' cmdline
 option" has been added to the 4.14-stable tree
To: aarcange@redhat.com, benh@kernel.crashing.org, bp@alien8.de,
 catalin.marinas@arm.com,
 e4a161805458a5ec88812aac0307ae3908a030fc.1555085500.git.jpoimboe@redhat.com,
 gregkh@linuxfoundation.org, heiko.carstens@de.ibm.com, hpa@zytor.com,
 jcm@redhat.com, jikos@kernel.org, jkosina@suse.cz, jpoimboe@redhat.com,
 linux-arm-kernel@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 longman@redhat.com, luto@kernel.org, mpe@ellerman.id.au, pauld@redhat.com,
 paulus@samba.org, peterz@infradead.org, rdunlap@infradead.org,
 schwidefsky@de.ibm.com, steven.price@arm.com, tglx@linutronix.de,
 torvalds@linux-foundation.org, tyhicks@canonical.com, will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Tue, 14 May 2019 19:06:11 +0200
Message-ID: <15578535713886@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_101020_817615_FA2467E1 
X-CRM114-Status: GOOD (  15.90  )
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

    [PATCH 28/32] s390/speculation: Support 'mitigations=' cmdline option

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     0028-s390-speculation-Support-mitigations-cmdline-option.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From fd823d678f3cdc35d423a25e6ce9a7c0d2e55e1b Mon Sep 17 00:00:00 2001
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:31 -0500
Subject: [PATCH 28/32] s390/speculation: Support 'mitigations=' cmdline option

commit 0336e04a6520bdaefdb0769d2a70084fa52e81ed upstream

Configure s390 runtime CPU speculation bug mitigations in accordance
with the 'mitigations=' cmdline option.  This affects Spectre v1 and
Spectre v2.

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
Link: https://lkml.kernel.org/r/e4a161805458a5ec88812aac0307ae3908a030fc.1555085500.git.jpoimboe@redhat.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/admin-guide/kernel-parameters.txt | 5 +++--
 arch/s390/kernel/nospec-branch.c                | 9 +++++++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 204161cee674..6fa7895885c9 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2389,7 +2389,7 @@
 			http://repo.or.cz/w/linux-2.6/mini2440.git
 
 	mitigations=
-			[X86,PPC] Control optional mitigations for CPU
+			[X86,PPC,S390] Control optional mitigations for CPU
 			vulnerabilities.  This is a set of curated,
 			arch-independent options, each of which is an
 			aggregation of existing arch-specific options.
@@ -2400,7 +2400,8 @@
 				expose users to several CPU vulnerabilities.
 				Equivalent to: nopti [X86,PPC]
 					       nospectre_v1 [PPC]
-					       nospectre_v2 [X86,PPC]
+					       nobp=0 [S390]
+					       nospectre_v2 [X86,PPC,S390]
 					       spectre_v2_user=off [X86]
 					       spec_store_bypass_disable=off [X86,PPC]
 					       l1tf=off [X86]
diff --git a/arch/s390/kernel/nospec-branch.c b/arch/s390/kernel/nospec-branch.c
index d5eed651b5ab..83e597688562 100644
--- a/arch/s390/kernel/nospec-branch.c
+++ b/arch/s390/kernel/nospec-branch.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 #include <linux/module.h>
 #include <linux/device.h>
+#include <linux/cpu.h>
 #include <asm/facility.h>
 #include <asm/nospec-branch.h>
 
@@ -55,8 +56,16 @@ static int __init nospectre_v2_setup_early(char *str)
 }
 early_param("nospectre_v2", nospectre_v2_setup_early);
 
+
 void __init nospec_auto_detect(void)
 {
+	if (cpu_mitigations_off()) {
+		/*
+		 * Disable expolines and disable nobp.
+		 */
+		if (IS_ENABLED(CC_USING_EXPOLINE))
+			nospec_disable = 1;
+		__clear_facility(82, S390_lowcore.alt_stfle_fac_list);
 	if (IS_ENABLED(CC_USING_EXPOLINE)) {
 		/*
 		 * The kernel has been compiled with expolines.
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
