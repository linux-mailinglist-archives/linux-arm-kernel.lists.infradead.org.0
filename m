Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3E79CEBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 13:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HV730OP0B4vRWu5OqvPRATcJTAhALri9y5oZhD648mQ=; b=gv3QJzl4CZKoDY
	Yz5EopR5xvypI8H4qU23E2YHIq55H8qWGAZHPgv9W8ET/Iu7oOzMCAOkuUqRj/Y5lODyaRnrDNbVl
	Z057T0lg2UP54MMVcGjaK77qhh0Ra2u3406SB4xOJpYsgac1F5q8roX/wwu4p95bMROf6PS9WZ93K
	yYzUDJVAbtrCaaFYXse4QWDFZdcT60KNaFv53uZF1zio4XM1fJgoXF6oLgLiBin4YawRP+t9iILYe
	WMfkc/kT6vTkNHK/n2QwzeajoaN5rmMUV0aPmLbLxjFNnrG6TaOgcNmbN2ufMe9vA22HUR8/KJYUP
	DFz0LCvF3qce3/aHVKWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2DcS-0002AF-6O; Mon, 26 Aug 2019 11:57:08 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2Dc9-00021z-36
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 11:56:52 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 5E05BE6BCA587BA29E44;
 Mon, 26 Aug 2019 19:56:39 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS404-HUB.china.huawei.com (10.3.19.204) with Microsoft SMTP Server id
 14.3.439.0; Mon, 26 Aug 2019 19:56:28 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, Daniel Baluta <daniel.baluta@nxp.com>
Subject: [PATCH -next] ASoC: SOF: imx8: Fix return value check in imx8_probe()
Date: Mon, 26 Aug 2019 12:00:03 +0000
Message-ID: <20190826120003.183279-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_045649_297147_D1C05C2D 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: kernel-janitors@vger.kernel.org, alsa-devel@alsa-project.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of error, the function devm_ioremap_wc() returns NULL pointer
not ERR_PTR(). The IS_ERR() test in the return value check should be
replaced with NULL test.

Fixes: 202acc565a1f ("ASoC: SOF: imx: Add i.MX8 HW support")
Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 sound/soc/sof/imx/imx8.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/sof/imx/imx8.c b/sound/soc/sof/imx/imx8.c
index e502f584207f..263d4df35fe8 100644
--- a/sound/soc/sof/imx/imx8.c
+++ b/sound/soc/sof/imx/imx8.c
@@ -296,10 +296,10 @@ static int imx8_probe(struct snd_sof_dev *sdev)
 	sdev->bar[SOF_FW_BLK_TYPE_SRAM] = devm_ioremap_wc(sdev->dev, res.start,
 							  res.end - res.start +
 							  1);
-	if (IS_ERR(sdev->bar[SOF_FW_BLK_TYPE_SRAM])) {
+	if (!sdev->bar[SOF_FW_BLK_TYPE_SRAM]) {
 		dev_err(sdev->dev, "failed to ioremap mem 0x%x size 0x%x\n",
 			base, size);
-		ret = PTR_ERR(sdev->bar[SOF_FW_BLK_TYPE_SRAM]);
+		ret = -ENOMEM;
 		goto exit_pdev_unregister;
 	}
 	sdev->mailbox_bar = SOF_FW_BLK_TYPE_SRAM;




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
