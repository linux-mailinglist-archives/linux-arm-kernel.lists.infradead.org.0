Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5E913C9D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:43:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4THmoH8NgQi9CF5Ie7sS8xtXPx5DnLtUfwg/c3A5rJo=; b=J0Iy4kDbAQMzWd
	pIFC9XibKahgq+D0VDgi7CVYivxH32UXhWlvzyY76QbjTfIBWtUy28xFGNLXnVKkD2LqpH165WGj3
	uiT8UI704UlqYKr7B+2Ws2A9tCWDJqCRkjO+ahaK0+XKCLBUAb9ZxQlr0OEO8wyp2Brq5SbiSJGVl
	+trrJORnxeo+7RTUJtwe9IhFXm2KJ0N1MKXWOpc3JqeqJ+3eFh4A/Rw0/kwI0tOenAPN8zxQk8RC6
	SRnw9XaBtJZ2ssxq1dRnGMCVJeINZvAFf8z6PdF7L8Ubrkmmm+Jraa5qhhQpxBU9JXk/qXlBoyySM
	SsJiztuIHsChNy4SOtpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlky-00038A-VM; Wed, 15 Jan 2020 16:43:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlkk-00034b-IH
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 16:42:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F316C328;
 Wed, 15 Jan 2020 08:42:43 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id F11163F718;
 Wed, 15 Jan 2020 08:42:42 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH v5] arm64: Implement optimised checksum routine
