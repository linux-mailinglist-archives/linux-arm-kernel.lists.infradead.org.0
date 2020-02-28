Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B161B172D31
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:25:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v12ELlUP6TxJOc8zrKQ8MmfRoVmcS5E0UXs1fsccyJ0=; b=C82CMr5uSHmwyw
	q6CYJuIzFwXguQpHPyGgFXnN8MmhCpKL9Y20f/SHlUHuiTcj+0enf3szehj8NrPi5+U/3/Hw+dd5h
	50+5iimBJg+e88W77Yr3HoBqn2OPqJBhCaaHmxCVGHuix/f3sNmCHkBp8N7ibgjetQ5EgBWwJM2K8
	g90NwvB973raqELl52vkFKIqnbNLGlmkDK7xDp7vUZpeGq0U+XMKju/k/b7dvEe2YCpiBntHxZysY
	1STITd3cHPOnm4XXKpCw8EC782p+9XxhVlsxAN/5fGp6mffv895qbC+xk/s58IQgs6hxHi1t8irf8
	2PIza5dtexhiQdOQ7chQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TT9-0004DZ-5U; Fri, 28 Feb 2020 00:25:31 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQd-000142-U0
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:57 +0000
Received: by mail-pf1-x441.google.com with SMTP id 15so721706pfo.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AwIdnSLxc1IQxbb7lR9quaS2Zk4ZIexbe3LplVopvDU=;
 b=SxadLoRdLQDFU2sMtSW2VbvnGgGtZ9nCv8JDVG6dgim+vwQxXd5tD6x6EYwmtVgnK9
 g0afBGuHNACAm2YpVUqCMSfGYmfEu6veqLTy8Q0Ov4wLLVzwWKqU96E24PsO03T2q6E/
 qQhzi6HA8L+yEMS6HEOrD8/pM84qK/Fk9wGbg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AwIdnSLxc1IQxbb7lR9quaS2Zk4ZIexbe3LplVopvDU=;
 b=sidkhhFETaIppoaWHPHh08ZogI1T+TGaxsfVZFX1YLacXw0zQbcAFQKvqP6Q2OGkhO
 2GSN/YDtgHw2QjLOExprVHbElwH/e+dlX1R4bmK8TWpFiDJhQgs9vUG7HI8Jasfhtszk
 O4cVTwvdQ/+qUbeaN6kqEWW/1gcHXUCb0fqtfjqJd9PS959fzxZnD4s5ADNPBBUtWuF2
 7oORxJWKUO/va67zplk/6RkqufqRQjgyJEj0b8wbDDY70Yk9z+SR3rXNZLelr6WbnK3n
 A/5pXVIf90nnkC1u+3T+DmpyjBQnVuDHEnCjYCCA/8jC4eo8FWdXBkH5aDM+4HzJ4C/m
 aV5A==
X-Gm-Message-State: APjAAAX5tFQbnlEZ77L1f0x3xIHbqPm5iynT6dHUQiy841IMFucgHcVv
 +uI7eqKfxl9mX2QmA/o3b6ZM1g==
X-Google-Smtp-Source: APXvYqyXge8yxc0byOAFcYYogqDHBcP8WReHRi7mz3K+YWkdQcq5DXiV06dtqt1g148mFGy5LeYCug==
X-Received: by 2002:a63:ef03:: with SMTP id u3mr1816813pgh.77.1582849374784;
 Thu, 27 Feb 2020 16:22:54 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id r11sm8163080pgi.9.2020.02.27.16.22.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 8/9] arm/build: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:43 -0800
Message-Id: <20200228002244.15240-9-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162255_984247_189A1FB4 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Specifically, this would have made a recently fixed bug very obvious:

ld: warning: orphan section `.fixup' from `arch/arm/lib/copy_from_user.o' being placed in section `.fixup'

