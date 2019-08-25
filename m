Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B79069C51D
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 25 Aug 2019 19:29:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TKsAfYngUDoTcu0IiubdnS9sSrSPwH6J+YANu8Z8yJE=; b=eJZ
	CNJ5uoMPpYMXhX6j7wZlaEPp3pKPehE3ICMbmh/AwKPHTebJ5zjVfZwK6PcYZUGPLQUtpkEYPUq4G
	ODMgxh8TlNnpEbetWSr6sLiJwtzEyzx9+qeHCQmfsqoQkJUtXij/lMAiDPMF8slZmGKfXUDnzcZ22
	LuwDfURf3zkFqBoKaFvuFahCVBqETnWt5JAioj4Xgbg1UyOSf3fc64f41V34xqnUsqmyObYKEeLUd
	p5hl3vuLC+29KU49eu8qKGuwoee8OsaJDV9brypHx+cN+IkhKxTKDO9gg+6787egYKmBVCXC+3kVV
	lx8DZWmgSQIBemMHwOkQcV+Xwrq5qDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1wKH-0002Le-V0; Sun, 25 Aug 2019 17:29:14 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1wK9-0002L9-DJ
 for linux-arm-kernel@lists.infradead.org; Sun, 25 Aug 2019 17:29:07 +0000
Received: from grover.flets-west.jp (softbank126125143222.bbtec.net
 [126.125.143.222]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id x7PHSb7O010019;
 Mon, 26 Aug 2019 02:28:37 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com x7PHSb7O010019
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1566754118;
 bh=O8rVg1SxjWnsiBqfyChLy0jNlbeiFProErHAOQpA2Mo=;
 h=From:To:Cc:Subject:Date:From;
 b=z/jVUTMrEkyDDPZkmEQd2+urd8daK8IpIY1QBUGfpE718vIjykWHonuzimvizeyeZ
 IdFkT0v6FNX5pDQg5MmUnhGQ6Q1LdcjolG3E2rLgotthLHKMdi3V4ZUgdCKWm1TI8l
 KbpJJtIeq7hqmkAN4QFqzyjK9GpswiZ+sS3vjovXmXYKZgwa+Sgidl6jFvA8Bl5jD2
 YhVWU7aOianmGiV3S0rX+sGuf8dONVyX7gLex5yXHZbk25GyYYQc9yzDAeG66pxDyq
 XqNG9O2xKt/FIQDw3L5YcqjKYAwgeaUom5z9b6mUozIZVlOp112GOVjzEJpjyTTEz/
 LUoSsVVi8hZjw==
X-Nifty-SrcIP: [126.125.143.222]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH 1/2] kbuild: change *FLAGS_<basetarget>.o to take the path
 relative to $(obj)
Date: Mon, 26 Aug 2019 02:28:32 +0900
Message-Id: <20190825172833.5708-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_102905_674816_6CC5B8F6 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 linux-arm-kernel@lists.infradead.org, Andy Lutomirski <luto@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 Julien Thierry <julien.thierry.kdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Kbuild provides per-file compiler flag addition/removal:

  CFLAGS_<basetarget>.o
  CFLAGS_REMOVE_<basetarget>.o
  AFLAGS_<basetarget>.o
  AFLAGS_REMOVE_<basetarget>.o
  CPPFLAGS_<basetarget>
  HOSTCFLAGS_<basetarget>.o
  HOSTCXXFLAGS_<basetarget>.o

The <basetarget> is the filename of the target without its suffix.

This syntax comes into a trouble when two files with the same name
appear in one Makefile, for example:

  obj-y += foo.o
  obj-y += dir/foo.o
  CFLAGS_foo.o := <some-flags>

Here, the <some-flags> applies to both foo.o and dir/foo.o

The real world problem is:

  scripts/kconfig/util.c
  scripts/kconfig/lxdialog/util.c

Both files are compiled into scripts/kconfig/mconf, but only the
latter should be given with additional flags for ncurses.

It is more sensible to use the relative path to the Makefile, like this:

  obj-y += foo.o
  CFLAGS_foo.o := <some-flags>
  obj-y += dir/foo.o
  CFLAGS_dir/foo.o := <other-flags>

The $* variable is replaced with the stem ('%') part in a pattern rule.
In other words, this only works for pattern rules.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/kvm/Makefile        |  5 +++--
 arch/x86/entry/vdso/Makefile |  3 ++-
 scripts/Makefile.host        | 30 +++++++++++++++---------------
 scripts/Makefile.lib         | 10 +++++-----
 scripts/kconfig/Makefile     |  8 ++++----
 5 files changed, 29 insertions(+), 27 deletions(-)

diff --git a/arch/arm/kvm/Makefile b/arch/arm/kvm/Makefile
index 531e59f5be9c..b76b75bd9e00 100644
--- a/arch/arm/kvm/Makefile
+++ b/arch/arm/kvm/Makefile
@@ -8,13 +8,14 @@ ifeq ($(plus_virt),+virt)
 	plus_virt_def := -DREQUIRES_VIRT=1
 endif
 
