Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875EE67814
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 13 Jul 2019 06:01:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sM4Df6Rrx/F0YmHTsXVEJ/4u2P6a5fjZIGMTHt7+kQ4=; b=pfu
	A74e3g3eeFYYRAdbHAW74AbQ779+8MKig2VQwhdAU5yHFtk4BGIOp3RnMpk+/4M7XV3urBGoTf5nG
	1aWwuLOUGJFu0WZ6B7Z22VKxG+Ti9LdzS10Ahw4hX76Y9FBztEOclaRmHBZGTh6dGg4w3qTlojQxF
	UJCfVpwUR7K+KbMjyVZB2vhEMjxy8P0KhZ5Ed+8Vc/WemLG9vBs1/umajMtOTg4vadbc1PrqKoxJm
	ltUaMSl9ycV0/ozE8nEGwgj7ZVSTBeoBCkxj3VvvDS3Va3oWpwzcxFRol8TwXO6Shr81+n0tT+Oc+
	u15pGoCIPfEfcPt1Ryb8fY8SWTgEIlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hm9ET-00077A-1V; Sat, 13 Jul 2019 04:01:57 +0000
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hm9EF-00076h-GN
 for linux-arm-kernel@lists.infradead.org; Sat, 13 Jul 2019 04:01:45 +0000
Received: from grover.flets-west.jp (softbank126026094249.bbtec.net
 [126.26.94.249]) (authenticated)
 by conuserg-10.nifty.com with ESMTP id x6D41CNu028128;
 Sat, 13 Jul 2019 13:01:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-10.nifty.com x6D41CNu028128
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1562990474;
 bh=z0USyPFcDe0lYTty79Xrc/2Svd1fu++aAKo3U0lUKss=;
 h=From:To:Cc:Subject:Date:From;
 b=IYy1JIWKd+fTzAd16ANSIaN2inSmetCf+au6W58fIAwxgrLCuorS2sqQUY8oJR/uJ
 sdazD0gimDgdL2i/WARX632fTm4ogpfeLMhM8XTlGtFwogw2OAsmI6G3qAmlrGgV6o
 BNNobHLFyf8XUEGFN1bf99IItFD6a+xM4UkqxDRg5kwiyfHU0xiQ1yrjvNPm0sjFtP
 zGmWjHB6gDBG6AenNGkJq0CRCjZ+vTuWp8AXk2bV4UzN6mbaojW/T7lIHYmWIyO6OJ
 1HGEpxd5INn81rIDTg2tmRmdAEmTdnMu2aQLUuu2FDn3cSOC6uXAZe63F+s78ngaXL
 j81nvnu7Hkhow==
X-Nifty-SrcIP: [126.26.94.249]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] kbuild: add --hash-style= and --build-id unconditionally
Date: Sat, 13 Jul 2019 13:01:10 +0900
Message-Id: <20190713040110.18210-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_210143_893437_2D44FD52 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.77 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Marek <michal.lkml@markovi.net>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>,
 sparclinux@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As commit 1e0221374e30 ("mips: vdso: drop unnecessary cc-ldoption")
explained, these flags are supported by the minimal required version
of binutils.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile                          | 6 ++----
 arch/arm/vdso/Makefile            | 3 +--
 arch/arm64/kernel/vdso32/Makefile | 4 ++--
 arch/sparc/vdso/Makefile          | 3 +--
 arch/x86/entry/vdso/Makefile      | 5 ++---
 5 files changed, 8 insertions(+), 13 deletions(-)

diff --git a/Makefile b/Makefile
index 2c5d00ba537e..969182105dbd 100644
--- a/Makefile
+++ b/Makefile
@@ -900,10 +900,8 @@ KBUILD_CPPFLAGS += $(ARCH_CPPFLAGS) $(KCPPFLAGS)
 KBUILD_AFLAGS   += $(ARCH_AFLAGS)   $(KAFLAGS)
 KBUILD_CFLAGS   += $(ARCH_CFLAGS)   $(KCFLAGS)
 
