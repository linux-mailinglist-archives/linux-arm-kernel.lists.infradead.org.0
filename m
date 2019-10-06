Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9900BCD0A9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 12:33:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1QDMkPGISYBZNGWxnVeUGV8vXIFQPI6W9TovuxL38c0=; b=lwyTzUJ5Dlujxp
	oRIxk3GZdcloNSblzgM0q+Cn9vzkxbudohbjgIwEiE8mE0vfXRhT2BJgiQszgJCwSnMvSEjhkonks
	EtG9c/tAPpyM8gW6ZSPoKfiogjAG8Y4UlUP0fObpY+DzPV5OSbcMZMm+r5olWNPhMIHC4Mwmvxy4s
	jISogo4qhEkYd/zHUIywU8AraKw2fqoQXo92zKL0IVIdSslg2PkumpAemkd5HkNVO3pzkD86DBfGH
	PBO/AzMSzm15IAPeAOCDwxquilugM7oBE5jJ97+ButsWuiyn2s719hB8nZ9+kSk/iTW+GTeQzoSu1
	AwMTB0d7OCJBrw5nB3hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iH3qf-0006OH-Mg; Sun, 06 Oct 2019 10:33:09 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iH3ps-0005xF-Vx; Sun, 06 Oct 2019 10:32:23 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 692D91EFCA547C100FC8;
 Sun,  6 Oct 2019 18:32:07 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Sun, 6 Oct 2019
 18:31:58 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>, <joel@jms.id.au>, 
 <andrew@aj.id.au>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <computersforpeace@gmail.com>,
 <gregory.0xf0@gmail.com>, <f.fainelli@gmail.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <linus.walleij@linaro.org>,
 <baruch@tkos.co.il>, <paul@crapouillou.net>, <vz@mleia.com>,
 <slemieux.tyco@gmail.com>, <khilman@baylibre.com>,
 <eddie.huang@mediatek.com>, <sean.wang@mediatek.com>,
 <matthias.bgg@gmail.com>, <patrice.chotard@st.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <mripard@kernel.org>, 
 <wens@csie.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <linux@prisktech.co.nz>, <michal.simek@xilinx.com>
Subject: [PATCH -next 00/34] rtc: use devm_platform_ioremap_resource() to
 simplify code
