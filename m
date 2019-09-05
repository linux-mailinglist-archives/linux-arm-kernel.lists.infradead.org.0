Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00EFA9ACF
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 08:44:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i6znL16RqUdDpBZcrSgRyJ4loAEAE8HnrCVr+2RwK7c=; b=Br9CsJXpta2q4f
	v5XEH40kvRmuZonCEYBuQ3Wy06oCK498JyQ2TrFrL3eTCZDTLPoZMpLAUJ+5srfpGxs35tzQw2qFz
	Az9FLpLNvLfZz9HIM0hE2Cx22bhwBRmUgm87igfQSDNJhgLv+i7Qyte97IvtR3qUcs6O24rOSZGRX
	DQI8iaJeYWhkl7g/wItpY1iPHgbE5mGj/3uj//I9BQdJG3PFTzIYB2HsxuLi7amYOle8nS8vcU6V8
	uMCtwERLJoOYZ8PoJYazjXTsH4nCZim8tG99GgtIYUeEHJr+Ju86Z9VmGhMf3v28OSv7pr+j4xYlQ
	t5kS47OweNj558bLG7Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5lVX-0002Rt-0B; Thu, 05 Sep 2019 06:44:39 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5lVI-0002Pm-10
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 06:44:27 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 105E6ECC49D523990C50;
 Thu,  5 Sep 2019 14:44:19 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Thu, 5 Sep 2019
 14:44:11 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <shawnguo@kernel.org>, <s.hauer@pengutronix.de>,
 <kernel@pengutronix.de>, <festevam@gmail.com>, <linux-imx@nxp.com>,
 <daniel.baluta@nxp.com>, <yuehaibing@huawei.com>,
 <pierre-louis.bossart@linux.intel.com>
Subject: [PATCH -next] ASoC: SOF: imx8: Fix COMPILE_TEST error
Date: Thu, 5 Sep 2019 14:44:00 +0800
Message-ID: <20190905064400.24800-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_234424_284286_4D6F7CE0 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When do compile test, if SND_SOC_SOF_OF is not set, we get:

sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_request':
imx8.c:(.text+0xb0): undefined reference to `snd_sof_ipc_msgs_rx'
sound/soc/sof/imx/imx8.o: In function `imx8_ipc_msg_data':
imx8.c:(.text+0xf4): undefined reference to `sof_mailbox_read'
sound/soc/sof/imx/imx8.o: In function `imx8_dsp_handle_reply':
imx8.c:(.text+0x160): undefined reference to `sof_mailbox_read'

Make SND_SOC_SOF_IMX_TOPLEVEL always depends on SND_SOC_SOF_OF

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/sof/imx/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/sound/soc/sof/imx/Kconfig b/sound/soc/sof/imx/Kconfig
index fd73d84..5acae75 100644
--- a/sound/soc/sof/imx/Kconfig
+++ b/sound/soc/sof/imx/Kconfig
@@ -2,7 +2,8 @@
 
 config SND_SOC_SOF_IMX_TOPLEVEL
 	bool "SOF support for NXP i.MX audio DSPs"
-	depends on ARM64 && SND_SOC_SOF_OF || COMPILE_TEST
+	depends on ARM64|| COMPILE_TEST
+	depends on SND_SOC_SOF_OF
 	help
           This adds support for Sound Open Firmware for NXP i.MX platforms.
           Say Y if you have such a device.
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
