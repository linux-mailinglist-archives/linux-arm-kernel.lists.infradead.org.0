Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E4C666A0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TR7tUw+mwFN6H1r+fIR7bLdbYIqmKEq1whw/nx4A1y8=; b=jKHmcXyH8rj93r
	jKOVau7r1T+xbh4Avabu6FKV08fWxUkrmJ1TTcOEliWW+tXq5nuikw3jnayKSOHamt13SMuLMClLj
	W518ers/nV/3vw3ZqqFByciVjBbHnmrz6CrZvLheCDMwzsKA1v7aC4Bi2czVqbEWMsa2lui+sAYY+
	zvKznFXPxee9lUTkRcY27OgEzsbnM5X5X6gzi1EZOPZnPMTGhofru/twYafkOVJLWVxepzWI8vRe7
	+OcEXr4QxdozDNzJNWG42vhG2hwFzxB/jbqnmxEOkHyFn1oLR/emgfb4Y9fxFVr+kvpIApP8gr8cZ
	VyEGmUOD6krDFlWSr+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hloQb-0000G8-Iv; Fri, 12 Jul 2019 05:49:05 +0000
Received: from esa1.hgst.iphmx.com ([68.232.141.245])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hloNs-0006t2-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:46:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1562910376; x=1594446376;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HMccxVoT58JbGUKu3aE4TUzBGUQZO3PA2N2cx5/gbsk=;
 b=ATJ9hVlYgZm3i8/NBBIMdG1aexG4ntc3vGwCqlyIUVOM+WcJAiLOnitT
 RSO5SaNJVeK5z6XXOkrUN4/g9TL1Vj4HzcJeG6PFLdZXNHL5VAOOttE0T
 xFXCfGACm289IrssMM9PAdhGcvA+vlsKgdeDSkjmwR32Xxa4abclqFK42
 ZlnE1kQ3t9N2h3/taEJ2y+BtWAMEKVDZL5jORz9n97Znehl3v1AEs19Me
 KHf758iz4cc/zrSFItdHLtTnJrZiAk0U7n/4SFALZ3kMBPO8BX2UDCRWu
 37ijoo+z7htnp1q4a8znBK/MiLi+tX1DznipBGyCkenD951M7baf5SdKi A==;
IronPort-SDR: DUiczv8ToDtWX90nSisUTLVO3+TkHcrz2HGbJ4Hb41LiDMN0xMOJ3xR/u1FW6/04ce+aK5XOpi
 ePkSK4MHyPvLGxWyO2hlpZwkFcZ4aahBExgLty6IJIa7k5YD26Hk/y1YHYUn638s8rr+sSKgDN
 wMSOaNDhr61R++q6OIQzKIoxYRh4bpnGSzhb90TCflQ6mSHkh8hyNe+tMdmOIIVkD4C6rUK/9S
 j+gSgUT379ITagy08318ZPDvPZSWf7e/bBiaFgrGpshG4rGPOfmhgipr+QzRL9mBpQsorP25R2
 tHw=
X-IronPort-AV: E=Sophos;i="5.63,481,1557158400"; d="scan'208";a="219280484"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 12 Jul 2019 13:46:13 +0800
IronPort-SDR: 7sCfViNU4TjLtMeyaY+g0J7A7hSv+SVYiwGXcEAYTalVFOXnTzxy4VqdBsexcpG8qODc7UDDMh
 0vZiaBUSYW4x8RAHQj8Hujld/qMjmr3aWhosBnS8aKfBBZuZZJN1B9r/2t34PtI5APRNDApQyU
 RGvdP0eDi9EpGLESKpjJgRmeLQLnw1FIuimAylKKIgbTcZ6AWQGQgW34hZW89dctscudIomwAp
 uofDWlKwKhGWBThwyi/UlC8uRi9wo4/QBQuW6jxU11eHsRqmG3/vshVWHbH6FnBC2rkX+nkoRI
 E0oIflmkV2YROfznPfMQnT7p
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep02.wdc.com with ESMTP; 11 Jul 2019 22:44:49 -0700
IronPort-SDR: 313OrxWLSUllI8cSKrpMXSlz7dgiG3qVqIKMWYrkV6i/sLYz5zdqmiCdMt6Yz2M+Zi+ANKXuRT
 asaTMF4Icm06nY/LO9fcBRTcCs1oVsr0Sk6SA0G315QMrWlwid63cnqmruM2qzLtwQeD8+M+PV
 +qQiRTApaNzjBfJu7l3Aj6aREDQGUdFLOnlxyzMdoKPXl/aJ3+miipd0z89hb5OZrSdunY5MFG
 +dwhRQscDzohUbXVJtE+OwwTvDVu8k4gv4voZSoo7awi8lHsK1zAJsdrBQf+arvWmgI13nRyPZ
 5y4=
Received: from naota.dhcp.fujisawa.hgst.com (HELO naota.fujisawa.hgst.com)
 ([10.149.53.115])
 by uls-op-cesaip01.wdc.com with ESMTP; 11 Jul 2019 22:46:12 -0700
From: Naohiro Aota <naohiro.aota@wdc.com>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-kernel@vger.kernel.org
Subject: [PATCH] x86/vdso, arm64/vdso: fix flip/flop vdso build bug
Date: Fri, 12 Jul 2019 14:43:50 +0900
Message-Id: <20190712054350.12300-1-naohiro.aota@wdc.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_224616_946428_A7536503 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.141.245 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
("x86/boot: Fix if_changed build flip/flop bug").  We cannot use two
"if_changed" in one target. Fix this build bug by merging two commands
into one function.

Signed-off-by: Naohiro Aota <naohiro.aota@wdc.com>
---
 arch/arm64/kernel/vdso/Makefile |  6 ++++--
 arch/x86/entry/vdso/Makefile    | 12 ++++++------
 2 files changed, 10 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index 4ab863045188..068c614b1231 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -57,8 +57,7 @@ $(obj)/vdso.o : $(obj)/vdso.so
 
 # Link rule for the .so file, .lds has to be first
 $(obj)/vdso.so.dbg: $(obj)/vdso.lds $(obj-vdso) FORCE
-	$(call if_changed,ld)
-	$(call if_changed,vdso_check)
+	$(call if_changed,ld_and_vdso_check)
 
 # Strip rule for the .so file
 $(obj)/%.so: OBJCOPYFLAGS := -S
@@ -77,6 +76,9 @@ include/generated/vdso-offsets.h: $(obj)/vdso.so.dbg FORCE
 quiet_cmd_vdsocc = VDSOCC   $@
       cmd_vdsocc = $(CC) $(a_flags) $(c_flags) -c -o $@ $<
 
+quiet_cmd_ld_and_vdso_check = LD      $@
+      cmd_ld_and_vdso_check = $(cmd_ld); $(cmd_vdso_check)
+
 # Install commands for the unstripped file
 quiet_cmd_vdso_install = INSTALL $@
       cmd_vdso_install = cp $(obj)/$@.dbg $(MODLIB)/vdso/$@
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
