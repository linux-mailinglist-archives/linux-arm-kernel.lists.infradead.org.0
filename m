Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0F51AB21E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 21:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=miXatmVlE5vDzIQP0111O7xXZ56OIPuWxE7tBlMnzTs=; b=jZbEKVFxCqwDFd
	JkmsNIHXVnrMeza47FuJ/ItO5WMQP9brDRrlBW0SrwYwgp4cL1XoB14OyIbCAWRFhviAUn7tlwVj2
	blxCSX3dexEEA2EZ11idIt5gDipXMIIbp0/VtmvyfhE9ju+lmRCx+Ag911RESL7ThL7gkSjrYfM3Q
	oUvlAKZa+M4gEUDb/tL5hiJS/KyrgZE4x/z8EIU6KFowya62q7vtQn9hyeK73aOiZKXqDQxOdATSx
	4LaxVwtCDuIe/Q8DEmRD6/inKIZC9K74WzUdeRhkZbI2ilvb5Fl4b4GH8tQESrMOAIGkRderh3x3F
	9h8/TVGIpxyrngiZ4rTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOo8d-0002ST-En; Wed, 15 Apr 2020 19:55:59 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOo7S-0007Vq-JR; Wed, 15 Apr 2020 19:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586980486; x=1618516486;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I/GiEGyOV5rt1rc9GnsBz8XcyhOtNk7wcIG4+FIGGnk=;
 b=cfONAH7CU6fKKy2vzkDlvKD7e+d9Ozj015vY2V5hd8ZCjgEzhUY6OSDH
 GXugRA9oQkixMSbBZpNG8FO9jHvxn4uQAYbOup202kjMmHRiqjP02WiNm
 lTnReX61bLq9dlYs3cUNgy9AWv1dl1YIgf+YgPPjBkywlRb1vEvPsEbuN
 laHLc3uyFYcyN8Q1BomqJAaTtPcYOd37tIhLHd5+Um1uGd+eYvJYPvvGM
 ASxGdtOVm9VCZIeUTf8eteN73GMT5bFvAbucGPawIzzXHSP3aSYYUJlKK
 5bUr8IvAvbupaA9HdHMZ3LV64b8D1/UUVlT464bYOcj6Xm4XVZrMznxCg Q==;
IronPort-SDR: z0DYq5ss1bcgeMmyB8K+HK0kMJ5V0hrMcqZ1R7Mh9L9CUM8CG6EZCLQbZ+dPB6vtYCTTm5Ubdj
 lUUrzX+homqeO2oF/zbxs3OZ/MZk6tAVKSNkPPCpgA/9TJq6cmdCyUURu+OZrJwWerKd2hbiTx
 Z7AFM8qUNlJJKhnxq2JDswRAk5O/oVFutTPoBMn3JJ6IPKhx827u5iTdku5j7xPh51tyUNKjH4
 CK9eeRfinYlmvWOewD9xcdVpM2eldn1YiCLjMsq4bRuoTcMiTzmOQtKMS/sLYsLvbFaOWdVMf0
 J4M=
X-IronPort-AV: E=Sophos;i="5.72,388,1580745600"; d="scan'208";a="136848625"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 16 Apr 2020 03:54:42 +0800
IronPort-SDR: aVO2z6mwW73PklLAtARbzlwgaF1nQtRFJAQKJN7Bt+745Gnd1WzegweV4ETbJD9Awq/TW8mkKc
 2jqeBhUQEAcwqFwu12qoKII52awI24IA8md23PGCOl8Ix3Xs/SV83RhUigDOk3Unhx09AyEf0q
 H34HPwmWEMGFoLYcn0OQGoHWOwJhJJfMARQ0RLOxvfOhuhOxL9SMNBUvVSuOmxjyBfW0BmaJ5L
 fgf7acWtRohEYcdDP0xeXDnEPdEYwCEgMis3VmsM0I1qlywdEJJ9RaSleQg9q9QKqSMCBlVwj9
 McaxOAw9cXec6BvBBK4ucnBi
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 12:45:10 -0700
IronPort-SDR: Pjy567yOzeM1bdT0GQqoGVowVxs6q7IBZl9SQHXkO3QkXpd+chuWhK+yjTisbi+VNX91SjvBnV
 GxEwlGV52czlYA1QiMCes6giLsRZptIWqNwQLGaUVCzbNyJ5USgkfDMSo0A+CPiD8/839jEeC8
 rq12xRqTN3Mqu23X8EQ2bUPV5lpeA7+X4zFGWV3eU7jKjr1zayWZf5qVNdguKVu94FgPKEHTvD
 hdndP2UkRg/AN/9Hol45h4K3BSkE3BArGEmTR+MtRy637lcQqgIwxWzbT5MJsz0GuUvuaC0fbt
 VQk=