+KVM := ../../../virt/kvm
+
 ccflags-y += -I $(srctree)/$(src) -I $(srctree)/virt/kvm/arm/vgic
-CFLAGS_arm.o := $(plus_virt_def)
+CFLAGS_$(KVM)/arm/arm.o := $(plus_virt_def)
 
 AFLAGS_init.o := -Wa,-march=armv7-a$(plus_virt)
 AFLAGS_interrupts.o := -Wa,-march=armv7-a$(plus_virt)
 
-KVM := ../../../virt/kvm
 kvm-arm-y = $(KVM)/kvm_main.o $(KVM)/coalesced_mmio.o $(KVM)/eventfd.o $(KVM)/vfio.o
 
 obj-$(CONFIG_KVM_ARM_HOST) += hyp/
diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index 8df549138193..0f2154106d01 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -89,6 +89,7 @@ $(vobjs): KBUILD_CFLAGS := $(filter-out $(GCC_PLUGINS_CFLAGS) $(RETPOLINE_CFLAGS
 #
 CFLAGS_REMOVE_vdso-note.o = -pg
 CFLAGS_REMOVE_vclock_gettime.o = -pg
+CFLAGS_REMOVE_vdso32/vclock_gettime.o = -pg
 CFLAGS_REMOVE_vgetcpu.o = -pg
 CFLAGS_REMOVE_vvar.o = -pg
 
@@ -128,7 +129,7 @@ $(obj)/%.so: $(obj)/%.so.dbg FORCE
 $(obj)/vdsox32.so.dbg: $(obj)/vdsox32.lds $(vobjx32s) FORCE
 	$(call if_changed,vdso_and_check)
 
-CPPFLAGS_vdso32.lds = $(CPPFLAGS_vdso.lds)
+CPPFLAGS_vdso32/vdso32.lds = $(CPPFLAGS_vdso.lds)
 VDSO_LDFLAGS_vdso32.lds = -m elf_i386 -soname linux-gate.so.1
 
 targets += vdso32/vdso32.lds
diff --git a/scripts/Makefile.host b/scripts/Makefile.host
index b402c619147d..cd2b98e2f727 100644
--- a/scripts/Makefile.host
+++ b/scripts/Makefile.host
@@ -80,9 +80,9 @@ host-cxxshobjs	:= $(addprefix $(obj)/,$(host-cxxshobjs))
 # Handle options to gcc. Support building with separate output directory
 
 _hostc_flags   = $(KBUILD_HOSTCFLAGS)   $(HOST_EXTRACFLAGS)   \
-                 $(HOSTCFLAGS_$(basetarget).o)
+                 $(HOSTCFLAGS_$*.o)
 _hostcxx_flags = $(KBUILD_HOSTCXXFLAGS) $(HOST_EXTRACXXFLAGS) \
-                 $(HOSTCXXFLAGS_$(basetarget).o)
+                 $(HOSTCXXFLAGS_$*.o)
 
 # $(objtree)/$(obj) for including generated headers from checkin source files
 ifeq ($(KBUILD_EXTMOD),)
@@ -102,7 +102,7 @@ hostcxx_flags  = -Wp,-MD,$(depfile) $(_hostcxx_flags)
 # host-csingle -> Executable
 quiet_cmd_host-csingle 	= HOSTCC  $@
       cmd_host-csingle	= $(HOSTCC) $(hostc_flags) $(KBUILD_HOSTLDFLAGS) -o $@ $< \
-		$(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(@F))
+		$(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$*)
 $(host-csingle): $(obj)/%: $(src)/%.c FORCE
 	$(call if_changed_dep,host-csingle)
 
@@ -110,9 +110,9 @@ $(host-csingle): $(obj)/%: $(src)/%.c FORCE
 # host-cmulti -> executable
 quiet_cmd_host-cmulti	= HOSTLD  $@
       cmd_host-cmulti	= $(HOSTCC) $(KBUILD_HOSTLDFLAGS) -o $@ \
-			  $(addprefix $(obj)/,$($(@F)-objs)) \
-			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(@F))
-$(host-cmulti): FORCE
+			  $(addprefix $(obj)/, $($*-objs)) \
+			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$*)
+$(host-cmulti): $(obj)/%: FORCE
 	$(call if_changed,host-cmulti)
 $(call multi_depend, $(host-cmulti), , -objs)
 
@@ -128,9 +128,9 @@ $(host-cobjs): $(obj)/%.o: $(src)/%.c FORCE
 quiet_cmd_host-cxxmulti	= HOSTLD  $@
       cmd_host-cxxmulti	= $(HOSTCXX) $(KBUILD_HOSTLDFLAGS) -o $@ \
 			  $(foreach o,objs cxxobjs,\
-			  $(addprefix $(obj)/,$($(@F)-$(o)))) \
-			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(@F))
-$(host-cxxmulti): FORCE
+			  $(addprefix $(obj)/, $($*-$(o)))) \
+			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$*)
+$(host-cxxmulti): $(obj)/%: FORCE
 	$(call if_changed,host-cxxmulti)
 $(call multi_depend, $(host-cxxmulti), , -objs -cxxobjs)
 
