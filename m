Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 515F2D321C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 22:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mPs1ixj80YPka7l4KO2aHgOrpFjDD6H7LoSn4MPknk=; b=W937J2UbgAJ0vS
	rnzBgfiPDV7FRhqL7H7tm7wYLUXCVjdNvtxrYnzp4THn6PxF8f4D9K1VBufXPkFL8pnscdxUaWQEK
	u5flYTr9zWR/kpFf86DKfDUXf23brmrMThowI2YF6Gu/edj9UusLT8F9sbSFo/eAjC0NOeMvgOPC/
	BChOyFZeJLLbrpph4u4ysTMn3yvaY0DXKMOfY+37EZ/lyrtCwTKGf/swz3iZvmJ71N4NhGzB+qHP5
	TsFmnn+NUUhJVAqMQsICnZZWkVhfwJG5DmCxR4WLfNJr1icQZJxu7w/V7ynzFWTeb9ow69gpufKS+
	07cPIaDjP8vGd2YzAM0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIf5v-0001mH-92; Thu, 10 Oct 2019 20:31:31 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIf5U-0001fz-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 20:31:09 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.129]) with ESMTPA (Nemesis) id
 1MLAZe-1iZmX01Cba-00IFWi; Thu, 10 Oct 2019 22:31:00 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Kukjin Kim <kgene@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH 02/36] ARM: s3c: simplify mach/io.h
Date: Thu, 10 Oct 2019 22:29:46 +0200
Message-Id: <20191010203043.1241612-2-arnd@arndb.de>
X-Mailer: git-send-email 2.20.0
In-Reply-To: <20191010203043.1241612-1-arnd@arndb.de>
References: <20191010202802.1132272-1-arnd@arndb.de>
 <20191010203043.1241612-1-arnd@arndb.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:0tiKXBin+zV2d6A7Bkn+koMgOjLf4/3gPok0KUKFj4mdDaZb1Ch
 DVIyDqx8gGg8jZN9LAt63DdUtnBWHO0wn0k38AzhTVaPnmXaAK9bcpUNb9YAyZD1MvKkOqX
 uWa3/J2p4PMy7/qyDGsjhnAG8Z4xWkVY+iXvu8qgF0qwT1FLBydauk+BJXoZk+bumsB1vHj
 614BbmslkcUWjl9rF9zlg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:d08sluXfzGk=:gcOUeL87/3jzbCSd3lREPB
 VRPMtbF8PUwppjwKBZ8Zq9KU4r8wrO0QbRffGfv34yHWStyoAvPVRpSGBTfkDMvj4/UCnQUOq
 JwmNLOuKSDaobAd/Hn1VDsvmyJutlSZEkKdULn6MUjNHKmc9Zl9exsF9BJm7lMvgYiWwHagWN
 dbkdXbD4dl92Cjot6heIZnPgQc1/Eq+kS3PT4qJOuljULyOhLYlwW2ItUp78STo6Pj26NcaG9
 bVJuQZmoZmALP3HwQPOFbCOIq7QsSM9sutbgJDEs/Ptr+1FG5NhWyuYEg/12xNPOb1B/Qxbxc
 k2Jfcb8oS6rRwhgvyT7lQ15VHw43/O4gPv1TsY+LKhVTrCnKUWNPBngtM/OASPLeFjMB/sUo/
 uCsOlzbdxYsWJOuiMJVEKHNW+Fe2jDT4ZdaU5vqAM6UQbQyPotHcpQXWxrqjWpn40UNihd4dr
 YaAmBUq5QlYuCGyECpiZYCZ9lW+hGX9Y3KrXixTccvAwhIdTHIyi7bf9mECx6X3sk3PY7NpPT
 c90ra+gr3Oo3XJ8/gchw3IMFXkV+iyTZNBsIjhZLpptkb4z3NxrsYY/pz8oaz7pLleJOi8UVB
 vmQp7MkuaLQ0L2qShWdk4lvsRd0HSWizZw7nQf/DSfo5etaQi5LANEyKZoB6wzmgKsbPUF+ga
 g/LTT788WpLoKwZZ2+vjvcAvzv3y4DlGNmMKud0QL+XFqcLjcpUhLrLrVN7Hex64TEgEaRlGh
 Vcwy342h5If2+Z3GZE7OrmM5AZ9RK5PVpC3JYeg7S/P59uKjhDEw0EWBCWsaBS2MPVolM/RL9
 H1aav/1fBDsU0cQa2vDGH40S0xTlFFpkCPGwkXGzdrc1bqd4AKUYCH7uOxLUgXEUcVSVLB1au
 hggybic8E/lSvA/iwn8A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_133104_504143_2E5CB78E 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: linus.walleij@linaro.org, linux-samsung-soc@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

