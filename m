Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FEAA6CD85
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 13:42:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dT6Y7Impmp6AWoITDM2uY4OFaHwqXKYE7ugPrioLWww=; b=kA3w0rwST848k4
	efp04bNpG/l/QTNEemodynCuPPo+zr2yF+bogtu4tfmSsfYm2PHEFMX3tvi5K27Aqc61CDrCLLZk0
	Kxk/xRdRsX2nWEwT0/eVP9UwcVtrHeJykQrque3FoSKa3AS3z6A1Jk9Ov64PSoxb2+2Vue9A5whMB
	h5uD54ACwnsLpoDbvegek5/aeESU/auD+WI525y7oJTQszYgUFRcKgLV7aXem0gRgopLFui1Wi4gs
	UA4+AYGlYO34W1Cxgoj7jkN8UAom8/vxQrQe5EeYBNDpe3QrZ6ZTXwwrHSSuAKaqeQ7n+oWd9+cmt
	F8nz5R7Z3MfUvI2ZqMdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho4nI-0007Mc-Il; Thu, 18 Jul 2019 11:41:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ho4n4-0007Ln-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 11:41:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C87B72B;
 Thu, 18 Jul 2019 04:41:34 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3CBFD3F71A;
 Thu, 18 Jul 2019 04:41:32 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: vdso: Cleanup Makefiles.
Date: Thu, 18 Jul 2019 12:41:21 +0100
Message-Id: <20190718114121.33024-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712153746.5dwwptgrle3z25m7@willie-the-truck>
References: <20190712153746.5dwwptgrle3z25m7@willie-the-truck>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_044138_348995_8B9B9E9E 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: naohiro.aota@wdc.com, luto@kernel.org, arnd@arndb.de, huw@codeweavers.com,
 catalin.marinas@arm.com, daniel.lezcano@linaro.org, will.deacon@arm.com,
 linux@armlinux.org.uk, salyzyn@android.com, yamada.masahiro@socionext.com,
 andre.przywara@arm.com, john.stultz@linaro.org, 0x7f454c46@gmail.com,
 linux@rasmusvillemoes.dk, Will Deacon <will@kernel.org>, tglx@linutronix.de,
 sthotton@marvell.com, pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The recent changes to the vdso library for arm64 and the introduction of
the compat vdso library have generated some misalignment in the
Makefiles.

Cleanup the Makefiles for vdso and vdso32 libraries:
  * Removing unused rules.
  * Unifying the displayed compilation messages.
  * Simplifying the generic library inclusion path for
    arm64 vdso.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso/Makefile   | 11 ++++-------
 arch/arm64/kernel/vdso32/Makefile | 10 +++++-----
 2 files changed, 9 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 75d25679d879..aa5a12325a3c 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -32,10 +32,10 @@ UBSAN_SANITIZE			:= n
 OBJECT_FILES_NON_STANDARD	:= y
 KCOV_INSTRUMENT			:= n
 
-ifeq ($(c-gettimeofday-y),)
 CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny
-else
-CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -include $(c-gettimeofday-y)
+
+ifneq ($(c-gettimeofday-y),)
+  CFLAGS_vgettimeofday.o += -include $(c-gettimeofday-y)
 endif
 
 # Clang versions less than 8 do not support -mcmodel=tiny
@@ -73,10 +73,7 @@ include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
 	$(call if_changed,vdsosym)
 
 # Actual build commands
-quiet_cmd_vdsocc = VDSOCC   $@
-      cmd_vdsocc = $(CC) $(a_flags) $(c_flags) -c -o $@ $<
-
-quiet_cmd_vdsold_and_vdso_check = LD      $@
+quiet_cmd_vdsold_and_vdso_check = VDSOLIB $@
       cmd_vdsold_and_vdso_check = $(cmd_ld); $(cmd_vdso_check)
 
 # Install commands for the unstripped file
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 21009ed5a755..6c4e496309c4 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -155,17 +155,17 @@ $(asm-obj-vdso): %.o: %.S FORCE
 	$(call if_changed_dep,vdsoas)
 
 # Actual build commands
-quiet_cmd_vdsold_and_vdso_check = LD      $@
+quiet_cmd_vdsold_and_vdso_check = VDSOLIB $@
       cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
 
-quiet_cmd_vdsold = VDSOL   $@
+quiet_cmd_vdsold = VDSOLD  $@
       cmd_vdsold = $(COMPATCC) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
                    -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
-quiet_cmd_vdsocc = VDSOC   $@
+quiet_cmd_vdsocc = CC      $@
       cmd_vdsocc = $(COMPATCC) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) -c -o $@ $<
-quiet_cmd_vdsocc_gettimeofday = VDSOC_GTD   $@
+quiet_cmd_vdsocc_gettimeofday = CC      $@
       cmd_vdsocc_gettimeofday = $(COMPATCC) -Wp,-MD,$(depfile) $(VDSO_CFLAGS) $(VDSO_CFLAGS_gettimeofday_o) -c -o $@ $<
-quiet_cmd_vdsoas = VDSOA   $@
+quiet_cmd_vdsoas = AS      $@
       cmd_vdsoas = $(COMPATCC) -Wp,-MD,$(depfile) $(VDSO_AFLAGS) -c -o $@ $<
 
 quiet_cmd_vdsomunge = MUNGE   $@
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
