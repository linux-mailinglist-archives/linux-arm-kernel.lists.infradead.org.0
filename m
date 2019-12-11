Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE7B11A522
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 08:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tEoWOv8e0E5LfLvPgIikFrN54oPK9o/8+RcLIIT8QFc=; b=denmXRhh/2goGl
	v/88VM0HgzEeFnOX3JDiawxjR/XpiMLBPZZ4SeSr7XJo78tkOV4Vm9NZ/Qf+7FPbmbwRzUBBPBTTU
	7F4Tu3IkvxqPm1DFXvjwmaIAwzYgHIdWHDypveSzmB2RzgyZB+aYdxwdySk1JkobgTtBPp7xcBHUt
	LGS+tYRZHc3PzklIeLs3ol8pVkGvSTktH+YXv2djxNKzsh8dXEq7L45UsF0Npvzox14ks0kcyrnq+
	7ODKtI9g/FQT9M9Nd2u6SvTyYD33V0H+MUcqzX7IEhJPxU9RJBtXHKyKvTtGyx2ACyfYrMRRd845Y
	IjEOjHym6OaNDYHl6E+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iewUV-0003DQ-Po; Wed, 11 Dec 2019 07:32:59 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewUO-0003CL-3E
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 07:32:53 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 107B07834A358239494C;
 Wed, 11 Dec 2019 15:32:40 +0800 (CST)
Received: from linux-ibm.site (10.175.102.37) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Wed, 11 Dec 2019 15:32:32 +0800
From: Hanjun Guo <guohanjun@huawei.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH] arm64: armv8_deprecated: update the comments of
 armv8_deprecated_init()
Date: Wed, 11 Dec 2019 15:27:33 +0800
Message-ID: <1576049253-60950-1-git-send-email-guohanjun@huawei.com>
X-Mailer: git-send-email 1.7.12.4
MIME-Version: 1.0
X-Originating-IP: [10.175.102.37]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_233252_306155_00BC58C1 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Hanjun Guo <guohanjun@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit c0d8832e78cb ("arm64: Ensure the instruction emulation is
ready for userspace"), armv8_deprecated_init() was promoted to
core_initcall() but the comments were left unchanged, update it now.

Spotted by some random reading of the code.

Signed-off-by: Hanjun Guo <guohanjun@huawei.com>
---
 arch/arm64/kernel/armv8_deprecated.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/armv8_deprecated.c b/arch/arm64/kernel/armv8_deprecated.c
index ca158be..3f6fcf2 100644
--- a/arch/arm64/kernel/armv8_deprecated.c
+++ b/arch/arm64/kernel/armv8_deprecated.c
@@ -618,7 +618,8 @@ static int t16_setend_handler(struct pt_regs *regs, u32 instr)
 };
 
 /*
- * Invoked as late_initcall, since not needed before init spawned.
+ * Invoked as core_initcall, which can guarantee that the instruction
+ * emulation is ready for userspace.
  */
 static int __init armv8_deprecated_init(void)
 {
-- 
1.7.12.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
