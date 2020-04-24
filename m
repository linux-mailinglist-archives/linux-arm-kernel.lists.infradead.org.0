Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 478E11B7BD9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:41:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcA2jaN6fvLMNbtYR+CEFoBjXgS42WEGJrP8/IQx0+A=; b=M4qbbFZWAZFhWQ
	rwmOKRIhROv8qCAaI0f5uNYXvVPMyPOaFMaD63MKBPq9veGgprhbqduUZcww+txTKEl3tvbhSqVka
	3vwRM/dlQeFQJ6YHZsY4lMB+i2nJqP6QiupaAl7dRY+J3dEDng1hvwPP0+W2ul9pOqXnTczY+NdGc
	+axikmqCjtcpSboiwmesXFLnU1B5SORhJLNyMuE6oXHPsM0SoTcKlTHJpXOs5ywyKMjAkYN89brZo
	4039R9+88d1KSZjVLMo0+GMCsy4pW9jirT6mkxzqPq5t2P1LMVZaYn1LuPVHmTmLVEGKkSU5tpEeY
	0IqjoYiLxPX8euSjap2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS1Nv-0003pb-VQ; Fri, 24 Apr 2020 16:41:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS1M9-00006f-HP
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 16:39:15 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82E77C14;
 Fri, 24 Apr 2020 09:39:12 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1541E3F68F;
 Fri, 24 Apr 2020 09:39:11 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: stable@vger.kernel.org
Subject: [stable:PATCH 3/5 v4.19] arm64: Fake the IminLine size on systems
 affected by Neoverse-N1 #1542419
Date: Fri, 24 Apr 2020 17:38:43 +0100
Message-Id: <20200424163845.4141-4-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200424163845.4141-1-james.morse@arm.com>
References: <20200424163845.4141-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_093913_631123_24A7F5E4 
X-CRM114-Status: GOOD (  12.51  )
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
index 5ee5bca8c24b..baa684782358 100644
--- a/arch/arm64/include/asm/cache.h
+++ b/arch/arm64/include/asm/cache.h
@@ -22,6 +22,7 @@
 #define CTR_L1IP_MASK		3
 #define CTR_DMINLINE_SHIFT	16
 #define CTR_IMINLINE_SHIFT	0
+#define CTR_IMINLINE_MASK	0xf
 #define CTR_ERG_SHIFT		20
 #define CTR_CWG_SHIFT		24
 #define CTR_CWG_MASK		15
@@ -29,7 +30,7 @@
 #define CTR_DIC_SHIFT		29
 
 #define CTR_CACHE_MINLINE_MASK	\
-	(0xf << CTR_DMINLINE_SHIFT | 0xf << CTR_IMINLINE_SHIFT)
+	(0xf << CTR_DMINLINE_SHIFT | CTR_IMINLINE_MASK << CTR_IMINLINE_SHIFT)
 
 #define CTR_L1IP(ctr)		(((ctr) >> CTR_L1IP_SHIFT) & CTR_L1IP_MASK)
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index 253b7f84a5a0..965595fe6804 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -481,9 +481,15 @@ static void ctr_read_handler(unsigned int esr, struct pt_regs *regs)
 	int rt = (esr & ESR_ELx_SYS64_ISS_RT_MASK) >> ESR_ELx_SYS64_ISS_RT_SHIFT;
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
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
