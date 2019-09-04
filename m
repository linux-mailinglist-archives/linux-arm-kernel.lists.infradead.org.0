Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A3D9A7DF9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 10:36:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Dmhuu8/xTf4Iw8Lp3kUM+87dMDSkZFyT7y3LW9cY5hQ=; b=CJocJgzU4ZWHVK
	oUFABrZrdvv/QJOlafD2J4hB8iggrp6igJ1sDZoo2cuzjv3urTaWBijmmbM5K25LDffhHhxwtdemA
	ishCaN1WLD3d1rQ7DKMx2MADabhRGirMsB7JYEtAdPGmRaB1D07r0prdBjnyJAP1233VhXEMeNvXP
	gScEaMwXlYj5lUaQF5GQ0xTiK5LWijVKdQQbNr3/pJcSsZyOaRZArtsE7quIxAJvl0UpYs8k03Qbc
	gWlWfHOu2Ocsb1TjQMVfXVV3wsqL2WPyBYnPNcdAnGkGSSyfxgPsEm+mihMW+dDS77zjtcHesFmny
	c6XT9WcH8HjQYG9SYISw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Qll-0007fC-0L; Wed, 04 Sep 2019 08:36:01 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5QlW-0007da-Fh
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 08:35:48 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id D5620ACDB2399C9A2B16;
 Wed,  4 Sep 2019 16:35:36 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 16:35:29 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <baohua@kernel.org>, <gregkh@linuxfoundation.org>,
 <kstewart@linuxfoundation.org>, <tglx@linutronix.de>, <allison@lohutok.net>,
 <yuehaibing@huawei.com>, <pakki001@umn.edu>
Subject: [PATCH -next] ASoC: sirf-audio: use devm_platform_ioremap_resource()
 to simplify code
Date: Wed, 4 Sep 2019 16:34:12 +0800
Message-ID: <20190904083412.18700-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_013546_724026_B758BC28 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/codecs/sirf-audio-codec.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/sound/soc/codecs/sirf-audio-codec.c b/sound/soc/codecs/sirf-audio-codec.c
index 9009a74..a061d78 100644
--- a/sound/soc/codecs/sirf-audio-codec.c
+++ b/sound/soc/codecs/sirf-audio-codec.c
@@ -459,7 +459,6 @@ static int sirf_audio_codec_driver_probe(struct platform_device *pdev)
 	int ret;
 	struct sirf_audio_codec *sirf_audio_codec;
 	void __iomem *base;
-	struct resource *mem_res;
 
 	sirf_audio_codec = devm_kzalloc(&pdev->dev,
 		sizeof(struct sirf_audio_codec), GFP_KERNEL);
@@ -468,8 +467,7 @@ static int sirf_audio_codec_driver_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, sirf_audio_codec);
 
-	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	base = devm_ioremap_resource(&pdev->dev, mem_res);
+	base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(base))
 		return PTR_ERR(base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
