Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB25CDACB9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8vweLztKut/I+TG1Mt3fu79y7vSEkf193skwGgUYptA=; b=uVyXEpG3hoCGeC
	Wqu8HndGfJaRrIWdHvqJ27L80L8bmO8Rh+ujMoZS7duFvNVpJYQwjg5xW+RY/NcWPJJeimIVTH7fu
	4E5+x5FHj8a/zhQjpaPm1G56XSfXbeM2cTDQmj6zMeZq6neZsNvAXoMjFEBdSr8VEQFmdYtP6Segq
	eW6zrPmOt65jRyzsz3XglZ/DPf8GuChQVETl3EP1FuSALyEOtRjIOH/zS9pbIZqr3j626fPeeFCVz
	VQag8EmNfJBJR1zAlUf3zGQZx8XEyoQdEjXgKhg4z2rk273XFxq7NSMHsw9u4B4wBtKWuwYSDYVfg
	pGG20kAGyIFxpHsihLjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5Cl-0004He-2z; Thu, 17 Oct 2019 12:48:35 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5CT-0004G7-9S
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:48:19 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 47C9634C1F89D02A68CC;
 Thu, 17 Oct 2019 20:48:11 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Thu, 17 Oct 2019
 20:48:01 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <linus.walleij@linaro.org>, <manivannan.sadhasivam@linaro.org>,
 <afaerber@suse.de>, <f.fainelli@gmail.com>, <rjui@broadcom.com>,
 <sbranden@broadcom.com>, <bcm-kernel-feedback-list@broadcom.com>,
 <jesper.nilsson@axis.com>, <lars.persson@axis.com>,
 <ludovic.desroches@microchip.com>, <nicolas.ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <baruch@tkos.co.il>
Subject: [PATCH -next 00/30] pinctrl: use devm_platform_ioremap_resource() to
 simplify code
Date: Thu, 17 Oct 2019 20:26:10 +0800
Message-ID: <20191017122640.22976-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_054817_507590_AF1717B4 
X-CRM114-Status: UNSURE (   5.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: jonathanh@nvidia.com, geert+renesas@glider.be, narmstrong@baylibre.com,
 haojian.zhuang@gmail.com, linux-arm-msm@vger.kernel.org, agross@kernel.org,
 YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@axis.com, vz@mleia.com, linux-renesas-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, wens@csie.org, thierry.reding@gmail.com,
 daniel@zonque.org, linux-tegra@vger.kernel.org, linux-oxnas@groups.io,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_platform_ioremap_resource() internally have platform_get_resource()
and devm_ioremap_resource() in it. So instead of calling them separately
use devm_platform_ioremap_resource() directly.

YueHaibing (30):
  pinctrl: pxa25x: use devm_platform_ioremap_resource() to simplify code
  pinctrl: pxa27x: use devm_platform_ioremap_resource() to simplify code
  pinctrl: cygnus-mux: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: pic32: use devm_platform_ioremap_resource() to simplify code
  pinctrl: nsp-gpio: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: nsp: use devm_platform_ioremap_resource() to simplify code
  pinctrl: ns2: use devm_platform_ioremap_resource() to simplify code
  pinctrl: bcm281xx: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: sunxi: use devm_platform_ioremap_resource() to simplify code
  pinctrl: tegra: use devm_platform_ioremap_resource() to simplify code
  pinctrl: msm: use devm_platform_ioremap_resource() to simplify code
  pinctrl: spear: use devm_platform_ioremap_resource() to simplify code
  pinctrl: zte: use devm_platform_ioremap_resource() to simplify code
  pinctrl: at91: use devm_platform_ioremap_resource() to simplify code
  pinctrl: oxnas: use devm_platform_ioremap_resource() to simplify code
  pinctrl: pistachio: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: lpc18xx: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: da850-pupd: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: tb10x: use devm_platform_ioremap_resource() to simplify code
  pinctrl: u300: use devm_platform_ioremap_resource() to simplify code
  pinctrl: vt8500: use devm_platform_ioremap_resource() to simplify code
  pinctrl: xway: use devm_platform_ioremap_resource() to simplify code
  pinctrl: rza2: use devm_platform_ioremap_resource() to simplify code
  pinctrl: digicolor: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: coh901: use devm_platform_ioremap_resource() to simplify code
  pinctrl: bm1880: use devm_platform_ioremap_resource() to simplify code
  pinctrl: artpec6: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: actions: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: at91-pio4: use devm_platform_ioremap_resource() to simplify
    code
  pinctrl: iproc: use devm_platform_ioremap_resource() to simplify code

 drivers/pinctrl/actions/pinctrl-owl.c      |  4 +---
 drivers/pinctrl/bcm/pinctrl-bcm281xx.c     |  4 +---
 drivers/pinctrl/bcm/pinctrl-cygnus-mux.c   |  7 ++-----
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c   |  3 +--
 drivers/pinctrl/bcm/pinctrl-ns2-mux.c      |  6 ++----
 drivers/pinctrl/bcm/pinctrl-nsp-gpio.c     |  7 ++-----
 drivers/pinctrl/bcm/pinctrl-nsp-mux.c      |  6 ++----
 drivers/pinctrl/pinctrl-artpec6.c          |  4 +---
 drivers/pinctrl/pinctrl-at91-pio4.c        |  3 +--
 drivers/pinctrl/pinctrl-at91.c             |  4 +---
 drivers/pinctrl/pinctrl-bm1880.c           |  4 +---
 drivers/pinctrl/pinctrl-coh901.c           |  4 +---
 drivers/pinctrl/pinctrl-da850-pupd.c       |  4 +---
 drivers/pinctrl/pinctrl-digicolor.c        |  4 +---
 drivers/pinctrl/pinctrl-lpc18xx.c          |  4 +---
 drivers/pinctrl/pinctrl-oxnas.c            |  4 +---
 drivers/pinctrl/pinctrl-pic32.c            |  4 +---
 drivers/pinctrl/pinctrl-pistachio.c        |  4 +---
 drivers/pinctrl/pinctrl-rza2.c             |  4 +---
 drivers/pinctrl/pinctrl-tb10x.c            |  4 +---
 drivers/pinctrl/pinctrl-u300.c             |  4 +---
 drivers/pinctrl/pinctrl-xway.c             |  4 +---
 drivers/pinctrl/pxa/pinctrl-pxa25x.c       | 13 ++++---------
 drivers/pinctrl/pxa/pinctrl-pxa27x.c       | 13 ++++---------
 drivers/pinctrl/qcom/pinctrl-msm.c         |  3 +--
 drivers/pinctrl/spear/pinctrl-plgpio.c     |  4 +---
 drivers/pinctrl/spear/pinctrl-spear.c      |  4 +---
 drivers/pinctrl/sunxi/pinctrl-sunxi.c      |  4 +---
 drivers/pinctrl/tegra/pinctrl-tegra-xusb.c |  4 +---
 drivers/pinctrl/tegra/pinctrl-tegra.c      |  3 +--
 drivers/pinctrl/vt8500/pinctrl-wmt.c       |  4 +---
 drivers/pinctrl/zte/pinctrl-zx.c           |  4 +---
 32 files changed, 42 insertions(+), 110 deletions(-)

-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
