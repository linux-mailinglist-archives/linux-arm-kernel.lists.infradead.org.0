Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B51851EDE95
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 09:36:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtBjncGHd/MY2Wjl/m0t5oX6dCLlnEfRmCDqbl5S5Pw=; b=LlEFbdfmWI/ctb
	EK/qnNLjwuSYC2UWL5upQOI2sAGHrfX/APD1VEwGB3rbcFjUrx9nbrhDdfN23IyCdJCWGwwEgkiOm
	9C2D237ZoB9/ES+D7yttRuAs1lDcekmHJWmo8NFTRoIFWZfNcWAw8xcSnl67qHtrbXK02k7l2/G52
	kuakox1HnQDNHPg1oolS+SRVvfB32/zlRDMT4ix/dXayTIxjx1KtQmcBgClvU4yRHJKygJfwN/sQV
	YBOCbn2CJZ0ZFU/onHswOgadMy+I7AzN4eX7BHgXWu4q94iL8xjsZ4UAuCt28jcBPT3oEh8TJ49wZ
	QWl2scot0HJDnMAeG6QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkQO-0005LB-MU; Thu, 04 Jun 2020 07:36:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkOa-0001AG-87; Thu, 04 Jun 2020 07:34:38 +0000
X-UUID: 5fbcac3970804ebabbd90ac4b73bd01a-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=QieJajFUSDAATn0RLbYQatSFJzOR4F4C/wwtZYRLLOI=; 
 b=HztANiRyUgWJYnisxtpJdr7398pIPSafUJ+jkpfWuHRJt9fBaozqofxwf+XC1e6NPjPfDvN6D1N3TFCdlgaMs1rAYQYwWsleu82+t3XNeWSiNh67RgWyoFpQBAtJk/3/yuM6bvVNlVWACM7LCQjNttn+GsMfCxkUUlEw+mSVxlA=;
X-UUID: 5fbcac3970804ebabbd90ac4b73bd01a-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 317311186; Wed, 03 Jun 2020 23:34:18 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 00:29:19 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 15:29:18 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 15:29:16 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v9 04/18] media: platform: Change the fixed device node number
 to unfixed value
Date: Thu, 4 Jun 2020 15:26:54 +0800
Message-ID: <20200604072708.9468-5-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604072708.9468-1-xia.jiang@mediatek.com>
References: <20200604072708.9468-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003436_404967_A173BBDE 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver can be instantiated multiple times, e.g. for a decoder and
an encoder. Moreover, other drivers could coexist on the same system.
This makes the static video node number assignment pointless, so switch
to automatic assignment instead.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: change the commit message
---
 drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
index 2677580941b0..12609ca46fd9 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c
@@ -1154,7 +1154,7 @@ static int mtk_jpeg_probe(struct platform_device *pdev)
 	jpeg->dec_vdev->device_caps = V4L2_CAP_STREAMING |
 				      V4L2_CAP_VIDEO_M2M_MPLANE;
 
-	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_VIDEO, 3);
+	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_VIDEO, -1);
 	if (ret) {
 		v4l2_err(&jpeg->v4l2_dev, "Failed to register video device\n");
 		goto err_dec_vdev_register;
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