s3c24xx has a custom implementation of the inb/outb family of I/O
accessors, implementing both general register access and ISA I/O port
through a multiplexer.

As far as I can tell, the first case has never been needed, and certainly
is not used now, as drivers only use inb/outb to actually driver ISA or
PCI port I/O.

Similarly, the special ISA support is limited to a single machine, the
Simtec Electronics BAST (EB2410ITX) with its PC/104 expansion connector,
all other machines could simply use the generic implementation from
asm/io.h that expects a single memory-mapped address range for byte,
word and dword access. As no other machines besides BAST actually selects
CONFIG_ISA, this is likely not even necessary.

As a cleanup, remove suport for the non-ISA access from the helpers,
and make the ISA access use the virtual address window that we use
elsewhere for PCI I/O ports. In configurations without the BAST machine,
this now falls back on the generic implementation from asm/io.h, but
the mach/io.h header is still relied on to include a number of other
header files implicitly.

Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 arch/arm/mach-s3c24xx/include/mach/io.h      | 209 +++----------------
 arch/arm/plat-samsung/include/plat/map-s3c.h |  10 +-
 2 files changed, 26 insertions(+), 193 deletions(-)

diff --git a/arch/arm/mach-s3c24xx/include/mach/io.h b/arch/arm/mach-s3c24xx/include/mach/io.h
index f960e6d10114..3e8bff26cdd5 100644
--- a/arch/arm/mach-s3c24xx/include/mach/io.h
+++ b/arch/arm/mach-s3c24xx/include/mach/io.h
@@ -12,201 +12,40 @@
 
 #include <mach/hardware.h>
 
-#define IO_SPACE_LIMIT 0xffffffff
 
 /*
- * We use two different types of addressing - PC style addresses, and ARM
- * addresses.  PC style accesses the PC hardware with the normal PC IO
- * addresses, eg 0x3f8 for serial#1.  ARM addresses are above A28
- * and are translated to the start of IO.  Note that all addresses are
- * not shifted left!
+ * ISA style IO, for each machine to sort out mappings for,
+ * if it implements it. We reserve two 16M regions for ISA,
+ * so the PC/104 can use separate addresses for 8-bit and
+ * 16-bit port I/O.
  */
+#define PCIO_BASE		S3C_ADDR(0x02000000)
+#define IO_SPACE_LIMIT		0x00ffffff
+#define S3C24XX_VA_ISA_WORD	(PCIO_BASE)
+#define S3C24XX_VA_ISA_BYTE	(PCIO_BASE + 0x01000000)
 
-#define __PORT_PCIO(x)	((x) < (1<<28))
+#ifdef CONFIG_ISA
 
