Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15C9F369
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 11:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NF2BWfDuZDXDzyezD3AyW5KYLIVP+/oBMugExZnriQU=; b=aCADexr4B2v2X2
	Xd2v9KFw59zvR6vTj5YmW60zw8vph8wTRbWjGe7ET07M53FXvcXNCWRBaAb2OIRDvvbsOwCCoCirc
	WGfdSaaSwrBm5Yj4YxQevgo/3k0V+Zu8fUEuiPj6jdRSQriOt65T3wNGTW9wiQ02UkffZyfqpRtNq
	jcXL13VfF/4m4H5+y801llyJoNFtKgMfJv+gO08KxC1IRLkKiAeFQzXctTtxT0/rbNEqVlR2kCkrA
	xiufnRYTcSzWbxWVDf8je1f+u18bkYeKtHvLO1yD8hEwar+8u05jRGapWbo0NUWgOJG6DegNGC3C3
	uhSsVX4d3Yo6gJY2VEaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLPLf-0001VN-GQ; Tue, 30 Apr 2019 09:46:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLPKN-000055-GG; Tue, 30 Apr 2019 09:45:35 +0000
X-UUID: fb722f6563464a2d8d0bb9995f0a35ac-20190430
X-UUID: fb722f6563464a2d8d0bb9995f0a35ac-20190430
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1080485394; Tue, 30 Apr 2019 01:45:28 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 02:45:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 17:45:18 +0800
Received: from mtkslt205.mediatek.inc (10.21.15.75) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 17:45:18 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>
Subject: [PATCH RFC V2] Add driver for dvfsrc,
 support for active state of scpsys
Date: Tue, 30 Apr 2019 16:50:54 +0800
Message-ID: <1556614265-12745-1-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_024531_785290_C0F5AD21 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patchsets add support for MediaTek hardware module named DVFSRC
(dynamic voltage and frequency scaling resource collector). The DVFSRC is
a HW module which is used to collect all the requests from both software
and hardware and turn into the decision of minimum operating voltage and
minimum DRAM frequency to fulfill those requests.

So, This series is to implement the dvfsrc driver to collect all the
requests of operating voltage or DRAM bandwidth from other device drivers
likes GPU/Camera through 2 frameworks basically:

1. interconnect framework: to aggregate the bandwidth
   requirements from different clients

[1] https://patchwork.kernel.org/cover/10766329/

Below is the emi bandwidth map of mt8183. There has a hw module "DRAM scheduler"
which used to control the throughput. The DVFSRC will collect forecast data
of dram bandwidth from SW consumers(camera/gpu...), and according the forecast
to change the DRAM frequency

           ICC provider         ICC Nodes
                            ----          ----
           ---------       |CPU |   |--->|VPU |
  -----   |         |-----> ----    |     ----
 |DRAM |--|DRAM     |       ----    |     ----
 |     |--|scheduler|----->|GPU |   |--->|DISP|
 |     |--|(EMI)    |       ----    |     ----
 |     |--|         |       -----   |     ----
  -----   |         |----->|MMSYS|--|--->|VDEC|
           ---------        -----   |     ----
             /|\                    |     ----
              |change DRAM freq     |--->|VENC|
           ----------               |     ----
          |  DVFSR   |              |
          |          |              |     ----
           ----------               |--->|IMG |
                                    |     ----
                                    |     ----
                                    |--->|CAM |
                                          ----

2. Active state management of power domains[1]: to handle the operating
   voltage opp requirement from different power domains

[2] https://lwn.net/Articles/744047/

Changes in RFC V2:
* Remove the DT property dram_type. (Rob)
* Used generic dts property 'opp-level' to get the performace state. (Stephen)
* Remove unecessary dependency config on Kconfig. (Stephen)
* Remove unused header file, fixed some coding style issue, typo,
error handling on dvfsrc driver. (Nicolas/Stephen)
* Remove irq handler on dvfsrc driver. (Stephen)
* Remove init table on dvfsrc driver, combine hw init on trustzone.
* Add interconnect support of mt8183 to aggregate the emi bandwidth.
(Georgi)

RFC V1: https://lore.kernel.org/patchwork/cover/1028535/

Henry Chen (11):
  dt-bindings: soc: Add dvfsrc driver bindings
  dt-bindings: soc: Add opp table on scpsys bindings
  soc: mediatek: add support for the performance state
  arm64: dts: mt8183: add performance state support of scpsys
  soc: mediatek: add header for mediatek SIP interface
  soc: mediatek: add MT8183 dvfsrc support
  arm64: dts: mt8183: add dvfsrc related nodes
  dt-bindings: interconnect: add MT8183 interconnect dt-bindings
  dt-bindings: interconnect: Add header for interconnect node
  interconnect: mediatek: Add mt8183 interconnect provider driver
  arm64: dts: mt8183: Add interconnect provider DT nodes

 .../bindings/interconnect/mtk,mt8183.txt           |  24 ++
 .../devicetree/bindings/soc/mediatek/dvfsrc.txt    |  23 ++
 .../devicetree/bindings/soc/mediatek/scpsys.txt    |  42 +++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  33 ++
 drivers/interconnect/Kconfig                       |   1 +
 drivers/interconnect/Makefile                      |   1 +
 drivers/interconnect/mediatek/Kconfig              |  13 +
 drivers/interconnect/mediatek/Makefile             |   5 +
 drivers/interconnect/mediatek/mt8183.c             | 223 +++++++++++++
 drivers/soc/mediatek/Kconfig                       |  15 +
 drivers/soc/mediatek/Makefile                      |   1 +
 drivers/soc/mediatek/mtk-dvfsrc.c                  | 347 +++++++++++++++++++++
 drivers/soc/mediatek/mtk-scpsys.c                  |  53 ++++
 drivers/soc/mediatek/mtk-scpsys.h                  |  22 ++
 include/dt-bindings/interconnect/mtk,mt8183.h      |  18 ++
 include/dt-bindings/soc/mtk,dvfsrc.h               |  14 +
 include/soc/mediatek/mtk_dvfsrc.h                  |  22 ++
 include/soc/mediatek/mtk_sip.h                     |  17 +
 18 files changed, 874 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/mtk,mt8183.txt
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
 create mode 100644 drivers/interconnect/mediatek/Kconfig
 create mode 100644 drivers/interconnect/mediatek/Makefile
 create mode 100644 drivers/interconnect/mediatek/mt8183.c
 create mode 100644 drivers/soc/mediatek/mtk-dvfsrc.c
 create mode 100644 drivers/soc/mediatek/mtk-scpsys.h
 create mode 100644 include/dt-bindings/interconnect/mtk,mt8183.h
 create mode 100644 include/dt-bindings/soc/mtk,dvfsrc.h
 create mode 100644 include/soc/mediatek/mtk_dvfsrc.h
 create mode 100644 include/soc/mediatek/mtk_sip.h

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
