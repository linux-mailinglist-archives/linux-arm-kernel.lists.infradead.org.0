Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A581BFF3F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 16:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i5OR/FxN9HOufJI6gMdULOQFPG7O3Njso8j2UQGUS3g=; b=QVEtwx7ZxrTSSy
	y2x95+6h828kg5N0TlxcpGe82P2towTrHIU9mbax2l6mykSekCmtm/vkPzkmVZ2JlaWmOJm24MI5b
	nXbqhkjES1SoXD/rV+6zJgtmoFdMlsWISOxBgT2qwLcmqIYtHJQLH+NA1gvD2wWYrOcsp06KEGCSO
	M3ZM3BDZEMvDHrcWQp83pJ7tIDYTTYCV49NqgfXzzKbtXF9bjugLtlNpcsz2QaMz/MSMwVJ2KxLbs
	Sdar5bGPbEK9KplaMCsRx64U7ujisVKMifDc+xv82E9U8PJtyr44U6rJfJR+PS8FkFFobbUR3HDCY
	SHkdgnVGEb6SzO0ULf0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUAYR-0000II-GR; Thu, 30 Apr 2020 14:52:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUAUg-0003pL-5A
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 14:49:03 +0000
Received: by mail-wr1-x442.google.com with SMTP id g13so7254737wrb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 07:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=740igj1bEYMW0532toQIm1KV1KgyWGqVpSAfrDZ2cxU=;
 b=bjghkyaiXjdRETcAiyeCoGipb9NpVwpAjTmTZs6UWm1Kf3j9noZdWPBfA6/JgO1Xck
 Ct+KhqIbf8ay/K0N7BvgxJQ4DflwSEfc92VsN+0wtt0Oytn3SkBndtv1EEQIFW4LrvO7
 qnyAHH0oQfFlK5XXXliPZBLVslWR3vvib8D2Ee6Nv9RYFEOJS1DrvvqGjwYqSM9/t5Ew
 ngwk2kC1csd4y6GOOJpBgz6idu4/Os6qKVt0P9dsFf9e4oW3HfqKKlSk6UTO+BjpayIz
 KBE0CfClP2er/3jD+mQvK0ChNjL/z/Mizo8hYwM5GiZC5V/NhZCgFJIx+2qEpfRhs9lS
 4OqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=740igj1bEYMW0532toQIm1KV1KgyWGqVpSAfrDZ2cxU=;
 b=AY0fUpdArItS66svTPmSiVeoDzxqKcfhQ+EdkUanvQPIJQLp4DDBYpIiDNVK9WqERM
 1kOiMti2NuQ6G7+nkXPC4Cen+S/P3EV2lxzLZ18P0UzofoZuFEFImPdIOQvR0rw+Tl0Z
 xAD5hwv1MnzHX2zAPKtp4hDWENEMSPnr+cu4FbSB9ccQr2bCoHMKtUyteKK16d8unKhU
 vzPEb6OT8VVr9p6n4zpRpfP00yzW0b2Q1/IcHv9GCzfeWUfxFS9c9qtrStS4KdHe5FJu
 mt+GtTp7jxwYzoxHErFGCPYj2macZyho9YcBN+yY+9WvwcqapkX4zucUSvAAKEsQydEP
 1zIA==
X-Gm-Message-State: AGi0PuZWt/IJfwJ5EkFShFG44Wy0GVjeuwrXa+pYOqCK+Qm0fN/z8CuX
 aJp0OZMV4v3xCN7XJXV44lQxtA==
X-Google-Smtp-Source: APiQypIxA6sGXnhh2DZW818CDWrJOloGB/7zrs6zvXqUO6B/T0ZiG4YRLv4p2mhxHk/JReEjy1GROQ==
X-Received: by 2002:adf:f3cc:: with SMTP id g12mr4422939wrp.82.1588258132187; 
 Thu, 30 Apr 2020 07:48:52 -0700 (PDT)
