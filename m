Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D5DF196DD8
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 16:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mf/vhGxy3PpetwlNphTJN0npRQshD9lGhT6TYkI9dkw=; b=hpg
	yIdGhE+HtnFMcH8E+TpsubJA7Ry2z7WXbFguZmNmODwYWRzze3/LF798gCuo2AfYJkVqwr3X7Fs36
	/HmpbDQYnYLrPt61buT1SVBPKsnP1fSrPuXnulqi/UFCfGUtuxRwFdZqPNOw0sllwKoV3L6Pn4NbM
	aZ8Kom/ahrQNQJjjasuO8Fbzh8bgK27LB9HjDPNwlUAj0UZUpZcxC8uuYSbxMyiPzuVMweA225/dt
	YghqyPXGCC9l9TEtv4Dz65/ctR1A0qmFS41CXudK5b01oET4lhoTLEC1zVtELn22M0jZqAjqFz+M9
	+iyCBEDU3qlFpQXAIRnK7t6lCs5fhUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIYhZ-0002rE-6K; Sun, 29 Mar 2020 14:14:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIYhQ-0002qt-TC
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 14:14:06 +0000
Received: from e123331-lin.home
 (amontpellier-657-1-18-247.w109-210.abo.wanadoo.fr [109.210.65.247])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43EDA2073E;
 Sun, 29 Mar 2020 14:14:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585491243;
 bh=4XpHVvC8TcjRHMXA07MsHC1KMbRM57UlVFxVOGGaVZQ=;
 h=From:To:Cc:Subject:Date:From;
 b=faOX4sSFauxZrAmlwYEdXcv9jA5gJ1oyD12Tkd2n7uqk4ze2vIMaI0GvBGeYgLOLA
 Q0Kx9A6pErdgIP0IUF2D0F/q2cYf47TDuxHtUswHjSlbtHB3q5jgAQ5sXI91Hr8hhJ
 KJmqJIY04zTZsNR/SGMsNjpGSe2IC8woM8oEyo+Q=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [RFC PATCH] arm64: remove CONFIG_DEBUG_ALIGN_RODATA feature
Date: Sun, 29 Mar 2020 16:12:58 +0200
Message-Id: <20200329141258.31172-1-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_071404_985943_9C7858CF 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will@kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, kernel-hardening@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When CONFIG_DEBUG_ALIGN_RODATA is enabled, kernel segments mapped with
different permissions (r-x for .text, r-- for .rodata, rw- for .data,
etc) are rounded up to 2 MiB so they can be mapped more efficiently.
In particular, it permits the segments to be mapped using level 2
block entries when using 4k pages, which is expected to result in less
TLB pressure.

However, the mappings for the bulk of the kernel will use level 2
entries anyway, and the misaligned fringes are organized such that they
can take advantage of the contiguous bit, and use far fewer level 3
entries than would be needed otherwise.

This makes the value of this feature dubious at best, and since it is not
enabled in defconfig or in the distro configs, it does not appear to be
in wide use either. So let's just remove it.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 arch/arm64/Kconfig.debug                  | 13 -------------
 arch/arm64/include/asm/memory.h           | 12 +-----------
 drivers/firmware/efi/libstub/arm64-stub.c |  8 +++-----
 3 files changed, 4 insertions(+), 29 deletions(-)

diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index 1c906d932d6b..a1efa246c9ed 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -52,19 +52,6 @@ config DEBUG_WX
 
 	  If in doubt, say "Y".
 
-config DEBUG_ALIGN_RODATA
-	depends on STRICT_KERNEL_RWX
-	bool "Align linker sections up to SECTION_SIZE"
-	help
-	  If this option is enabled, sections that may potentially be marked as
-	  read only or non-executable will be aligned up to the section size of
-	  the kernel. This prevents sections from being split into pages and
-	  avoids a potential TLB penalty. The downside is an increase in
-	  alignment and potentially wasted space. Turn on this option if
-	  performance is more important than memory pressure.
-
-	  If in doubt, say N.
-
 config DEBUG_EFI
 	depends on EFI && DEBUG_INFO
 	bool "UEFI debugging"
diff --git a/arch/arm64/include/asm/memory.h b/arch/arm64/include/asm/memory.h
index 4d94676e5a8b..3b34f7bde2f2 100644
--- a/arch/arm64/include/asm/memory.h
+++ b/arch/arm64/include/asm/memory.h
@@ -119,22 +119,12 @@
 
 /*
  * Alignment of kernel segments (e.g. .text, .data).
- */
-#if defined(CONFIG_DEBUG_ALIGN_RODATA)
-/*
- *  4 KB granule:   1 level 2 entry
- * 16 KB granule: 128 level 3 entries, with contiguous bit
- * 64 KB granule:  32 level 3 entries, with contiguous bit
- */
-#define SEGMENT_ALIGN		SZ_2M
-#else
-/*
+ *
  *  4 KB granule:  16 level 3 entries, with contiguous bit
  * 16 KB granule:   4 level 3 entries, without contiguous bit
  * 64 KB granule:   1 level 3 entry
  */
 #define SEGMENT_ALIGN		SZ_64K
-#endif
 
 /*
  * Memory types available.
diff --git a/drivers/firmware/efi/libstub/arm64-stub.c b/drivers/firmware/efi/libstub/arm64-stub.c
index db0c1a9c1699..fc9f8ab533a7 100644
--- a/drivers/firmware/efi/libstub/arm64-stub.c
+++ b/drivers/firmware/efi/libstub/arm64-stub.c
@@ -75,14 +75,12 @@ efi_status_t handle_kernel_image(unsigned long *image_addr,
 
 	if (IS_ENABLED(CONFIG_RANDOMIZE_BASE) && phys_seed != 0) {
 		/*
-		 * If CONFIG_DEBUG_ALIGN_RODATA is not set, produce a
-		 * displacement in the interval [0, MIN_KIMG_ALIGN) that
-		 * doesn't violate this kernel's de-facto alignment
+		 * Produce a displacement in the interval [0, MIN_KIMG_ALIGN)
+		 * that doesn't violate this kernel's de-facto alignment
 		 * constraints.
 		 */
 		u32 mask = (MIN_KIMG_ALIGN - 1) & ~(EFI_KIMG_ALIGN - 1);
-		u32 offset = !IS_ENABLED(CONFIG_DEBUG_ALIGN_RODATA) ?
-			     (phys_seed >> 32) & mask : TEXT_OFFSET;
+		u32 offset = (phys_seed >> 32) & mask;
 
 		/*
 		 * With CONFIG_RANDOMIZE_TEXT_OFFSET=y, TEXT_OFFSET may not
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
