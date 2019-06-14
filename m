Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D1E452B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 05:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=de9mkFgYfEEkhAxhPtJxsfpsna8LGL/1J2WLXJvzLms=; b=kEwYKPyMF4NHzP
	scmm4aIu4QAxoWaTw+QsBhgszCSRVl/AYk1lcc8y8H0l2nSCPb5RjzUvJ+ulyjB+egYEhPEi1p+rF
	JfVRI0pqNw2b/IM65hk3QbGaaSuYepuOnE/ge2xEWKgcLpB009zmGInQH3SsJ2iUoY32DFZH1L1Dx
	ibhLRBA5ypqjet2mTjnRk9MrnfskCM+T45NkpLmZbhcg+vPl3vcIOExdcBD4pQzhrE2FCpJ8/Fqrm
	Ldjl03gaFzG5VPbO/6t9xpKy1OMDoto9P8x9nfp1offyl6ZUW8x3TRwd2jnp7jpgJ5p6RbPY5I4Kh
	QqL1gaF9eOJCcNkqBE9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbcmF-0001bG-W2; Fri, 14 Jun 2019 03:21:20 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbceE-0000iB-2y
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 03:13:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id t16so481111pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 20:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PiIAa6Q4cfsybCsVqpR97J+SEY4HmIlUIBQq6F4zyFg=;
 b=txKgJlWMiGHcJGw4VtHy1MXtbdLzlj5qSPE6zgDUbNjqiezwxhLUSyFJQBD0qDIavp
 il6QwxqKtZBTOapQ+t8jId90cX3QYH9CMIhyZ12r/0zXVstGgb0v1o5ka8WBCP2F1IXX
 cbnQ61clKLXVh6/yaTS5eZRSydpb05F1jP0y4HGGhx3qH7rdhohpVNoEZMNqRJpxxB1i
 XRCKWSRDqq1LUkv7Wqg+TQNa/x0STL9SEHqUQnqZpPVON3V44ncjPJ9FH8OO0z446OCw
 SyjqExAqoPUBplTNnOFJDKhLK9kifjlBJDLeVAzcB+2Ifte8pApTfWm7rRkNuNed/S03
 4gpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PiIAa6Q4cfsybCsVqpR97J+SEY4HmIlUIBQq6F4zyFg=;
 b=RXQmB1ct5/1Yfg4Yy8aErIvFindxAA4XH8cl7bRbMWrNOlvxMHoWlYWzrCLEzu6Yi0
 NEBE5kJrrN7J0tAgYQcNn6QBuY0Wf5PsMFEKA+waqtWNfKC9w/7nvQKW5ywbOVLHS+Xl
 ymCPDhu+Se/uyfmZduypEjrMEmC6K5Bch0Kji7iDK59n9LlXMeunKqZHxy06aFr5BCBZ
 uWXksIddq8sk3PqT02F9PZYadRTAGvUQNZ5RZb2EiCpHatkNDtRhuC8dda51knj5PKNA
 prosjSs+uXXYNE92ZzLwj1OqTfVhcjTpImI3hvzUGV2hKCTzEUt7mAzyxF/c6udVqztC
 cUhQ==
X-Gm-Message-State: APjAAAUCHdLoMT6yOH/ct46qnidxgX3OkJkzv12TW30WNuf4Gvv+RfUn
 ufr0ZThq3t9DUffM3ZOM6Moctc93B/M=
X-Google-Smtp-Source: APXvYqw9wZ6D+N+hkuZvdTJLHEcZWbkJs2NOAiExTU2wqynPKyy1FERok1FIZGrWbwIW/iGlsSqEwg==
X-Received: by 2002:a17:90a:cb87:: with SMTP id
 a7mr9021902pju.130.1560481980685; 
 Thu, 13 Jun 2019 20:13:00 -0700 (PDT)
Received: from localhost ([122.172.66.84])
 by smtp.gmail.com with ESMTPSA id 133sm1056831pfa.92.2019.06.13.20.12.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 20:13:00 -0700 (PDT)
From: Viresh Kumar <viresh.kumar@linaro.org>
To: linux-arm-kernel@lists.infradead.org,
 Julien Thierry <Julien.Thierry@arm.com>
Subject: [PATCH v4.4 25/45] arm64: Implement branch predictor hardening for
 affected Cortex-A CPUs
Date: Fri, 14 Jun 2019 08:38:08 +0530
Message-Id: <5c2d88d87e6639249d2cd58e359ce40613ee9aee.1560480942.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.21.0.rc0.269.g1a574e7a288b
In-Reply-To: <cover.1560480942.git.viresh.kumar@linaro.org>
References: <cover.1560480942.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_201302_218407_8EC507E1 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 stable@vger.kernel.org, mark.brown@arm.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <rmk+kernel@arm.linux.org.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Will Deacon <will.deacon@arm.com>

commit aa6acde65e03186b5add8151e1ffe36c3c62639b upstream.

Cortex-A57, A72, A73 and A75 are susceptible to branch predictor aliasing
and can theoretically be attacked by malicious code.

This patch implements a PSCI-based mitigation for these CPUs when available.
The call into firmware will invalidate the branch predictor state, preventing
any malicious entries from affecting other victim contexts.

