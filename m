Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED68613F496
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:51:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=97YKAfcBb0XHiWT836WVmx7phhQGr6jCNmxzPeE3Pf0=; b=Zak/tXvzErMdqpiZrsHVQxW/lI
	kTVqSJCKE7vqi3/aC+gVodP4wWP/sh7f4rmLiQY2iwF7Ymuv4MuGB2Rh1J04qVnhSllPviIZCgdZ3
	9gphZSNVW3wBC4uz+AaeDUGSW7R2Vn6SfXL+TUow8s1r50OFdNKp17c7Qvynqa0ECbFDUP7fCLvw3
	yKQ11DAreKJCE+cZ4+/aEysJzi6MYghBPwtpjZfUjAq6N/zoBs6OvCyuxoqF06oZil0lVyvajelNu
	KEMueMLyyeAnlOtX4AkRM5N94Hfa1Uw2WZdlCh2AjFoKbWoLWy2bmIJHdDohpcmoik//r41ShRgyR
	jkegBbgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isAEd-0007dG-6E; Thu, 16 Jan 2020 18:51:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is9zw-0005qd-3d
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 18:36:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64D22139F;
 Thu, 16 Jan 2020 10:35:55 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 77A7C3F534;
 Thu, 16 Jan 2020 10:35:54 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, will@kernel.org,
 catalin.marinas@arm.com
Subject: [PATCH 1/5] arm64: assembler: remove inherit_daif macro
Date: Thu, 16 Jan 2020 18:35:44 +0000
Message-Id: <20200116183548.39411-2-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200116183548.39411-1-mark.rutland@arm.com>
References: <20200116183548.39411-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_103604_243414_4B2045C2 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, james.morse@arm.com, anshuman.khandual@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We haven't needed the inherit_daif macro since commit:

  ed3768db588291dd ("arm64: entry: convert el1_sync to C")

... which converted all callers to C and the local_daif_inherit
function.

Remove the unused macro.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/assembler.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
index b8cf7c85ffa2..5f8a2772baeb 100644
--- a/arch/arm64/include/asm/assembler.h
+++ b/arch/arm64/include/asm/assembler.h
@@ -40,12 +40,6 @@
 	msr	daif, \flags
 	.endm
 
-	/* Only on aarch64 pstate, PSR_D_BIT is different for aarch32 */
-	.macro	inherit_daif, pstate:req, tmp:req
-	and	\tmp, \pstate, #(PSR_D_BIT | PSR_A_BIT | PSR_I_BIT | PSR_F_BIT)
-	msr	daif, \tmp
-	.endm
-
 	/* IRQ is the lowest priority flag, unconditionally unmask the rest. */
 	.macro enable_da_f
 	msr	daifclr, #(8 | 4 | 1)
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
