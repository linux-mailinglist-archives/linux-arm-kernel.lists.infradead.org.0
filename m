Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F2AA01C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:31:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=V1tj9NHd/vKlSrRvP9wR/HWZKoG2QXYO4Y2yP25RWUU=; b=oKp+2ZFdPmIZ8T
	MiGKhkLybSGAJ6vxmTBC5DZlgY25V9b/LMGmxciQnoa/PZ1F/9X6oKgBze9ScqM1SHhi8XdqM/zZu
	npwgLF7IV1iT7vlgFqye8BYGxvvysc7EOTq0IU9LGNQ9Fxbw+Jix7ExrIlr3NgIkytRjGXuNZ3Clr
	4qL/rjeCxzYIQnf0OMDtuUbD9YFMHzIzIlM2oO0Jhjl6gJwUC53VZoO3NDv5yI96FQJKE7F9813lE
	5IbYqGfXOa7ewgTgBQhv2xVhk5Bv9mXo0jhqpdzFv+b95O8NW54Sz5vXmeJu37V4kY315qbM8+8lI
	FErdNN5fHfoVcq/irO/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2x6q-0005HF-LN; Wed, 28 Aug 2019 12:31:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2x4Y-0002X3-4H; Wed, 28 Aug 2019 12:29:13 +0000
X-UUID: 896ee1e3061f4c11ade5f5625e34623c-20190828
X-UUID: 896ee1e3061f4c11ade5f5625e34623c-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2085520933; Wed, 28 Aug 2019 04:29:13 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 05:29:11 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 20:28:58 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 20:28:58 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>
Subject: [PATCH V3 00/10] Add driver for dvfsrc,
 support for active state of scpsys 
Date: Wed, 28 Aug 2019 20:28:38 +0800
Message-ID: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_052910_208052_2A5EE581 
X-CRM114-Status: GOOD (  14.85  )
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

Changes in RFC V3:
* Remove RFC from the subject prefix of the series
* Combine dt-binding patch and move interconnect dt-binding document into
dvfsrc. (Rob)
* Remove unused header, add unit descirption to the bandwidth, rename compatible
name on interconnect driver. (Georgi)
* Fixed some coding style: check flow, naming, used readx_poll_timeout
on dvfsrc driver. (Ryan)
* Rename interconnect driver mt8183.c to mtk-emi.c
* Rename interconnect header mtk,mt8183.h to mtk,emi.h
* mtk-scpsys.c: Add opp table check first to avoid OF runtime parse failed

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

RFC V2: https://lore.kernel.org/patchwork/patch/1068113/
RFC V1: https://lore.kernel.org/patchwork/cover/1028535/

Henry Chen (10):
  dt-bindings: soc: Add dvfsrc driver bindings
  dt-bindings: soc: Add opp table on scpsys bindings
  soc: mediatek: add support for the performance state
  arm64: dts: mt8183: add performance state support of scpsys
  soc: mediatek: add header for mediatek SIP interface
  soc: mediatek: add MT8183 dvfsrc support
  arm64: dts: mt8183: add dvfsrc related nodes
  dt-bindings: interconnect: add MT8183 interconnect dt-bindings
  interconnect: mediatek: Add mt8183 interconnect provider driver
  arm64: dts: mt8183: Add interconnect provider DT nodes

 .../devicetree/bindings/soc/mediatek/dvfsrc.txt    |  32 ++
 .../devicetree/bindings/soc/mediatek/scpsys.txt    |  42 +++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  33 ++
 drivers/interconnect/Kconfig                       |   1 +
 drivers/interconnect/Makefile                      |   1 +
 drivers/interconnect/mediatek/Kconfig              |  13 +
 drivers/interconnect/mediatek/Makefile             |   3 +
 drivers/interconnect/mediatek/mtk-emi.c            | 246 ++++++++++++++
 drivers/soc/mediatek/Kconfig                       |  15 +
 drivers/soc/mediatek/Makefile                      |   1 +
 drivers/soc/mediatek/mtk-dvfsrc.c                  | 374 +++++++++++++++++++++
 drivers/soc/mediatek/mtk-scpsys.c                  |  58 ++++
 drivers/soc/mediatek/mtk-scpsys.h                  |  22 ++
 include/dt-bindings/interconnect/mtk,mt8183-emi.h  |  18 +
 include/dt-bindings/soc/mtk,dvfsrc.h               |  14 +
 include/soc/mediatek/mtk_dvfsrc.h                  |  22 ++
 include/soc/mediatek/mtk_sip.h                     |  17 +
 17 files changed, 912 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/mediatek/dvfsrc.txt
 create mode 100644 drivers/interconnect/mediatek/Kconfig
 create mode 100644 drivers/interconnect/mediatek/Makefile
 create mode 100644 drivers/interconnect/mediatek/mtk-emi.c
 create mode 100644 drivers/soc/mediatek/mtk-dvfsrc.c
 create mode 100644 drivers/soc/mediatek/mtk-scpsys.h
 create mode 100644 include/dt-bindings/interconnect/mtk,mt8183-emi.h
 create mode 100644 include/dt-bindings/soc/mtk,dvfsrc.h
 create mode 100644 include/soc/mediatek/mtk_dvfsrc.h
 create mode 100644 include/soc/mediatek/mtk_sip.h

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