Refactor linker script include file for use in standard and XIP linker
scripts, as well as in the coming boot linker script changes. Add debug
sections explicitly. Create ARM_COMMON_DISCARD macro with unneeded
sections .ARM.attributes, .iplt, .rel.iplt, .igot.plt, and .modinfo.
Create ARM_STUBS_TEXT macro with missed text stub sections .vfp11_veneer,
and .v4_bx. Finally enable orphan section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/Makefile                             |  4 ++++
 .../arm/{kernel => include/asm}/vmlinux.lds.h | 22 ++++++++++++++-----
 arch/arm/kernel/vmlinux-xip.lds.S             |  5 ++---
 arch/arm/kernel/vmlinux.lds.S                 |  5 ++---
 4 files changed, 25 insertions(+), 11 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (92%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index db857d07114f..f1622bea987a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -16,6 +16,10 @@ LDFLAGS_vmlinux	+= --be8
 KBUILD_LDFLAGS_MODULE	+= --be8
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 ifeq ($(CONFIG_ARM_MODULE_PLTS),y)
 KBUILD_LDS_MODULE	+= $(srctree)/arch/arm/kernel/module.lds
 endif
diff --git a/arch/arm/kernel/vmlinux.lds.h b/arch/arm/include/asm/vmlinux.lds.h
similarity index 92%
rename from arch/arm/kernel/vmlinux.lds.h
rename to arch/arm/include/asm/vmlinux.lds.h
index 8247bc15addc..3ae2cf2e351b 100644
--- a/arch/arm/kernel/vmlinux.lds.h
+++ b/arch/arm/include/asm/vmlinux.lds.h
@@ -1,4 +1,5 @@
 /* SPDX-License-Identifier: GPL-2.0 */
+#include <asm-generic/vmlinux.lds.h>
 
 #ifdef CONFIG_HOTPLUG_CPU
 #define ARM_CPU_DISCARD(x)
@@ -46,6 +47,13 @@
 		*(.hyp.idmap.text)					\
 		__hyp_idmap_text_end = .;
 
+#define ARM_COMMON_DISCARD						\
+		*(.ARM.attributes)					\
+		*(.iplt) *(.rel.iplt) *(.igot.plt)			\
+		*(.modinfo)						\
+		*(.discard)						\
+		*(.discard.*)
+
 #define ARM_DISCARD							\
 		*(.ARM.exidx.exit.text)					\
 		*(.ARM.extab.exit.text)					\
@@ -58,8 +66,14 @@
 		EXIT_CALL						\
 		ARM_MMU_DISCARD(*(.text.fixup))				\
 		ARM_MMU_DISCARD(*(__ex_table))				\
-		*(.discard)						\
-		*(.discard.*)
+		ARM_COMMON_DISCARD
+
+#define ARM_STUBS_TEXT							\
+		*(.gnu.warning)						\
+		*(.glue_7t)						\
+		*(.glue_7)						\
+		*(.vfp11_veneer)					\
+		*(.v4_bx)
 
 #define ARM_TEXT							\
 		IDMAP_TEXT						\
@@ -74,9 +88,7 @@
 		LOCK_TEXT						\
 		HYPERVISOR_TEXT						\
 		KPROBES_TEXT						\
-		*(.gnu.warning)						\
-		*(.glue_7)						\
-		*(.glue_7t)						\
+		ARM_STUBS_TEXT						\
 		. = ALIGN(4);						\
 		*(.got)			/* Global offset table */	\
 		ARM_CPU_KEEP(PROC_INFO)
diff --git a/arch/arm/kernel/vmlinux-xip.lds.S b/arch/arm/kernel/vmlinux-xip.lds.S
index 21b8b271c80d..8e9ac99a4335 100644
--- a/arch/arm/kernel/vmlinux-xip.lds.S
+++ b/arch/arm/kernel/vmlinux-xip.lds.S
@@ -9,15 +9,13 @@
 
 #include <linux/sizes.h>
 
-#include <asm-generic/vmlinux.lds.h>
+#include <asm/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 #include <asm/memory.h>
 #include <asm/mpu.h>
 #include <asm/page.h>
 
-#include "vmlinux.lds.h"
-
 OUTPUT_ARCH(arm)
 ENTRY(stext)
 
@@ -152,6 +150,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 }
 
 /*
diff --git a/arch/arm/kernel/vmlinux.lds.S b/arch/arm/kernel/vmlinux.lds.S
index 319ccb10846a..f1c6f66e8e6c 100644
--- a/arch/arm/kernel/vmlinux.lds.S
+++ b/arch/arm/kernel/vmlinux.lds.S
@@ -8,7 +8,7 @@
 #include "vmlinux-xip.lds.S"
 #else
 
-#include <asm-generic/vmlinux.lds.h>
+#include <asm/vmlinux.lds.h>
 #include <asm/cache.h>
 #include <asm/thread_info.h>
 #include <asm/memory.h>
@@ -16,8 +16,6 @@
 #include <asm/page.h>
 #include <asm/pgtable.h>
 
-#include "vmlinux.lds.h"
-
 OUTPUT_ARCH(arm)
 ENTRY(stext)
 
@@ -151,6 +149,7 @@ SECTIONS
 	_end = .;
 
 	STABS_DEBUG
+	DWARF_DEBUG
 }
 
 #ifdef CONFIG_STRICT_KERNEL_RWX
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
