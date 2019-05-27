Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591652B179
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 11:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D5IKzvux9iszbmYGdyimULhqs15qdNHzXVuhHX8sfJ4=; b=V4f8mPzR/2EveA
	qkBjRAi92w5k1h9fJqqm+EAp/k/C6Vq6gKRjAoEOz9ePXzrju87IP6w7Th5B8Bg+gfbwQDCFh/S6Q
	yuZtb2r6BIgFk7xCSVOLp4rZW5hDyzC9rT2kyTbyz8wfPqJ5AsptjjleKMO++kQ4am9/vhDGplUFl
	w11/HKCU7cbYNhAfbacOlm9R3nifzXTlr0QV8z4xqeChHaEH5u5X3EalZLqJEC2A1mS5YHZI3wql+
	+AozJd+T3re8QYaYBHMEJtEcJY9Wd53HD+BX2jRuzFLdLEzChkmIi45s0NPJROsGc8mIs4hrIVVa2
	Yr7jIhAj6zfeJxMzGgQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVC7P-0003rq-E5; Mon, 27 May 2019 09:40:35 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVC7H-0003r7-KU
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 09:40:29 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3ECA3419BF0B28FDFABB;
 Mon, 27 May 2019 17:40:16 +0800 (CST)
Received: from SZX1000472652.huawei.com (100.100.247.164) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Mon, 27 May 2019 17:40:05 +0800
From: Yongliang Gao <gaoyongliang@huawei.com>
To: <gregkh@linuxfoundation.org>, <rmk+kernel@armlinux.org.uk>,
 <linux@armlinux.org.uk>, <punitagrawal@gmail.com>,
 <rafael.j.wysocki@intel.com>, <marc.zyngier@arm.com>, <james.morse@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm: fix using smp_processor_id() in preemptible context
Date: Mon, 27 May 2019 17:39:39 +0800
Message-ID: <1558949979-129251-1-git-send-email-gaoyongliang@huawei.com>
X-Mailer: git-send-email 1.8.5.6
MIME-Version: 1.0
X-Originating-IP: [100.100.247.164]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_024027_906665_5E51B5EC 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: shiwenlu@huawei.com, linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 zengweilin@huawei.com, nixiaoming@huawei.com, chenjie6@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

harden_branch_predictor() call smp_processor_id() in preemptible
context, this would cause a bug messages.

The bug messages is as follows:
BUG: using smp_processor_id() in preemptible [00000000] code: syz-executor0/17992
caller is harden_branch_predictor arch/arm/include/asm/system_misc.h:27 [inline]
caller is __do_user_fault+0x34/0x114 arch/arm/mm/fault.c:200
CPU: 1 PID: 17992 Comm: syz-executor0 Tainted: G O 4.4.176 #1
Hardware name: Hisilicon A9
[<c0114ae4>] (unwind_backtrace) from [<c010e6fc>] (show_stack+0x18/0x1c)
[<c010e6fc>] (show_stack) from [<c0379514>] (dump_stack+0xc8/0x118)
[<c0379514>] (dump_stack) from [<c039b5a0>] (check_preemption_disabled+0xf4/0x138)
[<c039b5a0>] (check_preemption_disabled) from [<c011abe4>] (__do_user_fault+0x34/0x114)
[<c011abe4>] (__do_user_fault) from [<c053b0d0>] (do_page_fault+0x3b4/0x3d8)
[<c053b0d0>] (do_page_fault) from [<c01013dc>] (do_DataAbort+0x58/0xf8)
[<c01013dc>] (do_DataAbort) from [<c053a880>] (__dabt_usr+0x40/0x60)

Reported-by: Jingwen Qiu <qiujingwen@huawei.com>
Signed-off-by: Yongliang Gao <gaoyongliang@huawei.com>
Cc: <stable@vger.kernel.org>
---
 arch/arm/include/asm/system_misc.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/include/asm/system_misc.h b/arch/arm/include/asm/system_misc.h
index 66f6a3a..4a55cfb 100644
--- a/arch/arm/include/asm/system_misc.h
+++ b/arch/arm/include/asm/system_misc.h
@@ -22,9 +22,10 @@
 static inline void harden_branch_predictor(void)
 {
 	harden_branch_predictor_fn_t fn = per_cpu(harden_branch_predictor_fn,
-						  smp_processor_id());
+						  get_cpu());
 	if (fn)
 		fn();
+	put_cpu();
 }
 #else
 #define harden_branch_predictor() do { } while (0)
-- 
1.8.5.6


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
