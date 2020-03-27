Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48DED195ABE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 17:11:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zu3W4IVkUJ7kdEZpacjMwdIb54loVPjrXiaVWHqvNxo=; b=eg1T830Vhfcjpf
	PRNEGUXCOZK6cBmi0b0/TjfVeY0rICiSX52iv8msDPXv84xEWYwSAZZ7g5hV1h4njCNnjvR/XbX9/
	F1NttjB4OMhCmQNled98PUuV4q7Dwrmk/2JQ6byF5qoIDZNVV7wGAtfmoMYEhilFyomA78nfKGk6p
	H4tKsD+zOOXK9jF1P38HslitN2KHFu0VkinU2srisgn/V1xo7urbfCeJTr7ZPfmRe4nFb8w9mcJQ5
	qbuXb5fkVv18KfE3TIgQRGohG4SuoJafd+Yot0W4NMEE/4YsXbVdxGb0gdBWEWBMIqKi/Vd306g4i
	ZSHBvWBWLqbug461iHaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHrZg-0003Kg-E4; Fri, 27 Mar 2020 16:11:12 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHrZB-00038z-QM
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 16:10:44 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id ADDF4F4A2F785919988D;
 Sat, 28 Mar 2020 00:10:23 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.487.0; Sat, 28 Mar 2020 00:10:16 +0800
From: John Garry <john.garry@huawei.com>
To: <xuwei5@huawei.com>, <arnd@arndb.de>
Subject: [PATCH v2 1/3] io: Provide _inX() and _outX()
Date: Sat, 28 Mar 2020 00:06:12 +0800
Message-ID: <1585325174-195915-2-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1585325174-195915-1-git-send-email-john.garry@huawei.com>
References: <1585325174-195915-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_091042_024849_1A072DBE 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-arch@vger.kernel.org, John
 Garry <john.garry@huawei.com>, okaya@kernel.org, linux-kernel@vger.kernel.org,
 jiaxun.yang@flygoat.com, linuxarm@huawei.com, olof@lixom.net,
 bhelgaas@google.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit a7851aa54c0c ("io: change outX() to have their own IO barrier
overrides") and commit 87fe2d543f81 ("io: change inX() to have their own
IO barrier overrides"), the outX and inX functions have memory barriers
which can be overridden.

However, the generic logic_pio lib has continued to use readl/writel et al
for IO port accesses, which has weaker barriers on arm64.

Provide generic _inX() and _outX(), which can be used by logic pio.

For consistency, we check for !defined({in,out}X) && !defined(_{in,out}X),
for defining _{in,out}X, while a check for just !defined({in,out}X) should
suffice.

Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: John Garry <john.garry@huawei.com>
---
 include/asm-generic/io.h | 64 +++++++++++++++++++++++++++++++++---------------
 1 file changed, 44 insertions(+), 20 deletions(-)

diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
index d39ac997dda8..3a7871130112 100644
--- a/include/asm-generic/io.h
+++ b/include/asm-generic/io.h
@@ -448,17 +448,15 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
 #define IO_SPACE_LIMIT 0xffff
 #endif
 
-#include <linux/logic_pio.h>
-
 /*
  * {in,out}{b,w,l}() access little endian I/O. {in,out}{b,w,l}_p() can be
  * implemented on hardware that needs an additional delay for I/O accesses to
  * take effect.
  */
 
-#ifndef inb
-#define inb inb
-static inline u8 inb(unsigned long addr)
+#if !defined(inb) && !defined(_inb)
+#define _inb _inb
+static inline u16 _inb(unsigned long addr)
 {
 	u8 val;
 
@@ -469,9 +467,9 @@ static inline u8 inb(unsigned long addr)
 }
 #endif
 
-#ifndef inw
-#define inw inw
-static inline u16 inw(unsigned long addr)
+#if !defined(inw) && !defined(_inw)
+#define _inw _inw
+static inline u16 _inw(unsigned long addr)
 {
 	u16 val;
 
@@ -482,9 +480,9 @@ static inline u16 inw(unsigned long addr)
 }
 #endif
 
-#ifndef inl
-#define inl inl
-static inline u32 inl(unsigned long addr)
+#if !defined(inl) && !defined(_inl)
+#define _inl _inl
+static inline u16 _inl(unsigned long addr)
 {
 	u32 val;
 
@@ -495,9 +493,9 @@ static inline u32 inl(unsigned long addr)
 }
 #endif
 
-#ifndef outb
-#define outb outb
-static inline void outb(u8 value, unsigned long addr)
+#if !defined(outb) && !defined(_outb)
+#define _outb _outb
+static inline void _outb(u8 value, unsigned long addr)
 {
 	__io_pbw();
 	__raw_writeb(value, PCI_IOBASE + addr);
@@ -505,9 +503,9 @@ static inline void outb(u8 value, unsigned long addr)
 }
 #endif
 
-#ifndef outw
-#define outw outw
-static inline void outw(u16 value, unsigned long addr)
+#if !defined(outw) && !defined(_outw)
+#define _outw _outw
+static inline void _outw(u16 value, unsigned long addr)
 {
 	__io_pbw();
 	__raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
@@ -515,9 +513,9 @@ static inline void outw(u16 value, unsigned long addr)
 }
 #endif
 
-#ifndef outl
-#define outl outl
-static inline void outl(u32 value, unsigned long addr)
+#if !defined(outl) && !defined(_outl)
+#define _outl _outl
+static inline void _outl(u32 value, unsigned long addr)
 {
 	__io_pbw();
 	__raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
@@ -525,6 +523,32 @@ static inline void outl(u32 value, unsigned long addr)
 }
 #endif
 
+#include <linux/logic_pio.h>
+
+#ifndef inb
+#define inb _inb
+#endif
+
+#ifndef inw
+#define inw _inw
+#endif
+
+#ifndef inl
+#define inl _inl
+#endif
+
+#ifndef outb
+#define outb _outb
+#endif
+
+#ifndef outw
+#define outw _outw
+#endif
+
+#ifndef outl
+#define outl _outl
+#endif
+
 #ifndef inb_p
 #define inb_p inb_p
 static inline u8 inb_p(unsigned long addr)
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
