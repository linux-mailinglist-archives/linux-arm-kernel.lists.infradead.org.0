Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65F301BEC14
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 00:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFsIfV+mhVzXhrJxlI8GJPmSFScQ8JKs4e0BAy8yKpI=; b=LbBVgLf6uBxBEJ
	K6Vp405TiWzuj/9dFVPmqv+z7tBHW8s7NIoUboRFFhcXc7s9MhKmdkKoCSagZxwUZgutk61w5c/QK
	R3N4Bp2ZYbyEcNhYeeoNdXHULA0HAwgF81DTJX7WIPDAz0VF9deDpgYK3VDlgDTJVxrjGwvTi82H7
	rh4X/9QOA6sZK46DDsMs692rskchQfpxCk6W7+0ApgpLoztP7bsiLBVHrFgJ66/rQqGUW6xZNtZfb
	WuKEg1xiY1MLckAEwwKglTpJJTydjeCcpRUbEFJPlGn4nLsTvkVcFv4pTO0EjKC78j1/1SRavVKXm
	y95wGOP2+F/vEVK79hnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTvFX-0004WY-2G; Wed, 29 Apr 2020 22:32:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTvFL-0004Ta-Ou; Wed, 29 Apr 2020 22:32:05 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:2c:6930:b93f:9fae:b276:a89a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 632492A1751;
 Wed, 29 Apr 2020 23:31:59 +0100 (BST)
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Miquel Raynal <miquel.raynal@bootlin.com>, linux-mtd@lists.infradead.org
Subject: [PATCH 2/3] ARM: pxa: Stop selecting CONFIG_MTD_NAND_CM_X270
Date: Thu, 30 Apr 2020 00:31:33 +0200
Message-Id: <20200429223134.789322-3-boris.brezillon@collabora.com>
X-Mailer: git-send-email 2.25.3
In-Reply-To: <20200429223134.789322-1-boris.brezillon@collabora.com>
References: <20200429223134.789322-1-boris.brezillon@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_153203_944180_353A924C 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>, Arnd Bergmann <arnd@arndb.de>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Mike Rapoport <mike@compulab.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the NAND is handled through the gen_nand driver we can stop
selecting CONFIG_MTD_NAND_CM_X270.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
---
 arch/arm/configs/cm_x2xx_defconfig | 1 -
 arch/arm/configs/pxa_defconfig     | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/configs/cm_x2xx_defconfig b/arch/arm/configs/cm_x2xx_defconfig
index fa997ae2673e..08ebb993d34a 100644
--- a/arch/arm/configs/cm_x2xx_defconfig
+++ b/arch/arm/configs/cm_x2xx_defconfig
@@ -59,7 +59,6 @@ CONFIG_MTD_PHYSMAP=y
 CONFIG_MTD_PXA2XX=y
 CONFIG_MTD_RAW_NAND=y
 CONFIG_MTD_NAND_GPIO=m
-CONFIG_MTD_NAND_CM_X270=y
 CONFIG_MTD_NAND_PLATFORM=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_BLK_DEV_RAM=y
diff --git a/arch/arm/configs/pxa_defconfig b/arch/arm/configs/pxa_defconfig
index b817c57f05f1..f829b0b7866d 100644
--- a/arch/arm/configs/pxa_defconfig
+++ b/arch/arm/configs/pxa_defconfig
@@ -194,7 +194,6 @@ CONFIG_MTD_NAND_DISKONCHIP_PROBE_HIGH=y
 CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE=y
 CONFIG_MTD_NAND_SHARPSL=m
 CONFIG_MTD_NAND_MARVELL=m
-CONFIG_MTD_NAND_CM_X270=m
 CONFIG_MTD_NAND_TMIO=m
 CONFIG_MTD_NAND_BRCMNAND=m
 CONFIG_MTD_NAND_PLATFORM=m
-- 
2.25.3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