Co-developed-by: Marc Zyngier <marc.zyngier@arm.com>
Signed-off-by: Will Deacon <will.deacon@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 arch/arm64/kernel/bpi.S        | 24 +++++++++++++++++++
 arch/arm64/kernel/cpu_errata.c | 42 ++++++++++++++++++++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/arch/arm64/kernel/bpi.S b/arch/arm64/kernel/bpi.S
index 06a931eb2673..dec95bd82e31 100644
--- a/arch/arm64/kernel/bpi.S
+++ b/arch/arm64/kernel/bpi.S
@@ -53,3 +53,27 @@ ENTRY(__bp_harden_hyp_vecs_start)
 	vectors __kvm_hyp_vector
 	.endr
 ENTRY(__bp_harden_hyp_vecs_end)
+ENTRY(__psci_hyp_bp_inval_start)
+	sub	sp, sp, #(8 * 18)
+	stp	x16, x17, [sp, #(16 * 0)]
+	stp	x14, x15, [sp, #(16 * 1)]
+	stp	x12, x13, [sp, #(16 * 2)]
+	stp	x10, x11, [sp, #(16 * 3)]
+	stp	x8, x9, [sp, #(16 * 4)]
+	stp	x6, x7, [sp, #(16 * 5)]
+	stp	x4, x5, [sp, #(16 * 6)]
+	stp	x2, x3, [sp, #(16 * 7)]
+	stp	x0, x1, [sp, #(16 * 8)]
+	mov	x0, #0x84000000
+	smc	#0
+	ldp	x16, x17, [sp, #(16 * 0)]
+	ldp	x14, x15, [sp, #(16 * 1)]
+	ldp	x12, x13, [sp, #(16 * 2)]
+	ldp	x10, x11, [sp, #(16 * 3)]
+	ldp	x8, x9, [sp, #(16 * 4)]
+	ldp	x6, x7, [sp, #(16 * 5)]
+	ldp	x4, x5, [sp, #(16 * 6)]
+	ldp	x2, x3, [sp, #(16 * 7)]
+	ldp	x0, x1, [sp, #(16 * 8)]
+	add	sp, sp, #(8 * 18)
+ENTRY(__psci_hyp_bp_inval_end)
diff --git a/arch/arm64/kernel/cpu_errata.c b/arch/arm64/kernel/cpu_errata.c
index c05135cd53fe..aa9cd47b5c6f 100644
--- a/arch/arm64/kernel/cpu_errata.c
+++ b/arch/arm64/kernel/cpu_errata.c
@@ -50,6 +50,8 @@ is_affected_midr_range(const struct arm64_cpu_capabilities *entry, int scope)
 DEFINE_PER_CPU_READ_MOSTLY(struct bp_hardening_data, bp_hardening_data);
 
 #ifdef CONFIG_KVM
+extern char __psci_hyp_bp_inval_start[], __psci_hyp_bp_inval_end[];
+
 static void __copy_hyp_vect_bpi(int slot, const char *hyp_vecs_start,
 				const char *hyp_vecs_end)
 {
@@ -91,6 +93,9 @@ static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
 	spin_unlock(&bp_lock);
 }
 #else
+#define __psci_hyp_bp_inval_start	NULL
+#define __psci_hyp_bp_inval_end		NULL
+
 static void __install_bp_hardening_cb(bp_hardening_cb_t fn,
 				      const char *hyp_vecs_start,
 				      const char *hyp_vecs_end)
@@ -115,6 +120,21 @@ static void  install_bp_hardening_cb(const struct arm64_cpu_capabilities *entry,
 
 	__install_bp_hardening_cb(fn, hyp_vecs_start, hyp_vecs_end);
 }
+
+#include <linux/psci.h>
+
+static int enable_psci_bp_hardening(void *data)
+{
+	const struct arm64_cpu_capabilities *entry = data;
+
+	if (psci_ops.get_version)
+		install_bp_hardening_cb(entry,
+				       (bp_hardening_cb_t)psci_ops.get_version,
+				       __psci_hyp_bp_inval_start,
+				       __psci_hyp_bp_inval_end);
+
+	return 0;
+}
 #endif	/* CONFIG_HARDEN_BRANCH_PREDICTOR */
 
 #define MIDR_RANGE(model, min, max) \
@@ -192,6 +212,28 @@ const struct arm64_cpu_capabilities arm64_errata[] = {
 		MIDR_RANGE(MIDR_THUNDERX, 0x00,
 			   (1 << MIDR_VARIANT_SHIFT) | 1),
 	},
+#endif
+#ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_A57),
+		.enable = enable_psci_bp_hardening,
+	},
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_A72),
+		.enable = enable_psci_bp_hardening,
+	},
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_A73),
+		.enable = enable_psci_bp_hardening,
+	},
+	{
+		.capability = ARM64_HARDEN_BRANCH_PREDICTOR,
+		MIDR_ALL_VERSIONS(MIDR_CORTEX_A75),
+		.enable = enable_psci_bp_hardening,
+	},
 #endif
 	{
 	}
-- 
2.21.0.rc0.269.g1a574e7a288b


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
