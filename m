Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08597D4C33
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 04:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3htbmg/cYRnaUBQABQ9AweHoNgB2nYs4SHvcIOsIS7U=; b=UdT+T4YZ+Li3FS
	GG/F4VsM87SNfmcfkg6Hi8JHKDrHrqhFFIfKNstQFTAsChgKHmNCpZxw3LzHDQDR+IuKjESO1ARNQ
	wjMj02oFbf2f9L5E0zDSas2dbUhJh+ZBgI8emZSNpA/bD/JeXhAojBWuxFMsLxORrmNY5aqgvGJXw
	x3gSBfOB82fMf51b4+LgEdJ7TNy8uDsTBwUM69FujWfeKWNiF0yalG1cvDqubnCj0mVocgbJAqSmT
	KRx18V2fzb7lVm4tWiuD0EgPofkbbh+iWj4Fgv8p8Voa3TVPDfmmz57Ft2l+kUnsHlH3wufykLe0b
	7ZmWEcGFR4oR0MN1x4/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJ7NS-0005oe-LX; Sat, 12 Oct 2019 02:43:30 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJ7NL-0005nU-31
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 02:43:24 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1FC7139D8B40F3F35743;
 Sat, 12 Oct 2019 10:43:11 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Sat, 12 Oct 2019 10:43:04 +0800
From: Mao Wenan <maowenan@huawei.com>
To: <codrin.ciubotariu@microchip.com>, <lgirdwood@gmail.com>,
 <broonie@kernel.org>, <perex@perex.cz>, <tiwai@suse.com>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <mirq-linux@rere.qmqm.pl>
Subject: [PATCH -next] ASoC: atmel: select SND_ATMEL_SOC_DMA for
 SND_ATMEL_SOC_SSC
Date: Sat, 12 Oct 2019 10:42:30 +0800
Message-ID: <20191012024230.159371-1-maowenan@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_194323_295861_85290CE7 
X-CRM114-Status: UNSURE (   7.98  )
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
Cc: alsa-devel@alsa-project.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Mao Wenan <maowenan@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If SND_ATMEL_SOC_SSC_PDC=y and SND_ATMEL_SOC_SSC_DMA=m,
below errors can be found:
sound/soc/atmel/atmel_ssc_dai.o: In function
`atmel_ssc_set_audio':
atmel_ssc_dai.c:(.text+0x6fe): undefined reference to
`atmel_pcm_dma_platform_register'
make: *** [vmlinux] Error 1

After commit 18291410557f ("ASoC: atmel: enable
SOC_SSC_PDC and SOC_SSC_DMA in Kconfig"), SND_ATMEL_SOC_DMA
and SND_ATMEL_SOC_SSC are selected by SND_ATMEL_SOC_SSC_DMA,
SND_ATMEL_SOC_SSC is also selected by SND_ATMEL_SOC_SSC_PDC,
the results are SND_ATMEL_SOC_DMA=m but SND_ATMEL_SOC_SSC=y,
so the errors happen.

This patch make SND_ATMEL_SOC_SSC select SND_ATMEL_SOC_DMA.

Fixes: 18291410557f ("ASoC: atmel: enable SOC_SSC_PDC and SOC_SSC_DMA in Kconfig")
Signed-off-by: Mao Wenan <maowenan@huawei.com>
---
 sound/soc/atmel/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/atmel/Kconfig b/sound/soc/atmel/Kconfig
index f118c22..2938f6b 100644
--- a/sound/soc/atmel/Kconfig
+++ b/sound/soc/atmel/Kconfig
@@ -19,6 +19,7 @@ config SND_ATMEL_SOC_DMA
 
 config SND_ATMEL_SOC_SSC
 	tristate
+	select SND_ATMEL_SOC_DMA
 
 config SND_ATMEL_SOC_SSC_PDC
 	tristate "SoC PCM DAI support for AT91 SSC controller using PDC"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
