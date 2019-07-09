Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F2F63B58
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 20:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bb0c8tbU64FLCLFWAaJDd+D2sUTaE6XzdgWzDbx60gE=; b=Du1Gldsqv1f6QQ
	aWNPYAex68N6yY6a7RxMBTACAMdZroF83+brUg6LkYcYOrJOpRBDMa1V7Pi/GQy3XdO8++GDbcdSO
	Nit710tLCD1WN/j/KyMcn/OWdCClqNniZTxDab73O1Y623AFK5QF+1zMDsPmNtu2QSXIhKqHheD09
	745nOQhqyzvJqMeU8Q3r+kCZC5t8nxt857IkkdZVJLCxby52bJ6+kvFIUEuxTnldpHWkdgGt0vHCi
	7OnuXEpXWmwcxJ/yOVyvCmj3jzYzj6c9TStZ0m+XXSn9uBFQlCuMhp2UwPtvyzibDIN9Ul6XoDD+1
	8KCBK7KdAwC8dUOnzZyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkv7P-0006ah-8W; Tue, 09 Jul 2019 18:45:35 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkv7B-0006Vu-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 18:45:23 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.129]) with ESMTPA (Nemesis) id
 1Mt7Pt-1idzjz2DuL-00tTez; Tue, 09 Jul 2019 20:45:10 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] [v2] ARM: mtd-xip: work around clang/llvm bug
Date: Tue,  9 Jul 2019 20:44:57 +0200
Message-Id: <20190709184509.2967503-1-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:nUy/ge+wQYWTJFpTzajM48Zt0XR341x3ye6BHYNlezP3zD2R+Fl
 9o2NckE1O/IEMT9a7C+mPH6dOzZoanf6JBnCRem3dzLHQdHaEH0N3O5xdEcipjjfHjOj2N0
 O7du1CzjrDYrslT9HuNZjZwGI495tjDa33+cZu5GaujvauGiFl5jc6/ophvmYrq0SQrZNbO
 qZkUbiefWFywNY3tMYg5A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:gXOCuUaHk4U=:Bjom7hSzoUeYR7ZcaDToJH
 4hzyP0frf+d8a0d3kDrqFN9l57bKYZ67+WdHuGmFw7N9H00MKb1CGwSSYQLA5GBsCZYnSaydr
 VIwvJpqEAm9L2F45SMuqdYvsmgOhCmzaUL+EvxzWwYa2fViA8NDeHEEJyig6PMv9nKBANOJBo
 cM36r3OY1tra8vryoR8O+jYtIwNDSK9OMXIysfgbX/m+eoMqE+uTuHMbqIH6aTDB9ZOoYeU3d
 XcBt2/UYEsH6P25b/I8PcoakPqJJHxsayXhuhUMABppUPtVAOO6+npJtAVoq2zcTDDRuLovwR
 P9CbUH0wZKP7tGDCxkIxLiGoW0bf7f8Z9zUoDA6UDg15JVUp6Ib8reA07Kpm21YTtK4dYCj5d
 TODaXMOTPnMB04IvykU86zxyDeJuKDc+nsff37sv9ANTB5lBlBEnqVAmy3cIAazdsfcqLs5xZ
 k+QxitwDSj4xSkc+bJcR65wuk4IQ1nIWsjnNv1qgS3hccMrwUOvOKoQHZq+EvzJAL+zY/fMj4
 faaXseke75b5Boo7KG6/3ikiDhL/2UF22hEKb0K2GG3Ls6g4nnK/I/ESEB5QECfhDenHiKX1b
 blkFztg6R+hg+0a7SFEV+kKX+7iRdA5gyNrQDtZuGqiRrd7ylCbBDzliYt5qkXPe1WdX0HD+v
 HjoTH26jlsGx07wMjFunU9DgZh6dv4PGolGG4HK6K3oOJ2o0PaE0VxITdhxWSc00/zsmE0EPk
 79gGnYlxlR/AYisnh60ip+o2+o5EPNtB3q6W8A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_114521_788168_A3F5AEBD 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Linus Walleij <linus.walleij@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

llvm gets confused by inline asm with .rep directives, which
can lead to miscalculating the number of instructions inside it,
and in turn lead to an overflow for relative address calculation:

/tmp/cfi_cmdset_0002-539a47.s: Assembler messages:
/tmp/cfi_cmdset_0002-539a47.s:11288: Error: bad immediate value for offset (4100)
/tmp/cfi_cmdset_0002-539a47.s:11289: Error: bad immediate value for offset (4100)

This might be fixed in future clang versions, but is not hard
to work around by just replacing the .rep with a series of
eight unrolled nop instructions.

As Russell points out, the original code uses an undocumented
assembler directive, as .rep is normally spelled .rept, though
the shorter form is common on arch/x86 as well.

Link: https://bugs.llvm.org/show_bug.cgi?id=42539
Link: https://godbolt.org/z/DSM2Jy
Acked-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
v2: mention .rep/.rept
    add missing "Link:" keyword.
---
 arch/arm/include/asm/mtd-xip.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/mtd-xip.h b/arch/arm/include/asm/mtd-xip.h
index dfcef0152e3d..5ad0325604e4 100644
--- a/arch/arm/include/asm/mtd-xip.h
+++ b/arch/arm/include/asm/mtd-xip.h
@@ -15,6 +15,8 @@
 #include <mach/mtd-xip.h>
 
 /* fill instruction prefetch */
-#define xip_iprefetch() 	do { asm volatile (".rep 8; nop; .endr"); } while (0)
+#define xip_iprefetch()	do {						\
+	 asm volatile ("nop; nop; nop; nop; nop; nop; nop; nop;");	\
+} while (0)								\
 
 #endif /* __ARM_MTD_XIP_H__ */
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
