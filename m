Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEA2D0922
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=9D4ZTYl4H0nQeoeoArmHKrGmTca1pL4V2OnQ4CUxAnc=; b=QWNv1aJYv8S638
	hGCz1azMT1x/i/+hXpQv8ytyF1xlRI8PPiN0vPBArdmqg6xIkTSD5haesChHm/TQLZda4pZwydXKM
	rZWfedwASuM/gQRBn2ByGMUFGVS2PA+1Vrwe99RXaakuJG6upvpnXboTILltvjRBQ+uH3MeZM899y
	1WlaMrZGMkbkgBeVARSokIN4EG80LRNDKyExd9koxHCr8dZeAi2CUCIm79CjUyNC4Hedl2NAh7KH1
	+S6BF+Kn3H8S5Hsqavlmll7P6Fgez4kIDRmxqjeRm2IbkcP0HKmlFDkgMs5L8adW0ctj+T+uXeXoY
	nG28OX/U6kBSuOR2dk3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6zy-0007AL-RD; Wed, 09 Oct 2019 08:07:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6xW-00040Q-Bq
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:04:36 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 788C7206B6;
 Wed,  9 Oct 2019 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570608273;
 bh=z0b53obcgOEyw2suWEi6jQkLR2xp5Sa5Z9+1LD9Ekog=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=GiFcwlVGhiHQgSq6dRytK2TxghACDfuoyUjKHYeaqdy1V6XZ1TA1MhJawlFFUggEu
 DDMRmIZwPcoeb4QSTKuzwy9JxGQDEWKxCTi2xKFLHKxUDnSpSkPo9t4tk2TgeOEHWq
 JPTSOg4wmx0ZVmZj2+yvIr5extkdeqoqpUjRnyTs=
Subject: Patch "arm64: fix SSBS sanitization" has been added to the
 4.19-stable tree
To: ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 mark.rutland@arm.com, suzuki.poulose@arm.com, will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Wed, 09 Oct 2019 10:04:02 +0200
In-Reply-To: <20191008153930.15386-6-ard.biesheuvel@linaro.org>
Message-ID: <1570608242229149@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010434_540019_C24363E6 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    arm64: fix SSBS sanitization

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm64-fix-ssbs-sanitization.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Wed 09 Oct 2019 10:02:11 AM CEST
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue,  8 Oct 2019 17:39:19 +0200
Subject: arm64: fix SSBS sanitization
To: linux-arm-kernel@lists.infradead.org
Cc: stable@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Message-ID: <20191008153930.15386-6-ard.biesheuvel@linaro.org>

From: Mark Rutland <mark.rutland@arm.com>

[ Upstream commit f54dada8274643e3ff4436df0ea124aeedc43cae ]

In valid_user_regs() we treat SSBS as a RES0 bit, and consequently it is
unexpectedly cleared when we restore a sigframe or fiddle with GPRs via
ptrace.

This patch fixes valid_user_regs() to account for this, updating the
function to refer to the latest ARM ARM (ARM DDI 0487D.a). For AArch32
tasks, SSBS appears in bit 23 of SPSR_EL1, matching its position in the
AArch32-native PSR format, and we don't need to translate it as we have
to for DIT.

There are no other bit assignments that we need to account for today.
As the recent documentation describes the DIT bit, we can drop our
comment regarding DIT.

While removing SSBS from the RES0 masks, existing inconsistent
whitespace is corrected.

Fixes: d71be2b6c0e19180 ("arm64: cpufeature: Detect SSBS and advertise to userspace")
Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/ptrace.c |   15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

--- a/arch/arm64/kernel/ptrace.c
+++ b/arch/arm64/kernel/ptrace.c
@@ -1666,19 +1666,20 @@ void syscall_trace_exit(struct pt_regs *
 }
 
 /*
- * SPSR_ELx bits which are always architecturally RES0 per ARM DDI 0487C.a
- * We also take into account DIT (bit 24), which is not yet documented, and
- * treat PAN and UAO as RES0 bits, as they are meaningless at EL0, and may be
- * allocated an EL0 meaning in future.
+ * SPSR_ELx bits which are always architecturally RES0 per ARM DDI 0487D.a.
+ * We permit userspace to set SSBS (AArch64 bit 12, AArch32 bit 23) which is
+ * not described in ARM DDI 0487D.a.
+ * We treat PAN and UAO as RES0 bits, as they are meaningless at EL0, and may
+ * be allocated an EL0 meaning in future.
  * Userspace cannot use these until they have an architectural meaning.
  * Note that this follows the SPSR_ELx format, not the AArch32 PSR format.
  * We also reserve IL for the kernel; SS is handled dynamically.
  */
 #define SPSR_EL1_AARCH64_RES0_BITS \
-	(GENMASK_ULL(63,32) | GENMASK_ULL(27, 25) | GENMASK_ULL(23, 22) | \
-	 GENMASK_ULL(20, 10) | GENMASK_ULL(5, 5))
+	(GENMASK_ULL(63, 32) | GENMASK_ULL(27, 25) | GENMASK_ULL(23, 22) | \
+	 GENMASK_ULL(20, 13) | GENMASK_ULL(11, 10) | GENMASK_ULL(5, 5))
 #define SPSR_EL1_AARCH32_RES0_BITS \
-	(GENMASK_ULL(63,32) | GENMASK_ULL(23, 22) | GENMASK_ULL(20,20))
+	(GENMASK_ULL(63, 32) | GENMASK_ULL(22, 22) | GENMASK_ULL(20, 20))
 
 static int valid_compat_regs(struct user_pt_regs *regs)
 {


Patches currently in stable-queue which might be from ard.biesheuvel@linaro.org are

queue-4.19/arm64-add-sysfs-vulnerability-show-for-meltdown.patch
queue-4.19/arm64-force-ssbs-on-context-switch.patch
queue-4.19/arm64-enable-generic-cpu-vulnerabilites-support.patch
queue-4.19/arm64-provide-a-command-line-to-disable-spectre_v2-mitigation.patch
queue-4.19/arm64-always-enable-spectre-v2-vulnerability-detection.patch
queue-4.19/arm64-docs-document-ssbs-hwcap.patch
queue-4.19/arm64-add-sysfs-vulnerability-show-for-spectre-v1.patch
queue-4.19/arm64-add-sysfs-vulnerability-show-for-speculative-store-bypass.patch
queue-4.19/kvm-arm64-set-sctlr_el2.dssbs-if-ssbd-is-forcefully-disabled-and-vhe.patch
queue-4.19/arm64-always-enable-ssb-vulnerability-detection.patch
queue-4.19/arm64-advertise-mitigation-of-spectre-v2-or-lack-thereof.patch
queue-4.19/arm64-ssbs-don-t-treat-cpus-with-ssbs-as-unaffected-by-ssb.patch
queue-4.19/crypto-skcipher-unmap-pages-after-an-external-error.patch
queue-4.19/arm64-cpufeature-detect-ssbs-and-advertise-to-userspace.patch
queue-4.19/arm64-ssbd-add-support-for-pstate.ssbs-rather-than-trapping-to-el3.patch
queue-4.19/arm64-fix-ssbs-sanitization.patch
queue-4.19/arm64-add-sysfs-vulnerability-show-for-spectre-v2.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
