Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B3905066A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jklVUAW0mWOCOif2EWj1RQTsnId/6mJGs8ghenpwhy4=; b=WSuEKAkOiw5Ou4PnveARkFnujU
	0dL4BbNLD6HHakHJkLjUB804tO5uZ4aDUlRnT8zDqQ+BYPhyAFCKfOABYplJQBrOZMDPr5QpwSRRm
	LOgDWvDc4KqErEeaJFUter9sZwLJ9hqDwAfgzSwdrrCtTb1+mrTumU4W7Q27VycpFsF8vxV32ASSu
	IAmhxpOl9VDEDiBslwovTI9Fatkgcd3KarV1V2RmeGdtZkThmOLgPO9blyyPjYUGck1BQ28bfgmg8
	56EH31XeEDNyh61Cd/lzUD8BsdTJkidlDh2PJ3/BjMzgaEAb4+q52awY7ziLRwccGac3+GGc3DNqI
	wHNnnXlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfLmh-0001vH-8J; Mon, 24 Jun 2019 10:01:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfLi9-0005EM-2N
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 09:56:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B90E61570;
 Mon, 24 Jun 2019 02:56:28 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A8E03F71E;
 Mon, 24 Jun 2019 02:56:27 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [RFC V3 13/18] arm64: sleep: Prevent stack frame warnings from objtool
Date: Mon, 24 Jun 2019 10:55:43 +0100
Message-Id: <20190624095548.8578-14-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190624095548.8578-1-raphael.gault@arm.com>
References: <20190624095548.8578-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_025629_188840_6D989B4F 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: julien.thierry@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 will.deacon@arm.com, Raphael Gault <raphael.gault@arm.com>,
 jpoimboe@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This code doesn't respect the Arm PCS but it is intended this
way. Adapting it to respect the PCS would result in altering the
behaviour.

In order to suppress objtool's warnings, we setup a stack frame
for __cpu_suspend_enter and annotate cpu_resume and _cpu_resume
as having non-standard stack frames.

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 arch/arm64/kernel/sleep.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/kernel/sleep.S b/arch/arm64/kernel/sleep.S
index 3e53ffa07994..eb434525fe82 100644
--- a/arch/arm64/kernel/sleep.S
+++ b/arch/arm64/kernel/sleep.S
@@ -90,6 +90,7 @@ ENTRY(__cpu_suspend_enter)
 	str	x0, [x1]
 	add	x0, x0, #SLEEP_STACK_DATA_SYSTEM_REGS
 	stp	x29, lr, [sp, #-16]!
+	mov	x29, sp
 	bl	cpu_do_suspend
 	ldp	x29, lr, [sp], #16
 	mov	x0, #1
@@ -146,3 +147,6 @@ ENTRY(_cpu_resume)
 	mov	x0, #0
 	ret
 ENDPROC(_cpu_resume)
+
+	asm_stack_frame_non_standard cpu_resume
+	asm_stack_frame_non_standard _cpu_resume
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
