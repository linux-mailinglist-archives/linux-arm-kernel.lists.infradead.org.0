Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DB01F7932
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 15:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z8oCkinATvXLRkVRj/bPsHWmbWZh7mERwzIRhKxzrqU=; b=JNBgDgbOcbI+sF
	va/RvkA7lTINpEvsVIdsPId1MgcYHtV2yGdt4imCPVWrRVH90lXFXbyoFaocGi5TMt5nBq6KrQnSs
	QS0iPh4PWLHoZQx9Z/ZN529X6h6i4bA3YiUElojwlW5Tzk/tNpwXIsB9jNEcgBotfzO3fI/Uc/Oh4
	XH8dpqP02gvdWLRr/4VutHRqmkDu9MIjGCQjQ31p4RDWim+t7cD2QKduhb+dZNpnjvl4J2xeqtBM1
	1AEMYxAgnJoFTjdE0iGUavE5MtbNN1zijuKOIysYIXgfeeDVPYFfG6LNS0sLreQnAew+l5QbjRhel
	9A1Y2IIM/KjQKYzSbXzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjkDC-0008L0-Mc; Fri, 12 Jun 2020 13:59:14 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjkD4-0008KC-Jl
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 13:59:08 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 3ED132A23FB
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Russell King <linux@armlinux.org.uk>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] ARM: exynos: clear L310_AUX_CTRL_FULL_LINE_ZERO in default
 l2c_aux_val
Date: Fri, 12 Jun 2020 14:58:37 +0100
Message-Id: <c6d979c0050502cd1bca8619cb5ff95db239db12.1591969825.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_065906_783317_F6DE92C6 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kyungmin Park <kyungmin.park@samsung.com>,
 linux-samsung-soc@vger.kernel.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This "alert" error message can be seen on exynos4412-odroidx2:

    L2C: platform modifies aux control register: 0x02070000 -> 0x3e470001
    L2C: platform provided aux values permit register corruption.

Followed by this plain error message:

    L2C-310: enabling full line of zeros but not enabled in Cortex-A9

To fix it, don't set the L310_AUX_CTRL_FULL_LINE_ZERO flag (bit 0) in
the default value of l2c_aux_val.  It may instead be enabled when
applicable by the logic in l2c310_enable() if the attribute
"arm,full-line-zero-disable" was set in the device tree.

The initial commit that introduced this default value was in v2.6.38:

  1cf0eb799759 "ARM: S5PV310: Add L2 cache init function in cpu.c"

However, the code to set the L310_AUX_CTRL_FULL_LINE_ZERO flag and
manage that feature was added much later and the default value was not
updated then.  So this seems to have been a subtle oversight
especially since enabling it only in the cache and not in the A9 core
doesn't actually prevent the platform from running.  According to the
TRM, the opposite would be a real issue, if the feature was enabled in
the A9 core but not in the cache controller.

Reported-by: "kernelci.org bot" <bot@kernelci.org>
Signed-off-by: Guillaume Tucker <guillaume.tucker@collabora.com>
---
 arch/arm/mach-exynos/exynos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
index 7a8d1555db40..36c37444485a 100644
--- a/arch/arm/mach-exynos/exynos.c
+++ b/arch/arm/mach-exynos/exynos.c
@@ -193,7 +193,7 @@ static void __init exynos_dt_fixup(void)
 }
 
 DT_MACHINE_START(EXYNOS_DT, "Samsung Exynos (Flattened Device Tree)")
-	.l2c_aux_val	= 0x3c400001,
+	.l2c_aux_val	= 0x3c400000,
 	.l2c_aux_mask	= 0xc20fffff,
 	.smp		= smp_ops(exynos_smp_ops),
 	.map_io		= exynos_init_io,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
