Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1622AA18D5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGrTGUD8J/78pr87Qfo+1yvMxNqw5lJ2xHsoIQ5HGO8=; b=ef7294osO72PZl
	LBGHu/+UBq8UMAeUKG45NHQxrEY1033yiRtXWm/y5sWkDGUPnGGDPKn8Hjjogz56q/bMzWdDtmwXR
	Xee57v47MXTh14+ANqDonqHVvDm5Q8yXJAEv/bDg4Xf0TG44SbnQ9nvIJ+ydKjZd1Wizhfay/vC1Y
	nXDSsLghstvuaEj3FqOFCYbmBKzsakn3LWVRqvXFrjiVGZWRt65naZ2rfAk00Foi8NlBX15qwXYRQ
	g63QrafbAw74GZCzpNQnEGOxHj3XvACufy6346tgx4WHmE+bgY3Ya9UCd8GqYKsyPShRGF4dnhxAu
	gDDKNSHHIZ6/DRRXzxLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IiZ-0006TQ-Uw; Thu, 29 Aug 2019 11:35:56 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Ihe-0004jB-KT
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:35:00 +0000
Received: by mail-pf1-x443.google.com with SMTP id b24so1887109pfp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 29 Aug 2019 04:34:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QZmd1kVLh8a0enxFfoIC/p5hW82ft4CjkM7ASI4iKD4=;
 b=gtKVgQDc9GJLsqxkdO8KHXtp476POxHclR4w6cx/eJloeqLLtmxIGGY7ToOzR9UfpY
 mtkJxWZmFxaWeQhYjV62uXXInNjF5dDf3djI1IZn1tEjn3YELqzx15He1/yBUkAa2J/g
 yVMauTVFsu9mNLCSBCkJ6jcqVA0VN6/sqzVXuvS61g0flUiw+pRqovwedo858JXI0stW
 K2gPSOtM1b4XhMfLMPiqGfe7kKMa2XLwpUKvz+ZtOKHEsTXbxzuhOcxMppZiT8t0HgNa
 JGxLu/qgJJgU0RhLcEK1vrGGYXoKvf5QIWb0p2jOHiYT8LLyW1KJdljpq4hkNtbUc5Xm
 BZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QZmd1kVLh8a0enxFfoIC/p5hW82ft4CjkM7ASI4iKD4=;
 b=Q3FsbMNMXhvD6t1LK7eTrzAYgBVqSBWHhlwtCWN/LhhHgg0ZVtrf3+uQx1OFhMfD0m
 QkpS1D9gp9FmCeWfkBvYEPENtutdE7O5WAozdBm2u9Xdvyhy94CP37SAy5+b06WoU7Qf
 qtXHK2mZ9dzms+10Tmmnc4U6dnJAV3wlgA4Tnb7MJIVaFor+JWtGkPUvwtFw2IUxSbXG
 XQk3zSI0BG3VRPmont3XthCTkwj0kb4HGC/K1wQt4Yqu+XuN+TLfPkaSeoYCKKZlszZP
 MMbrRAv5muH1DlwUP7+gwM1y62nQAkghsQXnWEi2N9B5wC1PDSyAyoPiaQC7/p2kSMoz
 vghA==
X-Gm-Message-State: APjAAAWWx9dxbdLfsZOBVBo0cXM5aDDq4P4wkenI1afESHJStgeVj0xW
 TKO+WSiQjK5qo8MW/MXPds/22Q==
X-Google-Smtp-Source: APXvYqwO22ljl8QyLHHOEWlyuVEGRkqUeNBwuzUvKpQv4Nedz3khH8mTN63Qx7dTcn8EznD5ND6ViA==
X-Received: by 2002:a62:1444:: with SMTP id 65mr10603079pfu.145.1567078497711; 
 Thu, 29 Aug 2019 04:34:57 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id d20sm2784549pfo.90.2019.08.29.04.34.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 29 Aug 2019 04:34:57 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org, Julien Thierry <Julien.Thierry@arm.com>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH ARM64 v4.4 V3 02/44] arm64: Implement array_index_mask_nospec()
Date: Thu, 29 Aug 2019 17:03:47 +0530
Message-Id: <a01785b993e2b39864ee0cab09695ae23a02b2f5.1567077734.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1567077734.git.viresh.kumar@linaro.org>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_043458_831325_98F3973E 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Marc Zyngier <marc.zyngier@arm.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Will Deacon <will.deacon@arm.com>, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Murphy <robin.murphy@arm.com>

commit 022620eed3d0bc4bf2027326f599f5ad71c2ea3f upstream.

Provide an optimised, assembly implementation of array_index_mask_nospec()
for arm64 so that the compiler is not in a position to transform the code
in ways which affect its ability to inhibit speculation (e.g. by introducing
conditional branches).

This is similar to the sequence used by x86, modulo architectural differences
in the carry/borrow flags.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/include/asm/barrier.h | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/include/asm/barrier.h b/arch/arm64/include/asm/barrier.h
index 574486634c62..7c25e3e11b6d 100644
--- a/arch/arm64/include/asm/barrier.h
+++ b/arch/arm64/include/asm/barrier.h
@@ -37,6 +37,27 @@
 #define dma_rmb()	dmb(oshld)
 #define dma_wmb()	dmb(oshst)
 
+/*
+ * Generate a mask for array_index__nospec() that is ~0UL when 0 <= idx < sz
+ * and 0 otherwise.
+ */
+#define array_index_mask_nospec array_index_mask_nospec
+static inline unsigned long array_index_mask_nospec(unsigned long idx,
+						    unsigned long sz)
+{
+	unsigned long mask;
+
+	asm volatile(
+	"	cmp	%1, %2\n"
+	"	sbc	%0, xzr, xzr\n"
+	: "=r" (mask)
+	: "r" (idx), "Ir" (sz)
+	: "cc");
+
+	csdb();
+	return mask;
+}
+
 #define smp_mb()	dmb(ish)
 #define smp_rmb()	dmb(ishld)
 #define smp_wmb()	dmb(ishst)
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