Date: Wed, 15 Jan 2020 16:42:39 +0000
Message-Id: <44e00660247f8f39354ba8918071d6cff0d90612.1579106209.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_084246_703253_D3D5C61E 
X-CRM114-Status: GOOD (  20.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: zhangshaokun@hisilicon.com, huanglingyan2@huawei.com, zhaoyuke@huawei.com,
 linux-arm-kernel@lists.infradead.org, ard.biesheuvel@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Apparently there exist certain workloads which rely heavily on software
checksumming, for which the generic do_csum() implementation becomes a
significant bottleneck. Therefore let's give arm64 its own optimised
version - for ease of maintenance this foregoes assembly or intrisics,
and is thus not actually arm64-specific, but does rely heavily on C
idioms that translate well to the A64 ISA and the typical load/store
capabilities of most ARMv8 CPU cores.

The resulting increase in checksum throughput scales nicely with buffer
size, tending towards 4x for a small in-order core (Cortex-A53), and up
to 6x or more for an aggressive big core (Ampere eMAG).

Signed-off-by: Robin Murphy <robin.murphy@arm.com>

---

I rigged up a simple userspace test to run the generic and new code for
various buffer lengths at aligned and unaligned offsets; data is average
runtime in nanoseconds.

Ampere eMAG:

GCC 8.3.0
size		generic	new	speedup
     4@0:	8	8	100%
     4@3:	6	8	75%
     8@0:	9	8	112%
     8@3:	9	9	100%
    16@0:	12	9	133%
    16@3:	12	9	133%
    32@0:	18	10	180%
    32@3:	18	10	180%
    64@0:	31	13	238%
    64@3:	30	14	214%
   128@0:	55	20	275%
   128@3:	55	21	261%
   256@0:	105	28	375%
   256@3:	104	28	371%
   512@0:	203	44	461%
   512@3:	203	44	461%
  1024@0:	402	75	536%
  1024@3:	402	75	536%
  2048@0:	799	136	587%
  2048@3:	795	136	584%
  4096@0:	1588	259	613%
  4096@3:	1586	260	610%
  8192@0:	3178	508	625%
  8192@3:	3168	507	624%

Clang 8.0.0
size		generic	new	speedup
     4@0:	8	8	100%
     4@3:	5	8	62%
     8@0:	9	8	112%
     8@3:	9	8	112%
    16@0:	11	8	137%
    16@3:	12	12	100%
    32@0:	17	11	154%
    32@3:	17	13	130%
    64@0:	26	16	162%
    64@3:	26	18	144%
   128@0:	46	23	200%
   128@3:	46	25	184%
   256@0:	86	34	252%
   256@3:	86	36	238%
   512@0:	164	56	292%
   512@3:	165	58	284%
  1024@0:	322	101	318%
  1024@3:	322	102	315%
  2048@0:	638	190	335%
  2048@3:	638	191	334%
  4096@0:	1274	367	347%
  4096@3:	1274	369	345%
  8192@0:	2536	723	350%
  8192@3:	2539	724	350%

Arm Cortex-A53:

GCC 8.3.0
size		generic	new	speedup
     4@0:	40	38	105%
     4@3:	29	38	76%
     8@0:	47	38	123%
     8@3:	40	38	105%
    16@0:	55	38	144%
    16@3:	50	41	121%
    32@0:	76	43	176%
    32@3:	72	48	150%
    64@0:	134	58	231%
    64@3:	127	64	198%
   128@0:	219	87	251%
   128@3:	211	92	229%
   256@0:	388	129	300%
   256@3:	380	134	283%
   512@0:	725	214	338%
   512@3:	718	218	329%
  1024@0:	1400	392	357%
  1024@3:	1393	398	350%
  2048@0:	2751	730	376%
  2048@3:	2743	736	372%
  4096@0:	5451	1405	387%
  4096@3:	5444	1411	385%
  8192@0:	10854	2755	393%
  8192@3:	10846	2762	392%

Clang 8.0.0
size		generic	new	speedup
     4@0:	49	32	153%
     4@3:	31	32	96%
     8@0:	54	32	168%
     8@3:	48	36	133%
    16@0:	63	36	175%
    16@3:	56	47	119%
    32@0:	78	50	156%
    32@3:	73	56	130%
    64@0:	125	67	186%
    64@3:	116	72	161%
   128@0:	192	94	204%
   128@3:	183	99	184%
   256@0:	327	136	240%
   256@3:	319	141	226%
   512@0:	597	227	262%
   512@3:	589	226	260%
  1024@0:	1138	397	286%
  1024@3:	1129	404	279%
  2048@0:	2218	735	301%
  2048@3:	2209	741	298%
  4096@3:	4369	1417	308%
  8192@0:	8699	2761	315%
  8192@3:	8691	2767	314%
---
 arch/arm64/include/asm/checksum.h |   3 +
 arch/arm64/lib/Makefile           |   6 +-
 arch/arm64/lib/csum.c             | 123 ++++++++++++++++++++++++++++++
 3 files changed, 129 insertions(+), 3 deletions(-)
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
index c21b936dc01d..2fc253466dbf 100644
--- a/arch/arm64/lib/Makefile
+++ b/arch/arm64/lib/Makefile
@@ -1,9 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 lib-y		:= clear_user.o delay.o copy_from_user.o		\
 		   copy_to_user.o copy_in_user.o copy_page.o		\
-		   clear_page.o memchr.o memcpy.o memmove.o memset.o	\
-		   memcmp.o strcmp.o strncmp.o strlen.o strnlen.o	\
-		   strchr.o strrchr.o tishift.o
+		   clear_page.o csum.o memchr.o memcpy.o memmove.o	\
+		   memset.o memcmp.o strcmp.o strncmp.o strlen.o	\
+		   strnlen.o strchr.o strrchr.o tishift.o
 
 ifeq ($(CONFIG_KERNEL_MODE_NEON), y)
 obj-$(CONFIG_XOR_BLOCKS)	+= xor-neon.o
diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
new file mode 100644
index 000000000000..99cc11999756
--- /dev/null
+++ b/arch/arm64/lib/csum.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright (C) 2019-2020 Arm Ltd.
+
+#include <linux/compiler.h>
+#include <linux/kasan-checks.h>
+#include <linux/kernel.h>
+
+#include <net/checksum.h>
+
+/* Looks dumb, but generates nice-ish code */
+static u64 accumulate(u64 sum, u64 data)
+{
+	__uint128_t tmp = (__uint128_t)sum + data;
+	return tmp + (tmp >> 64);
+}
+
+unsigned int do_csum(const unsigned char *buff, int len)
+{
+	unsigned int offset, shift, sum;
+	const u64 *ptr;
+	u64 data, sum64 = 0;
+
+	offset = (unsigned long)buff & 7;
+	/*
+	 * This is to all intents and purposes safe, since rounding down cannot
+	 * result in a different page or cache line being accessed, and @buff
+	 * should absolutely not be pointing to anything read-sensitive. We do,
+	 * however, have to be careful not to piss off KASAN, which means using
+	 * unchecked reads to accommodate the head and tail, for which we'll
+	 * compensate with an explicit check up-front.
+	 */
+	kasan_check_read(buff, len);
+	ptr = (u64 *)(buff - offset);
+	len = len + offset - 8;
+
+	/*
+	 * Head: zero out any excess leading bytes. Shifting back by the same
+	 * amount should be at least as fast as any other way of handling the
+	 * odd/even alignment, and means we can ignore it until the very end.
+	 */
+	shift = offset * 8;
+	data = READ_ONCE_NOCHECK(*ptr++);
+#ifdef __LITTLE_ENDIAN
+	data = (data >> shift) << shift;
+#else
+	data = (data << shift) >> shift;
+#endif
+
+	/*
+	 * Body: straightforward aligned loads from here on (the paired loads
+	 * underlying the quadword type still only need dword alignment). The
+	 * main loop strictly excludes the tail, so the second loop will always
+	 * run at least once.
+	 */
+	while (len > 64) {
+		__uint128_t tmp1, tmp2, tmp3, tmp4;
+
+		tmp1 = READ_ONCE_NOCHECK(*(__uint128_t *)ptr);
+		tmp2 = READ_ONCE_NOCHECK(*(__uint128_t *)(ptr + 2));
+		tmp3 = READ_ONCE_NOCHECK(*(__uint128_t *)(ptr + 4));
+		tmp4 = READ_ONCE_NOCHECK(*(__uint128_t *)(ptr + 6));
+
+		len -= 64;
+		ptr += 8;
+
+		/* This is the "don't dump the carry flag into a GPR" idiom */
+		tmp1 += (tmp1 >> 64) | (tmp1 << 64);
+		tmp2 += (tmp2 >> 64) | (tmp2 << 64);
+		tmp3 += (tmp3 >> 64) | (tmp3 << 64);
+		tmp4 += (tmp4 >> 64) | (tmp4 << 64);
+		tmp1 = ((tmp1 >> 64) << 64) | (tmp2 >> 64);
+		tmp1 += (tmp1 >> 64) | (tmp1 << 64);
+		tmp3 = ((tmp3 >> 64) << 64) | (tmp4 >> 64);
+		tmp3 += (tmp3 >> 64) | (tmp3 << 64);
+		tmp1 = ((tmp1 >> 64) << 64) | (tmp3 >> 64);
+		tmp1 += (tmp1 >> 64) | (tmp1 << 64);
+		tmp1 = ((tmp1 >> 64) << 64) | sum64;
+		tmp1 += (tmp1 >> 64) | (tmp1 << 64);
+		sum64 = tmp1 >> 64;
+	}
+	while (len > 8) {
+		__uint128_t tmp;
+
+		sum64 = accumulate(sum64, data);
+		tmp = READ_ONCE_NOCHECK(*(__uint128_t *)ptr);
+
+		len -= 16;
+		ptr += 2;
+
+#ifdef __LITTLE_ENDIAN
+		data = tmp >> 64;
+		sum64 = accumulate(sum64, tmp);
+#else
+		data = tmp;
+		sum64 = accumulate(sum64, tmp >> 64);
+#endif
+	}
+	if (len > 0) {
+		sum64 = accumulate(sum64, data);
+		data = READ_ONCE_NOCHECK(*ptr);
+		len -= 8;
+	}
+	/*
+	 * Tail: zero any over-read bytes similarly to the head, again
+	 * preserving odd/even alignment.
+	 */
+	shift = len * -8;
+#ifdef __LITTLE_ENDIAN
+	data = (data << shift) >> shift;
+#else
+	data = (data >> shift) << shift;
+#endif
+	sum64 = accumulate(sum64, data);
+
+	/* Finally, folding */
+	sum64 += (sum64 >> 32) | (sum64 << 32);
+	sum = sum64 >> 32;
+	sum += (sum >> 16) | (sum << 16);
+	if (offset & 1)
+		return (u16)swab32(sum);
+
+	return sum >> 16;
+}
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
