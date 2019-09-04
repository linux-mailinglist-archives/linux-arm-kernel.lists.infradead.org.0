Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B25C3A8267
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 14:34:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MOSiBiHMAMZ/p85IAk9lH7sH1+/O6kedbEl99BWKKHs=; b=RVolKQcRwx0aur
	dGvCB6XCGWINeCh7qfE2nfxrWb2+eGdEI3MLyKGV6V9/9HvvoSWff5G0pK4wkvvXd/GcUUiurQZ23
	a10kEizRSpblA3WzNC2fHllb3cUzumJ7HIlImlkNCIXaBt/a6cXMehaB5XkT9uXFIobmJ9CBTWumz
	TwP/Ucy9yk1SwmHgDpwKU29EoXHl+ghH3Y+2DCDev1qvEK8hIn2dSbjrQdlpldkOiE9VByUO9ORGp
	8Vb6Db5hIIE9MFEBfQOkqLAL9SVwsoqVUfozMGtiKYxoBLz7sZezdtG1cc/5/jahuwnur65iZNGlm
	FhB8snVx4qvBtIhuddug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5UUp-0001XO-5X; Wed, 04 Sep 2019 12:34:47 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5UUZ-0001VY-Tx; Wed, 04 Sep 2019 12:34:33 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9CD8AFFFA055F3DC3ABE;
 Wed,  4 Sep 2019 20:34:24 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 20:34:17 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <miquel.raynal@bootlin.com>, <rui.zhang@intel.com>, <edubezval@gmail.com>, 
 <daniel.lezcano@linaro.org>, <amit.kucheria@verdurent.com>,
 <eric@anholt.net>, <wahrenst@gmx.net>, <f.fainelli@gmail.com>,
 <rjui@broadcom.com>, <sbranden@broadcom.com>, <mmayer@broadcom.com>,
 <computersforpeace@gmail.com>, <gregory.0xf0@gmail.com>,
 <matthias.bgg@gmail.com>, <agross@kernel.org>, <heiko@sntech.de>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <marc.w.gonzalez@free.fr>, <mans@mansr.com>, <talel@amazon.com>,
 <jun.nie@linaro.org>, <shawnguo@kernel.org>, <phil@raspberrypi.org>,
 <yuehaibing@huawei.com>, <gregkh@linuxfoundation.org>,
 <david.hernandezsanchez@st.com>, <horms+renesas@verge.net.au>,
 <wsa+renesas@sang-engineering.com>
Subject: [PATCH -next 00/15] use devm_platform_ioremap_resource() to simplify
 code
Date: Wed, 4 Sep 2019 20:29:24 +0800
Message-ID: <20190904122939.23780-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_053432_143185_3EB34FE7 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_platform_ioremap_resource() internally have platform_get_resource()
and devm_ioremap_resource() in it. So instead of calling them separately
use devm_platform_ioremap_resource() directly.

YueHaibing (15):
  thermal: armada: use devm_platform_ioremap_resource() to simplify code
  thermal: bcm2835: use devm_platform_ioremap_resource() to simplify
    code
  thermal: brcmstb: use devm_platform_ioremap_resource() to simplify
    code
  thermal: hisilicon: use devm_platform_ioremap_resource() to simplify
    code
  thermal: dove: use devm_platform_ioremap_resource() to simplify code
  thermal: mtk: use devm_platform_ioremap_resource() to simplify code
  thermal: kirkwood: use devm_platform_ioremap_resource() to simplify
    code
  thermal: tsens: use devm_platform_ioremap_resource() to simplify code
  thermal: rockchip: use devm_platform_ioremap_resource() to simplify
    code
  thermal: spear: use devm_platform_ioremap_resource() to simplify code
  thermal: stm32: use devm_platform_ioremap_resource() to simplify code
  thermal: tango: use devm_platform_ioremap_resource() to simplify code
  thermal: thermal_mmio: use devm_platform_ioremap_resource() to
    simplify code
  thermal: zx2967: use devm_platform_ioremap_resource() to simplify code
  thermal: rcar: use devm_platform_ioremap_resource() to simplify code

 drivers/thermal/armada_thermal.c           | 4 +---
 drivers/thermal/broadcom/bcm2835_thermal.c | 4 +---
 drivers/thermal/broadcom/brcmstb_thermal.c | 4 +---
 drivers/thermal/dove_thermal.c             | 7 ++-----
 drivers/thermal/hisi_thermal.c             | 4 +---
 drivers/thermal/kirkwood_thermal.c         | 4 +---
 drivers/thermal/mtk_thermal.c              | 4 +---
 drivers/thermal/qcom/tsens-common.c        | 7 ++-----
 drivers/thermal/rcar_thermal.c             | 5 ++---
 drivers/thermal/rockchip_thermal.c         | 4 +---
 drivers/thermal/spear_thermal.c            | 4 +---
 drivers/thermal/st/stm_thermal.c           | 4 +---
 drivers/thermal/tango_thermal.c            | 4 +---
 drivers/thermal/thermal_mmio.c             | 4 +---
 drivers/thermal/zx2967_thermal.c           | 4 +---
 15 files changed, 18 insertions(+), 49 deletions(-)

-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
