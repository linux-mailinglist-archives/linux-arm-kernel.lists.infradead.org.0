Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7BCD090E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 10:04:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:From:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=fTIwd+/05arQV6IfUf0DXtQ0IKyDvR+d1Ell41AkyWA=; b=K7IBTU7q3qLhO9
	c7ubDmjDn2v0dTBNroCSD9cTdpOw3rZTcN3GbiLqsReLl+T+PiXDUcrnjJOmVMZFtGlANpQ8Va34G
	2ZvEuEfEU3QfvdVcueYUpYOZJnnL0hkmwc+uYonn6lG84PYq1ceoHoUn67FFNMcZgIE00ZAglTlZD
	pvxrnfMHE0knlA9fZuRLzECH4AIA6fp4KJh5kL89lX5D3CMpit06AzIGawxh+xlWU0uXV9HBya1r4
	zxbLOJ8SvlW6j+67QXyKsZhcUcie5J3891lDsNA9JAvimbNUsqF6BXWufvXpwiB9mY/0y9PrX59Md
	dEnta7nDVCXUawOG2I5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6xg-0003tG-Gz; Wed, 09 Oct 2019 08:04:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6xA-0003it-Jg
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 08:04:15 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82DAD206B6;
 Wed,  9 Oct 2019 08:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570608252;
 bh=eJR3e3vTaC8nmST/ry4QLe8r5PZA3C1FBYZFYp9ubfQ=;
 h=Subject:To:Cc:From:Date:In-Reply-To:From;
 b=pMXdPRTQJxEyFvr6jM/gNoJi72/i31QRiTarcHBRDoJo93e6nQOA88y0v+/7Dfw5V
 BMoWTSMSXnDOI+N/UqJUla+5guYF8am5IkH/q7wWC7mX61YE1qC7AUAuy2fcCtyFj6
 Mnz5heTKPpzYou1P5vTwgon7TtCaV1JlHtYTi3dM=
Subject: Patch "arm64: Add sysfs vulnerability show for spectre-v1" has been
 added to the 4.19-stable tree
To: andre.przywara@arm.com, ard.biesheuvel@linaro.org, catalin.marinas@arm.com,
 gregkh@linuxfoundation.org, jeremy.linton@arm.com,
 linux-arm-kernel@lists.infradead.org, stefan.wahren@i2se.com,
 suzuki.poulose@arm.com, will.deacon@arm.com, ykaukab@suse.de
From: <gregkh@linuxfoundation.org>
Date: Wed, 09 Oct 2019 10:04:01 +0200
In-Reply-To: <20191008153930.15386-7-ard.biesheuvel@linaro.org>
Message-ID: <157060824145125@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_010412_778293_1CCA5B37 
X-CRM114-Status: GOOD (  10.33  )
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

    arm64: Add sysfs vulnerability show for spectre-v1

to the 4.19-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm64-add-sysfs-vulnerability-show-for-spectre-v1.patch
and it can be found in the queue-4.19 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From foo@baz Wed 09 Oct 2019 10:02:11 AM CEST
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Tue,  8 Oct 2019 17:39:20 +0200
Subject: arm64: Add sysfs vulnerability show for spectre-v1
To: linux-arm-kernel@lists.infradead.org
Cc: stable@vger.kernel.org, Mian Yousaf Kaukab <ykaukab@suse.de>, Jeremy Linton <jeremy.linton@arm.com>, Andre Przywara <andre.przywara@arm.com>, Catalin Marinas <catalin.marinas@arm.com>, Stefan Wahren <stefan.wahren@i2se.com>, Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Message-ID: <20191008153930.15386-7-ard.biesheuvel@linaro.org>

From: Mian Yousaf Kaukab <ykaukab@suse.de>

[ Upstream commit 3891ebccace188af075ce143d8b072b65e90f695 ]

spectre-v1 has been mitigated and the mitigation is always active.
Report this to userspace via sysfs

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Tested-by: Stefan Wahren <stefan.wahren@i2se.com>
Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 arch/arm64/kernel/cpu_errata.c |    6 ++++++
 1 file changed, 6 insertions(+)

--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -729,3 +729,9 @@ const struct arm64_cpu_capabilities arm6
 	{
 	}
 };
+
+ssize_t cpu_show_spectre_v1(struct device *dev, struct device_attribute *attr,
+			    char *buf)
+{
+	return sprintf(buf, "Mitigation: __user pointer sanitization\n");
+}


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
