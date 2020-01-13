Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03AB5138A1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IbEdnyyipHjQeXf0tVsu1NWdIgcVqXRreDNkSi/yA5E=; b=EGN5LbaiHxRuZN
	krwgwEU3hTbg9CbSH70NR4hAUy0ESL2fxAyHNZ65kEUD/R7+wDNGTxX5a3jRQQl+VGCM1JI+ff9xL
	usa27NoPEs7A0hojz9Lpxle5P30qf76pRofP8Eh959pEO/y7TBWpGEj6R+XzxAoStBUjeMeJQCHTP
	lcqLZoyWzBJ5HlgVfJzhn4EP1OKtufj6r2tZfbxN03aJSKimhcQg8NyprAMkJHW9OpUsQx5pne/8G
	eUC6475EjYLa/7qHFXrCziagIDkieXc4O8jTPv7E4p5AyBWZf1sY7U84jS5AgaUZApDChZZsndQrS
	Eee298QmmIWXm5gcUkIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqqvG-0001by-J5; Mon, 13 Jan 2020 04:01:50 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqqv3-0001aI-BD; Mon, 13 Jan 2020 04:01:41 +0000
X-UUID: 397c2edfa6e3469b819101ca71117501-20200112
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=GEn5TTMvrgKaWqCbybjZ0pxAsz0JFNP9RC57YNtlclc=; 
 b=X3m4OSW+4cHAptNvYyoqp1zWqZQdhwEdop3Q/rf/81Ngd6fbg8uXcHvoGEUw0i+Q/n9x4tMv89yjj3JtD0tidhjHcPJFHbcKJgyT3pxV8eoXBDSoQz9Kx1rKfk/8k1OEXF8WayyD6+wO0RZGxJoSoBXih3kASu2rBGDWs4YtY7Y=;
X-UUID: 397c2edfa6e3469b819101ca71117501-20200112
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <maoguang.meng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 357087675; Sun, 12 Jan 2020 20:01:31 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 12 Jan 2020 19:53:05 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 Jan 2020 11:51:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 13 Jan 2020 11:52:35 +0800
From: <maoguang.meng@mediatek.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Tiffany Lin <tiffany.lin@mediatek.com>
Subject: [PATCH 1/1] media: platform: VIDEO_MEDIATEK_JPEG can also depend on
 MTK_IOMMU
Date: Mon, 13 Jan 2020 11:52:02 +0800
Message-ID: <20200113035202.7797-1-maoguang.meng@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6669261D4D362FA0B90A9D2C43FB1733D5513E1AEFCDD470B21449EB489B41AA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_200137_396867_EA5C56D6 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 Maoguang Meng <maoguang.meng@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, Yong Wu <yong.wu@mediatek.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maoguang Meng <maoguang.meng@mediatek.com>

mediatek jpeg codec driver can depend on MTK_IOMMU or MTK_IOMMU_V1

Change-Id: I78979af924d4fd52a3641eff1463a10d6e1d465f
Signed-off-by: Maoguang Meng <maoguang.meng@mediatek.com>
---
 drivers/media/platform/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/Kconfig b/drivers/media/platform/Kconfig
index e84f35d3a68e..85377c88e91a 100644
--- a/drivers/media/platform/Kconfig
+++ b/drivers/media/platform/Kconfig
@@ -200,7 +200,7 @@ config VIDEO_IMX_PXP
 
 config VIDEO_MEDIATEK_JPEG
 	tristate "Mediatek JPEG Codec driver"
-	depends on MTK_IOMMU_V1 || COMPILE_TEST
+	depends on MTK_IOMMU_V1 || MTK_IOMMU || COMPILE_TEST
 	depends on VIDEO_DEV && VIDEO_V4L2
 	depends on ARCH_MEDIATEK || COMPILE_TEST
 	select VIDEOBUF2_DMA_CONTIG
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
