Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CA8A3211
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 10:23:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LhDUA/sXfoMXXafDoAZEiIs5bhh8SzvHFre+Ll25wro=; b=fYW/Andf1B8uWX
	ZT9VlBLC9EaEdYkdbwE7PMRR3L1DVYlAeVd04xfeRH44dtHdLekmaFlupDNB9+70vRaM9vUbjBSXd
	br513Ee7B0sH2A2uTOlu1jLFvXVv+Avu4vHazCY/yS+WRsj78RtRxoC30tkyP8i2HhhIw9YFris5F
	CC1k5NiN7TehoETzJbcWSNRP8XKY4l5w8Uki9uY9iq9OOIfkms98zcjsAEXq9aDluDF1Rv85HRVwe
	KuN3jTLi7YhTck84eaMXLC/QMlxGDyudzZmBlcpgvC7leiLQVEhCUSdANN6Fa5ANaHcBwLjJI1aRU
	jVXXXue3WC/rj2wI2ImQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3cBZ-000691-Vn; Fri, 30 Aug 2019 08:23:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3cBN-00067g-Gb; Fri, 30 Aug 2019 08:22:59 +0000
X-UUID: e4a216ade42b4138a41b258d27494796-20190830
X-UUID: e4a216ade42b4138a41b258d27494796-20190830
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 829970781; Fri, 30 Aug 2019 00:22:54 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 01:22:52 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 16:22:47 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 16:22:47 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 0/6] Add MediaTek MUSB Controller Driver
Date: Fri, 30 Aug 2019 16:20:20 +0800
Message-ID: <20190830082026.30401-1-min.guo@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 900FA1D8111BFA22B338BB5CDAAA7A9DFDF9233EBA9FD475AAC1DCFDD5654A4E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_012257_561955_1AE69F06 
X-CRM114-Status: GOOD (  12.20  )
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
 hdegoede@redhat.com, tony@atomide.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>, Min Guo <min.guo@mediatek.com>,
 chunfeng.yun@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Min Guo <min.guo@mediatek.com>

These patches introduce the MediaTek MUSB controller driver.

The driver can be configured as Dual-Role Device (DRD),
Peripheral Only and Host Only modes. This has beed tested on
MT2701 with a variety of devices in host mode and with the 
f_mass gadget driver in peripheral mode, plugging otg cables
in/out a lot of times in all possible imaginable plug orders.

changes in v7:
changes of dt-bindings and DTS:
1. Change compatible string
2. Change usb connector child node compatible as "gpio-usb-b-connector" 

changes in v6:
changes of dt-bindings:
1. Modify usb connector child node
changes of DTS:
1. Modify usb connector child node
changes of driver:
1. Add of_platform_populate in probe to populate connector platform_devices
   from device tree data
2. Replace extcon with usb role switch mechanism to support dual-role mode,
   depends on [1]
3. Remove set vbus function

    [1] [v6,09/10] usb: roles: add USB Type-B GPIO connector driver
        https://patchwork.kernel.org/patch/10966361/

changes in v5:
changes of dt-bindings suggested by Rob:
1. Modify compatible as 
- compatible : should be one of:
               "mediatek,mt-2701"
               ...
               followed by "mediatek,mtk-musb"
2. Add usb connector child node
changes of DTS:
1. Add usb connector child node
changes of driver suggested by Bin:
1. Replace musb_readb() with musb_clearb() to clear dma pending interrupts
2. Replace musb_readb() with musb_clearb() to clear common/tx/rx pending interrupts
3. Make musb_clearb/w() return the value of musb_readb/w()

changes in v4:
changes of dt-bindings suggested by Sergei:
1. String alignment
changes of driver suggested by Tony and Bin:
1. Add a new patch for set/get_toggle()
2. Add a new patch for noirq type of dma
3. Add a new patch musb_clearb/w()
4. Abondon patch "usb: musb: Delete the const attribute of addr parameter in readb/w/l hooks"

changes in v3:
changes of driver suggested by Bin:
1. Add a new patch for musb_readb/w/l() to remove const attribute 
2. Use is_out as function parameter in set_toggle/get_toggle() hooks
3. Remove 'u8/u16 data' parameter in clearb/w() hooks
4. Remove musb_default_clearb/w()
5. Replace musb_readb/w() with musb_clearb/w() to clear pending interrupts 
6. Add comments to clearb/w() hooks
7. Replace musb_save_toggle() with musb->io.get_toggle()
8. Replace musb_set_toggle() with musb->io.set_toggle()

changes in v2:
changes of dt-bindings suggested by Rob and Bin:
1. Modify DRC to DRD
2. Drop the "<soc-model>-musb" in compatible
3. Remove phy-names
4. Add space after comma in clock-names
dtsi:
1. Remove phy-names
changes of driver suggested by Bin:
1. Add a new patch for musb_set_toggle
2. Add summarize of MediaTek musb controller differences in the commit log
3. Abondon patch "usb: musb: Move musbhsdma macro definition to musb_dma.h"
4. Add "|| COMPILE_TEST" in Kconfig
5. Add musb_clearb() and musb_clearw() hooks
6. Add get_toggle() and set_toggle() hooks
7. Replace musb_readl() with musb_readw() to read 16bit toggle register
8. Move MediaTek's private toggle registers from musb_regs.h to mediatek.c
9. Create musbhs_dma_controller_create_noirq()

Min Guo (6):
  dt-bindings: usb: musb: Add support for MediaTek musb controller
  arm: dts: mt2701: Add usb2 device nodes
  usb: musb: Add get/set toggle hooks
  usb: musb: Add noirq type of dma create interface
  usb: musb: Add musb_clearb/w() interface
  usb: musb: Add support for MediaTek musb controller

 .../devicetree/bindings/usb/mediatek,musb.txt      |  55 ++
 arch/arm/boot/dts/mt2701-evb.dts                   |  21 +
 arch/arm/boot/dts/mt2701.dtsi                      |  33 ++
 drivers/usb/musb/Kconfig                           |   9 +-
 drivers/usb/musb/Makefile                          |   1 +
 drivers/usb/musb/mediatek.c                        | 582 +++++++++++++++++++++
 drivers/usb/musb/musb_core.c                       |  74 ++-
 drivers/usb/musb/musb_core.h                       |  13 +-
 drivers/usb/musb/musb_dma.h                        |   9 +
 drivers/usb/musb/musb_host.c                       |  46 +-
 drivers/usb/musb/musb_io.h                         |  12 +-
 drivers/usb/musb/musbhsdma.c                       |  56 +-
 drivers/usb/musb/sunxi.c                           |   4 +-
 drivers/usb/musb/tusb6010.c                        |   2 +-
 14 files changed, 845 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt
 create mode 100644 drivers/usb/musb/mediatek.c

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