-# Use --build-id when available.
-LDFLAGS_BUILD_ID := $(call ld-option, --build-id)
-KBUILD_LDFLAGS_MODULE += $(LDFLAGS_BUILD_ID)
-LDFLAGS_vmlinux += $(LDFLAGS_BUILD_ID)
+KBUILD_LDFLAGS_MODULE += --build-id
+LDFLAGS_vmlinux += --build-id
 
 ifeq ($(CONFIG_STRIP_ASM_SYMS),y)
 LDFLAGS_vmlinux	+= $(call ld-option, -X,)
diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
index ca85df247775..87b7769214e0 100644
--- a/arch/arm/vdso/Makefile
+++ b/arch/arm/vdso/Makefile
@@ -13,8 +13,7 @@ ccflags-y += -DDISABLE_BRANCH_PROFILING
 ldflags-$(CONFIG_CPU_ENDIAN_BE8) := --be8
 ldflags-y := -Bsymbolic --no-undefined -soname=linux-vdso.so.1 \
 	    -z max-page-size=4096 -nostdlib -shared $(ldflags-y) \
-	    $(call ld-option, --hash-style=sysv) \
-	    $(call ld-option, --build-id) \
+	    --hash-style=sysv --build-id \
 	    -T
 
 obj-$(CONFIG_VDSO) += vdso.o
diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
index 288c14d30b45..60a4c6239712 100644
--- a/arch/arm64/kernel/vdso32/Makefile
+++ b/arch/arm64/kernel/vdso32/Makefile
@@ -96,8 +96,8 @@ VDSO_LDFLAGS := $(VDSO_CPPFLAGS)
 VDSO_LDFLAGS += -Wl,-Bsymbolic -Wl,--no-undefined -Wl,-soname=linux-vdso.so.1
 VDSO_LDFLAGS += -Wl,-z,max-page-size=4096 -Wl,-z,common-page-size=4096
 VDSO_LDFLAGS += -nostdlib -shared -mfloat-abi=soft
-VDSO_LDFLAGS += $(call cc32-ldoption,-Wl$(comma)--hash-style=sysv)
-VDSO_LDFLAGS += $(call cc32-ldoption,-Wl$(comma)--build-id)
+VDSO_LDFLAGS += -Wl,--hash-style=sysv
+VDSO_LDFLAGS += -Wl,--build-id
 VDSO_LDFLAGS += $(call cc32-ldoption,-fuse-ld=bfd)
 
 
diff --git a/arch/sparc/vdso/Makefile b/arch/sparc/vdso/Makefile
index 5a9e4e1f9f81..324a23947585 100644
--- a/arch/sparc/vdso/Makefile
+++ b/arch/sparc/vdso/Makefile
@@ -115,8 +115,7 @@ quiet_cmd_vdso = VDSO    $@
 		       -T $(filter %.lds,$^) $(filter %.o,$^) && \
 		sh $(srctree)/$(src)/checkundef.sh '$(OBJDUMP)' '$@'
 
-VDSO_LDFLAGS = -shared $(call ld-option, --hash-style=both) \
-	$(call ld-option, --build-id) -Bsymbolic
+VDSO_LDFLAGS = -shared --hash-style=both --build-id -Bsymbolic
 GCOV_PROFILE := n
 
 #
diff --git a/arch/x86/entry/vdso/Makefile b/arch/x86/entry/vdso/Makefile
index 39106111be86..4c234a18638a 100644
--- a/arch/x86/entry/vdso/Makefile
+++ b/arch/x86/entry/vdso/Makefile
@@ -179,9 +179,8 @@ quiet_cmd_vdso = VDSO    $@
 		       -T $(filter %.lds,$^) $(filter %.o,$^) && \
 		 sh $(srctree)/$(src)/checkundef.sh '$(NM)' '$@'
 
-VDSO_LDFLAGS = -shared $(call ld-option, --hash-style=both) \
-	$(call ld-option, --build-id) $(call ld-option, --eh-frame-hdr) \
-	-Bsymbolic
+VDSO_LDFLAGS = -shared --hash-style=both --build-id \
+	$(call ld-option, --eh-frame-hdr) -Bsymbolic
 GCOV_PROFILE := n
 
 #
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