-#define PCIO_BASE	 (S3C24XX_VA_ISA_WORD)
-#define PCIO_BASE_b	 (S3C24XX_VA_ISA_BYTE)
-#define PCIO_BASE_w	 (S3C24XX_VA_ISA_WORD)
-#define PCIO_BASE_l	 (S3C24XX_VA_ISA_WORD)
-/*
- * Dynamic IO functions - let the compiler
- * optimize the expressions
- */
-
-#define DECLARE_DYN_OUT(sz,fnsuffix,instr) \
-static inline void __out##fnsuffix (unsigned int val, unsigned int port) \
-{ \
-	unsigned long temp;				      \
-	__asm__ __volatile__(				      \
-	"cmp	%2, #(1<<28)\n\t"			      \
-	"mov	%0, %2\n\t"				      \
-	"addcc	%0, %0, %3\n\t"				      \
-	"str" instr " %1, [%0, #0 ]	@ out" #fnsuffix      \
-	: "=&r" (temp)					      \
-	: "r" (val), "r" (port), "Ir" (PCIO_BASE_##fnsuffix)  \
-	: "cc");					      \
-}
-
-
-#define DECLARE_DYN_IN(sz,fnsuffix,instr)				\
-static inline unsigned sz __in##fnsuffix (unsigned int port)		\
-{									\
-	unsigned long temp, value;					\
-	__asm__ __volatile__(						\
-	"cmp	%2, #(1<<28)\n\t"					\
-	"mov	%0, %2\n\t"						\
-	"addcc	%0, %0, %3\n\t"						\
-	"ldr" instr "	%1, [%0, #0 ]	@ in" #fnsuffix		\
-	: "=&r" (temp), "=r" (value)					\
-	: "r" (port), "Ir" (PCIO_BASE_##fnsuffix)	\
-	: "cc");							\
-	return (unsigned sz)value;					\
-}
+#define inb(p)		readb(S3C24XX_VA_ISA_BYTE + (p))
+#define inw(p)		readw(S3C24XX_VA_ISA_WORD + (p))
+#define inl(p)		readl(S3C24XX_VA_ISA_WORD + (p))
 
-static inline void __iomem *__ioaddr (unsigned long port)
-{
-	return __PORT_PCIO(port) ? (PCIO_BASE + port) : (void __iomem *)port;
-}
+#define outb(v,p)	writeb((v), S3C24XX_VA_ISA_BYTE + (p))
+#define outw(v,p)	writew((v), S3C24XX_VA_ISA_WORD + (p))
+#define outl(v,p)	writel((v), S3C24XX_VA_ISA_WORD + (p))
 
-#define DECLARE_IO(sz,fnsuffix,instr)	\
-	DECLARE_DYN_IN(sz,fnsuffix,instr) \
-	DECLARE_DYN_OUT(sz,fnsuffix,instr)
+#define insb(p,d,l)	readsb(S3C24XX_VA_ISA_BYTE + (p),d,l)
+#define insw(p,d,l)	readsw(S3C24XX_VA_ISA_WORD + (p),d,l)
+#define insl(p,d,l)	readsl(S3C24XX_VA_ISA_WORD + (p),d,l)
 
-DECLARE_IO(char,b,"b")
-DECLARE_IO(short,w,"h")
-DECLARE_IO(int,l,"")
+#define outsb(p,d,l)	writesb(S3C24XX_VA_ISA_BYTE + (p),d,l)
+#define outsw(p,d,l)	writesw(S3C24XX_VA_ISA_WORD + (p),d,l)
+#define outsl(p,d,l)	writesl(S3C24XX_VA_ISA_WORD + (p),d,l)
 
-#undef DECLARE_IO
-#undef DECLARE_DYN_IN
-
-/*
- * Constant address IO functions
- *
- * These have to be macros for the 'J' constraint to work -
- * +/-4096 immediate operand.
- */
-#define __outbc(value,port)						\
-({									\
-	if (__PORT_PCIO((port)))					\
-		__asm__ __volatile__(					\
-		"strb	%0, [%1, %2]	@ outbc"			\
-		: : "r" (value), "r" (PCIO_BASE), "Jr" ((port)));	\
-	else								\
-		__asm__ __volatile__(					\
-		"strb	%0, [%1, #0]	@ outbc"			\
-		: : "r" (value), "r" ((port)));				\
-})
+#else
 
-#define __inbc(port)							\
-({									\
-	unsigned char result;						\
-	if (__PORT_PCIO((port)))					\
-		__asm__ __volatile__(					\
-		"ldrb	%0, [%1, %2]	@ inbc"				\
-		: "=r" (result) : "r" (PCIO_BASE), "Jr" ((port)));	\
-	else								\
-		__asm__ __volatile__(					\
-		"ldrb	%0, [%1, #0]	@ inbc"				\
-		: "=r" (result) : "r" ((port)));			\
-	result;								\
-})
+#define __io(x) (PCIO_BASE + (x))
 
-#define __outwc(value,port)						\
-({									\
-	unsigned long v = value;					\
-	if (__PORT_PCIO((port))) {					\
-		if ((port) < 256 && (port) > -256)			\
-			__asm__ __volatile__(				\
-			"strh	%0, [%1, %2]	@ outwc"		\
-			: : "r" (v), "r" (PCIO_BASE), "Jr" ((port)));	\
-		else if ((port) > 0)					\
-			__asm__ __volatile__(				\
-			"strh	%0, [%1, %2]	@ outwc"		\
-			: : "r" (v),					\
-			    "r" (PCIO_BASE + ((port) & ~0xff)),		\
-			     "Jr" (((port) & 0xff)));			\
-		else							\
-			__asm__ __volatile__(				\
-			"strh	%0, [%1, #0]	@ outwc"		\
-			: : "r" (v),					\
-			    "r" (PCIO_BASE + (port)));			\
-	} else								\
-		__asm__ __volatile__(					\
-		"strh	%0, [%1, #0]	@ outwc"			\
-		: : "r" (v), "r" ((port)));				\
-})
-
-#define __inwc(port)							\
-({									\
-	unsigned short result;						\
-	if (__PORT_PCIO((port))) {					\
-		if ((port) < 256 && (port) > -256 )			\
-			__asm__ __volatile__(				\
-			"ldrh	%0, [%1, %2]	@ inwc"			\
-			: "=r" (result)					\
-			: "r" (PCIO_BASE),				\
-			  "Jr" ((port)));				\
-		else if ((port) > 0)					\
-			__asm__ __volatile__(				\
-			"ldrh	%0, [%1, %2]	@ inwc"			\
-			: "=r" (result)					\
-			: "r" (PCIO_BASE + ((port) & ~0xff)),		\
-			  "Jr" (((port) & 0xff)));			\
-		else							\
-			__asm__ __volatile__(				\
-			"ldrh	%0, [%1, #0]	@ inwc"			\
-			: "=r" (result)					\
-			: "r" (PCIO_BASE + ((port))));			\
-	} else								\
-		__asm__ __volatile__(					\
-		"ldrh	%0, [%1, #0]	@ inwc"				\
-		: "=r" (result) : "r" ((port)));			\
-	result;								\
-})
-
-#define __outlc(value,port)						\
-({									\
-	unsigned long v = value;					\
-	if (__PORT_PCIO((port)))					\
-		__asm__ __volatile__(					\
-		"str	%0, [%1, %2]	@ outlc"			\
-		: : "r" (v), "r" (PCIO_BASE), "Jr" ((port)));	\
-	else								\
-		__asm__ __volatile__(					\
-		"str	%0, [%1, #0]	@ outlc"			\
-		: : "r" (v), "r" ((port)));		\
-})
-
-#define __inlc(port)							\
-({									\
-	unsigned long result;						\
-	if (__PORT_PCIO((port)))					\
-		__asm__ __volatile__(					\
-		"ldr	%0, [%1, %2]	@ inlc"				\
-		: "=r" (result) : "r" (PCIO_BASE), "Jr" ((port)));	\
-	else								\
-		__asm__ __volatile__(					\
-		"ldr	%0, [%1, #0]	@ inlc"				\
-		: "=r" (result) : "r" ((port)));		\
-	result;								\
-})
-
-#define __ioaddrc(port)	((__PORT_PCIO(port) ? PCIO_BASE + (port) : (void __iomem *)0 + (port)))
-
-#define inb(p)		(__builtin_constant_p((p)) ? __inbc(p)	   : __inb(p))
-#define inw(p)		(__builtin_constant_p((p)) ? __inwc(p)	   : __inw(p))
-#define inl(p)		(__builtin_constant_p((p)) ? __inlc(p)	   : __inl(p))
-#define outb(v,p)	(__builtin_constant_p((p)) ? __outbc(v,p) : __outb(v,p))
-#define outw(v,p)	(__builtin_constant_p((p)) ? __outwc(v,p) : __outw(v,p))
-#define outl(v,p)	(__builtin_constant_p((p)) ? __outlc(v,p) : __outl(v,p))
-#define __ioaddr(p)	(__builtin_constant_p((p)) ? __ioaddr(p)  : __ioaddrc(p))
-
-#define insb(p,d,l)	__raw_readsb(__ioaddr(p),d,l)
-#define insw(p,d,l)	__raw_readsw(__ioaddr(p),d,l)
-#define insl(p,d,l)	__raw_readsl(__ioaddr(p),d,l)
-
-#define outsb(p,d,l)	__raw_writesb(__ioaddr(p),d,l)
-#define outsw(p,d,l)	__raw_writesw(__ioaddr(p),d,l)
-#define outsl(p,d,l)	__raw_writesl(__ioaddr(p),d,l)
+#endif
 
 #endif
diff --git a/arch/arm/plat-samsung/include/plat/map-s3c.h b/arch/arm/plat-samsung/include/plat/map-s3c.h
index 4244acbf4b65..bf247d836684 100644
--- a/arch/arm/plat-samsung/include/plat/map-s3c.h
+++ b/arch/arm/plat-samsung/include/plat/map-s3c.h
@@ -9,6 +9,8 @@
 #ifndef __ASM_PLAT_MAP_S3C_H
 #define __ASM_PLAT_MAP_S3C_H __FILE__
 
+#include <mach/map.h>
+
 #define S3C24XX_VA_IRQ		S3C_VA_IRQ
 #define S3C24XX_VA_MEMCTRL	S3C_VA_MEM
 #define S3C24XX_VA_UART		S3C_VA_UART
@@ -45,16 +47,8 @@
 
 #define S3C_VA_USB_HSPHY	S3C64XX_VA_USB_HSPHY
 
-/*
- * ISA style IO, for each machine to sort out mappings for,
- * if it implements it. We reserve two 16M regions for ISA.
- */
-
 #define S3C2410_ADDR(x)		S3C_ADDR(x)
 
-#define S3C24XX_VA_ISA_WORD	S3C2410_ADDR(0x02000000)
-#define S3C24XX_VA_ISA_BYTE	S3C2410_ADDR(0x03000000)
-
 /* deal with the registers that move under the 2412/2413 */
 
 #if defined(CONFIG_CPU_S3C2412)
-- 
2.20.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