WDCIronportException: Internal
Received: from 6hj08h2.ad.shared (HELO jedi-01.hgst.com) ([10.86.55.244])
 by uls-op-cesaip02.wdc.com with ESMTP; 15 Apr 2020 12:54:41 -0700
From: Atish Patra <atish.patra@wdc.com>
To: linux-kernel@vger.kernel.org
Subject: [v3 PATCH 3/5] RISC-V: Define fixmap bindings for generic early
 ioremap support
Date: Wed, 15 Apr 2020 12:54:20 -0700
Message-Id: <20200415195422.19866-4-atish.patra@wdc.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200415195422.19866-1-atish.patra@wdc.com>
References: <20200415195422.19866-1-atish.patra@wdc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_125446_775479_D4CA7D87 
X-CRM114-Status: GOOD (  12.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-efi@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Atish Patra <atish.patra@wdc.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UEFI uses early IO or memory mappings for runtime services before
normal ioremap() is usable. This patch only adds minimum necessary
fixmap bindings and headers for generic ioremap support to work.

Signed-off-by: Atish Patra <atish.patra@wdc.com>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/riscv/Kconfig              |  1 +
 arch/riscv/include/asm/Kbuild   |  1 +
 arch/riscv/include/asm/fixmap.h | 18 ++++++++++++++++++
 arch/riscv/include/asm/io.h     |  1 +
 4 files changed, 21 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index a197258595ef..f39e326a7a42 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -68,6 +68,7 @@ config RISCV
 	select ARCH_HAS_GCOV_PROFILE_ALL
 	select HAVE_COPY_THREAD_TLS
 	select HAVE_ARCH_KASAN if MMU && 64BIT
+	select GENERIC_EARLY_IOREMAP
 
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 3d9410bb4de0..59dd7be55005 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
+generic-y += early_ioremap.h
 generic-y += extable.h
 generic-y += flat.h
 generic-y += kvm_para.h
diff --git a/arch/riscv/include/asm/fixmap.h b/arch/riscv/include/asm/fixmap.h
index 2368d49eb4ef..ba5096d65fb0 100644
--- a/arch/riscv/include/asm/fixmap.h
+++ b/arch/riscv/include/asm/fixmap.h
@@ -30,6 +30,24 @@ enum fixed_addresses {
 	FIX_TEXT_POKE1,
 	FIX_TEXT_POKE0,
 	FIX_EARLYCON_MEM_BASE,
+	/*
+	 * Make sure that it is 2MB aligned.
+	 */
+#define NR_FIX_SZ_2M	(SZ_2M / PAGE_SIZE)
+	FIX_THOLE = NR_FIX_SZ_2M - FIX_PMD - 1,
+
+	__end_of_permanent_fixed_addresses,
+	/*
+	 * Temporary boot-time mappings, used by early_ioremap(),
+	 * before ioremap() is functional.
+	 */
+#define NR_FIX_BTMAPS		(SZ_256K / PAGE_SIZE)
+#define FIX_BTMAPS_SLOTS	7
+#define TOTAL_FIX_BTMAPS	(NR_FIX_BTMAPS * FIX_BTMAPS_SLOTS)
+
+	FIX_BTMAP_END = __end_of_permanent_fixed_addresses,
+	FIX_BTMAP_BEGIN = FIX_BTMAP_END + TOTAL_FIX_BTMAPS - 1,
+
 	__end_of_fixed_addresses
 };
 
diff --git a/arch/riscv/include/asm/io.h b/arch/riscv/include/asm/io.h
index 0f477206a4ed..047f414b6948 100644
--- a/arch/riscv/include/asm/io.h
+++ b/arch/riscv/include/asm/io.h
@@ -14,6 +14,7 @@
 #include <linux/types.h>
 #include <asm/mmiowb.h>
 #include <asm/pgtable.h>
+#include <asm/early_ioremap.h>
 
 /*
  * MMIO access functions are separated out to break dependency cycles
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
