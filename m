Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D233F1A3DD5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 03:51:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/KDay9+YaZBe1CIpdudxT4NLJJJeawrYz4OW2ekF+bo=; b=hQypKstsp8kIKA
	taHkVkjjOBRISS663ZPHdHtiqKDACMxV4KnH+xkrcLpeqULOKJmYDhVFz6YQD6AK9rnQvux2LODKP
	gNR/04x2/n0x7MJU25pG6/3IGBUY3r14pKZWxY1HDHQJV6MuTk+eldYtAkd/+LvAlFrIkkVf4r1JR
	onfLLBWSYAoUK3Pk1F/5TFbYVwgm1Lf2y779Wty0tXVm9UiJD55nlLLEWgaGoe2joIFxfkzdJmPBt
	dbuRMqIu/Vhb2ka6I9ZQFmztwjNu1HbxCkQSnoG8/bLmaNdij8zvqp2711WIRYxw8U6bJnHSWilqq
	Vl0H+2XNJBBg44dWaCzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMioo-0007Dx-UA; Fri, 10 Apr 2020 01:50:54 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMioh-0007Cx-Hs
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 01:50:48 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 71FFCA70CB02D760F021;
 Fri, 10 Apr 2020 09:50:36 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Fri, 10 Apr 2020 09:50:30 +0800
From: Xie XiuQi <xiexiuqi@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>, <tglx@linutronix.de>,
 <james.morse@arm.com>
Subject: [PATCH] arm64: panic on synchronous external abort in kernel context
Date: Fri, 10 Apr 2020 09:52:45 +0800
Message-ID: <20200410015245.23230-1-xiexiuqi@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_185047_759644_24575BE3 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: tanxiaofei@huawei.com, wangxiongfeng2@huawei.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We should panic even panic_on_oops is not set, when we can't recover
from synchronous external abort in kernel context.

Othervise, there are two issues:
1) fallback to do_exit() in exception context, cause this core hung up.
   do_sea()
   -> arm64_notify_die
      -> die
         -> do_exit
2) errors may propagated.

Signed-off-by: Xie XiuQi <xiexiuqi@huawei.com>
Cc: Xiaofei Tan <tanxiaofei@huawei.com>
---
 arch/arm64/include/asm/esr.h | 12 ++++++++++++
 arch/arm64/kernel/traps.c    |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/include/asm/esr.h b/arch/arm64/include/asm/esr.h
index cb29253ae86b..acfc71c6d148 100644
--- a/arch/arm64/include/asm/esr.h
+++ b/arch/arm64/include/asm/esr.h
@@ -326,6 +326,18 @@ static inline bool esr_is_data_abort(u32 esr)
 	return ec == ESR_ELx_EC_DABT_LOW || ec == ESR_ELx_EC_DABT_CUR;
 }
 
+static inline bool esr_is_inst_abort(u32 esr)
+{
+	const u32 ec = ESR_ELx_EC(esr);
+
+	return ec == ESR_ELx_EC_IABT_LOW || ec == ESR_ELx_EC_IABT_CUR;
+}
+
+static inline bool esr_is_ext_abort(u32 esr)
+{
+	return esr_is_data_abort(esr) || esr_is_inst_abort(esr);
+}
+
 const char *esr_get_class_string(u32 esr);
 #endif /* __ASSEMBLY */
 
diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
index cf402be5c573..08f7f7688d5b 100644
--- a/arch/arm64/kernel/traps.c
+++ b/arch/arm64/kernel/traps.c
@@ -202,6 +202,8 @@ void die(const char *str, struct pt_regs *regs, int err)
 		panic("Fatal exception in interrupt");
 	if (panic_on_oops)
 		panic("Fatal exception");
+	if (esr_is_ext_abort(err))
+		panic("Synchronous external abort in kernel context");
 
 	raw_spin_unlock_irqrestore(&die_lock, flags);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
