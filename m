Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7183B1BB470
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T4L9cHLer5YUCtwW+JBn8cIoWk+030WQAeHMUrgzeWo=; b=lWKGrMrW6i38+e
	o8oCzf1q74eUzSYhq8mTrItvovkJ82orzwMI8Ti40KSj6M6U6xMMKBoufnymksBM4UmfzyQK3/lXp
	eZTZsM8tfYAPiDBFXCp6wUyuzoNeq9IUafT7rcds+cCFBk8aJeu3y09UUWrgDMPX3f1TVLRg+4qn8
	zuo7hntFn02sUk/uO6EDCPdT0dwLLxlgjMoPl3E+hWU6f87oYfB8MbsBOi/O3/yl/25koNJTNfJwm
	lqgns6yycnLu+PDIWoDZfEuoEhgQQFFm/xKy5rX9wm+1u3D9My15OZzeG3/ZKYWiYiUBTAzdGpy1l
	sFQCSokjRHYAdV3Yh/VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGlO-0002pl-VX; Tue, 28 Apr 2020 03:18:26 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGl8-0002nQ-W2; Tue, 28 Apr 2020 03:18:12 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A4163CD85AA8205E4AD0;
 Tue, 28 Apr 2020 11:17:50 +0800 (CST)
Received: from localhost (10.166.215.154) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Tue, 28 Apr 2020
 11:17:41 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <chunkuang.hu@kernel.org>, <p.zabel@pengutronix.de>, <airlied@linux.ie>,
 <daniel@ffwll.ch>, <matthias.bgg@gmail.com>, <ck.hu@mediatek.com>,
 <enric.balletbo@collabora.com>, <yuehaibing@huawei.com>
Subject: [PATCH v2 -next] soc: mediatek: Fix Kconfig warning
Date: Tue, 28 Apr 2020 11:17:29 +0800
Message-ID: <20200428031729.49372-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
In-Reply-To: <CAAOTY__km=QZQACp8g-Qr+aWZ4r0Yp7O5j7u8ZTpDpTXXfUdNw@mail.gmail.com>
References: <CAAOTY__km=QZQACp8g-Qr+aWZ4r0Yp7O5j7u8ZTpDpTXXfUdNw@mail.gmail.com>
MIME-Version: 1.0
X-Originating-IP: [10.166.215.154]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_201811_199262_B78FEC70 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WARNING: unmet direct dependencies detected for MTK_MMSYS
  Depends on [n]: (ARCH_MEDIATEK [=y] || COMPILE_TEST [=n]) && COMMON_CLK_MT8173_MMSYS [=n]
  Selected by [y]:
  - DRM_MEDIATEK [=y] && HAS_IOMEM [=y] && DRM [=y] && (ARCH_MEDIATEK [=y] || ARM && COMPILE_TEST [=n]) && COMMON_CLK [=y] && HAVE_ARM_SMCCC [=y] && OF [=y]

Make MTK_MMSYS select COMMON_CLK_MT8173_MMSYS to fix this.

Fixes: 2c758e301ed9 ("soc / drm: mediatek: Move routing control to mmsys device")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
v2: select COMMON_CLK_MT8173_MMSYS instead of adding DRM_MEDIATEK dependency  
---
 drivers/soc/mediatek/Kconfig | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
index e84513318725..7f9da11e1a50 100644
--- a/drivers/soc/mediatek/Kconfig
+++ b/drivers/soc/mediatek/Kconfig
@@ -46,8 +46,7 @@ config MTK_SCPSYS
 
 config MTK_MMSYS
 	bool "MediaTek MMSYS Support"
-	depends on COMMON_CLK_MT8173_MMSYS
-	default COMMON_CLK_MT8173_MMSYS
+	select COMMON_CLK_MT8173_MMSYS
 	help
 	  Say yes here to add support for the MediaTek Multimedia
 	  Subsystem (MMSYS).
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
