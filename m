Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A855ACA808
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 19:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zLIF70q0QJwlomCozQ+wCf2UwRH+4kWtxojTd9qZIJo=; b=YaaItbeX90qxrp
	5T7fqqpVi7DyqQWZYc2lNf+VU83Yp76e5TYtZSnLDORy8ZYzFMsgDULQ1eGg/fCAEjb+Ohksf7Czu
	ng9qnUgLOt6uWAYbDA6roMvWifJIb4MungXniaHrEaDKszUxnSx7IMhEM3fJG55JaUVGEKfdC7LY7
	p8zZRX8sv9dtJHG87NcY0JgbUaFF3M+T7LKyWoeu8fx0SWrhqwM6RtLjMtl0MrzFsxG0EDRitlMCe
	vUX2lhuwcTcKB7wc+0o5WqY08lVrAfPoINlXlde7Ym28dpfa3mkNg3nyf2n0MlnSh4Xd5ZuJ0CNg0
	epa2I6+X8BgBnAIcDBbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4UA-0000BI-0M; Thu, 03 Oct 2019 17:01:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4U3-0000An-9c
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 17:01:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33BDF1000;
 Thu,  3 Oct 2019 10:01:42 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4B2303F739;
 Thu,  3 Oct 2019 10:01:41 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: Fix incorrect irqflag restore for priority masking for
 compat
Date: Thu,  3 Oct 2019 18:01:27 +0100
Message-Id: <20191003170127.127278-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_100143_376922_A061A8F0 
X-CRM114-Status: GOOD (  10.73  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>, Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit bd82d4bd2188 ("arm64: Fix incorrect irqflag restore for priority
masking") added a macro to the entry.S call paths that leave the
PSTATE.I bit set. This tells the pPNMI masking logic that interrupts
are masked by the CPU, not by the PMR. This value is read back by
local_daif_save().

Commit bd82d4bd2188 added this call to el0_svc, as el0_svc_handler
is called with interrupts masked. el0_svc_compat was missed, but should
be covered in the same way as both of these paths end up in
el0_svc_common(), which expects to unmask interrupts.

Fixes: bd82d4bd2188 ("arm64: Fix incorrect irqflag restore for priority masking")
Signed-off-by: James Morse <james.morse@arm.com>
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>
---
 arch/arm64/kernel/entry.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
index 84a822748c84..e304fe04b098 100644
--- a/arch/arm64/kernel/entry.S
+++ b/arch/arm64/kernel/entry.S
@@ -775,6 +775,7 @@ el0_sync_compat:
 	b.ge	el0_dbg
 	b	el0_inv
 el0_svc_compat:
+	gic_prio_kentry_setup tmp=x1
 	mov	x0, sp
 	bl	el0_svc_compat_handler
 	b	ret_to_user
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
