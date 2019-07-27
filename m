Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B16C7796A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 17:09:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yN0HwX5XM3hToa+FIRVIQoBouspbfy2pxJ7AsOE+z5E=; b=c44nmZ/U+M8ro6
	bRQbMKo1CwFKLd0m4PDv9EyVnRftDqv4XmR8RXZ1URo+YCA6guY2SfVt3aQs9A07qZklEKPemT5LM
	EfashFSb+Ax4tuNfbaLOqzaQfKI9WR7JNTpTVYD3+v0zoVcOyBeVFUpe5Jb7sn+JzBgfLO070Ed57
	J7QQ5TKY0Zo9b4oDRcGbq507SA/SceoRYPFQ4ym4bt2v3HZZXYlFHsrsBTBTM94KHAAeVM+z0a70b
	TaqEVpCyY3ogVhy9y1VTpm3iKwXjUy9TNkwF7V5x/X0xTxEqlhXiP4pgcCZ0VbRNTvBwJtOlJan9z
	QUob20Umv15L13te/jDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrOKJ-0003tA-8D; Sat, 27 Jul 2019 15:09:39 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrOJy-0003re-J3; Sat, 27 Jul 2019 15:09:20 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 40F02F258955C599E725;
 Sat, 27 Jul 2019 23:09:12 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Sat, 27 Jul 2019
 23:09:06 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <eric@anholt.net>, <wahrenst@gmx.net>,
 <f.fainelli@gmail.com>, <rjui@broadcom.com>, <sbranden@broadcom.com>,
 <bcm-kernel-feedback-list@broadcom.com>, <paul@crapouillou.net>,
 <timur@kernel.org>, <nicoleotsuka@gmail.com>, <Xiubo.Lee@gmail.com>,
 <festevam@gmail.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <linux-imx@nxp.com>, <matthias.bgg@gmail.com>,
 <jbrunet@baylibre.com>, <khilman@baylibre.com>, <daniel@zonque.org>,
 <haojian.zhuang@gmail.com>, <robert.jarzmik@free.fr>, <baohua@kernel.org>,
 <olivier.moysan@st.com>, <arnaud.pouliquen@st.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>, <mripard@kernel.org>, 
 <wens@csie.org>, <thierry.reding@gmail.com>, <jonathanh@nvidia.com>,
 <yamada.masahiro@socionext.com>, <michal.simek@xilinx.com>,
 <jcmvbkbc@gmail.com>
Subject: [PATCH -next 00/34] ASoC: use devm_platform_ioremap_resource() to
 simplify code
Date: Sat, 27 Jul 2019 23:07:04 +0800
Message-ID: <20190727150738.54764-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_080918_814014_AC79D360 
X-CRM114-Status: UNSURE (   3.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: linux-xtensa@linux-xtensa.org, alsa-devel@alsa-project.org,
 gregkh@linuxfoundation.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

devm_platform_ioremap_resource() internally have platform_get_resource()
and devm_ioremap_resource() in it. So instead of calling them separately
use devm_platform_ioremap_resource() directly.

YueHaibing (34):
  ASoC: tegra20_das: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: tegra: use devm_platform_ioremap_resource() to simplify code
  ASoC: rockchip: use devm_platform_ioremap_resource() to simplify code
  ASoC: ep93xx-i2s: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: mt8173: use devm_platform_ioremap_resource() to simplify code
  ASoC: mt6797: use devm_platform_ioremap_resource() to simplify code
  ASoC: imx-audmux: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: fsl_audmix: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: bcm2835-i2s: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: sirf: use devm_platform_ioremap_resource() to simplify code
  ASoC: mxs-saif: use devm_platform_ioremap_resource() to simplify code
  ASoC: spear: use devm_platform_ioremap_resource() to simplify code
  ASoC: kirkwood-i2s: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: xtfpga-i2s: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: stm32: sai: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: codecs: msm8916-wcd: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: codecs: jz4725b: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: mmp-sspa: use devm_platform_ioremap_resource() to simplify code
  ASoC: jz4740: use devm_platform_ioremap_resource() to simplify code
  ASoC: inno_rk3036: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: uniphier: evea: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: uniphier: aio-dma: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: psc-ac97: use devm_platform_ioremap_resource() to simplify code
  ASoC: au1x: psc-i2s: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: meson: g12a-tohdmitx: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: meson: axg-tdm-formatter: use devm_platform_ioremap_resource()
    to simplify code
  ASoC: meson: axg-pdm: use devm_platform_ioremap_resource() to simplify
    code
  ASoC: meson: axg-spdifin: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: meson: axg-spdifout: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: meson: axg-fifo: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: xlnx: use devm_platform_ioremap_resource() to simplify code
  ASoC: sun8i-codec-analog: use devm_platform_ioremap_resource() to
    simplify code
  ASoC: sunxi: sun50i-codec-analog: use devm_platform_ioremap_resource()
    to simplify code
  ASoC: sun8i-codec: use devm_platform_ioremap_resource() to simplify
    code

 sound/soc/au1x/psc-ac97.c                  | 5 ++---
 sound/soc/au1x/psc-i2s.c                   | 5 ++---
 sound/soc/bcm/bcm2835-i2s.c                | 4 +---
 sound/soc/cirrus/ep93xx-i2s.c              | 4 +---
 sound/soc/codecs/inno_rk3036.c             | 4 +---
 sound/soc/codecs/jz4725b.c                 | 4 +---
 sound/soc/codecs/jz4740.c                  | 4 +---
 sound/soc/codecs/msm8916-wcd-digital.c     | 4 +---
 sound/soc/codecs/rk3328_codec.c            | 4 +---
 sound/soc/fsl/fsl_audmix.c                 | 4 +---
 sound/soc/fsl/imx-audmux.c                 | 4 +---
 sound/soc/kirkwood/kirkwood-i2s.c          | 4 +---
 sound/soc/mediatek/mt6797/mt6797-afe-pcm.c | 5 +----
 sound/soc/mediatek/mt8173/mt8173-afe-pcm.c | 4 +---
 sound/soc/meson/axg-fifo.c                 | 4 +---
 sound/soc/meson/axg-pdm.c                  | 4 +---
 sound/soc/meson/axg-spdifin.c              | 4 +---
 sound/soc/meson/axg-spdifout.c             | 4 +---
 sound/soc/meson/axg-tdm-formatter.c        | 4 +---
 sound/soc/meson/g12a-tohdmitx.c            | 4 +---
 sound/soc/mxs/mxs-saif.c                   | 5 +----
 sound/soc/pxa/mmp-sspa.c                   | 4 +---
 sound/soc/sirf/sirf-usp.c                  | 4 +---
 sound/soc/spear/spdif_in.c                 | 5 ++---
 sound/soc/stm/stm32_sai.c                  | 4 +---
 sound/soc/sunxi/sun50i-codec-analog.c      | 4 +---
 sound/soc/sunxi/sun8i-codec-analog.c       | 4 +---
 sound/soc/sunxi/sun8i-codec.c              | 4 +---
 sound/soc/tegra/tegra20_das.c              | 4 +---
 sound/soc/tegra/tegra30_i2s.c              | 4 +---
 sound/soc/uniphier/aio-dma.c               | 4 +---
 sound/soc/uniphier/evea.c                  | 4 +---
 sound/soc/xilinx/xlnx_i2s.c                | 4 +---
 sound/soc/xilinx/xlnx_spdif.c              | 3 +--
 sound/soc/xtensa/xtfpga-i2s.c              | 4 +---
 35 files changed, 38 insertions(+), 106 deletions(-)

-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
