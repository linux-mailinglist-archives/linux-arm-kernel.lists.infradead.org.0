Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7439466C0F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 14:06:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CXnsbtDRfseNN9KpnTOAd7OXJcvt+AwtMN1A2HwLE1A=; b=o/VdmuvNhKxiNl
	4e5Q9zJrMeqJrb+MkDwHt+E/1KGBH5lnyx3rL+XvxwDu7T4Q0NaMIdnQU3Kga9qhGWHbmoqpc1kTw
	SOPeEPB44jaHKpj9y3YOcUHl1cq/imfhcdLdd1VcUEBn9sdXkOfeNKs3gMpiW3/ISwujOyBPRg6TY
	IBItmxg2Lm3n7+O//PmVk7dQzwzFQcZJa/ewoNnEsF6D3sBjrpuMaKTQI4KAz6B3VOBQd7vVV/nZy
	xo3Exn7BQon8qJANnCt5DviuAWpu7F0IOtMNcKvTJIgkE+vMV9fch2io9adGVhmiQ4xiGh9pWyT5n
	gBj7juIIigC/NlCWlJSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hluKD-00057n-32; Fri, 12 Jul 2019 12:06:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hluJx-000501-25
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 12:06:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9B4DD28;
 Fri, 12 Jul 2019 05:06:34 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0DEBC3F71F;
 Fri, 12 Jul 2019 05:06:31 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: compat: Fix flip/flop vdso building bug
Date: Fri, 12 Jul 2019 13:06:18 +0100
Message-Id: <20190712120618.6207-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190712101556.17833-2-naohiro.aota@wdc.com>
References: <20190712101556.17833-2-naohiro.aota@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_050637_483261_B944EE71 
X-CRM114-Status: GOOD (  10.88  )
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

Running "make" on an already compiled kernel tree will rebuild the
vdso32 library even if this has not been modified.

$ make
  GEN     Makefile
  Using linux as source for kernel
  CALL    linux/scripts/atomic/check-atomics.sh
  CALL    linux/scripts/checksyscalls.sh
  VDSOCHK arch/arm64/kernel/vdso32/vdso.so.raw
  VDSOSYM include/generated/vdso32-offsets.h
  CHK     include/generated/compile.h
  CC      arch/arm64/kernel/signal.o
  CC      arch/arm64/kernel/vdso.o
  CC      arch/arm64/kernel/signal32.o
  VDSOL   arch/arm64/kernel/vdso32/vdso.so.raw
  MUNGE   arch/arm64/kernel/vdso32/vdso.so.dbg
  OBJCOPY arch/arm64/kernel/vdso32/vdso.so
  AS      arch/arm64/kernel/vdso32/vdso.o
  AR      arch/arm64/kernel/vdso32/built-in.a
  AR      arch/arm64/kernel/built-in.a
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  LD      vmlinux.o
  MODPOST vmlinux.o

The issue is generated by the fact that "if_changed" is called twice
in a single target.

Fix the build bug merging the two commands into a single function.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Fixes: a7f71a2c8903 ("arm64: compat: Add vDSO")
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/kernel/vdso32/Makefile | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 288c14d30b45..fb572b6f1bf5 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -144,8 +144,7 @@ $(obj)/vdso.so.dbg: $(obj)/vdso.so.raw $(obj)/$(munge) FORCE
 
 # Link rule for the .so file, .lds has to be first
 $(obj)/vdso.so.raw: $(src)/vdso.lds $(obj-vdso) FORCE
-	$(call if_changed,vdsold)
-	$(call if_changed,vdso_check)
+	$(call if_changed,vdsold_and_vdso_check)
 
 # Compilation rules for the vDSO sources
 $(c-obj-vdso): %.o: %.c FORCE
@@ -156,6 +155,9 @@ $(asm-obj-vdso): %.o: %.S FORCE
 	$(call if_changed_dep,vdsoas)
 
 # Actual build commands
+quiet_cmd_vdsold_and_vdso_check = LD   $@
+      cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
+
 quiet_cmd_vdsold = VDSOL   $@
       cmd_vdsold = $(COMPATCC) -Wp,-MD,$(depfile) $(VDSO_LDFLAGS) \
                    -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
