Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF5F29EC42
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DXgGr3M2m09asr2/Au8h5QUooPyFZqqdEqXq+X8NhIU=; b=gUbduzFsBaBcJVGeTU1QfGBjHH
	DF+/VjNlxNfcoligV0rTdxNi2/YHhSqoUMd+QOMUKtKZvyR7dOS+o5CNep71fcs79GGY7SpUTQsrO
	kA8krxeZ1X19OWOMLdYShL0QEO+NQjSxpGpdwDY84pQRUnJzrsAe4flk7viK6AkpliRbsfxw+SiKS
	j2xQKzf5qXAaY4DrB5xiRZcr1LqOG+6HShNg5pp7R4gtPVNY2dWS0dMHbq6MAaslQ0gRr9fgWil2U
	RPKb1YKSoEAzeN4MpHQWMHc0C67wTh/Plp1gucKGVr2GCoDlCP9hPSZsk0U5EJvrbVM/YcBSoKBxN
	gcRrYuig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2dFA-0005VZ-Pa; Tue, 27 Aug 2019 15:18:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2dEm-0005Lp-E4
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:18:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 179EC360;
 Tue, 27 Aug 2019 08:18:24 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 5D1AB3F59C;
 Tue, 27 Aug 2019 08:18:23 -0700 (PDT)
From: Will Deacon <will@kernel.org>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] arm64: smp: Increase secondary CPU boot timeout value
Date: Tue, 27 Aug 2019 16:18:13 +0100
Message-Id: <20190827151815.2160-2-will@kernel.org>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190827151815.2160-1-will@kernel.org>
References: <20190827151815.2160-1-will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_081824_510917_27B30109 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When many debug options are enabled simultaneously (e.g. PROVE_LOCKING,
KMEMLEAK, DEBUG_PAGE_ALLOC, KASAN etc), it is possible for us to timeout
when attempting to boot a secondary CPU and give up. Unfortunately, the
CPU will /eventually/ appear, and sit in the background happily stuck
in a recursive exception due to a NULL stack pointer.

Increase the timeout to 5s, which will of course be enough for anybody.

Signed-off-by: Will Deacon <will@kernel.org>
---
 arch/arm64/kernel/smp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
index 018a33e01b0e..63c7a7682e93 100644
--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -123,7 +123,7 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
 		 * time out.
 		 */
 		wait_for_completion_timeout(&cpu_running,
-					    msecs_to_jiffies(1000));
+					    msecs_to_jiffies(5000));
 
 		if (!cpu_online(cpu)) {
 			pr_crit("CPU%u: failed to come online\n", cpu);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
