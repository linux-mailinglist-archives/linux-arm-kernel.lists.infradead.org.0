Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A59476F23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iT+t80i9TO0oPORTN7LHYUCNER8JoSOX2qFzAKztbRY=; b=FRuHlRgmVHFXik
	RuwlQpOPMo6X8AKHJYNKKj97w+FgTjBVlJynqMSjzPgbQs5a3LfFxjPGHK3QgMl8qpbgPA/UOaQ4w
	YZ5CHMX5TikHYqSCwVV3XideREd5HjHT4BAsDeZfj60yoqsg2chmWZQdB1sHHOE9MLi1cFNbdEeac
	fPgRfYxNVeiiVY1+5CGhYPJRZG7Q1OmHuyhw9p2H9vL7/6cUkcFo22BCi/kh7roZotJWcXKUiekVZ
	CLYK3MyKl/Svz5O23mYJf/pjHQRPZb/lF+VJWXbUsQyWBVwdUcQgDbqSSAjE53O+rKS3Jw+Ssa1qu
	figu83DDQH3Ag4SaNnAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr37K-00030z-OT; Fri, 26 Jul 2019 16:30:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr36d-0002FK-9E
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:30:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3CB9D15A2;
 Fri, 26 Jul 2019 09:30:06 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8C6543F71F;
 Fri, 26 Jul 2019 09:30:03 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org
Subject: [PATCH 2/2] mips: vdso: Fix flip/flop vdso building bug
Date: Fri, 26 Jul 2019 17:29:44 +0100
Message-Id: <20190726162944.12149-3-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726162944.12149-1-vincenzo.frascino@arm.com>
References: <MWHPR2201MB1277C33D971A9C8945812CFCC1C00@MWHPR2201MB1277.namprd22.prod.outlook.com>
 <20190726162944.12149-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_093007_461567_1C27369A 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: shuah@kernel.org, andre.przywara@arm.com, arnd@arndb.de,
 huw@codeweavers.com, catalin.marinas@arm.com, daniel.lezcano@linaro.org,
 will.deacon@arm.com, linux@armlinux.org.uk, ralf@linux-mips.org,
 salyzyn@android.com, luto@kernel.org, paul.burton@mips.com,
 0x7f454c46@gmail.com, linux@rasmusvillemoes.dk, tglx@linutronix.de,
 sthotton@marvell.com, pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Running "make" on an already compiled kernel tree will rebuild the
vdso library even if this has not been modified.

$ make
  GEN     Makefile
  Using linux as source for kernel
  CALL   linux/scripts/atomic/check-atomics.sh
  CALL   linux/scripts/checksyscalls.sh
<stdin>:1511:2: warning: #warning syscall clone3 not implemented [-Wcpp]
  CHK     include/generated/compile.h
  VDSO    arch/mips/vdso/vdso.so.dbg.raw
  OBJCOPY arch/mips/vdso/vdso.so.raw
  GENVDSO arch/mips/vdso/vdso-image.c
  CC      arch/mips/vdso/vdso-image.o
  AR      arch/mips/vdso/built-in.a
  AR      arch/mips/built-in.a
  CHK     include/generated/autoksyms.h
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  LD      vmlinux.o
  MODPOST vmlinux.o
  MODINFO modules.builtin.modinfo
  KSYM    .tmp_kallsyms1.o
  KSYM    .tmp_kallsyms2.o
  LD      vmlinux
  SORTEX  vmlinux
  SYSMAP  System.map
  Building modules, stage 2.
  ITS     arch/mips/boot/vmlinux.gz.its
  OBJCOPY arch/mips/boot/vmlinux.bin
  MODPOST 7 modules
  GZIP    arch/mips/boot/vmlinux.bin.gz
  ITB     arch/mips/boot/vmlinux.gz.itb

The issue is generated by the fact that "if_changed" is called twice
in a single target.

Fix the build bug merging the two commands into a single function.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/vdso/Makefile | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/mips/vdso/Makefile b/arch/mips/vdso/Makefile
index 6b482ac52e61..69cfa0a5339e 100644
--- a/arch/mips/vdso/Makefile
+++ b/arch/mips/vdso/Makefile
@@ -79,11 +79,14 @@ UBSAN_SANITIZE := n
 # Shared build commands.
 #
 
+quiet_cmd_vdsold_and_vdso_check = LD      $@
+      cmd_vdsold_and_vdso_check = $(cmd_vdsold); $(cmd_vdso_check)
+
 quiet_cmd_vdsold = VDSO    $@
       cmd_vdsold = $(CC) $(c_flags) $(VDSO_LDFLAGS) \
                    -Wl,-T $(filter %.lds,$^) $(filter %.o,$^) -o $@
 
-quiet_cmd_vdsoas_o_S = AS       $@
+quiet_cmd_vdsoas_o_S = AS      $@
       cmd_vdsoas_o_S = $(CC) $(a_flags) -c -o $@ $<
 
 # Strip rule for the raw .so files
@@ -119,8 +122,7 @@ $(obj-vdso): KBUILD_AFLAGS := $(aflags-vdso) $(native-abi)
 $(obj)/vdso.lds: KBUILD_CPPFLAGS := $(ccflags-vdso) $(native-abi)
 
 $(obj)/vdso.so.dbg.raw: $(obj)/vdso.lds $(obj-vdso) FORCE
-	$(call if_changed,vdsold)
-	$(call if_changed,vdso_check)
+	$(call if_changed,vdsold_and_vdso_check)
 
 $(obj)/vdso-image.c: $(obj)/vdso.so.dbg.raw $(obj)/vdso.so.raw \
                      $(obj)/genvdso FORCE
@@ -158,8 +160,7 @@ $(obj)/vdso-o32.lds: $(src)/vdso.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
 $(obj)/vdso-o32.so.dbg.raw: $(obj)/vdso-o32.lds $(obj-vdso-o32) FORCE
-	$(call if_changed,vdsold)
-	$(call if_changed,vdso_check)
+	$(call if_changed,vdsold_and_vdso_check)
 
 $(obj)/vdso-o32-image.c: VDSO_NAME := o32
 $(obj)/vdso-o32-image.c: $(obj)/vdso-o32.so.dbg.raw $(obj)/vdso-o32.so.raw \
@@ -199,8 +200,7 @@ $(obj)/vdso-n32.lds: $(src)/vdso.lds.S FORCE
 	$(call if_changed_dep,cpp_lds_S)
 
 $(obj)/vdso-n32.so.dbg.raw: $(obj)/vdso-n32.lds $(obj-vdso-n32) FORCE
-	$(call if_changed,vdsold)
-	$(call if_changed,vdso_check)
+	$(call if_changed,vdsold_and_vdso_check)
 
 $(obj)/vdso-n32-image.c: VDSO_NAME := n32
 $(obj)/vdso-n32-image.c: $(obj)/vdso-n32.so.dbg.raw $(obj)/vdso-n32.so.raw \
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
