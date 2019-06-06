Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263CC3712E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 12:02:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MrGAEHjG6anJupMhNesyFSRO09QX7fvkA/BoaGf74Uo=; b=JYBJa4BNWRz19F
	7tC543B3gG3NzJTmW8G57Er7of12o1Gyq1zwtS0vVCXCGe3Lo6CmKocszh+tBma+2WsHPyFX0Phj8
	/44nb4QF1BjgJiqMJUYlIVfVVR3fkzr474dqdUZtDCDNH4KD0q55YavBwAYCm+gJFHst16WBwPLsw
	3DKqUHLVUvh7QfAFJmk1e9MvT7m5p9AdR5CImsjlcy+WTTC8OSe3RU/sWn35TItH+ZLno6f+JqobA
	/DrnYvKXSaeEf2iAy+d2n8ny47V2DVOZAhtLKsFKE3Z+iygEet1iENS4rPD+ZoLRmNLt9ld976pJ4
	lsSFTlzwBSPBZdarODtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYpDq-00063e-7t; Thu, 06 Jun 2019 10:02:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYpDK-0005Yp-BL; Thu, 06 Jun 2019 10:01:43 +0000
X-UUID: fa9dec22eb03496f8259c73019e8f46e-20190606
X-UUID: fa9dec22eb03496f8259c73019e8f46e-20190606
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <louis.kuo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1247845030; Thu, 06 Jun 2019 02:00:39 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 03:00:38 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 6 Jun 2019 18:00:36 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 6 Jun 2019 18:00:36 +0800
From: Louis Kuo <louis.kuo@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <keiichiw@chromium.org>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC PATCH V3 0/4] media: support Mediatek sensor interface driver
Date: Thu, 6 Jun 2019 18:00:29 +0800
Message-ID: <1559815233-24796-1-git-send-email-louis.kuo@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_030142_480393_2B4F06A5 
X-CRM114-Status: UNSURE (   6.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, holmes.chiou@mediatek.com,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This is the RFC patch adding Sensor Inferface(seninf) driver on
Mediatek mt8183 SoC, which will be used in camera features on CrOS application.
It belongs to the first Mediatek's camera driver series based on V4L2 and media controller framework.
I posted the main part of the seninf driver as RFC to discuss first and would like some review comments
on the overall structure of the driver.

The driver is implemented with V4L2 framework.
1. Register as a V4L2 sub-device.
2. Only one entity with sink pads linked to camera sensors for choosing desired camera sensor by setup link
   and with source pads linked to cam-io for routing different types of decoded packet datas to PASS1 driver
   to generate sensor image frame and meta-data.

The overall file structure of the seninf driver is as following:

* mtk_seninf.c: Implement software and HW control flow of seninf driver.
* mtk_seninf_def.h: Define data structure and enumeration.
* mtk_seninf_reg.h: Define HW register R/W macros and HW register names.

[ V3: use recommended coding style, remove redundant code, change endpoint parsing method ]

  media: platform: mtk-isp: Add Mediatek sensor interface driver
  media: platform: Add Mediatek sensor interface driver KConfig
  dt-bindings: mt8183: Add sensor interface dt-bindings
  dts: arm64: mt8183: Add sensor interface nodes

 .../devicetree/bindings/media/mediatek-seninf.txt  |   31 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |   15 +
 drivers/media/platform/Makefile                    |    2 +
 drivers/media/platform/mtk-isp/Kconfig             |   17 +
 drivers/media/platform/mtk-isp/Makefile            |    3 +
 drivers/media/platform/mtk-isp/isp_50/Makefile     |    5 +
 .../media/platform/mtk-isp/isp_50/seninf/Makefile  |    6 +
 .../platform/mtk-isp/isp_50/seninf/mtk_seninf.c    | 1330 ++++++++++++++++++++
 .../mtk-isp/isp_50/seninf/mtk_seninf_def.h         |  155 +++
 .../mtk-isp/isp_50/seninf/mtk_seninf_reg.h         |  965 ++++++++++++++
 10 files changed, 2529 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-seninf.txt
 create mode 100644 drivers/media/platform/mtk-isp/Kconfig
 create mode 100644 drivers/media/platform/mtk-isp/Makefile
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/Makefile
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf.c
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_def.h
 create mode 100644 drivers/media/platform/mtk-isp/isp_50/seninf/mtk_seninf_reg.h


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
