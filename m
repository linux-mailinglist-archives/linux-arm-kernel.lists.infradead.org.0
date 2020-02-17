Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC36C161C4F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 21:31:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KBda6WrEA99tDhLqp+T+mYtq8CKdW/df5LQJvuj8QPc=; b=biJ
	mdCsXS5o4IBs3U6GUbScM9sc1WT2AyGbFT4FFnLtqUtGhGAC/5POuDN59hPEBzIbzAnAExiaAqQ81
	8g+runV05dW1gYNWxBxw0rBpt321bpekwI1O4V0IvqLf52jmbTnEGowGAQrnBjk/R5wfExGUrjvL9
	yd832ez2MPzb+mXhsYdL+pZaJ6sMIRF8KINm9Bm1lAW2JVARWGKn3uqpUe8d5phQa+4Z1qMzY9n5w
	z2Q5J/Qrpgo7qugzZB8to7NOkRCaniggzsKyD4W6lFv7ZEcysMkpEZWKy6NQJVxzTdCZdCdFpFJzZ
	NOqnfnZ5/N5dvrQFAJgdGu4OT8GkUgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3n2g-00043x-7F; Mon, 17 Feb 2020 20:30:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3n2Z-00042C-8R
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 20:30:52 +0000
Received: from cam-smtp0.cambridge.arm.com (fw-tnat.cambridge.arm.com
 [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6DE29207FD;
 Mon, 17 Feb 2020 20:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581971450;
 bh=SGQhgmuE1tkSZXILdSCmd2w9MGVUjjgoyJm9PODUW/w=;
 h=From:To:Cc:Subject:Date:From;
 b=lUjfK6z8//vPe6YoZPmknX2Q4DOtS3kwGZ6yfqE88PtArImv47OczZamJsFaCrljL
 aSDvj29HxqCrBpH/zCDyexzTZ0FiAFkoRLzP70uKWym02jM8V9hg3V1YmV/iqd9VRk
 Uqc8SGhN9pGpFx24Qig3JROweuGPPRwqXXvIz/Ck=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm: fix Kbuild issue caused by per-task stack protector GCC
 plugin
Date: Mon, 17 Feb 2020 21:30:13 +0100
Message-Id: <20200217203013.20102-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_123051_344388_4FCA4B18 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 tony@atomide.com, Russell King <linux@armlinux.org.uk>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Ard Biesheuvel <ardb@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When using plugins, GCC requires that the -fplugin= options precedes
any of its plugin arguments appearing on the command line as well.
This is usually not a concern, but as it turns out, this requirement
is causing some issues with ARM's per-task stack protector plugin
and Kbuild's implementation of $(cc-option).

When the per-task stack protector plugin is enabled, and we tweak
the implementation of cc-option not to pipe the stderr output of
GCC to /dev/null, the following output is generated when GCC is
executed in the context of cc-option:

  cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
         -fplugin-arg-arm_ssp_per_task_plugin-tso=1 in the command line
  cc1: error: plugin arm_ssp_per_task_plugin should be specified before \
         -fplugin-arg-arm_ssp_per_task_plugin-offset=24 in the command line

These errors will cause any option passed to cc-option to be treated
as unsupported, which is obviously incorrect.

The cause of this issue is the fact that the -fplugin= argument is
added to GCC_PLUGINS_CFLAGS, whereas the arguments above are added
to KBUILD_CFLAGS, and the contents of the former get filtered out of
the latter before being passed to the GCC running the cc-option test,
and so the -fplugin= option does not appear at all on the GCC command
line.

Adding the arguments to GCC_PLUGINS_CFLAGS instead of KBUILD_CFLAGS
would be the correct approach here, if it weren't for the fact that we
are using $(eval) to defer the moment that they are added until after
asm-offsets.h is generated, which is after the point where the contents
of GCC_PLUGINS_CFLAGS are added to KBUILD_CFLAGS. So instead, we have
to add our plugin arguments to both.

For similar reasons, we cannot append DISABLE_ARM_SSP_PER_TASK_PLUGIN
to KBUILD_CFLAGS, as it will be passed to GCC when executing in the
context of cc-option, whereas the other plugin arguments will have
been filtered out, resulting in a similar error and false negative
result as above. So add it to ccflags-y instead.

Reported-by: Tony Lindgren <tony@atomide.com>
Fixes: 189af4657186da08 ("ARM: smp: add support for per-task stack canaries")
Cc: Kees Cook <keescook@chromium.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm/Makefile                 | 4 +++-
 arch/arm/boot/compressed/Makefile | 4 ++--
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..1fc32b611f8a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -307,13 +307,15 @@ endif
 ifeq ($(CONFIG_STACKPROTECTOR_PER_TASK),y)
 prepare: stack_protector_prepare
 stack_protector_prepare: prepare0
-	$(eval KBUILD_CFLAGS += \
+	$(eval SSP_PLUGIN_CFLAGS := \
 		-fplugin-arg-arm_ssp_per_task_plugin-tso=$(shell	\
 			awk '{if ($$2 == "THREAD_SZ_ORDER") print $$3;}'\
 				include/generated/asm-offsets.h)	\
 		-fplugin-arg-arm_ssp_per_task_plugin-offset=$(shell	\
 			awk '{if ($$2 == "TI_STACK_CANARY") print $$3;}'\
 				include/generated/asm-offsets.h))
+	$(eval KBUILD_CFLAGS += $(SSP_PLUGIN_CFLAGS))
+	$(eval GCC_PLUGINS_CFLAGS += $(SSP_PLUGIN_CFLAGS))
 endif
 
 all:	$(notdir $(KBUILD_IMAGE))
diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index da599c3a1193..9c11e7490292 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -101,7 +101,6 @@ clean-files += piggy_data lib1funcs.S ashldi3.S bswapsdi2.S \
 		$(libfdt) $(libfdt_hdrs) hyp-stub.S
 
 KBUILD_CFLAGS += -DDISABLE_BRANCH_PROFILING
-KBUILD_CFLAGS += $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
 
 ifeq ($(CONFIG_FUNCTION_TRACER),y)
 ORIG_CFLAGS := $(KBUILD_CFLAGS)
@@ -117,7 +116,8 @@ CFLAGS_fdt_ro.o := $(nossp-flags-y)
 CFLAGS_fdt_rw.o := $(nossp-flags-y)
 CFLAGS_fdt_wip.o := $(nossp-flags-y)
 
-ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin -I$(obj)
+ccflags-y := -fpic $(call cc-option,-mno-single-pic-base,) -fno-builtin \
+	     -I$(obj) $(DISABLE_ARM_SSP_PER_TASK_PLUGIN)
 asflags-y := -DZIMAGE
 
 # Supply kernel BSS size to the decompressor via a linker symbol.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
