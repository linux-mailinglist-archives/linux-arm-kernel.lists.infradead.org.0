Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D75E886F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 13:42:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WDAFq3m0tBCaIDPYYT7Pi2idkG4JoEFOMORtODpzavw=; b=iJO0KteAlWgLAg
	OA4S0ej99r6nwIiqSaZcWGxHCqjJhr9AVBiQcQqkDKGSEHikKoZmg/46qpPLkvJyOnFgnHxTzm5EK
	zTx4Pt97OJ2O2PYoUKLR+ZMk+t+/KtwXNRMW+2Hc2rKTRIfqGR0sOjHKA+wcIF0Zsqf6bZG056ggD
	xvNGm7M03TKUFzsZlvPmU5d91wxXnth66d3LiUL3mtHhnyrfA3uGrMgXPsfRpvhNauJQ/9bBqMRLb
	V/LNko1BxHY26LZpaZIlt468irFIEjn4ANOhHAeNdgxWN7R0tYSNPp4LcQB7SyOSCcgUYwd5vQIEh
	Gt0JbrdF5wAHXSJXFmSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPQp3-0003gu-RG; Tue, 29 Oct 2019 12:42:05 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPQot-0003fK-75
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 12:41:56 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D39CBBDE45543FEB6506;
 Tue, 29 Oct 2019 20:41:41 +0800 (CST)
Received: from HGHY4Z004218071.china.huawei.com (10.133.224.57) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.439.0; Tue, 29 Oct 2019 20:41:35 +0800
From: Xiang Zheng <zhengxiang9@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>
Subject: [PATCH v2] arm64: print additional fault message when executing
 non-exec memory
Date: Tue, 29 Oct 2019 20:41:31 +0800
Message-ID: <20191029124131.32028-1-zhengxiang9@huawei.com>
X-Mailer: git-send-email 2.15.1.windows.2
MIME-Version: 1.0
X-Originating-IP: [10.133.224.57]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_054155_440844_C4C21C53 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: wanghaibin.wang@huawei.com, james.morse@arm.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When attempting to executing non-executable memory, the fault message
shows:

  Unable to handle kernel read from unreadable memory at virtual address
  ffff802dac469000

This may confuse someone, so add a new fault message for instruction
abort.

Signed-off-by: Xiang Zheng <zhengxiang9@huawei.com>
---
 arch/arm64/mm/fault.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
index 9fc6db0bcbad..9adec86d0f8a 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -318,6 +318,8 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
 	if (is_el1_permission_fault(addr, esr, regs)) {
 		if (esr & ESR_ELx_WNR)
 			msg = "write to read-only memory";
+		else if (is_el1_instruction_abort(esr))
+			msg = "execute from non-executable memory";
 		else
 			msg = "read from unreadable memory";
 	} else if (addr < PAGE_SIZE) {
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
