Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF5D214147F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 23:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O6Fq9bfaBlj50MgtylEl3UhCrU65+V8ZiqO2WJGsqvY=; b=oZFJZQomOjo5/In0jQmMYlx97f
	03v3GXtHhL3Mcf/fTmrFGXuth4/kYu0ZpTe0TPoVX+KQABsBJZrGoTJj6yO6jsnSNGRH8gl1sjjWM
	iJ7lD6mRL2632YNxD0OxFmhmxcQJvcmXCAIH+w0Dp3UQR2p6Mto7sf2uAXspsBciJM8+V28PVDs5d
	03qKQHmD4adcSdvGwzePisWU0fZYbZP2AixT6JWtEt9Oin0N+2lR/bTKby7aVFaNhYVYU0x59jRDg
	la2lkUXLam3oscPbBBGDci17YXwO8zvCinuqHYecjLtu8kE2LdXdTqK0HOzGVCZs2yerf9rZcy5uf
	ich0EAgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isaV6-0001AK-Pn; Fri, 17 Jan 2020 22:54:00 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isaTX-0008WE-To
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 22:52:28 +0000
Received: by mail-wr1-x442.google.com with SMTP id d16so24202403wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 14:52:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=kkVH3WV4mS0X3+3FT56qa2DP27GgNwjhnKPZdjR/cEg=;
 b=ITxORkbK/eZIaQFygF9sIZY3a+lP6APCWVuUR2qCA8ArF56Rf0lBuPnE+xI3e0amgN
 ciN+GBjyNVKgHqzSGXJFbp9JOTAEqA9RWPxRMK5h9N+vLuimpulhOlgLPpaOCIy8H4Ve
 a0pGuqzVIpDDfMESsUZyewaDYvKc2y6CVlSZKkuF/ln0NYlPArYMZzdBuaBoOJ/6/2M2
 4xyRE8OUJsK6IEetVrp+jzk4Px2/zkMqE3nHq9oQxbWMQeQAFuiXJD0eN/oMzFeS+8bC
 5D7/f8b0pfF/pBjt1WlJVM3c5rSFEE/jdJqH++qw/yWw7Qn/ATn+y94BMOvffktWheFb
 xriw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=kkVH3WV4mS0X3+3FT56qa2DP27GgNwjhnKPZdjR/cEg=;
 b=r7P9jquUdMlEPg81i6jVQPChuUtSHOHWXyWa4oYyNreTuDRniT5kGUu3wulQvIb+fc
 eVwmKB+hEe0QU/ChhOleG/6U57J3pDwgw4a6jwG0cuVMFBRZbB7+GFtWqhXljkTN1YOl
 EkIxuEBPg1HMWy2xoBbyaH6GAw82I1f7NfPYgYeuGx/86hfDyXkUQ3IBDQ+olnG0FN3L
 Yyzf+WDJsYDTsrca19I+JshMG7ylbl/J5/5Ekr9ZLrZOMu8hGSxllUtf6J1xhR1XJW/N
 n8J2N8Iy66tpjgBd7NDtg6Yv0hGmIR7bUVVj0YJiV8W9E4QEPBNDtVf5PpDuxOeD1lyf
 8IQA==
X-Gm-Message-State: APjAAAUhGDlGD96StiSRy6q3NvnZNFjF6f4YcYlZppBQNiefVJ+VjCea
 JcGzeuArBposvU/OjmhrdoU+pa85
X-Google-Smtp-Source: APXvYqxO45pdsD9bw7k1ZN/eHmJMDDLMtgzyredpWmd19F4mOCrBwdTMZQFVNqDl2BHgwDko/5ETWA==
X-Received: by 2002:a5d:4ed0:: with SMTP id s16mr5523773wrv.144.1579301542065; 
 Fri, 17 Jan 2020 14:52:22 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l3sm32829387wrt.29.2020.01.17.14.52.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:52:21 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 7/7] ARM: Enable KASan for ARM
