Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AD52FAF0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 13:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eYXdWwlwNXpuZXELQccH8kk8i0/agqzDiDn7MfIZajo=; b=PVI
	eHJjpGiep3s+X/co7axjdMTCuW1ZIxvVfWTXTgBTSJWjHMoBxnMH78AdPfOwzMPKfRFnotaSqWKNj
	c/prXgfxGTZFKwp7YEwuCGyaDgsIQNRBeEa9OzZgEkwR1t+KLwADPDRAwBLwBVhCV+yYmKALWMoVv
	vPy6KrASyO2AS8kzZLPUZbeqJcrzzVxnZSEy2AIDZNG8oM8tcPpdnZIRROtcBG5kvO+GfsKrerHVO
	o9f1aSNjuTv5ug8F8LTyuEXzhxCnMbRoSDzMFwVnOTfgDV9GdjeE8I124DLzdwZ1W3rL89QVHY4pH
	IHBgkj8QHpHETrNCPX7bm6mwJJLeQdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWJHB-0007dJ-8f; Thu, 30 May 2019 11:31:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWJH3-0007cy-Pc
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 11:31:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 78B11374;
 Thu, 30 May 2019 04:31:07 -0700 (PDT)
Received: from e108454-lin.cambridge.arm.com (e108454-lin.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 853FF3F5AF;
 Thu, 30 May 2019 04:31:05 -0700 (PDT)
From: Julien Grall <julien.grall@arm.com>
To: linux-kernel@vger.kernel.org, linux-rt-users@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64/cpufeature: Convert hook_lock to raw_spin_lock_t in
 cpu_enable_ssbs()
Date: Thu, 30 May 2019 12:30:58 +0100
Message-Id: <20190530113058.1988-1-julien.grall@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_043109_839612_B8371A88 
X-CRM114-Status: GOOD (  15.55  )
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
Cc: suzuki.poulose@arm.com, catalin.marinas@arm.com, bigeasy@linutronix.de,
 will.deacon@arm.com, rostedt@goodmis.org, Julien Grall <julien.grall@arm.com>,
 tglx@linutronix.de, dave.martin@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cpu_enable_ssbs() is called via stop_machine() as part of the cpu_enable
callback. A spin lock is used to ensure the hook is registered before
the rest of the callback is executed.

On -RT spin_lock() may sleep. However, all the callees in stop_machine()
are expected to not sleep. Therefore a raw_spin_lock() is required here.

Given this is already done under stop_machine() and the work done under
the lock is quite small, the latency should not increase too much.

Signed-off-by: Julien Grall <julien.grall@arm.com>

---

It was noticed when looking at the current use of spin_lock in
arch/arm64. I don't have a platform calling that callback, so I have
hacked the code to reproduce the error and check it is now fixed.
---
 arch/arm64/kernel/cpufeature.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
index ca27e08e3d8a..2a7159fda3ce 100644
--- a/arch/arm64/kernel/cpufeature.c
+++ b/arch/arm64/kernel/cpufeature.c
@@ -1194,14 +1194,14 @@ static struct undef_hook ssbs_emulation_hook = {
 static void cpu_enable_ssbs(const struct arm64_cpu_capabilities *__unused)
 {
 	static bool undef_hook_registered = false;
-	static DEFINE_SPINLOCK(hook_lock);
+	static DEFINE_RAW_SPINLOCK(hook_lock);
 
-	spin_lock(&hook_lock);
+	raw_spin_lock(&hook_lock);
 	if (!undef_hook_registered) {
 		register_undef_hook(&ssbs_emulation_hook);
 		undef_hook_registered = true;
 	}
-	spin_unlock(&hook_lock);
+	raw_spin_unlock(&hook_lock);
 
 	if (arm64_get_ssbd_state() == ARM64_SSBD_FORCE_DISABLE) {
 		sysreg_clear_set(sctlr_el1, 0, SCTLR_ELx_DSSBS);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
