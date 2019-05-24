Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F2F2984D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 14:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLrAKwPWHOfLJaYaRzsxpCQ8PJyeAwun9kmGn61UtLc=; b=jZisp688rYGmEf
	imObmRw5wpKhiJUtNHB4zz4QLWk0IKfE+CTV/ub1B//Ii0a6UVptPxrItvWoWu9Tr6nnrNRLW5qsD
	vn1apWrjKjL9uqt6Mk3C4rPCnJQl3YQV0T3fZ3Xg/+rG/CRgj9Ja5t2EV4q8S3MbtiiEDCfoWhDui
	F24LqNdeH00KBrqdLUE93G/LVGKb2FIeOf3q+reayDXnB8gfQXa6WRtxodYaiCd2tgvFBeemKmL29
	gzdR/Sv6BzZCfwNQ0fWP5ybJZvXM8EUW9Wtui1GzVq15atVd4eZystU2H4Osnd8xHfJubqGFlI1G+
	tbGnTU+NZE7y49h0o6Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU9hp-0001tD-9u; Fri, 24 May 2019 12:53:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9hZ-0001jM-ST
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 12:53:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 13DEF15A2;
 Fri, 24 May 2019 05:53:37 -0700 (PDT)
Received: from ostrya.cambridge.arm.com (ostrya.cambridge.arm.com
 [10.1.196.129])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id AEF5A3F703;
 Fri, 24 May 2019 05:53:35 -0700 (PDT)
From: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
To: will.deacon@arm.com,
	catalin.marinas@arm.com
Subject: [PATCH 2/2] arm64: insn: Add BUILD_BUG_ON() for invalid masks
Date: Fri, 24 May 2019 13:52:20 +0100
Message-Id: <20190524125220.25463-2-jean-philippe.brucker@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190524125220.25463-1-jean-philippe.brucker@arm.com>
References: <20190524125220.25463-1-jean-philippe.brucker@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_055338_131656_AB9EADF8 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: bpf@vger.kernel.org, yoshihiro.shimoda.uh@renesas.com,
 linux-arm-kernel@lists.infradead.org, daniel@iogearbox.net,
 kuninori.morimoto.gx@renesas.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Detect invalid instruction masks at build time. Some versions of GCC can
warn about the situation, but not all of them, it seems.

Suggested-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Jean-Philippe Brucker <jean-philippe.brucker@arm.com>
---
I couldn't manage to trigger the reported tautological-compare warning
with GCC 8.3.0, even when explicitly calling aarch64_insn_is_ldadd()
(since it's __always_inline) and even though the warning triggers when
inlining the test manually. So adding this check could be useful.
---
 arch/arm64/include/asm/insn.h | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/insn.h b/arch/arm64/include/asm/insn.h
index f71b84d9f294..87fdfba13a30 100644
--- a/arch/arm64/include/asm/insn.h
+++ b/arch/arm64/include/asm/insn.h
@@ -18,6 +18,7 @@
  */
 #ifndef	__ASM_INSN_H
 #define	__ASM_INSN_H
+#include <linux/build_bug.h>
 #include <linux/types.h>
 
 /* A64 instructions are always 32 bits. */
@@ -266,11 +267,16 @@ enum aarch64_insn_adr_type {
 	AARCH64_INSN_ADR_TYPE_ADR,
 };
 
-#define	__AARCH64_INSN_FUNCS(abbr, mask, val)	\
-static __always_inline bool aarch64_insn_is_##abbr(u32 code) \
-{ return (code & (mask)) == (val); } \
-static __always_inline u32 aarch64_insn_get_##abbr##_value(void) \
-{ return (val); }
+#define	__AARCH64_INSN_FUNCS(abbr, mask, val)				\
+static __always_inline bool aarch64_insn_is_##abbr(u32 code)		\
+{									\
+	BUILD_BUG_ON(~(mask) & (val));					\
+	return (code & (mask)) == (val);				\
+}									\
+static __always_inline u32 aarch64_insn_get_##abbr##_value(void)	\
+{									\
+	return (val);							\
+}
 
 __AARCH64_INSN_FUNCS(adr,	0x9F000000, 0x10000000)
 __AARCH64_INSN_FUNCS(adrp,	0x9F000000, 0x90000000)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
