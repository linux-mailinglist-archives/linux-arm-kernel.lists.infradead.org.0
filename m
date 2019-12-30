Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4777B12D29A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 18:25:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wu+sXON1IWXssOjObCRMSc3Jb4/GauT0jpOuNLXSPYM=; b=PRP
	onS64DuUEL9peGpiNZb2JaCbLj/JAsxuiPa6sV6IRHUbavTqP+Xmr20zBQsk8L2LSYBGTVllGRwut
	kwSzHL4U5Z+cUKVBQiIQ4n37TwR74PGNw4bW2YC5jP56sa8CceVFAtzy8BkBBRM4XyG4CW416L1vH
	etm+r+df8q2XSlZQKYRgllWTWHjEUj7F7ki929N2BvXYZtME70zjBcB2tFKtDZTuAQJLp9AK5YCyw
	ceG2Pt0qIv5/WKR2jjMqLX0/6cP3yiY0c+sCeaI+nPNSCC5jYYe3hw5/REmDparAuuf4f0ZE89FRz
	jwz7N3UNpb4+G0yAttg7lTf/qiqfa3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilyn7-0000Ld-7c; Mon, 30 Dec 2019 17:25:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilymm-0000Kg-Ef; Mon, 30 Dec 2019 17:24:57 +0000
Received: from localhost.localdomain (unknown [194.230.155.138])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 31C22206DB;
 Mon, 30 Dec 2019 17:24:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577726696;
 bh=EsQA2oBlxFfBaNY5mvtk/CPk5uxnzq/ckqNlGd4sN4M=;
 h=From:To:Cc:Subject:Date:From;
 b=HeHKm9YNBsTFVLr7oG0enmKL6DHvH1S6zKL+u/h948o9zCkmlkpOqJBw7+Yu2Rsew
 hreH/Bn13Ww9iOLvUv3hN49bXTNMMfQD9PEC9Ulj5F4bXiajxtNFGYrv1aczgNEdAH
 sTSVttvwlXrI4jS631zOrYtC4U67O6FIme8R9f+4=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] phy: mediatek: Fix Kconfig indentation
Date: Mon, 30 Dec 2019 18:24:48 +0100
Message-Id: <20191230172449.17648-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_092456_509679_8322D270 
X-CRM114-Status: GOOD (  11.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/phy/mediatek/Kconfig | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/phy/mediatek/Kconfig b/drivers/phy/mediatek/Kconfig
index 376f5d189da0..7d19134c6b7c 100644
--- a/drivers/phy/mediatek/Kconfig
+++ b/drivers/phy/mediatek/Kconfig
@@ -3,12 +3,12 @@
 # Phy drivers for Mediatek devices
 #
 config PHY_MTK_TPHY
-    tristate "MediaTek T-PHY Driver"
-    depends on ARCH_MEDIATEK && OF
-    select GENERIC_PHY
-    help
-      Say 'Y' here to add support for MediaTek T-PHY driver,
-      it supports multiple usb2.0, usb3.0 ports, PCIe and
+	tristate "MediaTek T-PHY Driver"
+	depends on ARCH_MEDIATEK && OF
+	select GENERIC_PHY
+	help
+	  Say 'Y' here to add support for MediaTek T-PHY driver,
+	  it supports multiple usb2.0, usb3.0 ports, PCIe and
 	  SATA, and meanwhile supports two version T-PHY which have
 	  different banks layout, the T-PHY with shared banks between
 	  multi-ports is first version, otherwise is second veriosn,
@@ -25,10 +25,10 @@ config PHY_MTK_UFS
 	  specified M-PHYs.
 
 config PHY_MTK_XSPHY
-    tristate "MediaTek XS-PHY Driver"
-    depends on ARCH_MEDIATEK && OF
-    select GENERIC_PHY
-    help
+	tristate "MediaTek XS-PHY Driver"
+	depends on ARCH_MEDIATEK && OF
+	select GENERIC_PHY
+	help
 	  Enable this to support the SuperSpeedPlus XS-PHY transceiver for
 	  USB3.1 GEN2 controllers on MediaTek chips. The driver supports
 	  multiple USB2.0, USB3.1 GEN2 ports.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
