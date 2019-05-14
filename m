Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8DB1CDBC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 19:15:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aIHgMpZ6Ojgyd/1Nw92BLovFlWF/9TSx3XN2K1mrgwc=; b=qWSAaqK/tWrWQn
	aJBo7pkeEvDLDBEQT/HpcfQhmxcuiQnnepsE/NCx/xPYojkV/qLiX2d8OPYwlet7c+bohUDC72Q6q
	y6MTMmXFnRB10eqND+z6P1tFcMTByP1B03EKIwer+xUzLvgaU8urNIk1qPFJ/6kLXaTpPEhYgv82F
	R7oZsiwL8eVs7Ytk13c2mdo9Ij/xZiy8Pk9qYVBVs1/pUFskBW/1YUI5/Xrgw0CT7K4GHDoMgnwVC
	zjtkhXdBhmQ3YaZeatsvZZcIWc4wOPRm1q0MNZN0WnWatv+yoAkva+c89OIw25DqKHlOdzLOiJV6x
	H4Oa/yyJirw5mrsBVmUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQb11-0007lf-4g; Tue, 14 May 2019 17:14:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQb0X-0007Kh-Re
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 17:14:38 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 09B202084A;
 Tue, 14 May 2019 17:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557854069;
 bh=5nfkJiX1onVj5L9FXNBVML2Jt9r6rPsp3l7TRK3sWiQ=;
 h=Subject:To:Cc:From:Date:From;
 b=iNTuM6jNV2uTCDfWKu39DlpFOxrWZgaMNBXP81a57HAzEGz9Gq7yb/b91g9f8A3YD
 EPUcpx3PjIJx3I/8lqHTENu4KVE0uDbstW+JHf3D9Zfp+bKUlM1S30wbar/bbcnCbo
 VwSE6LohadEpgkxOa4P4UaWC1lqofs8QlNFIPJo4=
Subject: Patch "[PATCH 27/32] powerpc/speculation: Support 'mitigations='
 cmdline" has been added to the 4.14-stable tree
To: 245a606e1a42a558a310220312d9b6adb9159df6.1555085500.git.jpoimboe@redhat.com,
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
Message-ID: <155785357140164@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_101430_338330_B9F55635 
X-CRM114-Status: GOOD (  15.94  )
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

    [PATCH 27/32] powerpc/speculation: Support 'mitigations=' cmdline

to the 4.14-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     0027-powerpc-speculation-Support-mitigations-cmdline-opti.patch
and it can be found in the queue-4.14 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From c13106d187bda2ee47a8c3c62b9ec49aaec07d14 Mon Sep 17 00:00:00 2001
From: Josh Poimboeuf <jpoimboe@redhat.com>
Date: Fri, 12 Apr 2019 15:39:30 -0500
Subject: [PATCH 27/32] powerpc/speculation: Support 'mitigations=' cmdline
 option

commit 782e69efb3dfed6e8360bc612e8c7827a901a8f9 upstream

Configure powerpc CPU runtime speculation bug mitigations in accordance
with the 'mitigations=' cmdline option.  This affects Meltdown, Spectre
v1, Spectre v2, and Speculative Store Bypass.

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
Link: https://lkml.kernel.org/r/245a606e1a42a558a310220312d9b6adb9159df6.1555085500.git.jpoimboe@redhat.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 Documentation/admin-guide/kernel-parameters.txt | 9 +++++----
 arch/powerpc/kernel/security.c                  | 6 +++---
 arch/powerpc/kernel/setup_64.c                  | 2 +-
 3 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 480ec3a4e185..204161cee674 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -2389,7 +2389,7 @@
 			http://repo.or.cz/w/linux-2.6/mini2440.git
 
 	mitigations=
-			[X86] Control optional mitigations for CPU
+			[X86,PPC] Control optional mitigations for CPU
 			vulnerabilities.  This is a set of curated,
 			arch-independent options, each of which is an
 			aggregation of existing arch-specific options.
@@ -2398,10 +2398,11 @@
 				Disable all optional CPU mitigations.  This
 				improves system performance, but it may also
 				expose users to several CPU vulnerabilities.
-				Equivalent to: nopti [X86]
-					       nospectre_v2 [X86]
+				Equivalent to: nopti [X86,PPC]
+					       nospectre_v1 [PPC]
+					       nospectre_v2 [X86,PPC]
 					       spectre_v2_user=off [X86]
-					       spec_store_bypass_disable=off [X86]
+					       spec_store_bypass_disable=off [X86,PPC]
 					       l1tf=off [X86]
 
 			auto (default)
diff --git a/arch/powerpc/kernel/security.c b/arch/powerpc/kernel/security.c
index 48b50fb8dc4b..e9af5d9badf2 100644
--- a/arch/powerpc/kernel/security.c
+++ b/arch/powerpc/kernel/security.c
@@ -56,7 +56,7 @@ void setup_barrier_nospec(void)
 	enable = security_ftr_enabled(SEC_FTR_FAVOUR_SECURITY) &&
 		 security_ftr_enabled(SEC_FTR_BNDS_CHK_SPEC_BAR);
 
-	if (!no_nospec)
+	if (!no_nospec && !cpu_mitigations_off())
 		enable_barrier_nospec(enable);
 }
 
@@ -115,7 +115,7 @@ static int __init handle_nospectre_v2(char *p)
 early_param("nospectre_v2", handle_nospectre_v2);
 void setup_spectre_v2(void)
 {
-	if (no_spectrev2)
+	if (no_spectrev2 || cpu_mitigations_off())
 		do_btb_flush_fixups();
 	else
 		btb_flush_enabled = true;
@@ -299,7 +299,7 @@ void setup_stf_barrier(void)
 
 	stf_enabled_flush_types = type;
 
-	if (!no_stf_barrier)
+	if (!no_stf_barrier && !cpu_mitigations_off())
 		stf_barrier_enable(enable);
 }
 
diff --git a/arch/powerpc/kernel/setup_64.c b/arch/powerpc/kernel/setup_64.c
index 0618aa61b26a..41b3b2787f23 100644
--- a/arch/powerpc/kernel/setup_64.c
+++ b/arch/powerpc/kernel/setup_64.c
@@ -872,7 +872,7 @@ void setup_rfi_flush(enum l1d_flush_type types, bool enable)
 
 	enabled_flush_types = types;
 
-	if (!no_rfi_flush)
+	if (!no_rfi_flush && !cpu_mitigations_off())
 		rfi_flush_enable(enable);
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
