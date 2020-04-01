Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D9E19AF6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 18:09:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XxOyILZZNSU4rdXcpZTcWZpVGVKD4olDZ2equFKLzB0=; b=VWdOSFp0NLQKG6
	n/e3sCMw1G3dSmjgxwriAEmIVizM7JC3kCerzAqxHLeVl8T90xk9NHqEGvd5OXE+RHB+YyUo7MKlp
	+g6WHff2Lq1qoUWxZe6YN+Y3Pv+Rb5N+y4RfJ3APYwpDAIPB4KiTm97NHjBMOG+B2cpfITsNNMQp8
	bxF3oUE+evHBSDzxHEVyD7/c/yCUDo/XJUXUv1JSvsEwKoKAqYDh6LVSG+LiM5oIKumQV4Vy7H4ek
	DH7R5NVG4Oah/777iQ0TK5fDp6wq0Px0VmFDg/U0n36zS1/hb3FXjJOad4ZSepyXCb5j9E3Ug922L
	LXRuVCkVa1LIkho3HFlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJfvE-0007AW-7u; Wed, 01 Apr 2020 16:08:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJfv8-0006zE-Fz
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 16:08:51 +0000
Received: from submarine.cbg.collabora.co.uk (unknown
 [IPv6:2a00:5f00:102:0:b4e9:caff:feac:d8b9])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: gtucker)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 8BF942974E8;
 Wed,  1 Apr 2020 17:08:46 +0100 (BST)
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: Russell King <linux@armlinux.org.uk>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH] ARM: exynos: update l2c_aux_mask to fix alert message
Date: Wed,  1 Apr 2020 17:08:03 +0100
Message-Id: <b29f34870380093e6268c11d3033033d6def61b7.1585756648.git.guillaume.tucker@collabora.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_090850_674570_839BD983 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-samsung-soc@vger.kernel.org, kernel@collabora.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow setting the number of cycles for RAM reads in the pl310 cache
controller L2 auxiliary control register mask (bits 0-2) since it
needs to be changed in software.  This only affects exynos4210 and
exynos4412 as they use the pl310 cache controller.

With the mask used until now, the following warnings were generated,
the 2nd one being a pr_alert():

  L2C: platform modifies aux control register: 0x02070000 -> 0x3e470001
  L2C: platform provided aux values permit register corruption.

This latency cycles value has always been set in software in spite of
the warnings.  Keep it this way but clear the alert message about
register corruption to acknowledge it is a valid thing to do.

Tested on exynos4412-odroid-x2.

Signed-off-by: Guillaume Tucker <guillaume.tucker@collabora.com>
Reported-by: "kernelci.org bot" <bot@kernelci.org>
---
 arch/arm/mach-exynos/exynos.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-exynos/exynos.c b/arch/arm/mach-exynos/exynos.c
index 7a8d1555db40..ed1bba49210d 100644
--- a/arch/arm/mach-exynos/exynos.c
+++ b/arch/arm/mach-exynos/exynos.c
@@ -194,7 +194,7 @@ static void __init exynos_dt_fixup(void)
 
 DT_MACHINE_START(EXYNOS_DT, "Samsung Exynos (Flattened Device Tree)")
 	.l2c_aux_val	= 0x3c400001,
-	.l2c_aux_mask	= 0xc20fffff,
+	.l2c_aux_mask	= 0xc20ffff8,
 	.smp		= smp_ops(exynos_smp_ops),
 	.map_io		= exynos_init_io,
 	.init_early	= exynos_firmware_init,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