Date: Fri, 17 Jan 2020 14:48:39 -0800
Message-Id: <20200117224839.23531-8-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117224839.23531-1-f.fainelli@gmail.com>
References: <20200117224839.23531-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_145224_094742_7CBA1F19 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, mhocko@suse.com,
 julien.thierry@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, yamada.masahiro@socionext.com, ryabinin.a.a@gmail.com,
 glider@google.com, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, corbet@lwn.net,
 Abbott Liu <liuwenliang@huawei.com>, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com, geert@linux-m68k.org,
 drjones@redhat.com, vladimir.murzin@arm.com, keescook@chromium.org,
 arnd@arndb.de, marc.zyngier@arm.com, andre.przywara@arm.com,
 philip@cog.systems, jinb.park7@gmail.com, tglx@linutronix.de,
 dvyukov@google.com, nico@fluxnic.net, gregkh@linuxfoundation.org,
 ard.biesheuvel@linaro.org, linux-doc@vger.kernel.org, christoffer.dall@arm.com,
 thgarnie@google.com, rob@landley.net, pombredanne@nexb.com,
 akpm@linux-foundation.org, Andrey Ryabinin <ryabinin@virtuozzo.com>,
 kirill.shutemov@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <ryabinin@virtuozzo.com>

This patch enables the kernel address sanitizer for ARM. XIP_KERNEL has
not been tested and is therefore not allowed.

Acked-by: Dmitry Vyukov <dvyukov@google.com>
Tested-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 Documentation/dev-tools/kasan.rst     | 4 ++--
 arch/arm/Kconfig                      | 9 +++++++++
 arch/arm/boot/compressed/Makefile     | 1 +
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 4 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/Documentation/dev-tools/kasan.rst b/Documentation/dev-tools/kasan.rst
index e4d66e7c50de..6acd949989c3 100644
--- a/Documentation/dev-tools/kasan.rst
+++ b/Documentation/dev-tools/kasan.rst
@@ -21,8 +21,8 @@ global variables yet.
 
 Tag-based KASAN is only supported in Clang and requires version 7.0.0 or later.
 
-Currently generic KASAN is supported for the x86_64, arm64, xtensa and s390
-architectures, and tag-based KASAN is supported only for arm64.
+Currently generic KASAN is supported for the x86_64, arm, arm64, xtensa and
+s390 architectures, and tag-based KASAN is supported only for arm64.
 
 Usage
 -----
diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 96dab76da3b3..70a7eb50984e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -65,6 +65,7 @@ config ARM
 	select HAVE_ARCH_BITREVERSE if (CPU_32v7M || CPU_32v7) && !CPU_32v6
 	select HAVE_ARCH_JUMP_LABEL if !XIP_KERNEL && !CPU_ENDIAN_BE32 && MMU
 	select HAVE_ARCH_KGDB if !CPU_ENDIAN_BE32 && MMU
+	select HAVE_ARCH_KASAN if MMU && !XIP_KERNEL
 	select HAVE_ARCH_MMAP_RND_BITS if MMU
 	select HAVE_ARCH_SECCOMP_FILTER if AEABI && !OABI_COMPAT
 	select HAVE_ARCH_THREAD_STRUCT_WHITELIST
@@ -212,6 +213,14 @@ config ARCH_MAY_HAVE_PC_FDC
 config ZONE_DMA
 	bool
 
+config KASAN_SHADOW_OFFSET
+	hex
+	depends on KASAN
+	default 0x1f000000 if PAGE_OFFSET=0x40000000
+	default 0x5f000000 if PAGE_OFFSET=0x80000000
+	default 0x9f000000 if PAGE_OFFSET=0xC0000000
+	default 0xffffffff
+
 config ARCH_SUPPORTS_UPROBES
 	def_bool y
 
diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index 83991a0447fa..efda24b00a44 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -25,6 +25,7 @@ endif
 
 GCOV_PROFILE		:= n
 KASAN_SANITIZE		:= n
+CFLAGS_KERNEL		+= -D__SANITIZE_ADDRESS__
 
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT		:= n
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index c35f893897e1..c8b36824189b 100644
--- a/drivers/firmware/efi/libstub/Makefile
+++ b/drivers/firmware/efi/libstub/Makefile
@@ -20,7 +20,8 @@ cflags-$(CONFIG_ARM64)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fpie $(DISABLE_STACKLEAK_PLUGIN)
 cflags-$(CONFIG_ARM)		:= $(subst $(CC_FLAGS_FTRACE),,$(KBUILD_CFLAGS)) \
 				   -fno-builtin -fpic \
-				   $(call cc-option,-mno-single-pic-base)
+				   $(call cc-option,-mno-single-pic-base) \
+				   -D__SANITIZE_ADDRESS__
 
 cflags-$(CONFIG_EFI_ARMSTUB)	+= -I$(srctree)/scripts/dtc/libfdt
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
