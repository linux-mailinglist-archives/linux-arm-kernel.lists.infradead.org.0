Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED433E4ACB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/7z+dUXO1vNiltteisAKXl1YhG6fvlzLufu9zrgfK/c=; b=Uqi5c1j1NQ6U75
	LIPwe1tIR9FcRbXqghnuhCXpfCka2Dkhe1jXBI3Rv67iEuo9JXQuEc0EW3OZgJ+Kl/5DFtyxHYIPX
	1hEA+rANxtyvmt7qTjmTsKkvaFDASjQ7RudFo1KuMpenDf83+3r2yVyrAVSEh+MRkk++lZC4MvJ4v
	ifpCHxZhPoOolbjVRj9zSEPZKRbUvjWSh8LMS9ud7/e5IJv70ziMjSd2nDcupRTIpZo0w312O7Sdz
	PM1DYOcjHQc1gRYdOkA+GfuwDwJU4eMz+llfSUSVlg9Bmn2Okl8A5g+zNraLnzMYNqY6cV4MX8l21
	ICKei5bsIcdtxIXN3rfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyS0-0001S3-O6; Fri, 25 Oct 2019 12:12:16 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyRp-0001R5-M9
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:12:07 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 738D24CAAFE8FB8B20EE;
 Fri, 25 Oct 2019 20:11:59 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Fri, 25 Oct 2019
 20:11:49 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <mripard@kernel.org>, <wens@csie.org>,
 <dannym@scratchpost.org>, <kuninori.morimoto.gx@renesas.com>,
 <tglx@linutronix.de>, <yuehaibing@huawei.com>,
 <georgii.staroselskii@emlid.com>
Subject: [PATCH -next] ASoC: sunxi: sun4i-codec: remove unneeded semicolon
Date: Fri, 25 Oct 2019 20:08:01 +0800
Message-ID: <20191025120801.16236-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_051205_912242_7F09DE28 
X-CRM114-Status: UNSURE (   8.18  )
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

remove unneeded semicolon.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/sunxi/sun4i-codec.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
index ee448d5..34f3e0b 100644
--- a/sound/soc/sunxi/sun4i-codec.c
+++ b/sound/soc/sunxi/sun4i-codec.c
@@ -1442,7 +1442,7 @@ static struct snd_soc_card *sun8i_a23_codec_create_card(struct device *dev)
 	if (!aux_dev.dlc.of_node) {
 		dev_err(dev, "Can't find analog controls for codec.\n");
 		return ERR_PTR(-EINVAL);
-	};
+	}
 
 	card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 	if (!card->dai_link)
@@ -1480,7 +1480,7 @@ static struct snd_soc_card *sun8i_h3_codec_create_card(struct device *dev)
 	if (!aux_dev.dlc.of_node) {
 		dev_err(dev, "Can't find analog controls for codec.\n");
 		return ERR_PTR(-EINVAL);
-	};
+	}
 
 	card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 	if (!card->dai_link)
@@ -1518,7 +1518,7 @@ static struct snd_soc_card *sun8i_v3s_codec_create_card(struct device *dev)
 	if (!aux_dev.dlc.of_node) {
 		dev_err(dev, "Can't find analog controls for codec.\n");
 		return ERR_PTR(-EINVAL);
-	};
+	}
 
 	card->dai_link = sun4i_codec_create_link(dev, &card->num_links);
 	if (!card->dai_link)
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
