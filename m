Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A9C1B7BC9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qvINqZv+jhVKH+HxPWQCuYvCQxMFbnu7Sa/+Zatrs5I=; b=onSUyD1K2HVxcK
	aiKXsJJRwGL2l0UBLfTOJkKfIiZsGft/w4dD6FXqX4+ZiB6G1mt59Sb/+XDdkbXAH31ksb3m6/7UP
	hsk+HFAjjG01tzV0V7KUCfVfUpmpjVBNhw661ryT8Tqz1dTcmCh9YwtdatSUwLjFAyttnkHmPBeBx
	gQrKWJjw/bITktzz+DbRg6R5Wp9mr1xdFsiFOlWdoDufTxcV+EWZawZKEcug7LRrYajyZ+tkPWmXT
	43jj97MtX31pdbOwNl2rEjDnN+9Cg7PRFRLXbtM++4qOF208cHjkydz1HzutP+phUgSu5ylERIeNB
	UdW165NyxnYiyI+FR1JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1Lz-0008Ad-Ca; Fri, 24 Apr 2020 16:39:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1LS-0007ui-No
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:38:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 308E4C14;
 Fri, 24 Apr 2020 09:38:30 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B41333F68F;
 Fri, 24 Apr 2020 09:38:29 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: stable@vger.kernel.org
Subject: [stable:PATCH 2/4 v5.4] arm64: Fake the IminLine size on systems
 affected by Neoverse-N1 #1542419
Date: Fri, 24 Apr 2020 17:38:03 +0100
Message-Id: <20200424163805.4087-3-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200424163805.4087-1-james.morse@arm.com>
References: <20200424163805.4087-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_093830_822985_AE069080 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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

[ Upstream commit ee9d90be9ddace01b7fb126567e4b539fbe1f82f ]

Systems affected by Neoverse-N1 #1542419 support DIC so do not need to
perform icache maintenance once new instructions are cleaned to the PoU.
For the errata workaround, the kernel hides DIC from user-space, so that
the unnecessary cache maintenance can be trapped by firmware.

To reduce the number of traps, produce a fake IminLine value based on
PAGE_SIZE.

Signed-off-by: James Morse <james.morse@arm.com>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: James Morse <james.morse@arm.com>
---
 arch/arm64/include/asm/cache.h | 3 ++-
 arch/arm64/kernel/traps.c      | 8 +++++++-
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/include/asm/cache.h b/arch/arm64/include/asm/cache.h
index 43da6dd29592..806e9dc2a852 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -11,6 +11,7 @@
 #define CTR_L1IP_MASK		3
 #define CTR_DMINLINE_SHIFT	16
 #define CTR_IMINLINE_SHIFT	0
+#define CTR_IMINLINE_MASK	0xf
 #define CTR_ERG_SHIFT		20
 #define CTR_CWG_SHIFT		24
 #define CTR_CWG_MASK		15
@@ -18,7 +19,7 @@
 #define CTR_DIC_SHIFT		29
 
 #define CTR_CACHE_MINLINE_MASK	\
-	(0xf << CTR_DMINLINE_SHIFT | 0xf << CTR_IMINLINE_SHIFT)
+	(0xf << CTR_DMINLINE_SHIFT | CTR_IMINLINE_MASK << CTR_IMINLINE_SHIFT)
 
 #define CTR_L1IP(ctr)		(((ctr) >> CTR_L1IP_SHIFT) & CTR_L1IP_MASK)
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 465f0a0f8f0a..4e3e9d9c8151 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -470,9 +470,15 @@ static void ctr_read_handler(unsigned int esr, struct pt_regs *regs)
 	int rt = ESR_ELx_SYS64_ISS_RT(esr);
 	unsigned long val = arm64_ftr_reg_user_value(&arm64_ftr_reg_ctrel0);
 
-	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419))
+	if (cpus_have_const_cap(ARM64_WORKAROUND_1542419)) {
+		/* Hide DIC so that we can trap the unnecessary maintenance...*/
 		val &= ~BIT(CTR_DIC_SHIFT);
 
+		/* ... and fake IminLine to reduce the number of traps. */
+		val &= ~CTR_IMINLINE_MASK;
+		val |= (PAGE_SHIFT - 2) & CTR_IMINLINE_MASK;
+	}
+
 	pt_regs_write_reg(regs, rt, val);
 
 	arm64_skip_faulting_instruction(regs, AARCH64_INSN_SIZE);
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
