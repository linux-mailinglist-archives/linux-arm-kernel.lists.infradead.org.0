Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FBDAF904
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 11:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eEDOkWncBRZT6mwVsx3XGPtZIez1Oa/e0Vn0ebHrEQI=; b=jwWItOhr+7IJlf
	dzAVYpNfjoMMM8qFlMrhll57684ILBPtH0xPfGQNLCdhe7AddXpIACJl6gcv5hVbmS60SnMFrCIjo
	G6Y5aJ1+DumVICFVwzIjKmRkrtCMEInZgDMn/xbRmhXmoZ5pRT3AOiEmPey+6GnfR216iEPOgXBnI
	t8Vn9WMl4Tp2TF2bjTpGo3EMaNKnfP6YgmDQMELpk57S3faA6OnVE9gp17Xv0QkytCVi5u54FATA9
	YnDQwxp8sb6WkNeIVOymQWdSYwVCSm2f8JqT+52Zz4J5GnRflsKKABeIfof9NHauJhLWaRwp/H3/s
	cLFfLCQGpAfqnQTunpPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7z1a-0006LT-Jd; Wed, 11 Sep 2019 09:34:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7z10-00064x-Iz; Wed, 11 Sep 2019 09:34:20 +0000
X-UUID: 68a2b10964584ac08f98777074b044fd-20190911
X-UUID: 68a2b10964584ac08f98777074b044fd-20190911
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1097992909; Wed, 11 Sep 2019 01:34:16 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 02:34:14 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Sep 2019 17:34:08 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 11 Sep 2019 17:34:08 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC, v3, 0/4] media: mediatek: support mdp3 on mt8183 platform
Date: Wed, 11 Sep 2019 17:34:02 +0800
Message-ID: <20190911093406.5688-1-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_023418_688803_6D6AE68D 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, daoyuan huang <daoyuan.huang@mediatek.com>,
 holmes.chiou@mediatek.com, Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: daoyuan huang <daoyuan.huang@mediatek.com>

Changes since v2:
- modify code for review comment from Tomasz Figa & Alexandre Courbot
- review comment from Rob Hering will offer code revision in v4, due to
  it's related to device node modification, will need to modify code
  architecture

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

Hi,

This is the first version of RFC patch for Media Data Path 3 (MDP3),
MDP3 is used for scaling and color format conversion.
support using GCE to write register in critical time limitation.
support V4L2 m2m device control.

Ping-Hsun Wu (1):
  dts: arm64: mt8183: Add Mediatek MDP3 nodes

daoyuan huang (3):
  dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
  media: platform: Add Mediatek MDP3 driver KConfig
  media: platform: mtk-mdp3: Add Mediatek MDP3 driver

 .../bindings/media/mediatek,mt8183-mdp3.txt   |  201 +++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  137 ++
 drivers/media/platform/Kconfig                |   19 +
 drivers/media/platform/Makefile               |    1 +
 drivers/media/platform/mtk-mdp3/Makefile      |    7 +
 drivers/media/platform/mtk-mdp3/isp_reg.h     |   37 +
 .../media/platform/mtk-mdp3/mdp-platform.h    |   58 +
 .../media/platform/mtk-mdp3/mdp_reg_ccorr.h   |   75 +
 .../media/platform/mtk-mdp3/mdp_reg_rdma.h    |  206 +++
 drivers/media/platform/mtk-mdp3/mdp_reg_rsz.h |  109 ++
 .../media/platform/mtk-mdp3/mdp_reg_wdma.h    |  125 ++
 .../media/platform/mtk-mdp3/mdp_reg_wrot.h    |  115 ++
 .../media/platform/mtk-mdp3/mmsys_config.h    |  188 +++
 drivers/media/platform/mtk-mdp3/mmsys_mutex.h |   35 +
 .../media/platform/mtk-mdp3/mmsys_reg_base.h  |   38 +
 drivers/media/platform/mtk-mdp3/mtk-img-ipi.h |  270 ++++
 .../media/platform/mtk-mdp3/mtk-mdp3-cmdq.c   |  504 +++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-cmdq.h   |   54 +
 .../media/platform/mtk-mdp3/mtk-mdp3-comp.c   | 1328 +++++++++++++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-comp.h   |  155 ++
 .../media/platform/mtk-mdp3/mtk-mdp3-core.c   |  277 ++++
 .../media/platform/mtk-mdp3/mtk-mdp3-core.h   |   84 ++
 .../media/platform/mtk-mdp3/mtk-mdp3-m2m.c    |  816 ++++++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-m2m.h    |   42 +
 .../media/platform/mtk-mdp3/mtk-mdp3-regs.c   |  739 +++++++++
 .../media/platform/mtk-mdp3/mtk-mdp3-regs.h   |  375 +++++
 .../media/platform/mtk-mdp3/mtk-mdp3-vpu.c    |  313 ++++
 .../media/platform/mtk-mdp3/mtk-mdp3-vpu.h    |   81 +
 28 files changed, 6389 insertions(+)
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
