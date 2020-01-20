Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B65441431D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 19:52:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kl/v7DplB06Da4Lv+I2t130cU4GOqb3ZpeYHKcs0nE0=; b=gE4QbeX46GMT5b
	PPBrEgdfWZ6CG3/jCtBahYGmlxYahozg6vVbvOgcabE/sNlPK2HbsYZFTHJxkNAnVTwkWuJlQu4jN
	afHo6aDwc1b8DvB3OGh8Ko0sRmolY1ZpODWcsVHnOuJyMDE/pCUUWZewSX9Z/A8uwkAKJS1+z0brt
	yppjwQaPm5hPdAwt9eLzGkYjK7WG1fHwTddSTLSQfNxAngkfohnaaicqU1GJx5aYdbw20LMY27fUv
	eNqBveC8hH7g/0D25Z5m8+80sLWupiEQUFYTqJ1UUlao4Y6YIAARzeA4T/CeF1SCdWcYuD9KZY9hA
	0SlMvdv3NGE5A9EpLw8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcAM-00052n-Fh; Mon, 20 Jan 2020 18:52:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcA8-00052B-Bw
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 18:52:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 10A21FEC;
 Mon, 20 Jan 2020 10:52:34 -0800 (PST)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 760A43F68E;
 Mon, 20 Jan 2020 10:52:33 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH] arm64: csum: Optimise IPv6 header checksum
Date: Mon, 20 Jan 2020 18:52:29 +0000
Message-Id: <3a723a4b08938154c37febe2504f029c4480e53c.1579546194.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.23.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_105236_451642_98B32168 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Throwing our __uint128_t idioms at csum_ipv6_magic() makes it
about 1.3x-2x faster across a range of microarchitecture/compiler
combinations. Not much in absolute terms, but every little helps.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

Before I move on, this seemed like it might be worth touching as well,
comparing what other architectures do.

 arch/arm64/include/asm/checksum.h |  7 ++++++-
 arch/arm64/lib/csum.c             | 27 +++++++++++++++++++++++++++
 2 files changed, 33 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/checksum.h b/arch/arm64/include/asm/checksum.h
index 8d2a7de39744..b6f7bc6da5fb 100644
--- a/arch/arm64/include/asm/checksum.h
+++ b/arch/arm64/include/asm/checksum.h
@@ -5,7 +5,12 @@
 #ifndef __ASM_CHECKSUM_H
 #define __ASM_CHECKSUM_H
 
-#include <linux/types.h>
+#include <linux/in6.h>
+
+#define _HAVE_ARCH_IPV6_CSUM
+__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
+			const struct in6_addr *daddr,
+			__u32 len, __u8 proto, __wsum sum);
 
 static inline __sum16 csum_fold(__wsum csum)
 {
diff --git a/arch/arm64/lib/csum.c b/arch/arm64/lib/csum.c
index 847eb725ce09..4a522e45f23b 100644
--- a/arch/arm64/lib/csum.c
+++ b/arch/arm64/lib/csum.c
@@ -121,3 +121,30 @@ unsigned int do_csum(const unsigned char *buff, int len)
 
 	return sum >> 16;
 }
+
+__sum16 csum_ipv6_magic(const struct in6_addr *saddr,
+			const struct in6_addr *daddr,
+			__u32 len, __u8 proto, __wsum csum)
+{
+	__uint128_t src, dst;
+	u64 sum = (__force u64)csum;
+
+	src = *(const __uint128_t *)saddr->s6_addr;
+	dst = *(const __uint128_t *)daddr->s6_addr;
+
+	sum += (__force u32)htonl(len);
+#ifdef __LITTLE_ENDIAN
+	sum += (u32)proto << 24;
+#else
+	sum += proto;
+#endif
+	src += (src >> 64) | (src << 64);
+	dst += (dst >> 64) | (dst << 64);
+
+	sum = accumulate(sum, src >> 64);
+	sum = accumulate(sum, dst >> 64);
+
+	sum += ((sum >> 32) | (sum << 32));
+	return csum_fold((__force __wsum)(sum >> 32));
+}
+EXPORT_SYMBOL(csum_ipv6_magic);
-- 
2.23.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
