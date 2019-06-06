Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8403736FEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 11:32:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nz0A9kC07Jbp8sY3NRJtJqrM61U87xbGBJqwH0awR5Q=; b=S68mzBQgHV927DXH9Esdc+oEIH
	bpu3QpIqQBjXf+rD5pV+p4GWA/NCWZx3BHzdxTHskRECfYfftrFVN4ZX14CF73cSjInqJGNPdvSqF
	L+1cC382F0w+1TiSw3oSW3Q4mo1qt4K6HQv3Z5EE+OFekEV2aNmGy5zSLklPJTiQ2QSpQCVpMLVNp
	yEYNnm7WRCpk6j58josYjeHoXs5oZA7o6PklB807bmEfQPYhJyr78uEdbqWNuTweqnqpYb3nBE3WV
	b3SGuw4tD1lR5cMMk1ys7OuhCEnvoGfLZFzPDnRXLzB/qLuNHP6EnKDV90vf84H8XRwEjxX9coH5e
	BadAEsbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYolC-0006uh-AM; Thu, 06 Jun 2019 09:32:38 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYokj-0006Rd-PH
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 09:32:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4C7EB15A2;
 Thu,  6 Jun 2019 02:32:09 -0700 (PDT)
Received: from e112298-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 38E653F690;
 Thu,  6 Jun 2019 02:32:07 -0700 (PDT)
From: Julien Thierry <julien.thierry@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/8] arm64: irqflags: Pass flags as readonly operand to
 restore instruction
Date: Thu,  6 Jun 2019 10:31:51 +0100
Message-Id: <1559813517-41540-3-git-send-email-julien.thierry@arm.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
References: <1559813517-41540-1-git-send-email-julien.thierry@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_023209_822039_93482EFE 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, Julien Thierry <julien.thierry@arm.com>,
 marc.zyngier@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org, james.morse@arm.com,
 yuzenghui@huawei.com, wanghaibin.wang@huawei.com, liwei391@huawei.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Flags are only read by the instructions doing the irqflags restore
operation. Pass the operand as read only to the asm inline instead of
read-write.

Signed-off-by: Julien Thierry <julien.thierry@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
---
 arch/arm64/include/asm/irqflags.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/irqflags.h b/arch/arm64/include/asm/irqflags.h
index 62996318..9c93152 100644
--- a/arch/arm64/include/asm/irqflags.h
+++ b/arch/arm64/include/asm/irqflags.h
@@ -119,8 +119,8 @@ static inline void arch_local_irq_restore(unsigned long flags)
 			__msr_s(SYS_ICC_PMR_EL1, "%0")
 			"dsb	sy",
 			ARM64_HAS_IRQ_PRIO_MASKING)
-		: "+r" (flags)
 		:
+		: "r" (flags)
 		: "memory");
 }

--
1.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
