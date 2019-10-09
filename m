Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B40D0938
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=5mCv2LPRwdsitePd0lEVYaZpcrLlUm9BO+LQ+YPF7xI=; b=IzfG97zIwl7kz1
	J/jEJfFl0uRXLR7ffm9h3t2LMhbmjDSSeaWAtjrO84WqajBeIuDF9mn+SkQyYwYGgNilchCR5zmjy
	XKAhbOe9QIJqLiFBTo64N/SAShGt0kh+fP2D5vIoWbRdqDeNX7AyLgFDwioGWRNZIb5UoYPaECR+I
	s1HiBUs9/NUnNvdaa5ZrOZG9nBXFpesiXfGx6xaBjgUJsahcVeEryKfYJ3oJZ8D809M4jWbV19qlE
	H5Nq/7WsciPgFCPOMfKYzRCYS6r3QsJ214eVCe4ysckE3gmUjM/+853v+I26xhgOMSGZDQ4KAlIcj
	Ouh3Q83SiGo9oHDzyLSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI71F-0008EQ-L6; Wed, 09 Oct 2019 08:08:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6xg-00048G-F5
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:04:47 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32365218AC;
 Wed,  9 Oct 2019 08:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570608283;
 bh=tDBAe6i7EQEmgN8pB/HliSUdUFXlI2895cJSJ1DK6rw=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=w3PjowUKZz+CePc+alw6qVlH1PgrBQreimRWKmElPDbWyafKBPl0OL37BsbJn56M5
 yo421nXvsCuc7cN9Lp9GvQXbff0770FZ+MGRiZLGZRIgH7qnhYZaq0XGCHFYuyFMFh
 QUjv4RuXaC2OSH1SWeTH3qvQW/CNaGFE0wp5UUds=
Subject: Patch "arm64: ssbs: Don't treat CPUs with SSBS as unaffected by SSB"
 has been added to the 4.19-stable tree
To: ard.biesheuvel@linaro.org, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org, will.deacon@arm.com
From: <gregkh@linuxfoundation.org>
Date: Wed, 09 Oct 2019 10:04:02 +0200
In-Reply-To: <20191008153930.15386-16-ard.biesheuvel@linaro.org>
Message-ID: <1570608242113113@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010444_631001_62A44BA7 
X-CRM114-Status: GOOD (  13.19  )
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

    arm64: ssbs: Don't treat CPUs with SSBS as unaffected by SSB

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm64-ssbs-don-t-treat-cpus-with-ssbs-as-unaffected-by-ssb.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Wed 09 Oct 2019 10:02:12 AM CEST
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue,  8 Oct 2019 17:39:29 +0200
Subject: arm64: ssbs: Don't treat CPUs with SSBS as unaffected by SSB
To: linux-arm-kernel@lists.infradead.org
Cc: stable@vger.kernel.org, Will Deacon <will.deacon@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Message-ID: <20191008153930.15386-16-ard.biesheuvel@linaro.org>

From: Will Deacon <will.deacon@arm.com>

[ Upstream commit eb337cdfcd5dd3b10522c2f34140a73a4c285c30 ]

SSBS provides a relatively cheap mitigation for SSB, but it is still a
mitigation and its presence does not indicate that the CPU is unaffected
by the vulnerability.

Tweak the mitigation logic so that we report the correct string in sysfs.

Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpu_errata.c |   10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -341,15 +341,17 @@ static bool has_ssbd_mitigation(const st
 
 	WARN_ON(scope != SCOPE_LOCAL_CPU || preemptible());
 
+	/* delay setting __ssb_safe until we get a firmware response */
+	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
+		this_cpu_safe = true;
+
 	if (this_cpu_has_cap(ARM64_SSBS)) {
+		if (!this_cpu_safe)
+			__ssb_safe = false;
 		required = false;
 		goto out_printmsg;
 	}
 
-	/* delay setting __ssb_safe until we get a firmware response */
-	if (is_midr_in_range_list(read_cpuid_id(), entry->midr_range_list))
-		this_cpu_safe = true;
-
 	if (psci_ops.smccc_version == SMCCC_VERSION_1_0) {
 		ssbd_state = ARM64_SSBD_UNKNOWN;
 		if (!this_cpu_safe)


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
