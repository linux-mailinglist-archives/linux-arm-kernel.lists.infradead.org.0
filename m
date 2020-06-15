Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D6D41F9886
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjH/mlZAya8DYMcsLhsAvcb/K6YrkGv2m57Or//fd1M=; b=KYfUMoJXy8jhPO
	LCEcxsflevIjHqBgoZ1G8RsW4BdE8S/ZXZsWWPJDlkHFYaiAU/otQrc/udWi2/UBsAtm38F/iyR+f
	m9bXcJ7CcdMg2dIwEu3lgznHN923RmIOVT9AZCMs/0oVC1hhRSCPLSLNYsCq3N/YKCnFcPhanv8IE
	eQFCjNpcQEjEcmfBUUT8omz2sOE8DwAmp1et20WNag17tG32xnQAuAxN9G3lzM1aV6hGSb4bBqUtt
	LWSMNh4JfWvyfZcc2xml3eMhWn8gyqoHLg2i01mGYWlanOWIIuk3xjUAlKk4be0B2w2AIEL6DdGwk
	sXzwiLcUXv7RGegT2X1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpAO-0002Yt-TD; Mon, 15 Jun 2020 13:28:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkp9J-0001mF-0p
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:27:43 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8CB8C207DA;
 Mon, 15 Jun 2020 13:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592227660;
 bh=KiwUQT9DqNGgzQev4bi3zf2yZCEMD/qEftIYgUxUgtk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=naTHiI+C89GafUlY4vag/hTbnLHeBe5OOspNwKT+HBEyiPW+Q1V3kGXQf1XE5PA7k
 JCgjcO/NKcpVrZzcMUg6QnzdeufD+Vo741HkPYY+thkkrT1vjfVtcFkJcIaq/biET7
 5HBYvNz0ecrg+OzF1mDQAQEmPavnAtFDPCN7PEr8=
Received: from 78.163-31-62.static.virginmediabusiness.co.uk ([62.31.163.78]
 helo=why.lan) by disco-boy.misterjones.org with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jkp9H-0036w9-3n; Mon, 15 Jun 2020 14:27:39 +0100
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 04/17] arm64: Add level-hinted TLB invalidation helper
Date: Mon, 15 Jun 2020 14:27:06 +0100
Message-Id: <20200615132719.1932408-5-maz@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615132719.1932408-1-maz@kernel.org>
References: <20200615132719.1932408-1-maz@kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 62.31.163.78
X-SA-Exim-Rcpt-To: linux-arm-kernel@lists.infradead.org,
 kvmarm@lists.cs.columbia.edu, kvm@vger.kernel.org, andre.przywara@arm.com,
 christoffer.dall@arm.com, Dave.Martin@arm.com, jintack@cs.columbia.edu,
 alexandru.elisei@arm.com, gcherian@marvell.com, prime.zeng@hisilicon.com,
 ascull@google.com, will@kernel.org, catalin.marinas@arm.com,
 mark.rutland@arm.com, james.morse@arm.com, julien.thierry.kdev@gmail.com,
 suzuki.poulose@arm.com, kernel-team@android.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_062741_150833_F45EB91E 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kernel-team@android.com,
 Will Deacon <will@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Andre Przywara <andre.przywara@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 George Cherian <gcherian@marvell.com>, James Morse <james.morse@arm.com>,
 Andrew Scull <ascull@google.com>, "Zengtao \(B\)" <prime.zeng@hisilicon.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Alexandru Elisei <alexandru.elisei@arm.com>,
 Jintack Lim <jintack@cs.columbia.edu>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a level-hinted TLB invalidation helper that only gets used if
ARMv8.4-TTL gets detected.

Signed-off-by: Marc Zyngier <maz@kernel.org>
---
 arch/arm64/include/asm/stage2_pgtable.h |  9 +++++
 arch/arm64/include/asm/tlbflush.h       | 45 +++++++++++++++++++++++++
 2 files changed, 54 insertions(+)

diff --git a/arch/arm64/include/asm/stage2_pgtable.h b/arch/arm64/include/asm/stage2_pgtable.h
index b767904f28b1..996bf98f0cab 100644
--- a/arch/arm64/include/asm/stage2_pgtable.h
+++ b/arch/arm64/include/asm/stage2_pgtable.h
@@ -256,4 +256,13 @@ stage2_pgd_addr_end(struct kvm *kvm, phys_addr_t addr, phys_addr_t end)
 	return (boundary - 1 < end - 1) ? boundary : end;
 }
 
+/*
+ * Level values for the ARMv8.4-TTL extension, mapping PUD/PMD/PTE and
+ * the architectural page-table level.
+ */
+#define S2_NO_LEVEL_HINT	0
+#define S2_PUD_LEVEL		1
+#define S2_PMD_LEVEL		2
+#define S2_PTE_LEVEL		3
+
 #endif	/* __ARM64_S2_PGTABLE_H_ */
diff --git a/arch/arm64/include/asm/tlbflush.h b/arch/arm64/include/asm/tlbflush.h
index bc3949064725..e05c31fd0bbc 100644
--- a/arch/arm64/include/asm/tlbflush.h
+++ b/arch/arm64/include/asm/tlbflush.h
@@ -10,6 +10,7 @@
 
 #ifndef __ASSEMBLY__
 
+#include <linux/bitfield.h>
 #include <linux/mm_types.h>
 #include <linux/sched.h>
 #include <asm/cputype.h>
@@ -59,6 +60,50 @@
 		__ta;						\
 	})
 
+/*
+ * Level-based TLBI operations.
+ *
+ * When ARMv8.4-TTL exists, TLBI operations take an additional hint for
+ * the level at which the invalidation must take place. If the level is
+ * wrong, no invalidation may take place. In the case where the level
+ * cannot be easily determined, a 0 value for the level parameter will
+ * perform a non-hinted invalidation.
+ *
+ * For Stage-2 invalidation, use the level values provided to that effect
+ * in asm/stage2_pgtable.h.
+ */
+#define TLBI_TTL_MASK		GENMASK_ULL(47, 44)
+#define TLBI_TTL_PS_4K		1
+#define TLBI_TTL_PS_16K		2
+#define TLBI_TTL_PS_64K		3
+
+#define __tlbi_level(op, addr, level)					\
+	do {								\
+		u64 arg = addr;						\
+									\
+		if (cpus_have_const_cap(ARM64_HAS_ARMv8_4_TTL) &&	\
+		    level) {						\
+			u64 ttl = level & 3;				\
+									\
+			switch (PAGE_SIZE) {				\
+			case SZ_4K:					\
+				ttl |= TLBI_TTL_PS_4K << 2;		\
+				break;					\
+			case SZ_16K:					\
+				ttl |= TLBI_TTL_PS_16K << 2;		\
+				break;					\
+			case SZ_64K:					\
+				ttl |= TLBI_TTL_PS_64K << 2;		\
+				break;					\
+			}						\
+									\
+			arg &= ~TLBI_TTL_MASK;				\
+			arg |= FIELD_PREP(TLBI_TTL_MASK, ttl);		\
+		}							\
+									\
+		__tlbi(op, arg);					\
+	} while(0)
+
 /*
  *	TLB Invalidation
  *	================
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
