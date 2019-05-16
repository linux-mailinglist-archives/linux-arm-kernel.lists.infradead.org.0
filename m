Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 084EF1FE0B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 05:24:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ueeNyc/Z1hiFoU2riAKpET51apZhuM/X8Yi/vLvqwgs=; b=tbnaRLf3UqXB3E
	lrMlkNXGK2kP/A/vBNwE1Ga1qpglgVgLmAlKudfgyEarXHJoNhv9MP7RWaFubwIsKbDTbNLrRIjyd
	BfkC4qboR/NqG5PtKbVXtlFjMNYIFvzZ+1zo60Ons4C5Tr/Z4nUNSIIfT72ojgl9HRCb1NY8oUEC/
	xRrl22qMRCrRtZeFFAjW5i11ajN6RvEi0a/KY2Ynl6Pilu1+CKeKg7DUwqIJFws1Q8Hqb6KZEIwDE
	4MXGzMo/3z+X8zFtEMlQP20ON2Nsm69+RoHXART42rQl4f5CLNj1fQ9Qq+Hkkuzmguuso10tIY+Zk
	KO53YsEtd2K6J0KgG4xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6zw-0006VP-1L; Thu, 16 May 2019 03:24:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6zm-0006UE-0e; Thu, 16 May 2019 03:23:51 +0000
X-UUID: f5a0689038b54364acb6cd8506ce40cd-20190515
X-UUID: f5a0689038b54364acb6cd8506ce40cd-20190515
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <daoyuan.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 284144081; Wed, 15 May 2019 19:23:44 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 15 May 2019 20:23:42 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 11:23:41 +0800
Received: from mtkslt306.mediatek.inc (10.21.14.136) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 11:23:41 +0800
From: Daoyuan Huang <daoyuan.huang@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC v2 0/4] media: mediatek: support mdp3 on mt8183 platform
Date: Thu, 16 May 2019 11:23:28 +0800
Message-ID: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_202350_057101_A76DE05B 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.6 HK_RANDOM_ENVFROM      Envelope sender username looks random
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

Hi,

This is the first version of RFC patch for Media Data Path 3 (MDP3),
MDP3 is used for scaling and color format conversion.
support using GCE to write register in critical time limitation.
support V4L2 m2m device control.

Changes since v1:
- modify code for CMDQ v3 API support
- EC ipi cmd migration
- fix compliance test fail item (m2m cmd with -f)
due to there is two problem in runing all format(-f) cmd:
1. out of memory before test complete
	Due to capture buffer mmap (refcount + 1) after reqbuf but seems
	no corresponding munmap called before device close.
	There are total 12XX items(formats) in format test and each format
	alloc 8 capture/output buffers.
2. unceasingly captureBufs() (randomly)
	Seems the break statement didn't catch the count == 0 situation:
	In v4l2-test-buffers.cpp, function: captureBufs()
			...
			count--;
			if (!node->is_m2m && !count)
				break;
	Log is as attachment

I will paste the test result with problem part in another e-mail



---
Based on v5.0-rc1 and these series:
device tree:
http://lists.infradead.org/pipermail/linux-mediatek/2019-February/017570.html
clock control:
http://lists.infradead.org/pipermail/linux-mediatek/2019-February/017320.html
system control processor (SCP):
http://lists.infradead.org/pipermail/linux-mediatek/2019-February/017774.html
global command engine (GCE):
http://lists.infradead.org/pipermail/linux-mediatek/2019-January/017143.html
---

daoyuan huang (4):
  dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
  dts: arm64: mt8183: Add Mediatek MDP3 nodes
  media: platform: Add Mediatek MDP3 driver KConfig
  media: platform: mtk-mdp3: Add Mediatek MDP3 driver

 .../bindings/media/mediatek,mt8183-mdp3.txt   |  217 +++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  173 +++
 drivers/media/platform/Kconfig                |   18 +
 drivers/media/platform/Makefile               |    2 +
 drivers/media/platform/mtk-mdp3/Makefile      |    9 +
 drivers/media/platform/mtk-mdp3/isp_reg.h     |   38 +
 .../media/platform/mtk-mdp3/mdp-platform.h    |   67 +
 .../media/platform/mtk-mdp3/mdp_reg_ccorr.h   |   76 +
 .../media/platform/mtk-mdp3/mdp_reg_rdma.h    |  207 +++
 drivers/media/platform/mtk-mdp3/mdp_reg_rsz.h |  110 ++
 .../media/platform/mtk-mdp3/mdp_reg_wdma.h    |  126 ++
 .../media/platform/mtk-mdp3/mdp_reg_wrot.h    |  116 ++
 .../media/platform/mtk-mdp3/mmsys_config.h    |  189 +++
 drivers/media/platform/mtk-mdp3/mmsys_mutex.h |   36 +
 .../media/platform/mtk-mdp3/mmsys_reg_base.h  |   39 +
 drivers/media/platform/mtk-mdp3/mtk-img-ipi.h |  282 ++++
 .../media/platform/mtk-mdp3/mtk-mdp3-cmdq.c   |  442 ++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-cmdq.h   |   57 +
 .../media/platform/mtk-mdp3/mtk-mdp3-comp.c   | 1325 +++++++++++++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-comp.h   |  177 +++
 .../media/platform/mtk-mdp3/mtk-mdp3-core.c   |  256 ++++
 .../media/platform/mtk-mdp3/mtk-mdp3-core.h   |   88 ++
 .../media/platform/mtk-mdp3/mtk-mdp3-m2m.c    |  823 ++++++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-m2m.h    |   52 +
 .../media/platform/mtk-mdp3/mtk-mdp3-regs.c   |  757 ++++++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-regs.h   |  386 +++++
 .../media/platform/mtk-mdp3/mtk-mdp3-vpu.c    |  277 ++++
 .../media/platform/mtk-mdp3/mtk-mdp3-vpu.h    |   90 ++
 28 files changed, 6435 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-mdp3.txt
 create mode 100644 drivers/media/platform/mtk-mdp3/Makefile
 create mode 100644 drivers/media/platform/mtk-mdp3/isp_reg.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mdp-platform.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mdp_reg_ccorr.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mdp_reg_rdma.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mdp_reg_rsz.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mdp_reg_wdma.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mdp_reg_wrot.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mmsys_config.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mmsys_mutex.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mmsys_reg_base.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-img-ipi.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-cmdq.c
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-cmdq.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-comp.c
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-comp.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-core.c
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-core.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-m2m.c
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-m2m.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-regs.c
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-regs.h
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-vpu.c
 create mode 100644 drivers/media/platform/mtk-mdp3/mtk-mdp3-vpu.h

-- 
2.18.0




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
