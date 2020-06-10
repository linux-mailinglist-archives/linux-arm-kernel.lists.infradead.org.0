Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A2C31F5AC1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 19:46:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+kMc2Lk225oDCYiuMX2oDqa5vqYVP4vuTuUaj4LnKO4=; b=a6pLLSmb6LOko7
	D6wX/yN3qMIITMyLmnRxuk0DMipupTnrGZm2sbjATX1JDYJc837ibalk2v5l7I5k8N81/70ezZHtC
	8CZI5qnWlosrwHs3/ZjhXlox/5lXgWHCo+ECn6C3J21bWwk3XGv0llW2gr0m9eoVqsga1DiKzT3hd
	PixduwLn8Qn3ufA5+SR2uCnyEJjXsELItQZVXqGabCA/x38gaTPsYwhUW7Q7Nt1J2ryqD7Qj4hmZF
	ImZ3J+e44C21JZ28rQ6Y3Wd+5mAuB/AskKoyYLvYjFsat2AEbeeN8/m96YUAhtsYMa/PXUH6Wk8XC
	lLwpuJsy5O9t6UHeMpXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj4o8-0001sc-EP; Wed, 10 Jun 2020 17:46:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj4o0-0001rl-GS
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 17:46:29 +0000
Received: from dogfood.home (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr
 [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B5AD2204EC;
 Wed, 10 Jun 2020 17:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591811188;
 bh=7LgVZ0GSBkgdtxD2GXNfQMricpaNnHonW1nwEMGCzC4=;
 h=From:To:Cc:Subject:Date:From;
 b=K5U/gJ53VVsLIEhSyygGejSzOCTuAcjLxv9SSuFb4/HJxKsaUidHiJsGShQls8EDI
 +CU7rkQrDycdtQi3K5XrsPeBSk8dJa2ZJeUqlFYOS7G/U554/udPhSybXpNBS1iKz1
 X791QJgdCnx/Yeh/Ygy6TLultX2I0YywiNxHP9k4=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: warn on incorrect placement of the kernel by the
 bootloader
Date: Wed, 10 Jun 2020 19:46:01 +0200
Message-Id: <20200610174601.159853-1-ardb@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_104628_568725_57700E3B 
X-CRM114-Status: GOOD (  12.28  )
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
 arch/arm64/Kconfig        | 3 ++-
 arch/arm64/kernel/setup.c | 3 +++
 2 files changed, 5 insertions(+), 1 deletion(-)

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
index 3fd2c11c09fc..bfeeeea833dd 100644
--- a/arch/arm64/kernel/setup.c
+++ b/arch/arm64/kernel/setup.c
@@ -319,6 +319,9 @@ void __init setup_arch(char **cmdline_p)
 
 	xen_early_init();
 	efi_init();
+	WARN(!efi_enabled(EFI_BOOT) && ((u64)_text % MIN_KIMG_ALIGN) != 0,
+	     FW_BUG "Kernel image misaligned at boot, please fix your bootloader");
+
 	arm64_memblock_init();
 
 	paging_init();
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
