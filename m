Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD9E2FF2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 17:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5l9QhqKRg06QhuhJYI22HZ8cn/V+L68kdUmFZkhl0nk=; b=aTVH5hM5q9AhcBq9z1gi2d+e1q
	UD3iS6d4UOaSbdW2Nbn+rNZtPSGMbaqP4YVpoitFHKSR2TtQD50SQydbuht4jZZ5tlRWiZCuf1nWX
	XVhST/NBu6RRNLjNxovwDmXBOONm4v0eUFNRYIHtYBg5+RCcUtAJDqREvl3hzI94lfg7lWHutuFr9
	yWX0LlwHNXtd3urBrHFAkR8lEHrO7zPHO0s8NZVnQbPQbkL8+yC4JrHEVeZydF2NyrWYaRaiRxMay
	qpfKSvzjFfftwyeGY6Ed+SNYfRSl95g7R0VRIIfaZ1dAVUYM+XcehdjvNfS30RXscEe7GpVD06B7E
	xbal0u3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWMmp-0004nZ-2G; Thu, 30 May 2019 15:16:11 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWMky-0002I1-SA
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 15:14:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4FF2341;
 Thu, 30 May 2019 08:14:16 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 071863F59C;
 Thu, 30 May 2019 08:14:14 -0700 (PDT)
From: Dave Martin <Dave.Martin@arm.com>
To: kvmarm@lists.cs.columbia.edu
Subject: [PATCH kvmtool v3 7/9] arm64: Make ptrauth enable/disable diagnostics
 more user-friendly
Date: Thu, 30 May 2019 16:13:12 +0100
Message-Id: <1559229194-3036-8-git-send-email-Dave.Martin@arm.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
References: <1559229194-3036-1-git-send-email-Dave.Martin@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_081417_182611_E00B1ACC 
X-CRM114-Status: GOOD (  17.24  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoffer Dall <cdall@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Andre Przywara <andre.przywara@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kristina Martsenko <kristina.martsenko@arm.com>,
 Zhang Lei <zhang.lei@jp.fujitsu.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To help the user understand what is going on, amend ptrauth
configuration diagnostic messages to refer to command line options
by the exact name used on the command line.

Also, provide a clean diagnostic when ptrauth is requested, but not
availble.  The generic "Unable to initialise vcpu" message is
rather cryptic for this case.

Since we now don't attempt to enable ptrauth at all unless KVM
reports the relevant capabilities, remove the error message for
that case too: in any case, we can't diagnose precisely why
KVM_ARM_VCPU_INIT failed, so the message may be misleading.

Signed-off-by: Dave Martin <Dave.Martin@arm.com>
---
 arm/aarch64/include/kvm/kvm-config-arch.h |  4 ++--
 arm/aarch64/kvm-cpu.c                     | 15 +++++++++++----
 arm/kvm-cpu.c                             |  8 ++------
 3 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/arm/aarch64/include/kvm/kvm-config-arch.h b/arm/aarch64/include/kvm/kvm-config-arch.h
index 0279b13..fe1699d 100644
--- a/arm/aarch64/include/kvm/kvm-config-arch.h
+++ b/arm/aarch64/include/kvm/kvm-config-arch.h
@@ -10,9 +10,9 @@
 			"Specify random seed for Kernel Address Space "	\
 			"Layout Randomization (KASLR)"),		\
 	OPT_BOOLEAN('\0', "enable-ptrauth", &(cfg)->enable_ptrauth,	\
-			"Enables pointer authentication"),		\
+			"Enable pointer authentication for the guest"),	\
 	OPT_BOOLEAN('\0', "disable-ptrauth", &(cfg)->disable_ptrauth,	\
-			"Disables pointer authentication"),
+			"Disable pointer authentication for the guest"),
 
 #include "arm-common/kvm-config-arch.h"
 
diff --git a/arm/aarch64/kvm-cpu.c b/arm/aarch64/kvm-cpu.c
index d3c32e0..08e4fd5 100644
--- a/arm/aarch64/kvm-cpu.c
+++ b/arm/aarch64/kvm-cpu.c
@@ -130,16 +130,23 @@ static void reset_vcpu_aarch64(struct kvm_cpu *vcpu)
 
 static void select_ptrauth_feature(struct kvm *kvm, struct kvm_vcpu_init *init)
 {
+	bool supported;
+
 	/* Check Pointer Authentication command line arguments. */
 	if (kvm->cfg.arch.enable_ptrauth && kvm->cfg.arch.disable_ptrauth)
-		die("Both enable-ptrauth and disable-ptrauth option cannot be present");
+		die("--enable-ptrauth conflicts with --disable-ptrauth");
+
+	supported = kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
+		    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC);
+
+	if (kvm->cfg.arch.enable_ptrauth && !supported)
+		die("--enable-ptrauth not supported on this host");
+
 	/*
 	 * Always enable Pointer Authentication if system supports
 	 * this extension unless disable-ptrauth option is present.
 	 */
-	if (kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_ADDRESS) &&
-	    kvm__supports_extension(kvm, KVM_CAP_ARM_PTRAUTH_GENERIC) &&
-	    !kvm->cfg.arch.disable_ptrauth) {
+	if (supported && !kvm->cfg.arch.disable_ptrauth) {
 		init->features[0] |= 1UL << KVM_ARM_VCPU_PTRAUTH_ADDRESS;
 		init->features[0] |= 1UL << KVM_ARM_VCPU_PTRAUTH_GENERIC;
 	}
diff --git a/arm/kvm-cpu.c b/arm/kvm-cpu.c
index 764fb05..1652f6f 100644
--- a/arm/kvm-cpu.c
+++ b/arm/kvm-cpu.c
@@ -108,12 +108,8 @@ struct kvm_cpu *kvm_cpu__arch_init(struct kvm *kvm, unsigned long cpu_id)
 			die("Unable to find matching target");
 	}
 
-	if (err || target->init(vcpu)) {
-		if (kvm->cfg.arch.enable_ptrauth)
-			die("Unable to initialise vcpu with pointer authentication feature");
-		else
-			die("Unable to initialise vcpu");
-	}
+	if (err || target->init(vcpu))
+		die("Unable to initialise vcpu");
 
 	coalesced_offset = ioctl(kvm->sys_fd, KVM_CHECK_EXTENSION,
 				 KVM_CAP_COALESCED_MMIO);
-- 
2.1.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
