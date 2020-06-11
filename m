Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CB71F680D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 14:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C2da3ZrAxdg/CpWx0DnpyrhSqfS7kZU3BbV+6YmsqeU=; b=TSwJwGD0xPoaoJ
	HjhyVZPylFEyHPzD1ZNdgMUpMfPzAvPd31BbG54S1CpkjPWfTXbHr0pPJFEtq4IxJfEiwuD2ZisOv
	eWXXkgcaWN8G+CWLQ1RqG1ABDXgQ/JwIm53vJKGl+Ffj6lu0uJqnKFacdmDJ6mcLPq0Lpz3hXcDQV
	dzn+qnL+wgAG26ZgYdHCFY1JW1dTrT3GY2fn94PMvomS393l5Nki5hZJ+jDvR/K+Bv4IKLmwLsrsg
	ETar44fP55Mj3XFDRx9EE13ophlgLA+VWgFC1ucL0cwPkvcrsa+enPC84IOYzVLC+Fc4Fzy7suIb5
	Gzkv8pbvWIj8h6bwd+Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjMYd-00027H-UE; Thu, 11 Jun 2020 12:43:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjMYV-00026l-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 12:43:41 +0000
Received: from localhost.localdomain
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CD8B20747;
 Thu, 11 Jun 2020 12:43:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591879418;
 bh=3IeQxX1rrml8tmS60R4e4yTmVjBeNidoEcPWyhe/tno=;
 h=From:To:Cc:Subject:Date:From;
 b=JoQYnQD97U18tPqK1ndkymr1Gg5LnqLXxMIgcQZ9vGLeXxHEMF0onZhXjIPA/1wcw
 T+lhCnICXtkrdO8fh7XY3AojpqkuGv5UHXdzWH7j3NQIJNj9zDq4GECo0Gu2/ofUOb
 L8vO/GZjootDuJfiMSvp1GLwT1JRxYJuGjhZgSUQ=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: warn on incorrect placement of the kernel by the
 bootloader
Date: Thu, 11 Jun 2020 14:43:30 +0200
Message-Id: <20200611124330.252163-1-ardb@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_054339_973767_29668455 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, maz@kernel.org, will@kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, jonathan@marek.ca
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit cfa7ede20f133c ("arm64: set TEXT_OFFSET to 0x0 in preparation for
removing it entirely") results in boot failures when booting kernels that
are built without KASLR support on broken bootloaders that ignore the
TEXT_OFFSET value passed via the header, and use the default of 0x80000
instead.

To work around this, turn CONFIG_RELOCATABLE on by default, even if KASLR
itself (CONFIG_RANDOMIZE_BASE) is turned off, and require CONFIG_EXPERT
to be enabled to deviate from this. Then, emit a warning into the kernel
log if we are not booting via the EFI stub (which is permitted to deviate
from the placement restrictions) and the kernel base address is not placed
according to the rules as laid out in Documentation/arm64/booting.rst.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
v2: use pr_warn() instead of WARN()

 arch/arm64/Kconfig        | 3 ++-
 arch/arm64/kernel/setup.c | 4 ++++
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 7f9d38444d6d..16c3f158c80e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1740,8 +1740,9 @@ config ARM64_DEBUG_PRIORITY_MASKING
 endif
 
 config RELOCATABLE
-	bool
+	bool "Build a relocatable kernel image" if EXPERT
 	select ARCH_HAS_RELR
+	default y
 	help
 	  This builds the kernel as a Position Independent Executable (PIE),
 	  which retains all relocation metadata required to relocate the
diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
index 3fd2c11c09fc..5d7d6ac034fd 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -319,6 +319,10 @@ void __init setup_arch(char **cmdline_p)
 
 	xen_early_init();
 	efi_init();
+
+	if (!efi_enabled(EFI_BOOT) && ((u64)_text % MIN_KIMG_ALIGN) != 0)
+	     pr_warn(FW_BUG "Kernel image misaligned at boot, please fix your bootloader!");
+
 	arm64_memblock_init();
 
 	paging_init();
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
