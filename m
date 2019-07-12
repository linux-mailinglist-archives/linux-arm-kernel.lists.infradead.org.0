Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7351966A3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 11:44:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n++zfOZyortlxT9MpaRLLq8aslqvA1QDPmf/0wMAjvc=; b=k3FD0z4+y0Kj3Y
	zmusokqRM+R9c9PuInpt9rAwjx0usuF/95kSNRNSNdMJ6d+E/xMCkH+RMUEyepg3nrUJK40G2AEpg
	RQzE61oPgKJX1cELTB7Zp1H39lFS/cTeqVFLCMFlLDQXbbWRJKv/82oxMIk9ftkSvXx37DTWYICvx
	5DfeVBcmBjqMfnYj67GIi8iQz14Uv0VQcRY9eCPUxY/oSzLajFfW0mZI6+8PVE8Q2IxLNXq2+3Thv
	BrRNhyK1e2SM6bbpKZbFqf6ZrtHRYvVZG7Ycl2MqTf3p+ga2kIc9edrltlWdCh7XfzOL+RzYzvFEB
	dy2GRLVm/yWEjZ0Id5Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hls6e-0006QT-KO; Fri, 12 Jul 2019 09:44:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hls6Q-0006Op-Fq; Fri, 12 Jul 2019 09:44:32 +0000
X-UUID: e0c714a11cb04c33bae110668defb998-20190712
X-UUID: e0c714a11cb04c33bae110668defb998-20190712
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 472823793; Fri, 12 Jul 2019 01:44:23 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 02:44:21 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 12 Jul 2019 17:44:19 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 12 Jul 2019 17:44:19 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Marc Zyngier <marc.zyngier@arm.com>,
 Ryder Lee <ryder.lee@mediatek.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, "Owen
 Chen" <owen.chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 0/8] Add basic SoC support for mt6765
Date: Fri, 12 Jul 2019 17:43:36 +0800
Message-ID: <1562924653-10056-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 652D05AEE8BA6B315CF08EEE2E1D8453BBB4EB91AB589F2FB8116AA5BECD01822000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_024430_540570_F37D94B8 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>, linux-serial@vger.kernel.org,
 linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds basic SoC support for Mediatek's new 8-core SoC,
MT6765, which is mainly for smartphone application.

Changes in V6:
1. Adapt V5's patchset to latest kernel tree.
   Origin V5 patchset.
   https://lore.kernel.org/patchwork/cover/963612/
2. Due to clk's common code has been submit by other platform,
   this patch set will have dependencies with the following patchsets
   as the following orders.
   2.a. [v8,00/21] MT8183 IOMMU SUPPORT
        https://patchwork.kernel.org/cover/11023585/
   2.b. [v11,0/6] Add basic node support for Mediatek MT8183 SoC
        https://patchwork.kernel.org/cover/10962385/
   2.c. [v6,00/14] Mediatek MT8183 scpsys support
        https://patchwork.kernel.org/cover/11005751/
3. Correct power related patches into dt-binding patches.
4. Re-order V5's 4/11, 6/11, and 7/11 due clk common code change
   and make dependencies in order.
5. Update some commit message in clk related patches.

Changes in V5:
1. add clk support

Changes in V4:
1. add gic's settings in reg properties
2. remove some patches about dt-bindings since GKH already took them

Changes in V3:
1. split dt-binding document patchs
2. fix mt6765.dtsi warnings with W=12
3. remove uncessary PPI affinity for timer
4. add gicc base for gic dt node

Changes in V2:
1. fix clk properties in uart dts node
2. fix typo in submit title
3. add simple-bus in mt6765.dtsi
4. use correct SPDX license format

Mars Cheng (6):
  dt-bindings: clock: mediatek: document clk bindings for Mediatek
    MT6765 SoC
  dt-bindings: mediatek: Add smi dts binding for Mediatek MT6765 SoC
  dt-bindings: mediatek: add MT6765 power dt-bindings
  clk: mediatek: add mt6765 clock IDs
  soc: mediatek: add MT6765 scpsys and subdomain support
  arm64: dts: mediatek: add mt6765 support

Owen Chen (2):
  clk: mediatek: Add MT6765 clock support
  arm64: defconfig: add CONFIG_COMMON_CLK_MT6765_XXX clocks

 .../arm/mediatek/mediatek,apmixedsys.txt      |   1 +
 .../bindings/arm/mediatek/mediatek,audsys.txt |   1 +
 .../bindings/arm/mediatek/mediatek,camsys.txt |   1 +
 .../bindings/arm/mediatek/mediatek,imgsys.txt |   1 +
 .../arm/mediatek/mediatek,infracfg.txt        |   1 +
 .../bindings/arm/mediatek/mediatek,mipi0a.txt |  28 +
 .../bindings/arm/mediatek/mediatek,mmsys.txt  |   1 +
 .../arm/mediatek/mediatek,pericfg.txt         |   1 +
 .../arm/mediatek/mediatek,topckgen.txt        |   1 +
 .../arm/mediatek/mediatek,vcodecsys.txt       |  27 +
 .../mediatek,smi-common.txt                   |   1 +
 .../bindings/soc/mediatek/scpsys.txt          |   6 +
 arch/arm64/boot/dts/mediatek/Makefile         |   1 +
 arch/arm64/boot/dts/mediatek/mt6765-evb.dts   |  33 +
 arch/arm64/boot/dts/mediatek/mt6765.dtsi      | 253 +++++
 arch/arm64/configs/defconfig                  |   6 +
 drivers/clk/mediatek/Kconfig                  |  86 ++
 drivers/clk/mediatek/Makefile                 |   7 +
 drivers/clk/mediatek/clk-mt6765-audio.c       | 109 ++
 drivers/clk/mediatek/clk-mt6765-cam.c         |  83 ++
 drivers/clk/mediatek/clk-mt6765-img.c         |  79 ++
 drivers/clk/mediatek/clk-mt6765-mipi0a.c      |  77 ++
 drivers/clk/mediatek/clk-mt6765-mm.c          | 105 ++
 drivers/clk/mediatek/clk-mt6765-vcodec.c      |  79 ++
 drivers/clk/mediatek/clk-mt6765.c             | 961 ++++++++++++++++++
 drivers/soc/mediatek/mtk-scpsys.c             | 130 +++
 include/dt-bindings/clock/mt6765-clk.h        | 313 ++++++
 include/dt-bindings/power/mt6765-power.h      |  14 +
 28 files changed, 2406 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6765-evb.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6765.dtsi
 create mode 100644 drivers/clk/mediatek/clk-mt6765-audio.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-cam.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-img.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-mipi0a.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-mm.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-vcodec.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765.c
 create mode 100644 include/dt-bindings/clock/mt6765-clk.h
 create mode 100644 include/dt-bindings/power/mt6765-power.h

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
