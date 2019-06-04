Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A0534413
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:15:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mbqR9piw9sercbrSe41BJ3AifWx5uons2z0TTWUKSn4=; b=jENe2dxSZOfYiH
	Us+Zn1RgD+7ZLFky1I8ucDBbmdNA6RlEC0fQsCFL3lBEbD//JkybeVw0h3wMJol/nLNc89Jm2z2nY
	23/hrfwTIBI2Rc/K/8yCWucIIC5CN7UOuxdiYd1N9/iy6a9wqL94njqaV2CICvxT4+v38yS1C0tY6
	Dq7reqinSKIldFFn06xCEKFiwQdeWpEdaFrTYAJmXDAA/+oDEBxvLXmSbmJTEZfRk3QJm5mw76Z2G
	sAWc4MELL5/OIQLLZc1JHwgH3H5NzpnIVJT4rdq0IDZ0jpKNntuiuyfqw8inPcCWG0gsHRFrsD359
	NG8PQR9teOtdCfce2fmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6TB-0001YA-BE; Tue, 04 Jun 2019 10:15:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6SI-0000W9-LF; Tue, 04 Jun 2019 10:14:34 +0000
X-UUID: 771d321e1c7a4ef3aa6032ae68eafe98-20190604
X-UUID: 771d321e1c7a4ef3aa6032ae68eafe98-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 556380473; Tue, 04 Jun 2019 02:12:08 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:06 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:11:58 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:11:58 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 00/14] Add mediatek mipicsi driver for Mediatek SOC MT2712
Date: Tue, 4 Jun 2019 18:11:41 +0800
Message-ID: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 532CD136B93353C89B0B0C85495B6EDAE408C70C02392551530E77B5757C0DB42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031411_246858_98FCF394 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add mediatek mipicsi driver for Mediatek SOC MT2712

Change in v4:
- remove soc_camera framework dependence in v3
- add some error handle and of_node_put() in patch
  "[media] mtk-mipicsi: add mediatek mipicsi driver for mt2712"
- remove some useless variable

Stu Hsieh (14):
  dt-bindings: Add binding for MT2712 MIPI-CSI2
  dt-bindings: media: Add mipicsi common node binding for MT2712
    MIPI-CSI2
  dt-bindings: media: Add camsv binding for MT2712 MIPI-CSI2
  [media] mtk-mipicsi: add mediatek mipicsi driver for mt2712
  [media] mtk-mipicsi: register the v4l2 device for mt2712 mipicsi
  [media] mtk-mipicsi: enable/disable ana clk
  [media] mtk-mipicsi: add function to get the number of subdev link
  [media] mtk-mipicsi: enable/disable cmos for mt2712
  [media] mtk-mipicsi: add ISR for writing the data to buffer
  [media] mtk-mipicsi: set the output address in HW reg
  [media] mtk-mipicsi: add function to get the format
  [media] mtk-mipicsi: add debug message for mipicsi driver
  [media] mtk-mipicsi: add debugfs for mipicsi driver
  [media] mtk-mipicsi: add function to support SerDes for link number

 .../bindings/media/mediatek-mipicsi-camsv.txt |   55 +
 .../media/mediatek-mipicsi-common.txt         |   19 +
 .../bindings/media/mediatek-mipicsi.txt       |   58 +
 drivers/media/platform/mtk-mipicsi/Makefile   |    4 +
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 1734 +++++++++++++++++
 5 files changed, 1870 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
 create mode 100644 drivers/media/platform/mtk-mipicsi/Makefile
 create mode 100644 drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
