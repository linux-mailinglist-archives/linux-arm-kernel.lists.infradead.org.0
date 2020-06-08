Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 582B11F27AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:48:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipUGkvdT4y3iJIFKdUnwLCa8Vh3yrKWwMMsSRzoDtVM=; b=Mhja7x6MEfL7Zm
	dRNdwOPQ/LbBcLVv4JDpWAFJe/TGXabmgV4cVmf8dHtD+MbiY5MIgck4wi8EG4p5nX+u2yk6bZc3n
	75RgwHimQjWOXdpDqlm477Lt+Kh0Pul5JupUpgHeKGC546RUm66ChKqetONzA/HJtkD363i8rX/po
	neYLSmLw5r+q3HZvkwFCuxno9A7UO/WIFUkcFeQie4fuJlc6DObFZz1uugeKJrOd+nvdLfMM8gNXe
	vWyrMqzFEwJ1+Ohf9TnCP/XYYP45PIDM4lxGWs9JCc40JOcukr21So197RuGQrqphX/1XsduV+l+H
	hOilaafGoifrWRnOfpcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRVK-0003br-Ip; Mon, 08 Jun 2020 23:48:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR6k-0002V2-Tu
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:23:12 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 603FA2087E;
 Mon,  8 Jun 2020 23:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658590;
 bh=asa8ONHvLvSLrkUv5RGqx9vJCcv05F7tTMtmQgGoEZs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aA+7+Z+6Cu5gA8pdyBP8hLH/9d+FBMSdvLcI13C8gh9Z/+l6vb9XmqsvM9hw/WEjo
 B3afBHpyBT3VSx74T4mFLJ9/mOeAw2KLv3eLLIhENVMcNccwE4E8jbO+6jMDQ7zIYU
 dNxj3miqN2rVaXBfCQz60xQTEnS6ssKsWlOi1S8Y=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 024/106] ARM: 8978/1: mm: make act_mm() respect
 THREAD_SIZE
Date: Mon,  8 Jun 2020 19:21:16 -0400
Message-Id: <20200608232238.3368589-24-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232238.3368589-1-sashal@kernel.org>
References: <20200608232238.3368589-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_162311_006884_42848314 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Linus Walleij <linus.walleij@linaro.org>

[ Upstream commit e1de94380af588bdf6ad6f0cc1f75004c35bc096 ]

Recent work with KASan exposed the folling hard-coded bitmask
in arch/arm/mm/proc-macros.S:

  bic     rd, sp, #8128
  bic     rd, rd, #63

This forms the bitmask 0x1FFF that is coinciding with
(PAGE_SIZE << THREAD_SIZE_ORDER) - 1, this code was assuming
that THREAD_SIZE is always 8K (8192).

As KASan was increasing THREAD_SIZE_ORDER to 2, I ran into
this bug.

Fix it by this little oneline suggested by Ard:

  bic     rd, sp, #(THREAD_SIZE - 1) & ~63

Where THREAD_SIZE is defined using THREAD_SIZE_ORDER.

We have to also include <linux/const.h> since the THREAD_SIZE
expands to use the _AC() macro.

Cc: Ard Biesheuvel <ardb@kernel.org>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/mm/proc-macros.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mm/proc-macros.S b/arch/arm/mm/proc-macros.S
index 5461d589a1e2..60ac7c5999a9 100644
--- a/arch/arm/mm/proc-macros.S
+++ b/arch/arm/mm/proc-macros.S
@@ -5,6 +5,7 @@
  *  VMA_VM_FLAGS
  *  VM_EXEC
  */
+#include <linux/const.h>
 #include <asm/asm-offsets.h>
 #include <asm/thread_info.h>
 
@@ -30,7 +31,7 @@
  * act_mm - get current->active_mm
  */
 	.macro	act_mm, rd
-	bic	\rd, sp, #8128
+	bic	\rd, sp, #(THREAD_SIZE - 1) & ~63
 	bic	\rd, \rd, #63
 	ldr	\rd, [\rd, #TI_TASK]
 	.if (TSK_ACTIVE_MM > IMM12_MASK)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
