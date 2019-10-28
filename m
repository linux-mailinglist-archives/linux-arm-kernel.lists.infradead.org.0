Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D01D9E6EB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 10:09:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GlcPk/J+xWsIOhLVRqsTiQbIS0yWgbZ1UkjdnlPToOg=; b=I0Ti+razCEmfSc
	fxIUJtleKeiBccYyhZANAa5JKI4IjP13mgjBWjAMBfT0QdDIIWiymKr7m15tkMQsn5PxOVayY1m0D
	5x4IM9VCPac3mu2UBpqibspqZO4ZzwrAdVBpp40/a1J4BjVgVMfe/ns4VHMzFRbfjonWPMTrSKOLp
	qDE/ap/UF9jly+Ro4PPD98tmcim9dBNLvzt5lDG3heGA9Cm/q/AB+Cwi/U3vO4ZSOHVCHeKFKyLYS
	4fElKLxFMOczMynFk7p0+l12iFUNi4I4OLPy0oHN33DNuNY0x+3FIhTk8cnyxxywtdRHfKnv5m9sb
	JTPvK5aw3rCYzmf1NsbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP11t-0000Zm-Nt; Mon, 28 Oct 2019 09:09:37 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP11d-0000Oi-MR
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 09:09:23 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6B82BAABADCF620220BB;
 Mon, 28 Oct 2019 17:09:14 +0800 (CST)
Received: from HGHY4Z004218071.china.huawei.com (10.133.224.57) by
 DGGEMS408-HUB.china.huawei.com (10.3.19.208) with Microsoft SMTP Server id
 14.3.439.0; Mon, 28 Oct 2019 17:09:05 +0800
From: Xiang Zheng <zhengxiang9@huawei.com>
To: <catalin.marinas@arm.com>, <will@kernel.org>
Subject: [PATCH] arm64: print additional fault message when executing non-exec
 memory
Date: Mon, 28 Oct 2019 17:08:37 +0800
Message-ID: <20191028090837.39652-1-zhengxiang9@huawei.com>
X-Mailer: git-send-email 2.15.1.windows.2
MIME-Version: 1.0
X-Originating-IP: [10.133.224.57]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_020921_898512_9884A729 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
index 9fc6db0bcbad..68bf4ec376d0 100644
--- a/arch/arm64/mm/fault.c
+++ b/arch/arm64/mm/fault.c
@@ -318,6 +318,8 @@ static void __do_kernel_fault(unsigned long addr, unsigned int esr,
 	if (is_el1_permission_fault(addr, esr, regs)) {
 		if (esr & ESR_ELx_WNR)
 			msg = "write to read-only memory";
+		else if (is_el1_instruction_abort(esr))
+			msg = "execute non-executable memory";
 		else
 			msg = "read from unreadable memory";
 	} else if (addr < PAGE_SIZE) {
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