Date: Sun, 6 Oct 2019 18:29:19 +0800
Message-ID: <20191006102953.57536-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_033221_201050_FB3DC068 
X-CRM114-Status: UNSURE (   3.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: linux-rtc@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_platform_ioremap_resource() internally have platform_get_resource()
and devm_ioremap_resource() in it. So instead of calling them separately
use devm_platform_ioremap_resource() directly.

YueHaibing (34):
  rtc: asm9260: use devm_platform_ioremap_resource() to simplify code
  rtc: rtc-aspeed: use devm_platform_ioremap_resource() to simplify code
  rtc: brcmstb-waketimer: use devm_platform_ioremap_resource() to
    simplify code
  rtc: at91sam9: use devm_platform_ioremap_resource() to simplify code
  rtc: cadence: use devm_platform_ioremap_resource() to simplify code
  rtc: coh901331: use devm_platform_ioremap_resource() to simplify code
  rtc: davinci: use devm_platform_ioremap_resource() to simplify code
  rtc: digicolor: use devm_platform_ioremap_resource() to simplify code
  rtc: ds1216: use devm_platform_ioremap_resource() to simplify code
  rtc: ds1511: use devm_platform_ioremap_resource() to simplify code
  rtc: ds1553: use devm_platform_ioremap_resource() to simplify code
  rtc: ep93xx: use devm_platform_ioremap_resource() to simplify code
  rtc: jz4740: use devm_platform_ioremap_resource() to simplify code
  rtc: lpc24xx: use devm_platform_ioremap_resource() to simplify code
  rtc: lpc32xx: use devm_platform_ioremap_resource() to simplify code
  rtc: meson: use devm_platform_ioremap_resource() to simplify code
  rtc: mt7622: use devm_platform_ioremap_resource() to simplify code
  rtc: mv: use devm_platform_ioremap_resource() to simplify code
  rtc: omap: use devm_platform_ioremap_resource() to simplify code
  rtc: pic32: use devm_platform_ioremap_resource() to simplify code
  rtc: rtd119x: use devm_platform_ioremap_resource() to simplify code
  rtc: s3c: use devm_platform_ioremap_resource() to simplify code
  rtc: sa1100: use devm_platform_ioremap_resource() to simplify code
  rtc: spear: use devm_platform_ioremap_resource() to simplify code
  rtc: stk17ta8: use devm_platform_ioremap_resource() to simplify code
  rtc: ds1286: use devm_platform_ioremap_resource() to simplify code
  rtc: st-lpc: use devm_platform_ioremap_resource() to simplify code
  rtc: stm32: use devm_platform_ioremap_resource() to simplify code
  rtc: sunxi: use devm_platform_ioremap_resource() to simplify code
  rtc: tegra: use devm_platform_ioremap_resource() to simplify code
  rtc: tx4939: use devm_platform_ioremap_resource() to simplify code
  rtc: vt8500: use devm_platform_ioremap_resource() to simplify code
  rtc: xgene: use devm_platform_ioremap_resource() to simplify code
  rtc: zynqmp: use devm_platform_ioremap_resource() to simplify code

 drivers/rtc/rtc-asm9260.c           | 4 +---
 drivers/rtc/rtc-aspeed.c            | 4 +---
 drivers/rtc/rtc-at91sam9.c          | 4 +---
 drivers/rtc/rtc-brcmstb-waketimer.c | 4 +---
 drivers/rtc/rtc-cadence.c           | 4 +---
 drivers/rtc/rtc-coh901331.c         | 4 +---
 drivers/rtc/rtc-davinci.c           | 4 +---
 drivers/rtc/rtc-digicolor.c         | 4 +---
 drivers/rtc/rtc-ds1216.c            | 4 +---
 drivers/rtc/rtc-ds1286.c            | 4 +---
 drivers/rtc/rtc-ds1511.c            | 4 +---
 drivers/rtc/rtc-ds1553.c            | 4 +---
 drivers/rtc/rtc-ep93xx.c            | 4 +---
 drivers/rtc/rtc-jz4740.c            | 4 +---
 drivers/rtc/rtc-lpc24xx.c           | 4 +---
 drivers/rtc/rtc-lpc32xx.c           | 4 +---
 drivers/rtc/rtc-meson.c             | 4 +---
 drivers/rtc/rtc-mt7622.c            | 4 +---
 drivers/rtc/rtc-mv.c                | 4 +---
 drivers/rtc/rtc-omap.c              | 4 +---
 drivers/rtc/rtc-pic32.c             | 4 +---
 drivers/rtc/rtc-rtd119x.c           | 4 +---
 drivers/rtc/rtc-s3c.c               | 4 +---
 drivers/rtc/rtc-sa1100.c            | 4 +---
 drivers/rtc/rtc-spear.c             | 4 +---
 drivers/rtc/rtc-st-lpc.c            | 4 +---
 drivers/rtc/rtc-stk17ta8.c          | 4 +---
 drivers/rtc/rtc-stm32.c             | 4 +---
 drivers/rtc/rtc-sunxi.c             | 4 +---
 drivers/rtc/rtc-tegra.c             | 4 +---
 drivers/rtc/rtc-tx4939.c            | 4 +---
 drivers/rtc/rtc-vt8500.c            | 4 +---
 drivers/rtc/rtc-xgene.c             | 4 +---
 drivers/rtc/rtc-zynqmp.c            | 5 +----
 34 files changed, 34 insertions(+), 103 deletions(-)

-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
