Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8C75EDF0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 22:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RIJ3NX/42UjGuGPjo272P+iS+KZHOttE+O/nK4l9HoM=; b=eruWy3K03baCeO
	s7E7l6o1PNeIeC7Rpr1NXYTobOHB8JIsFP4toy+DCoG5vMRTLw3ze1+4MGiToZk2h1OFovsiTE8aP
	2D3dM0Ln1uD9GHT+Tw51UBipYEhx4MtxKtQI0X85GGqeKSOJoLSwPFJ025Mz/GI+B/7OvGcXXVPzy
	G3XcTGkF3DnQK4mvawVGIvgLmnZYwnbyal/09KOYdk9U5ovXGnlLtoNS0Kcxqr5/uxiEPPRaSpppE
	BZzeaiTMU64CaFEj+6co81LK3CyoZ7Ym1lgQj5jxDXUgUHyLzGTfQGXlTAQIHm6lUWxmRnaCZtgSe
	FUwJT6JuZXpcbnDuz/qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himIO-0005OI-8E; Wed, 03 Jul 2019 20:56:04 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1himIE-0005Nl-2c
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 20:55:55 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1M27Bp-1hgJRq2Gin-002TZ9; Wed, 03 Jul 2019 22:55:31 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Florian Fainelli <f.fainelli@gmail.com>
Subject: [PATCH 1/3] ARM: fix kasan link failures
Date: Wed,  3 Jul 2019 22:54:36 +0200
Message-Id: <20190703205527.955320-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:N0nhNH56c4bAPUvE+lb81hmqvGKzvYovB1gWPnLR0wVZb6l2Cus
 VlcxdC8pK77LU32vdSY3Hh7JVCF2Dn86C7mE5dWcn3mW4hOXnlPLCso1Cp9anA4gdrDrzo5
 Ut7QKtxvDcquKr7d9Bv/USwELBGTW65u6iuQdfFdQsgx+VYAxaDSI2S8DskzTjruoWUa2ES
 iWji7SQpVNS6kv9tSkXzg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:kkc3pKM7JBI=:7SfM19cEIrMeD+akm/v6F2
 a7GlFineaNLRR0bDHAg64d4H8VDDp7Z9+1z0wPu6ycgl2veXYMIYLK3ymKqKG4KsWypouYG9r
 mtCXBQ4VLnNmtTGxxFuxJdpI3h2zw4v1U8tAUn4YrVtxSPTXfdIvp75IvfpBXX/UvFQyZ1dp3
 U/VKYT/72+IpBEt1wioAoWf3LlbQGf9SBTdADJK+a4xjGSe3fKWyWBteSoLXu6ryzobEgrfT/
 H00WLhhVLscWXXo5mo/pjrrFTjO/7XZo+uTlJcuSiqSfdPcxYtMHz12+C9S/Z+2HGLOq5uVEg
 DQhJ/O0i8wws7dtN346JYXJBuU/miXvgasyL26bSAp6kAWdEvGPuQv4kdmfMsj2Rw9lg5Y0t7
 R3R01XUVVi1aq89YlWjRoLzbt5hAlFIAd9ilTc+/+QVxtDzzPpenqcaqMjFQubTYDYkRT5SOm
 2tnPirJJacaRkDbQ5bTGJ3Ul32o6ej09+cOCaH0aWrQYPlKKbkU5SGLBNU7s4LARIsVt2Hw4s
 Ii7qWkUVDiwx+d52CbaSbjqmAtNjS+r0w7ri4LGuUhZvHPf08gKYO/WCR80f/kRyUbqfwxENo
 IhhjA/hQkMP7YWhi+VCHHS49JyodFnSForBRio4snDdEmhFwCJpwTHCqNH15yPzgwWJt5lz3z
 AZS6ncqMjqWtz5QOMSnp3u12Dp15VIpniGDr/zVGGmfL/6EJFRba+9xAe2ivD9P0FL/W7RCuG
 awSwZR/Uu8glWMOfQlXU3FQt8a2h94oDitdTGg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_135554_414237_9266DFBF 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Abbott Liu <liuwenliang@huawei.com>, Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Pitre <nico@fluxnic.net>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Stefan Agner <stefan@agner.ch>, Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Getting the redirects for memcpy/memmove/memset functions right