@@ -161,9 +161,9 @@ $(host-cxxshobjs): $(obj)/%.o: $(src)/%.c FORCE
 # *.o -> .so shared library (host-cshlib)
 quiet_cmd_host-cshlib	= HOSTLLD -shared $@
       cmd_host-cshlib	= $(HOSTCC) $(KBUILD_HOSTLDFLAGS) -shared -o $@ \
-			  $(addprefix $(obj)/,$($(@F:.so=-objs))) \
-			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(@F))
-$(host-cshlib): FORCE
+			  $(addprefix $(obj)/, $($*-objs)) \
+			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$*.so)
+$(host-cshlib): $(obj)/%.so: FORCE
 	$(call if_changed,host-cshlib)
 $(call multi_depend, $(host-cshlib), .so, -objs)
 
@@ -171,9 +171,9 @@ $(call multi_depend, $(host-cshlib), .so, -objs)
 # *.o -> .so shared library (host-cxxshlib)
 quiet_cmd_host-cxxshlib	= HOSTLLD -shared $@
       cmd_host-cxxshlib	= $(HOSTCXX) $(KBUILD_HOSTLDFLAGS) -shared -o $@ \
-			  $(addprefix $(obj)/,$($(@F:.so=-objs))) \
-			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(@F))
-$(host-cxxshlib): FORCE
+			  $(addprefix $(obj)/, $($*-objs)) \
+			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$*.so)
+$(host-cxxshlib): $(obj)/%.so: FORCE
 	$(call if_changed,host-cxxshlib)
 $(call multi_depend, $(host-cxxshlib), .so, -objs)
 
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 264611972c4a..0d48e17bfb07 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -109,12 +109,12 @@ basename_flags = -DKBUILD_BASENAME=$(call name-fix,$(basetarget))
 modname_flags  = -DKBUILD_MODNAME=$(call name-fix,$(modname))
 
 orig_c_flags   = $(KBUILD_CPPFLAGS) $(KBUILD_CFLAGS) \
-                 $(ccflags-y) $(CFLAGS_$(basetarget).o)
-_c_flags       = $(filter-out $(CFLAGS_REMOVE_$(basetarget).o), $(orig_c_flags))
+                 $(ccflags-y) $(CFLAGS_$*.o)
+_c_flags       = $(filter-out $(CFLAGS_REMOVE_$*.o), $(orig_c_flags))
 orig_a_flags   = $(KBUILD_CPPFLAGS) $(KBUILD_AFLAGS) \
-                 $(asflags-y) $(AFLAGS_$(basetarget).o)
-_a_flags       = $(filter-out $(AFLAGS_REMOVE_$(basetarget).o), $(orig_a_flags))
-_cpp_flags     = $(KBUILD_CPPFLAGS) $(cppflags-y) $(CPPFLAGS_$(@F))
+                 $(asflags-y) $(AFLAGS_$*.o)
+_a_flags       = $(filter-out $(AFLAGS_REMOVE_$*.o), $(orig_a_flags))
+_cpp_flags     = $(KBUILD_CPPFLAGS) $(cppflags-y) $(CPPFLAGS_$*.lds)
 
 #
 # Enable gcov profiling flags for a file, directory or for all files depending
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index bed7a5a2fbe9..ef2f2336c469 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -166,15 +166,15 @@ $(obj)/nconf.o $(obj)/nconf.gui.o: $(obj)/nconf-cfg
 
 # mconf: Used for the menuconfig target based on lxdialog
 hostprogs-y	+= mconf
-lxdialog	:= checklist.o inputbox.o menubox.o textbox.o util.o yesno.o
-mconf-objs	:= mconf.o $(addprefix lxdialog/, $(lxdialog)) $(common-objs)
+lxdialog	:= $(addprefix lxdialog/, \
+		     checklist.o inputbox.o menubox.o textbox.o util.o yesno.o)
+mconf-objs	:= mconf.o $(lxdialog) $(common-objs)
 
 HOSTLDLIBS_mconf = $(shell . $(obj)/mconf-cfg && echo $$libs)
 $(foreach f, mconf.o $(lxdialog), \
   $(eval HOSTCFLAGS_$f = $$(shell . $(obj)/mconf-cfg && echo $$$$cflags)))
 
-$(obj)/mconf.o: $(obj)/mconf-cfg
-$(addprefix $(obj)/lxdialog/, $(lxdialog)): $(obj)/mconf-cfg
+$(addprefix $(obj)/, mconf.o $(lxdialog)): $(obj)/mconf-cfg
 
 # qconf: Used for the xconfig target based on Qt
 hostprogs-y	+= qconf
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
