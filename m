Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7759DDB126
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3ircUhHcX6EyBnmLp85hNpfsb67nt4ZITyLanre7jmo=; b=NIv2KhKkWSoLJD
	5L3j8U9im0TiBA2Ad9DH5vjBZWAlb0w01sFoYj/dmBT2NsmSzJDHp4ECAf+XLWVg98hG0WKt+wiw9
	wpoLaP9FojLL9IjuSZGHxwbZ8B1eOO+3orsmipCQLoyqHAjenwooSKr63h9AwP9xgMUPd8qBCIUbA
	qkNz7R3Dj7DOntCAh+mFauYr4KfB4ReLNBg6Q/9sKcqUiw25s6kkbUKLnNuw6b2Idw9UlOWlwPgwF
	0PqlyC5ATJngcUwDAtg17pIbfRxVNxrzc4879vqYGlPePIMRwqy77oS4ZQmVXlaFJA8b5o5Bkupsv
	zoYQChXMqHKa6dtsn3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL7l5-0000wG-Cc; Thu, 17 Oct 2019 15:32:11 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL7ku-0000uz-My
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:32:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0398A329;
 Thu, 17 Oct 2019 08:31:47 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (unknown [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 199B03F6C4;
 Thu, 17 Oct 2019 08:31:45 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH] arm64: kprobes: Drop open-coded exception fixup
Date: Thu, 17 Oct 2019 16:31:42 +0100
Message-Id: <e70f7b9de7e601b9e4a6fedad8eaf64d304b1637.1571326276.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_083200_790530_F00BACBF 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: james.morse@arm.com, mhiramat@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The short-circuit call to fixup_exception() from kprobe_fault_handler()
poses a problem now that the former wants to consume the fault address
too, since the common kprobes API offers us no way to pass it through.
Fortunately, however, it works out to be unnecessary:

- uaccess instructions themselves are not probeable, so at most we
  should only ever expect to take a fixable fault from the pre or post
  handlers.
- the pre and post handler run with preemption disabled, thus for any
  fault they may cause, an unhandled return from kprobe_page_fault()
  will proceed directly to __do_kernel_fault() thanks to the
  faulthandler_disabled() check.
- __do_kernel_fault() will immediately call fixup_exception() unless
  we're in an EL1 instruction abort, and if we've somehow taken one of
  those on what we think is the middle of a uaccess routine, then the
  world is already very on fire.

Thus we can reasonably drop the call from kprobe_fault_handler() and
leave uaccess fixups to the regular flow.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 arch/arm64/kernel/probes/kprobes.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..422fbd5c6c55 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -334,13 +334,6 @@ int __kprobes kprobe_fault_handler(struct pt_regs *regs, unsigned int fsr)
 		 */
 		if (cur->fault_handler && cur->fault_handler(cur, regs, fsr))
 			return 1;
-
-		/*
-		 * In case the user-specified fault handler returned
-		 * zero, try to fix up.
-		 */
-		if (fixup_exception(regs))
-			return 1;
 	}
 	return 0;
 }
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
