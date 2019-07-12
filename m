Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE7936663C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 07:30:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGrTGUD8J/78pr87Qfo+1yvMxNqw5lJ2xHsoIQ5HGO8=; b=byvcwwsqjAfWkQ
	Ioovn/b0noMPMbpa/LJWQAQsZWiPE+Ft9XYgaG0kKGRvu1DXIE1N9co5+OZ7FBnqohjddEBb2BwQI
	F3A5WVOiKAf1xm7YaGcddSpLtYo6Ym6iuVb3t/Zl1chvSQBJsJO5puAq7h4Xa8Tp2kw5xQYJXmrk0
	9P60Aruh8Z7Fnag3qQDduknZrya4lUIGAwT8mo680YWkh83jqUMjYhNEhsc8NnHGhgWPg1YZuC+5K
	RBfdwBn0WP8V23RvY/lZs2+f/1PVJ6B2FVx0e4wkrV87Mr/4/O9dkwjY3izjMEiqktWbMWC5dzDxn
	/mdGAajrLMXklc2NgbFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlo8D-0000jK-3z; Fri, 12 Jul 2019 05:30:05 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlo7E-0000GM-IB
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 05:29:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id b3so4206096plr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jul 2019 22:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QZmd1kVLh8a0enxFfoIC/p5hW82ft4CjkM7ASI4iKD4=;
 b=JprPlE3jWUXLSHH6IEYKpZVLFEmbjwTJ1SlcNpUv0d1GSCe8JK/f0tNUq3RBbyxDEh
 YaDWpMtRy3kUkllP6k3WuFY7bT6cKPm4KygCT/04Oos2vO+SVgCzlgkPuZ6Xu86jBZYL
 +joRbYQT8HwYfhxbbhQOeFxZKodJnr7G//LB9Lgd6sS6X7pnWILRwWrvwv7pwn92phHu
 2BN/4SfoVMRM1fdlzw8BG9jH+cYIHFnui69Xb6O7cq93/IiqXBB7NpgD6CYe2XA87Kb0
 /vcznTUHRGLdUeHKNW20eSp7yGm7eew+5xU0ZVYuqZO7qU5Kqb4wNcP5DHcXhFQGpWi5
 YpzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QZmd1kVLh8a0enxFfoIC/p5hW82ft4CjkM7ASI4iKD4=;
 b=RfutpU6Tk0ENbNZ8h1Wdu8h0tCpBPIA4q3KInh3Jens4DhXeZpKxJQQr5EnGSfnHhY
 LS3TckBdzN0ZOqwLA+Z5gmJNjMIGJZFizPrNm38Xe3xruXzj7Ov3gGtRMkM0P49f0HEv
 v1Xdosb0E4MZLm0Rp3ur2E60yunV8hDZp0MkmlWJYGWERd/02JRWmOgWL7AokHqsk4av
 k+sVtvmx/xhP4FSlVfeWOPexqkCY4TNEcqldTju4ZrZ2/NZ6IXFmn5q/PCROx2TzWG7m
 10UVSYtIHUAuY+MV5B8LrR+nLHGzE9m5MmSCGVz1xwBDlIoclcDd43Z7TxWbRhxdxBQs
 TTFw==
X-Gm-Message-State: APjAAAVNhWyJr7W7HGDU6W+jGZysSOWGN9w81vR+qI+az11xIaqci8kQ
 VCC7ChJoqJI6y5PGG+exge8JNA==
X-Google-Smtp-Source: APXvYqwHFaJB9Zpe8zTLxMInqnlwGqfIubCK1hUjti0PbcCUDUDRHDy2zd/5RP37X/vJwDpSxuvK+Q==
X-Received: by 2002:a17:902:7043:: with SMTP id
 h3mr9559497plt.10.1562909344101; 
 Thu, 11 Jul 2019 22:29:04 -0700 (PDT)
Received: from localhost ([122.172.28.117])
 by smtp.gmail.com with ESMTPSA id b37sm14696355pjc.15.2019.07.11.22.29.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 22:29:03 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: stable@vger.kernel.org,
	Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 V2 02/43] arm64: Implement array_index_mask_nospec()
Date: Fri, 12 Jul 2019 10:57:50 +0530
Message-Id: <271b3de6a35cd1d184f8c0a21afc0d801bc0b250.1562908074.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1562908074.git.viresh.kumar@linaro.org>
References: <cover.1562908074.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_222904_645125_D4C4F180 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Will Deacon <will.deacon@arm.com>,
 mark.brown@arm.com, Catalin Marinas <catalin.marinas@arm.com>,
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
