Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9CD66ACC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 12:16:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0NeoqRJFJ2TXkUEIyNON1i/zuYD/CLfbctKBT9I2p0U=; b=e+V/D4JVQVHi0q
	qTSPWlWBf8Ypjeyk5tmtNd25QcJu96jAA79xL9HOrIJP6/TTV/n3Baxudcmo/qLFpJ0SaU4o2/iOz
	3y17d6bWOXKk/HVVmK5nVn0hmfM8tyBOZbOgCjzJhWdA1haGI2bkf0aCTwhPA3W2Pte9G5zCQoI/v
	yRFF3aa5SGSm63KV4TT14qp17lDRJE1g51RnyTys0Rrwn6o2Aou6MTkNkKgPlGdETzfX9hmQijDcC
	4eLmStK3Ni+uhpGGc+rr9XupfUN9svCh9aIC6dg8ol0Jjlo5z04d5spaJGpBbeFWgx1+iquC3XInc
	bBAD7/zm8zrfV8kgRFEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlsbl-0005tG-4q; Fri, 12 Jul 2019 10:16:53 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsbZ-0005sE-FF
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 10:16:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562926602; x=1594462602;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=AJoqHcIECcqLH0QUSRg33YPP63XfJj1vTpbOg4ozyvg=;
 b=GrWxWuw25tQIbAZS+X3ezQYa4s48KOK2H5gmiug4Nwnaqmddd8MMl7GX
 Xh2IUtmdCq1E2JFLrGJ7U4upOPxefwT4TdbnX8n+3ebDBP2u6dhHOjHWQ
 JH/oXouu3I4j1a1ILasRU+z57pXkgtI5fiXOp3oNBfCrzGv/pNoDcAPsc
 8znpNdC0QUNyKVry4vzetq37kn3PIERtjiAqZiwHELg0Fu15vySRsDwB5
 V+/s3cMeswrdwln+0AvjZOzDsI69Fv/n4rEZnXVEyBhH5+tTgP451qB7e
 mfhPZccp7u8JlPY1WmSpUZFg43Q3fJF/rlqUlDCIsfj49NUydSjMMbXI0 g==;
IronPort-SDR: lZq14BcW1OAwhEi4aZUeOJ1u9fKS9VJyyGC1u5zlo9bdf+mzoJkh4Ba0luS0xJkimhJN7tgrpZ
 A2qgdftQ/1eCRlgZO7KMKCfO5As8vP6iPgdNFeSQhd+KuTPFZ8M5auf6huMp0YNRYE/ubSflz8
 DgrrHIPhqdUx8QETAHFJhRp6TlBYTWfzWAevDoY7t0dNrl5jTM6gC1/qr9Pz98Xn9o3P6hWijR
 xuxOg8h82rwERLjQ9/piBHpLI3ykkSLPyrvGMhlMftIpwdcZ8T9tkndZp+FRCk00tWsGkUCXK9
 k+o=
X-IronPort-AV: E=Sophos;i="5.63,482,1557158400"; d="scan'208";a="114023428"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 12 Jul 2019 18:16:40 +0800
IronPort-SDR: eTeHnga0zYT1mDTZ+DIO55KMWKIJmcXiB67wCpuINefAznDYEtDK3/+VlKECW4l/SmE2smiPTI
 SYIp5E/g42I1n2KrphG1tAY/MVu1b17fifn1nGLEHYEAWl0iBSb/UJg82DeCYRl0z/iKSF1Z76
 4CNNiIOmSVIxdx9Ql1+/+zNdEV99RoRGrwEBUJvySQnqbWKeGeL+ClddAxqN5+ou6tQ0SzCKyK
 nfu8Hnck+0Tr/PiUFd0N3zrYgelKNnXxun+oU2WGuC0709Pumro9NkmqTPJO7pBI93SIlESj6K
 jSTbk9iCAw0q2M/N1tPrb784
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 12 Jul 2019 03:15:15 -0700
IronPort-SDR: IulP3MoeMaiHmqM2NTmWCM5KACyInQn5hl41aggyyqOkCzE+3S3dk5KTb69ZO6f9Iv9+geXDtQ
 GcNRn26rOfaxatIu9C6XoNPaKB3vuo1DN65P0e5cwGrx8x9oehzpMqz+KfPbVqeJiccYDXY4QV
 WzqZQRWTCc/EDvWJgEb9QYH0lIg2DZ2NvI/UWLzeJ7zn6RcGinszVc84I1+kGdnKrlPuQLg71+
 Evov7cwuHzxia9LJWVML4mSpbX/hoPF4lBYfpbGNIRfGSqZ4t0hdXQAEP8i32ctdnG+uaYUYSa
 WH4=
