Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24FFD16861F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 19:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eD6cme2x/RszIhx/BKnoA70w4J+5fBRObLzqkdcP2oU=; b=kOi4oDeeZntkpz
	FRUq64kplVcnPq+BUDaq3k7TPyGphAjoKDvi1f8msLliVTYClhKbtCGB2SAi9dVVZU9Ft1wwoNa5f
	xZUqNkbO24TNNLp7iVa1bX0l8BNWt8qeQOJjmrNzsj8InNlKbz0sus8ZM1vKd9ehS9dFL5O3L8t9I
	/tTOtUxfxQdnml/H86IFfKj1DTdy7zodUhK4F5jHpye5PxuFXcAhHe6J8DA1YJhkwL2K7nkmvyy7b
	WVHw66vkvD4PEUHZ57hOmv/7dRQ5hqzeFoF4O4RcOcD063sJGFo3QvAclPKjkbhcKH7kcxOK7S5CE
	Sadn9xZlVaNugJGzUDUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Cjq-0002bL-Tn; Fri, 21 Feb 2020 18:09:22 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Cjh-0002an-5m
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 18:09:14 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 72836807E;
 Fri, 21 Feb 2020 18:09:52 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: OMAP2+: Fix compile if CONFIG_HAVE_ARM_SMCCC is not set
Date: Fri, 21 Feb 2020 10:09:01 -0800
Message-Id: <20200221180901.15812-1-tony@atomide.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_100913_257756_E08F6C4C 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Rob Herring <robh@kernel.org>, kbuild test robot <lkp@intel.com>,
 Arnd Bergmann <arnd@arndb.de>, Aaro Koskinen <aaro.koskinen@iki.fi>,
 Catalin Marinas <catalin.marinas@arm.com>, "Andrew F . Davis" <afd@ti.com>,
 Marc Zyngier <maz@kernel.org>, Russell King <rmk+kernel@arm.linux.org.uk>,
 Steven Price <steven.price@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recent omap changes added runtime checks to use omap_smccc_smc()
when optee is configured in dts. As the omap-secure code can be
built for ARMv6 only without ARMv7 and use custom smc calls, we
now get a build error:

omap-secure.c:(.text+0x94): undefined reference to `__arm_smccc_smc'

Let's just ifdef out omap_smccc_smc() unless the CPU has selected
CONFIG_HAVE_ARM_SMCCC. The other option discussed was to add an
inline function to arm-smccc.h, but we'd still also have to add
ifdef around omap_smccc_smc() to avoid a warning for uninitialized
value for struct arm_smccc_res in omap_smccc_smc(). And we probably
should not start initializing values in arm-smccc.h if disabled.

Let's also warn on trying to use omap_smccc_smc() if disabled as
suggested by Andrew F. Davis <afd@ti.com>.

Fixes: 48840e16c299 ("ARM: OMAP2+: Use ARM SMC Calling Convention when OP-TEE is available")
Reported-by: kbuild test robot <lkp@intel.com>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>
Cc: Andrew F. Davis <afd@ti.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Russell King <rmk+kernel@arm.linux.org.uk>
Cc: Steven Price <steven.price@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/mach-omap2/omap-secure.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/mach-omap2/omap-secure.c b/arch/arm/mach-omap2/omap-secure.c
--- a/arch/arm/mach-omap2/omap-secure.c
+++ b/arch/arm/mach-omap2/omap-secure.c
@@ -77,6 +77,7 @@ u32 omap_secure_dispatcher(u32 idx, u32 flag, u32 nargs, u32 arg1, u32 arg2,
 	return ret;
 }
 
+#ifdef CONFIG_HAVE_ARM_SMCCC
 void omap_smccc_smc(u32 fn, u32 arg)
 {
 	struct arm_smccc_res res;
@@ -85,6 +86,12 @@ void omap_smccc_smc(u32 fn, u32 arg)
 		      0, 0, 0, 0, 0, 0, &res);
 	WARN(res.a0, "Secure function call 0x%08x failed\n", fn);
 }
+#else
+void omap_smccc_smc(u32 fn, u32 arg)
+{
+	WARN_ONCE(1, "smccc is disabled\n");
+}
+#endif
 
 void omap_smc1(u32 fn, u32 arg)
 {
-- 
2.25.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