Received: from localhost ([2a01:4b00:8523:2d03:d4b6:9828:8bd2:ce6f])
 by smtp.gmail.com with ESMTPSA id f7sm4132867wrt.10.2020.04.30.07.48.50
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 30 Apr 2020 07:48:51 -0700 (PDT)
From: David Brazdil <dbrazdil@google.com>
To: Catalin Marinas <catalin.marinas@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Marc Zyngier <maz@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Will Deacon <will@kernel.org>
Subject: [PATCH 04/15] arm64: kvm: Add build rules for separate nVHE object
 files
Date: Thu, 30 Apr 2020 15:48:20 +0100
Message-Id: <20200430144831.59194-5-dbrazdil@google.com>
X-Mailer: git-send-email 2.26.1
In-Reply-To: <20200430144831.59194-1-dbrazdil@google.com>
References: <20200430144831.59194-1-dbrazdil@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_074854_349734_94E4E0E7 
X-CRM114-Status: GOOD (  19.99  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: David Brazdil <dbrazdil@google.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add new folder arch/arm64/kvm/hyp/nvhe and a Makefile for building code that
runs in EL2 under nVHE KVM.

Compile each source file into a `.hyp.tmp.o` object first, then prefix all
its symbols with "__hyp_text_" using `objcopy` and produce a `.hyp.o`.
Suffixes were chosen so that it would be possible for VHE and nVHE to share
some source files, but compiled with different CFLAGS. nVHE build rules add
-D__HYPERVISOR__.

Macros are added for prefixing a nVHE symbol name when referenced from kernel
proper.

Signed-off-by: David Brazdil <dbrazdil@google.com>
---
 arch/arm64/include/asm/kvm_asm.h | 13 ++++++++++++
 arch/arm64/kernel/image-vars.h   | 12 +++++++++++
 arch/arm64/kvm/hyp/Makefile      |  4 ++--
 arch/arm64/kvm/hyp/nvhe/Makefile | 35 ++++++++++++++++++++++++++++++++
 scripts/kallsyms.c               |  1 +
 5 files changed, 63 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/kvm/hyp/nvhe/Makefile

diff --git a/arch/arm64/include/asm/kvm_asm.h b/arch/arm64/include/asm/kvm_asm.h
index 7c7eeeaab9fa..99ab204519ca 100644
--- a/arch/arm64/include/asm/kvm_asm.h
+++ b/arch/arm64/include/asm/kvm_asm.h
@@ -42,6 +42,12 @@
 
 #include <linux/mm.h>
 
+/* Translate the name of @sym to its nVHE equivalent. */
+#define kvm_nvhe_sym(sym)	__hyp_text_##sym
+
+/* Choose between VHE and nVHE variants of a symbol. */
+#define kvm_hyp_sym(sym)	(has_vhe() ? sym : kvm_nvhe_sym(sym))
+
 /* Translate a kernel address of @sym into its equivalent linear mapping */
 #define kvm_ksym_ref(sym)						\
 	({								\
@@ -51,6 +57,13 @@
 		val;							\
 	 })
 
+/*
+ * Translate a kernel address of @sym into its equivalent linear mapping,
+ * choosing between VHE and nVHE variant of @sym accordingly.
+ */
+#define kvm_hyp_ref(sym) \
+	(has_vhe() ? kvm_ksym_ref(sym) : kvm_ksym_ref(kvm_nvhe_sym(sym)))
+
 struct kvm;
 struct kvm_vcpu;
 
diff --git a/arch/arm64/kernel/image-vars.h b/arch/arm64/kernel/image-vars.h
index 7f06ad93fc95..13850134fc28 100644
--- a/arch/arm64/kernel/image-vars.h
+++ b/arch/arm64/kernel/image-vars.h
@@ -51,4 +51,16 @@ __efistub__ctype		= _ctype;
 
 #endif
 
+#ifdef CONFIG_KVM
+
+/*
+ * KVM nVHE code has its own symbol namespace prefixed by __hyp_text_, to
+ * isolate it from the kernel proper. The following symbols are legally
+ * accessed by it, therefore provide aliases to make them linkable.
+ * Do not include symbols which may not be safely accessed under hypervisor
+ * memory mappings.
+ */
+
+#endif /* CONFIG_KVM */
+
 #endif /* __ARM64_KERNEL_IMAGE_VARS_H */
diff --git a/arch/arm64/kvm/hyp/Makefile b/arch/arm64/kvm/hyp/Makefile
index 29e2b2cd2fbc..79bf822a484b 100644
--- a/arch/arm64/kvm/hyp/Makefile
+++ b/arch/arm64/kvm/hyp/Makefile
@@ -6,9 +6,9 @@
 ccflags-y += -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
 		$(DISABLE_STACKLEAK_PLUGIN)
 
-obj-$(CONFIG_KVM) += hyp.o
+obj-$(CONFIG_KVM) += vhe.o nvhe/
 
-hyp-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
+vhe-y := vgic-v3-sr.o timer-sr.o aarch32.o vgic-v2-cpuif-proxy.o sysreg-sr.o \
 	 debug-sr.o entry.o switch.o fpsimd.o tlb.o host_hypercall.o hyp-entry.o
 
 # KVM code is run at a different exception code with a different map, so
diff --git a/arch/arm64/kvm/hyp/nvhe/Makefile b/arch/arm64/kvm/hyp/nvhe/Makefile
new file mode 100644
index 000000000000..873d3ab0fd68
--- /dev/null
+++ b/arch/arm64/kvm/hyp/nvhe/Makefile
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for Kernel-based Virtual Machine module, HYP/nVHE part
+#
+
+asflags-y := -D__HYPERVISOR__
+ccflags-y := -D__HYPERVISOR__ -fno-stack-protector -DDISABLE_BRANCH_PROFILING \
+	     $(DISABLE_STACKLEAK_PLUGIN)
+
+obj-y :=
+
+obj-y := $(patsubst %.o,%.hyp.o,$(obj-y))
+extra-y := $(patsubst %.hyp.o,%.hyp.tmp.o,$(obj-y))
+
+$(obj)/%.hyp.tmp.o: $(src)/%.c FORCE
+	$(call if_changed_rule,cc_o_c)
+$(obj)/%.hyp.tmp.o: $(src)/%.S FORCE
+	$(call if_changed_rule,as_o_S)
+$(obj)/%.hyp.o: $(obj)/%.hyp.tmp.o FORCE
+	$(call if_changed,hypcopy)
+
+quiet_cmd_hypcopy = HYPCOPY $@
+      cmd_hypcopy = $(OBJCOPY) --prefix-symbols=__hyp_text_ $< $@
+
+# KVM nVHE code is run at a different exception code with a different map, so
+# compiler instrumentation that inserts callbacks or checks into the code may
+# cause crashes. Just disable it.
+GCOV_PROFILE	:= n
+KASAN_SANITIZE	:= n
+UBSAN_SANITIZE	:= n
+KCOV_INSTRUMENT	:= n
+
+# Skip objtool checking for this directory because nVHE code is compiled with
+# non-standard build rules.
+OBJECT_FILES_NON_STANDARD := y
diff --git a/scripts/kallsyms.c b/scripts/kallsyms.c
index 3e8dea6e0a95..b5c9dc6de38d 100644
--- a/scripts/kallsyms.c
+++ b/scripts/kallsyms.c
@@ -109,6 +109,7 @@ static bool is_ignored_symbol(const char *name, char type)
 		".LASANPC",		/* s390 kasan local symbols */
 		"__crc_",		/* modversions */
 		"__efistub_",		/* arm64 EFI stub namespace */
+		"__hyp_text_",		/* arm64 non-VHE KVM namespace */
 		NULL
 	};
 
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
