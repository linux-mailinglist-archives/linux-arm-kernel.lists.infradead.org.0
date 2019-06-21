Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F08FB4E340
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:18:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qiIedXm1MqPSVbXKNMRbjigkub8NnB2NVRkPYh7OGhM=; b=aYMgI390xXZrdYjl7pdpj/VX//
	1ZSXYeuemJYnbsnDp3Zma48IwtRvGyhqrSn2vidWmTGr9vdwRL0wOuWD8imbAr+pMimVQj6u4GZUt
	BQSU8BGUGzZcmSZf9aQVL/uh2tUvwEwJNp6tQv3Ar3d4i4SwIyOjGGH3dFpAxZCr4lJDohOySNSgW
	7v+NM9xUo/S7D5hMtpsi5ZSbzuKBOTCBtvl0dOSRQSntDn79v4IGslVDfrNpqvHENuMoT9PI1QWyp
	OVi0/+rTqyT7nQaXY66zKnRztN7zDxMqxoANUG8t+ooBpold/AMH3L0xL7VKE48ivbO3+hvOamLPb
	cKyDSS4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFgU-0003Wu-7b; Fri, 21 Jun 2019 09:18:14 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFag-0007TL-EV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:12:16 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 0E47025AD85;
 Fri, 21 Jun 2019 19:12:13 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 14588940954; Fri, 21 Jun 2019 11:12:11 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 1/2] ARM: mach-shmobile: Don't init CNTVOFF/counter if PSCI is
 available
Date: Fri, 21 Jun 2019 11:12:08 +0200
Message-Id: <51a0daf64dee78dacaecc7bec3d36e0b2f49c7a1.1561105093.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561105093.git.horms+renesas@verge.net.au>
References: <cover.1561105093.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021214_974757_CDE57E60 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Simon Horman <horms+renesas@verge.net.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>

If PSCI is available then most likely we are running on PSCI-enabled
U-Boot which, we assume, has already taken care of resetting CNTVOFF
and updating counter module before switching to non-secure mode
and we don't need to.

As the psci_smp_available() helper always returns false if CONFIG_SMP
is disabled, it can't be used safely as an indicator of PSCI usage.
For that reason, we check for the mandatory PSCI operation to be
available.

Please note, an extra check to prevent secure_cntvoff_init() from
being called for secondary CPUs in headsmp-apmu.S is not needed,
as SMP code for APMU based system is not executed if PSCI is in use.

Signed-off-by: Oleksandr Tyshchenko <oleksandr_tyshchenko@epam.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/mach-shmobile/setup-rcar-gen2.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/mach-shmobile/setup-rcar-gen2.c b/arch/arm/mach-shmobile/setup-rcar-gen2.c
index eea60b20c6b4..9e4bc1865f84 100644
--- a/arch/arm/mach-shmobile/setup-rcar-gen2.c
+++ b/arch/arm/mach-shmobile/setup-rcar-gen2.c
@@ -17,6 +17,7 @@
 #include <linux/of.h>
 #include <linux/of_fdt.h>
 #include <linux/of_platform.h>
+#include <linux/psci.h>
 #include <asm/mach/arch.h>
 #include <asm/secure_cntvoff.h>
 #include "common.h"
@@ -60,9 +61,24 @@ static unsigned int __init get_extal_freq(void)
 
 void __init rcar_gen2_timer_init(void)
 {
+	bool need_update = true;
 	void __iomem *base;
 	u32 freq;
 
+	/*
+	 * If PSCI is available then most likely we are running on PSCI-enabled
+	 * U-Boot which, we assume, has already taken care of resetting CNTVOFF
+	 * and updating counter module before switching to non-secure mode
+	 * and we don't need to.
+	 */
+#ifdef CONFIG_ARM_PSCI_FW
+	if (psci_ops.cpu_on)
+		need_update = false;
+#endif
+
+	if (need_update == false)
+		goto skip_update;
+
 	secure_cntvoff_init();
 
 	if (of_machine_is_compatible("renesas,r8a7745") ||
@@ -102,6 +118,7 @@ void __init rcar_gen2_timer_init(void)
 
 	iounmap(base);
 
+skip_update:
 	of_clk_init(NULL);
 	timer_probe();
 }
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
