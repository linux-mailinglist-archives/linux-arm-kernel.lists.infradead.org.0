Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C589AFAAA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kpGBqZY+b5U5dT6aCa7sKZ1151BGkFbrUrJSeSoNbr0=; b=EdR
	doZJXQeRR9QPJ2rjzqSPqCfd8DoiGljUE3cWejX+KkMGTV/fxpJ43qFKMZYKFVklQ265u7LgtRkcC
	5V/r9TpX5pI/rz0U5FjgO/2fTYGJ1QANeLKHAejV/BF8aarMp7Z6rhhbLQwcF+CL/D9+byJv/2ZQr
	YMZR9/E+wY5RjL6IEKc7S03E782gEseabEP/o+CLcy2rcRVxy1/ahxSj+xy52osxrl6iD+V3Bllj1
	yADKls2eGP4krcULSlgO3ZiLFkJiLPkE4v03CFHRQ0yM1XHHVCdRkjeou8RS51jWD1ouXQ7CX0EyO
	qaqt8uNJT/GejFwUbW53VAg7pGYDnyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUmpt-0006JA-5S; Wed, 13 Nov 2019 07:13:05 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUmpl-0006IH-GH
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:12:59 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id xAD7COMU032236;
 Wed, 13 Nov 2019 16:12:24 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com xAD7COMU032236
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1573629145;
 bh=hUWxEOEKcTupHyB6KArKI0LSBUkIGOpAbtR0Bqznip4=;
 h=From:To:Cc:Subject:Date:From;
 b=n2KG6wYPBHKlFa4U7nisZquYRQPFHb3BSAreElf0QkXQTiJENHMqnSbALDYfiHZqY
 pIsnwIQcs8jEL2DpRIQLTn07+Ve9hVm+cgSEtJdZwR8/4enC6h6CNWoIZgz5YvWxQ6
 MeluFmVWF4kSewTnyOC8VbaFPXSp9RuJ5UVKVAGweuDdsyZmDWNRfYku+O7mK2MCe9
 rtu4hX2yS6Koz7Yt0FdcQ/6dB/tND35pbuOTNgs559ZDeTG5PRnQb7xz//FdzWuwBz
 ZO65yUUdAB4G9TzB1DMhcCwqZufdrLG3efVvowwPSVZn3nyJlaX7QbLNeKxKq8U1Wr
 VJcHK69Dntk4A==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3] libfdt: define INT32_MAX and UINT32_MAX in libfdt_env.h
Date: Wed, 13 Nov 2019 16:12:02 +0900
Message-Id: <20191113071202.11287-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_231257_761948_2A167182 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DTC v1.5.1 added references to (U)INT32_MAX.

This is no problem for user-space programs since <stdint.h> defines
(U)INT32_MAX along with (u)int32_t.

For the kernel space, libfdt_env.h needs to be adjusted before we
pull in the changes.

In the kernel, we usually use s/u32 instead of (u)int32_t for the
fixed-width types.

Accordingly, we already have S/U32_MAX for their max values.
So, we should not add (U)INT32_MAX to <linux/limits.h> any more.

Instead, add them to the in-kernel libfdt_env.h to compile the
latest libfdt.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

My initial plan was to change this in a series of 3 patches
since it is clean, and reduces the code.

[1/3] https://lore.kernel.org/patchwork/patch/1147095/
[2/3] https://lore.kernel.org/patchwork/patch/1147096/
[3/3] https://lore.kernel.org/patchwork/patch/1147097/

1/3 is stuck in the license bikeshed.

For 2/3, I have not been able to get Ack from Russell.

So, I chose a straight-forward fixup.


Changes in v3:
 - Resend as a single patch

 arch/arm/boot/compressed/libfdt_env.h | 4 +++-
 arch/powerpc/boot/libfdt_env.h        | 2 ++
 include/linux/libfdt_env.h            | 3 +++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/libfdt_env.h b/arch/arm/boot/compressed/libfdt_env.h
index b36c0289a308..6a0f1f524466 100644
--- a/arch/arm/boot/compressed/libfdt_env.h
+++ b/arch/arm/boot/compressed/libfdt_env.h
@@ -2,11 +2,13 @@
 #ifndef _ARM_LIBFDT_ENV_H
 #define _ARM_LIBFDT_ENV_H
 
+#include <linux/limits.h>
 #include <linux/types.h>
 #include <linux/string.h>
 #include <asm/byteorder.h>
 
-#define INT_MAX			((int)(~0U>>1))
+#define INT32_MAX	S32_MAX
+#define UINT32_MAX	U32_MAX
 
 typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
diff --git a/arch/powerpc/boot/libfdt_env.h b/arch/powerpc/boot/libfdt_env.h
index 2abc8e83b95e..9757d4f6331e 100644
--- a/arch/powerpc/boot/libfdt_env.h
+++ b/arch/powerpc/boot/libfdt_env.h
@@ -6,6 +6,8 @@
 #include <string.h>
 
 #define INT_MAX			((int)(~0U>>1))
+#define UINT32_MAX		((u32)~0U)
+#define INT32_MAX		((s32)(UINT32_MAX >> 1))
 
 #include "of.h"
 
diff --git a/include/linux/libfdt_env.h b/include/linux/libfdt_env.h
index edb0f0c30904..1adf54aad2df 100644
--- a/include/linux/libfdt_env.h
+++ b/include/linux/libfdt_env.h
@@ -7,6 +7,9 @@
 
 #include <asm/byteorder.h>
 
+#define INT32_MAX	S32_MAX
+#define UINT32_MAX	U32_MAX
+
 typedef __be16 fdt16_t;
 typedef __be32 fdt32_t;
 typedef __be64 fdt64_t;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