in the decompressor and the efi stub is a bit tricky. Originally
these were meant to prevent the kasan code from calling itself
recursively. The decompressor is built without kasan but uses
the same redirects when CONFIG_KASAN is enabled, except in a few
cases that now cause link failures:

arch/arm/boot/compressed/fdt_rw.o: In function `fdt_set_name':
fdt_rw.c:(.text+0x3d4): undefined reference to `memcpy'
arch/arm/boot/compressed/fdt_rw.o: In function `fdt_add_property_':
fdt_rw.c:(.text+0x121c): undefined reference to `memmove'
arch/arm/boot/compressed/fdt_rw.o: In function `fdt_splice_':
fdt_rw.c:(.text+0x1460): undefined reference to `memmove'
arch/arm/boot/compressed/fdt_ro.o: In function `fdt_get_path':
fdt_ro.c:(.text+0x1384): undefined reference to `memcpy'
arch/arm/boot/compressed/fdt_wip.o: In function `fdt_setprop_inplace_namelen_partial':
fdt_wip.c:(.text+0x48): undefined reference to `memcpy'
arch/arm/boot/compressed/fdt_wip.o: In function `fdt_setprop_inplace':
fdt_wip.c:(.text+0x100): undefined reference to `memcpy'
arch/arm/boot/compressed/fdt.o: In function `fdt_move':
fdt.c:(.text+0xa04): undefined reference to `memmove'
arch/arm/boot/compressed/atags_to_fdt.o: In function `atags_to_fdt':
atags_to_fdt.c:(.text+0x404): undefined reference to `memcpy'
atags_to_fdt.c:(.text+0x450): undefined reference to `memcpy'

I tried to make everything use them, but ran into other problems:

drivers/firmware/efi/libstub/lib-fdt_sw.stub.o: In function `fdt_create_with_flags':
fdt_sw.c:(.text+0x34): undefined reference to `__memset'
arch/arm/boot/compressed/decompress.o: In function `lzo1x_decompress_safe':
decompress.c:(.text+0x290): undefined reference to `__memset'

This makes all the early boot code not use the redirects, which
works because we don't sanitize that code.

Setting -D__SANITIZE_ADDRESS__ is a bit confusing here, but it
does the trick.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/boot/compressed/Makefile     | 1 +
 arch/arm/boot/compressed/decompress.c | 2 --
 arch/arm/boot/compressed/libfdt_env.h | 2 --
 drivers/firmware/efi/libstub/Makefile | 3 ++-
 4 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index dcc27fb24fbb..d91c2ded0e3d 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -25,6 +25,7 @@ endif
 
 GCOV_PROFILE		:= n
 KASAN_SANITIZE		:= n
+CFLAGS_KERNEL += -D__SANITIZE_ADDRESS__
 
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT		:= n
diff --git a/arch/arm/boot/compressed/decompress.c b/arch/arm/boot/compressed/decompress.c
index 3794fae5f818..aa075d8372ea 100644
--- a/arch/arm/boot/compressed/decompress.c
+++ b/arch/arm/boot/compressed/decompress.c
@@ -47,10 +47,8 @@ extern char * strchrnul(const char *, int);
 #endif
 
 #ifdef CONFIG_KERNEL_XZ
-#ifndef CONFIG_KASAN
 #define memmove memmove
 #define memcpy memcpy
-#endif
 #include "../../../../lib/decompress_unxz.c"
 #endif
 
diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
index 8091efc21407..b36c0289a308 100644
--- a/arch/arm/boot/compressed/libfdt_env.h
+++ b/arch/arm/boot/compressed/libfdt_env.h
@@ -19,6 +19,4 @@ typedef __be64 fdt64_t;
 #define fdt64_to_cpu(x)		be64_to_cpu(x)
 #define cpu_to_fdt64(x)		cpu_to_be64(x)
 
-#undef memset
-
 #endif
diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
index 0460c7581220..fd1d72ea04dd 100644
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
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