Received: from naota.dhcp.fujisawa.hgst.com (HELO naota.fujisawa.hgst.com)
 ([10.149.53.115])
 by uls-op-cesaip01.wdc.com with ESMTP; 12 Jul 2019 03:16:38 -0700
From: Naohiro Aota <naohiro.aota@wdc.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] x86/vdso: fix flip/flop vdso build bug
Date: Fri, 12 Jul 2019 19:15:55 +0900
Message-Id: <20190712101556.17833-1-naohiro.aota@wdc.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_031641_655356_7996A8B0 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Two consecutive "make" on an already compiled kernel tree will show
different behavior:

$ make
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND  objtool
  CHK     include/generated/compile.h
  VDSOCHK arch/x86/entry/vdso/vdso64.so.dbg
  VDSOCHK arch/x86/entry/vdso/vdso32.so.dbg
Kernel: arch/x86/boot/bzImage is ready  (#3)
  Building modules, stage 2.
  MODPOST 12 modules

$ make
make
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND  objtool
  CHK     include/generated/compile.h
  VDSO    arch/x86/entry/vdso/vdso64.so.dbg
  OBJCOPY arch/x86/entry/vdso/vdso64.so
  VDSO2C  arch/x86/entry/vdso/vdso-image-64.c
  CC      arch/x86/entry/vdso/vdso-image-64.o
  VDSO    arch/x86/entry/vdso/vdso32.so.dbg
  OBJCOPY arch/x86/entry/vdso/vdso32.so
  VDSO2C  arch/x86/entry/vdso/vdso-image-32.c
  CC      arch/x86/entry/vdso/vdso-image-32.o
  AR      arch/x86/entry/vdso/built-in.a
  AR      arch/x86/entry/built-in.a
  AR      arch/x86/built-in.a
  GEN     .version
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
  AR      init/built-in.a
  LD      vmlinux.o
<snip>

This is causing "LD vmlinux" once every two times even without any
modifications. This is the same bug fixed in commit 92a4728608a8
("x86/boot: Fix if_changed build flip/flop bug"). We cannot use two
"if_changed" in one target. Fix this build bug by merging two commands into
one function.

Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Fixes: 7ac870747988 ("x86/vdso: Switch to generic vDSO implementation")
Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>
---
 arch/x86/entry/vdso/Makefile | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index 39106111be86..34773395139a 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -56,8 +56,7 @@ VDSO_LDFLAGS_vdso.lds = -m elf_x86_64 -soname linux-vdso.so.1 --no-undefined \
 			-z max-page-size=4096
 
 $(obj)/vdso64.so.dbg: $(obj)/vdso.lds $(vobjs) FORCE
-	$(call if_changed,vdso)
-	$(call if_changed,vdso_check)
+	$(call if_changed,vdso_and_check)
 
 HOST_EXTRACFLAGS += -I$(srctree)/tools/include -I$(srctree)/include/uapi -I$(srctree)/arch/$(SUBARCH)/include/uapi
 hostprogs-y			+= vdso2c
@@ -127,8 +126,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 	$(call if_changed,objcopy)
 
 $(obj)/vdsox32.so.dbg: $(obj)/vdsox32.lds $(vobjx32s) FORCE
-	$(call if_changed,vdso)
-	$(call if_changed,vdso_check)
+	$(call if_changed,vdso_and_check)
 
 CPPFLAGS_vdso32.lds = $(CPPFLAGS_vdso.lds)
 VDSO_LDFLAGS_vdso32.lds = -m elf_i386 -soname linux-gate.so.1
@@ -167,8 +165,7 @@ $(obj)/vdso32.so.dbg: FORCE \
 		      $(obj)/vdso32/note.o \
 		      $(obj)/vdso32/system_call.o \
 		      $(obj)/vdso32/sigreturn.o
-	$(call if_changed,vdso)
-	$(call if_changed,vdso_check)
+	$(call if_changed,vdso_and_check)
 
 #
 # The DSO images are built using a special linker script.
@@ -184,6 +181,9 @@ VDSO_LDFLAGS = -shared $(call ld-option, --hash-style=both) \
 	-Bsymbolic
 GCOV_PROFILE := n
 
+quiet_cmd_vdso_and_check = VDSO    $@
+      cmd_vdso_and_check = $(cmd_vdso); $(cmd_vdso_check)
+
 #
 # Install the unstripped copies of vdso*.so.  If our toolchain supports
 # build-id, install .build-id links as well.
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
