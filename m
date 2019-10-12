Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7550D4C71
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 05:28:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+Fq2wnxcKQVHdMv7P9VvSJNy7jBfTt0eOyg+zFqDmA0=; b=rr8ssWdX9085jb
	L1AATByiUn6ySigBPWZfIxlgx8CQfYq7VGCG7Dy8I3lOTXYoz5ST4wRRrVsvUfL7nb6H2bMCWKKGa
	l/laTqMzvEgUXlEne0wLGs7yutgmXQfVI8vnEa28SczaglQVsPzS9cgWfABpQCEz+ZYKOZEhmrZgr
	ucvOU4fAGKJEa1gG/Ox3qrwTl8Y9X7HUT9OLDmNcjLYRvftfBXYWU4Fvk3DcBsi8C49ndjBVaBS/n
	sGj0UZfAucirdT7lZuvjhOtuBbq265TmHRoXsAzsK3QGrAgYWTB1PRP5z7GIfxXwSCTZwjXiUtmdZ
	T5tTDQ4jN1x6tg8FP6VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ85E-0002Qi-U9; Sat, 12 Oct 2019 03:28:44 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ856-0002PT-FD
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 03:28:38 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2037E54A95FE5E61D5D6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 12 Oct 2019 11:28:26 +0800 (CST)
Received: from use12-sp2.huawei.com (10.67.188.167) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Sat, 12 Oct 2019 11:28:22 +0800
From: wangxu <wangxu72@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] ARM/hw_breakpoint: modify dead code for breakpoint_handler()
Date: Sat, 12 Oct 2019 11:28:19 +0800
Message-ID: <1570850899-10646-1-git-send-email-wangxu72@huawei.com>
X-Mailer: git-send-email 1.8.5.6
MIME-Version: 1.0
X-Originating-IP: [10.67.188.167]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_202836_668886_2EACF95A 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wang Xu <wangxu72@huawei.com>

In perf_event_alloc(), event->overflow_handler is initialized to a
non-null value, which makes enable_single_step(bp, addr) in
breakpoint_handler() never be executed.

As a matter of fact, the branch condition has been updated to
is_default_overflow_handler().

Signed-off-by: Wang Xu <wangxu72@huawei.com>
---
 arch/arm/kernel/hw_breakpoint.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
index b0c195e..586a587 100644
--- a/arch/arm/kernel/hw_breakpoint.c
+++ b/arch/arm/kernel/hw_breakpoint.c
@@ -822,7 +822,7 @@ static void breakpoint_handler(unsigned long unknown, struct pt_regs *regs)
 			info->trigger = addr;
 			pr_debug("breakpoint fired: address = 0x%x\n", addr);
 			perf_bp_event(bp, regs);
-			if (!bp->overflow_handler)
+			if (is_default_overflow_handler(bp))
 				enable_single_step(bp, addr);
 			goto unlock;
 		}
-- 
1.8.5.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
