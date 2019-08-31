Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CDC1A42BB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 08:08:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2U6bnP6AHppoWQ3vNbAgfk/BBRak7ElHxvy8tpC8uM=; b=fFc838g9dtUDbZ
	HdI/aaAja+aVqfeMmHtDScRX72dhNGjheWCC8TyQ6Cy2L5hVjMqDkA2uPu11i8BFn5twxBy8c3IeE
	zSZqlyQ8bcVMfK9aLIUa0BvZERYvGyitoy702X6oLVZ+JLkCsbtIYgPCAvNrrlmLlNJVCBnypDTzx
	dH688ZgnW0NNNOcsoMwLN4dvGAKi+fPZsgc+ot6c3WtC4r919a6e331Ah82yqmczBgQA/E9jk9+ID
	TaMCx/DzzfbwjPyrRlRd4dM85ToArGU9j7t9a5+a0AUfIHcbjCZTtjr1olLtCsYSnCD6Nk0xyO66u
	oL9HpzSeYmgB2h89HZKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3wZ2-0001vk-AA; Sat, 31 Aug 2019 06:08:44 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3wYm-0001uh-GH
 for linux-arm-kernel@lists.infradead.org; Sat, 31 Aug 2019 06:08:30 +0000
Received: by mail-wm1-x341.google.com with SMTP id r17so7855083wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 30 Aug 2019 23:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3NQT/+H/R/Gs9klh5utfpPtpga01Z/bPDqOTKDdobn4=;
 b=pKEWbtp87WRZkEQMPoUvMKiZmvK2H8bkjGIN+0ebQE+E197iGUHa9IAGOWKmbsMfEq
 tnOBAuY6AFPzlCfvboxOuNVBv0Ex1TGDpHIvyOdnATwBPrc7tJz7n0pv1isYTulaDwOm
 qL0dcdbhLC1bCIMwgGTg80g+FerKedCkM++fyDd6epwt4AoHlNVwyuabMeLQsWySEPzM
 tFxCP0d5W6dAAzjQaZUugV4qwX0/5N2ObXN/d/faL4BbZOAyEoErgPr/ZJonrOemhQNo
 +WnvEbXtP3BnGCBrUI7jRzAWq/sWhqoEpDu4UKykoVggVB/INMt3GTobFset8lE/TgK5
 tFEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3NQT/+H/R/Gs9klh5utfpPtpga01Z/bPDqOTKDdobn4=;
 b=Rrupcgx0D3iq4GG1XoTc6EATyx3hOECKV2b+SsFkYezib/FEn2/JAsn29LaKubV9Hx
 /R5Qz5z2uxEPyNxi8OLwUwh/JbjWeBb8rjJhn5FiWwPTro2eGgoNwX/FpRd6hqWfDkBg
 NTng85YdTJT4bMCWrsNHwSzv03coO+np+Dd4tgkQMDD1nGs60ZZ+eJ2b3DqU9HMV1LFY
 UALyGHfAB6JBbg0MMogQUyyYRD1Zr7Q3Ubur0AbLOQOLhq8cBM9QSoAWw+5bs++n3+z9
 5MXdLPPwMhND5noyAQSSf66x1HKhnPRyrJ59T1gd1efj3Xkf4E/2XpeifMyV+b7gCawA
 F+xA==
X-Gm-Message-State: APjAAAUqJyN+SyTw4lGzGab4bNugnnqrnVPRS14HL/581I7sk3OzHavP
 BjP+FSM6qVaj5J7sLwrarEQ=
X-Google-Smtp-Source: APXvYqxCnZpiqqgEQocPhfIsdjxHKdW2GUjXJL3ylDacBgc2XlgpLzU3zKXXzlQi6aeNVE6uAYLCGw==
X-Received: by 2002:a1c:2b85:: with SMTP id r127mr7079242wmr.30.1567231706449; 
 Fri, 30 Aug 2019 23:08:26 -0700 (PDT)
Received: from localhost.localdomain ([2a01:4f8:222:2f1b::2])
 by smtp.gmail.com with ESMTPSA id l62sm14708814wml.13.2019.08.30.23.08.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Aug 2019 23:08:25 -0700 (PDT)
From: Nathan Chancellor <natechancellor@gmail.com>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH v2] ARM: Emit __gnu_mcount_nc when using Clang 10.0.0 or newer
Date: Fri, 30 Aug 2019 23:05:31 -0700
Message-Id: <20190831060530.43082-1-natechancellor@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829062635.45609-1-natechancellor@gmail.com>
References: <20190829062635.45609-1-natechancellor@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_230828_572021_E878EC9C 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nick Desaulniers <ndesaulniers@google.com>,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 clang-built-linux@googlegroups.com, Matthias Kaehlcke <mka@chromium.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, multi_v7_defconfig + CONFIG_FUNCTION_TRACER fails to build
with clang:

arm-linux-gnueabi-ld: kernel/softirq.o: in function `_local_bh_enable':
softirq.c:(.text+0x504): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `__local_bh_enable_ip':
softirq.c:(.text+0x58c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `do_softirq':
softirq.c:(.text+0x6c8): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_enter':
softirq.c:(.text+0x75c): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o: in function `irq_exit':
softirq.c:(.text+0x840): undefined reference to `mcount'
arm-linux-gnueabi-ld: kernel/softirq.o:softirq.c:(.text+0xa50): more undefined references to `mcount' follow

clang can emit a working mcount symbol, __gnu_mcount_nc, when
'-meabi gnu' is passed to it. Until r369147 in LLVM, this was
broken and caused the kernel not to boot with '-pg' because the
calling convention was not correct. Always build with '-meabi gnu'
when using clang but ensure that '-pg' (which is added with
CONFIG_FUNCTION_TRACER and its prereq CONFIG_HAVE_FUNCTION_TRACER)
cannot be added with it unless this is fixed (which means using
clang 10.0.0 and newer).

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Link: https://bugs.llvm.org/show_bug.cgi?id=33845
Link: https://github.com/llvm/llvm-project/commit/16fa8b09702378bacfa3d07081afe6b353b99e60
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
---

v1 -> v2:

* Add Nick and Stefan's reviewed by tags
* Move version check from Makefile to Kconfig. This prevents '-pg` from
  ever being added if '-meabi gnu' would produce a non-booting kernel
  and it allows clang 9.0.0 and earlier to build and link all*config
  kernels because the function tracer can't be selected.

 arch/arm/Kconfig  | 2 +-
 arch/arm/Makefile | 4 ++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a98c7af50bf0..440ad41e77e4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -83,7 +83,7 @@ config ARM
 	select HAVE_FAST_GUP if ARM_LPAE
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && (CC_IS_GCC || CLANG_VERSION >= 100000)
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a43fc753aa53..aa7023db66c7 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -115,6 +115,10 @@ ifeq ($(CONFIG_ARM_UNWIND),y)
 CFLAGS_ABI	+=-funwind-tables
 endif
 
+ifeq ($(CONFIG_CC_IS_CLANG),y)
+CFLAGS_ABI	+= -meabi gnu
+endif
+
 # Accept old syntax despite ".syntax unified"
 AFLAGS_NOWARN	:=$(call as-option,-Wa$(comma)-mno-warn-deprecated,-Wa$(comma)-W)
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
