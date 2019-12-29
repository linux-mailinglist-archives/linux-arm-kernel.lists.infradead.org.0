Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B1A12CA7B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 19:37:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X919AyBnYLcJrTOduYUA1PH2ggU7opBAajmpR0+jlQU=; b=QqjwHCH2PG3WuoCgtHlyaPcXUc
	DOuDgLBY1ulVc4g5XDOt5Bccdd6oHc5IBJqfH7zW6cEHfSUeEz7CBunKqMdzCVcjUoD1Lm96tNBGl
	Fawm9HVH+F4yKhP5OQLZJF60q7lCnl3Z92NIj3eoCYI2pGJ/MD7bNq3py3QuYZ17VB0T0PJQ/d6hk
	Dt9i9Z0smXqEj2MUEW2hOD2hMy14ygzYeZLW09W02GqL/bqsDBQL0DQufHK47hnefcG3aR5k/18T9
	CtGl1qfL7hJ+4Xr9aHWDTEQ1PjR3+mpJA1W3ZuK7iiucJ1a9E4fubpRa1O3gYEwD2GbLFv3hCCYuk
	ylZYSFWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ildRQ-0002E2-4p; Sun, 29 Dec 2019 18:37:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ildQR-0001Mm-M8; Sun, 29 Dec 2019 18:36:28 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6BB4A207FF;
 Sun, 29 Dec 2019 18:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577644587;
 bh=83Q0i6gy5JrAk6opf7Mtf88kk8US5YyE5EsfErHveAo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cAKT8OWjASnDNvIY7bRBmo1mwYWpc07yflAfxBW0fnjcO1EimXQ1BDICRniXpJUvO
 p8hpIyRMWBbiMzFQrZgJ0k+SuWiHFXw0cYMLiJUqHxDTIPYFpXBjn7vNbAvh6gPCnQ
 hHXZygZBv5bvH8/M++r+3xNMRC97z5hn3u3xnYkM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kyungmin Park <kyungmin.park@samsung.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] mtd: onenand: Enable compile testing of OMAP and Samsung
 drivers
Date: Sun, 29 Dec 2019 19:36:12 +0100
Message-Id: <20191229183612.22133-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229183612.22133-1-krzk@kernel.org>
References: <20191229183612.22133-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_103627_739095_9EC5D90B 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-samsung-soc@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

OMAP and Samsung OneNAND drivers can be compile tested.  The OMAP
drivers still depends on mach header so limit the compile testing to
ARMv7.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/mtd/nand/onenand/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/nand/onenand/Kconfig b/drivers/mtd/nand/onenand/Kconfig
index ae0b8fe5b990..3886644de094 100644
--- a/drivers/mtd/nand/onenand/Kconfig
+++ b/drivers/mtd/nand/onenand/Kconfig
@@ -25,7 +25,7 @@ config MTD_ONENAND_GENERIC
 
 config MTD_ONENAND_OMAP2
 	tristate "OneNAND on OMAP2/OMAP3 support"
-	depends on ARCH_OMAP2 || ARCH_OMAP3
+	depends on ARCH_OMAP2 || ARCH_OMAP3 || (COMPILE_TEST && ARM)
 	depends on OF || COMPILE_TEST
 	help
 	  Support for a OneNAND flash device connected to an OMAP2/OMAP3 SoC
@@ -34,7 +34,7 @@ config MTD_ONENAND_OMAP2
 
 config MTD_ONENAND_SAMSUNG
         tristate "OneNAND on Samsung SOC controller support"
-        depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS4
+        depends on ARCH_S3C64XX || ARCH_S5PV210 || ARCH_EXYNOS4 || COMPILE_TEST
         help
           Support for a OneNAND flash device connected to an Samsung SOC.
           S3C64XX uses command mapping method.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
