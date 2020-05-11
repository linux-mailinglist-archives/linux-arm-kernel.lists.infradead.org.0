Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D941C1CD3CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 10:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JcobWUzgLlPAJEGVhjIlq62YrsTDCTpG9S27HLcnFdk=; b=EPB
	skiETNNUf07E4HFrmuLj1jYoHwzTM+SYyHTGLWSD2/eoepgSFRmRNOliugenm0EpJH8+YSMEP1jaY
	RziH4CiuT0BHbwOQhgqEj3zndVF9QGTd2hdkTuIdjuwzolhkOlFkMr+S0NxJK2PG3jNogX0I4ueVr
	goiaKcswvLWPpTjsULIhJ4IANXXwnFZ0KTUfVb0fHughmkhMdX9CgbLsk+9MuPHZzttHBayQR7XSv
	Ffa0yilebFtbUOu1xTkV0m0u7RStGpbI7QbsgNS3EnZZlhtkA20byoq50AEfrRSUR1855YxuhRBTe
	eW8UwUlBBhAc+MfesTcysFBZk0lRQEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY3ky-0003qT-91; Mon, 11 May 2020 08:25:48 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY3kr-0003pQ-KQ
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 08:25:43 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 11 May 2020 17:25:39 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 09B4A1800CF;
 Mon, 11 May 2020 17:25:39 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 11 May 2020 17:25:38 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 8392C1A0E67;
 Mon, 11 May 2020 17:25:38 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Mark Brown <broonie@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH 1/2] spi: uniphier: Depend on HAS_IOMEM
Date: Mon, 11 May 2020 17:25:29 +0900
Message-Id: <1589185530-28170-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_012541_783221_8FBDB435 
X-CRM114-Status: GOOD (  13.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver uses devm_ioremap_resource() which is only available when
CONFIG_HAS_IOMEM is set, so the driver depends on this option.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 drivers/spi/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 17e7e4a..099d6a7 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -844,6 +844,7 @@ config SPI_TXX9
 config SPI_UNIPHIER
 	tristate "Socionext UniPhier SPI Controller"
 	depends on (ARCH_UNIPHIER || COMPILE_TEST) && OF
+	depends on HAS_IOMEM
 	help
 	  This enables a driver for the Socionext UniPhier SoC SCSSI SPI controller.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
