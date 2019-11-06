Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304ADF0BFC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 03:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GlHwgdI19DHi6eh9z/lAedzVMy6a5T5GX6GyU34GfM0=; b=fwFIgcoUCWF2is
	a7pvP8T15+mwqNKs8EAfIoF6LAWCUcbXmSB19xuGhiA537Q0VPxc9xEOG2IP8oxl0mZwGETTEkM6o
	ipexbteXaOPDSXiQNLnPD2NKCrpFD5JyuNO9Lvyg5Vlh5GAPQbVQXdQRedKh06dis6dpnkoaELhNm
	xaXB/WD/vfVIkVAZUrXVfKrZK7aa87hKw6H4nTxD1wSVFUzVzxAseMCk+l24TBSAqCDKzdJBg3O0M
	KxPdzIkvTGdKHNVntxxkAbVsg3A5MQW2jofaCT9e27rsZF04/eSvVYnm+XqZBBkUeK62TZ0ohW7mr
	2FbBG6zcpaJMvTOv6RbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSAwA-0003o4-R2; Wed, 06 Nov 2019 02:20:46 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSAw3-0003nF-4n
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 02:20:42 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A0679B89568781DBB389;
 Wed,  6 Nov 2019 10:20:30 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Wed, 6 Nov 2019 10:20:24 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v4] arm64: lib: accelerate do_csum
Date: Wed, 6 Nov 2019 10:20:06 +0800
Message-ID: <1573006806-12037-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_182039_353146_43E90A46 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Lingyan Huang <huanglingyan2@huawei.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lingyan Huang <huanglingyan2@huawei.com>

Function do_csum() in lib/checksum.c is used to compute checksum,
which is turned out to be slowly and costs a lot of resources.
Let's accelerate the checksum computation for arm64.

While we test its performance on Huawei Kunpeng 920 SoC, as follow:
 1cycle  general(ns)  csum_128(ns) csum_64(ns)
  64B:        160            80             50
 256B:        120            70             60
1023B:        350           140            150
1024B:        350           130            140
1500B:        470           170            180
2048B:        630           210            240
4095B:       1220           390            430
4096B:       1230           390            430

Cc: Will Deacon <will@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Originally-from: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Lingyan Huang <huanglingyan2@huawei.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
Hi,                                                                
Apologies that we post this version so later, because we want to   
optimise it better, Lingyan tested it performance which is attached
in commit log. Both(128 and 64) are much better than the initial   
code.                                                              
ChangeLog:
    based on Robin's code and change strides from 64 to 128.

 arch/arm64/include/asm/checksum.h |  3 ++
 arch/arm64/lib/Makefile           |  2 +-
 arch/arm64/lib/csum.c             | 81 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 85 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/lib/csum.c

diff --git a/arch/arm64/include/asm/checksum.h b/arch/arm64/include/asm/checksum.h
index d064a50deb5f..8d2a7de39744 100644
--- a/arch/arm64/include/asm/checksum.h
+++ b/arch/arm64/include/asm/checksum.h
@@ -35,6 +35,9 @@ static inline __sum16 ip_fast_csum(const void *iph, unsigned int ihl)
 }
 #define ip_fast_csum ip_fast_csum
 
+extern unsigned int do_csum(const unsigned char *buff, int len);
+#define do_csum do_csum
+
 #include <asm-generic/checksum.h>
 
 #endif	/* __ASM_CHECKSUM_H */
diff --git a/arch/arm64/lib/Makefile b/arch/arm64/lib/Makefile
index c21b936dc01d..8a0644a831eb 100644
--- a/arch/arm64/lib/Makefile
+++ b/arch/arm64/lib/Makefile
@@ -3,7 +3,7 @@ lib-y		:= clear_user.o delay.o copy_from_user.o		\
 		   copy_to_user.o copy_in_user.o copy_page.o		\
 		   clear_page.o memchr.o memcpy.o memmove.o memset.o	\
 		   memcmp.o strcmp.o strncmp.o strlen.o strnlen.o	\
-		   strchr.o strrchr.o tishift.o
+		   strchr.o strrchr.o tishift.o csum.o
 
 ifeq ($(CONFIG_KERNEL_MODE_NEON), y)
 obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
new file mode 100644
index 000000000000..20170d8dcbc4
--- /dev/null
+++ b/arch/arm64/lib/csum.c
@@ -0,0 +1,81 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2019 Arm Ltd.
+
+#include <linux/compiler.h>
+#include <linux/kasan-checks.h>
+#include <linux/kernel.h>
+
+#include <net/checksum.h>
+
+
+/* handle overflow */
+static __uint128_t accumulate128(__uint128_t sum, __uint128_t data)
+{
+	sum  += (sum  >> 64) | (sum  << 64);
+	data += (data >> 64) | (data << 64);
+	return (sum + data) >> 64;
+}
+
+unsigned int do_csum(const unsigned char *buff, int len)
+{
+	unsigned int offset, shift, sum, count;
+	__uint128_t data, *ptr;
+	__uint128_t sum128 = 0;
+	u64 sum64 = 0;
+
+	offset = (unsigned long)buff & 0xf;
+	/*
+	 * This is to all intents and purposes safe, since rounding down cannot
+	 * result in a different page or cache line being accessed, and @buff
+	 * should absolutely not be pointing to anything read-sensitive. We do,
+	 * however, have to be careful not to piss off KASAN, which means using
+	 * unchecked reads to accommodate the head and tail, for which we'll
+	 * compensate with an explicit check up-front.
+	 */
+	kasan_check_read(buff, len);
+	ptr = (__uint128_t *)(buff - offset);
+	shift = offset * 8;
+
+	/*
+	 * Head: zero out any excess leading bytes. Shifting back by the same
+	 * amount should be at least as fast as any other way of handling the
+	 * odd/even alignment, and means we can ignore it until the very end.
+	 */
+	data = READ_ONCE_NOCHECK(*ptr++);
+#ifdef __LITTLE_ENDIAN
+	data = (data >> shift) << shift;
+#else
+	data = (data << shift) >> shift;
+#endif
+	count = 16 - offset;
+
+	/* Body: straightforward aligned loads from here on... */
+
+	while (len > count) {
+		sum128 = accumulate128(sum128, data);
+		data = READ_ONCE_NOCHECK(*ptr++);
+		count += 16;
+	}
+	/*
+	 * Tail: zero any over-read bytes similarly to the head, again
+	 * preserving odd/even alignment.
+	 */
+	shift = (count - len) * 8;
+#ifdef __LITTLE_ENDIAN
+	data = (data << shift) >> shift;
+#else
+	data = (data >> shift) << shift;
+#endif
+	sum128 = accumulate128(sum128, data);
+
+	/* Finally, folding */
+	sum128 += (sum128 >> 64) | (sum128 << 64);
+	sum64 = (sum128 >> 64);
+	sum64 += (sum64 >> 32) | (sum64 << 32);
+	sum = (sum64 >> 32);
+	sum += (sum >> 16) | (sum << 16);
+	if (offset & 1)
+		return (u16)swab32(sum);
+
+	return sum >> 16;
+}
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
