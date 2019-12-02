Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED71710E995
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 12:38:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O0TUXA6ly9Zse+l8XFRvwwijRwJDdj7CBK1pROrZgzc=; b=YubRw0WQ11Wd03
	KyNROkcjXG+63VlDLACf8vuYL51IeXntEi66EKTjFf2AeKcJ8ONtWeCLZxrED1Emw88KXBcRw+bP/
	G+om45Uys0Lq+oAxNi94Zn1xorDnphCpPHk9Xos2ZiJgd7AE2LjL/xuMHg1QWVqx7caYvSpGe+DHr
	BnKfwcvLZ5kIjC5E+7bnKoLSaglA6uz/EA2KwT2v7ieUQFDqWE9j5bB2tvrbghKo9kfMDMW9YgJPJ
	hz0a/49YGpIzIY7XllKX9mPACC1+YLfgzyUg8sRXwwXjDO0WqhLM6jyLr24XDCAr92BC157Tz3snX
	gWVf6xhpsDnrE4Iq6lqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibk2D-0006ir-P7; Mon, 02 Dec 2019 11:38:33 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibk27-0006hv-AR
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 11:38:29 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A52C3DFD4CBD2B31D9A7;
 Mon,  2 Dec 2019 19:38:13 +0800 (CST)
Received: from linux-XCyijm.huawei.com (10.175.104.212) by
 DGGEMS413-HUB.china.huawei.com (10.3.19.213) with Microsoft SMTP Server id
 14.3.439.0; Mon, 2 Dec 2019 19:38:06 +0800
From: Heyi Guo <guoheyi@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] arm64/kernel/entry: refine comment of stack overflow check
Date: Mon, 2 Dec 2019 19:37:02 +0800
Message-ID: <20191202113702.34158-1-guoheyi@huawei.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Originating-IP: [10.175.104.212]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_033827_539651_3421EE2B 
X-CRM114-Status: GOOD (  10.01  )
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
Cc: Heyi Guo <guoheyi@huawei.com>, wanghaibin.wang@huawei.com,
 Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Stack overflow checking can be done by testing
sp & (1 << THREAD_SHIFT)
only for the stacks are aligned to (2 << THREAD_SHIFT) with size of
(1 << THREAD_SIZE), and this is the case when CONFIG_VMAP_STACK is
set.

Fix the code comment to avoid confusion.

Signed-off-by: Heyi Guo <guoheyi@huawei.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/entry.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index cf3bd2976e57..9e8ba507090f 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -76,7 +76,8 @@ alternative_else_nop_endif
 #ifdef CONFIG_VMAP_STACK
 	/*
 	 * Test whether the SP has overflowed, without corrupting a GPR.
-	 * Task and IRQ stacks are aligned to (1 << THREAD_SHIFT).
+	 * Task and IRQ stacks are aligned to (2 << THREAD_SHIFT) with size of
+	 * (1 << THREAD_SHIFT).
 	 */
 	add	sp, sp, x0			// sp' = sp + x0
 	sub	x0, sp, x0			// x0' = sp' - x0 = (sp + x0) - x0 = sp
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
