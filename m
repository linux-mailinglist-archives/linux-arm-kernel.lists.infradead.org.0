Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB3C9FBF7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 09:36:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YghbTENe+Zl5dwVWbf16Fi1/mPDM77ij/9Pcl2FuJAo=; b=eKlxlHyH6hmmGC
	whT+JIsBmL9A4oQq3fo1hI/DKVzbtKPt7kAPZMAWcG10MQeIJxl3UYyvNb1OK+iCpI9Q8POaf9HYs
	vorxaxO72wNgUinZUgiIYHWxyNukjcbjkWNQVue84AQjXLMVsc+GQACOHxzHybpsz8CcJVmrb+dQ0
	QNgUUXFB6gmdL7zYh0ADeFCg68St0Uc+zYQ9qZMY5YCAo2lJqpBDhUuxe28IuLef2oOfW+eWleeTd
	5d0XirIrYYz1fkeixWuK34TTDIygWF8ZUvKFi+TYRuxaTqg2MzD2lw5+Nnkapjvbim4Vo8ApPDvNB
	UWbWWqIBcx4ZSWVFemtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2sVO-00021v-5J; Wed, 28 Aug 2019 07:36:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2sTe-00007R-Q4; Wed, 28 Aug 2019 07:34:48 +0000
X-UUID: a20b7893e595422eb87974f6d1129f83-20190827
X-UUID: a20b7893e595422eb87974f6d1129f83-20190827
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 568888852; Tue, 27 Aug 2019 23:34:49 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 00:34:47 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 15:34:40 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 15:34:40 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH v2 0/7]  add support USB for MT8183
Date: Wed, 28 Aug 2019 15:34:24 +0800
Message-ID: <1566977671-22191-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 45C8A0C3D21D41A54704C36113615E527385CF6190ED1896979E2DBFA0EBD17D2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_003446_858002_D58F0EC9 
X-CRM114-Status: GOOD (  10.03  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series support USB DRD controller and enable it's remote
wakeup functoin for MT8183, they depend on the following
series patches:

1. this series add support MT6358 PMIC
  [v5,01/10] mfd: mt6397: clean up code
  https://patchwork.kernel.org/patch/11110487/

2. this series add support pericfg syscon
  [1/2] dt-bindings: clock: mediatek: add pericfg for MT8183
  https://patchwork.kernel.org/patch/11117799/

3. add property mediatek,discth for tphy
  [06/11] phy: phy-mtk-tphy: add a property for disconnect threshold
  https://patchwork.kernel.org/patch/11110695/

v2 changes:
  add patch [7/7]

Chunfeng Yun (7):
  dt-bindings: usb: mtu3: support USB wakeup for MT8183
  dt-bindings: usb: mtk-xhci: support USB wakeup for MT8183
  usb: mtu3: support ip-sleep wakeup for MT8183
  usb: mtk-xhci: support ip-sleep wakeup for MT8183
  arm64: dts: mt8183: add usb and phy nodes
  arm64: dts: mt8183: enable USB remote wakeup
  arm64: dts: mt8183: tune disconnect threshold of u2phy

 .../bindings/usb/mediatek,mtk-xhci.txt        |  1 +
 .../devicetree/bindings/usb/mediatek,mtu3.txt |  1 +
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   | 23 +++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 64 +++++++++++++++++++
 drivers/usb/host/xhci-mtk.c                   | 14 +++-
 drivers/usb/mtu3/mtu3_host.c                  | 14 +++-
 6 files changed, 115 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
