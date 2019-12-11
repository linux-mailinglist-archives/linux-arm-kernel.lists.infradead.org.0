Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B12811A106
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 03:06:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lPAEgU2BzFKhovURowgaNKbC4Ud2Q1KDZldkT3PRxaQ=; b=bp6tes2yHQ8RJQ
	dpfyKVX4nyXrjAUO4wq9z/48rEn0bnNwwwIa7EtzUO5mjCIyi2QgGvjckeGqO2LFTx1n9TsELIWVu
	01oMtV8tSlAboLn+dfWmoiDX/eBveazqQ8GZ8nOKVuWYX0ag+xeIlv2T9ySWxLnKuuD12BFiu5Zfv
	Pr+NAOaNgCgJWb0sjVcwl1eQXLu+cD5y0FecLrEnck9tmy2VK7HXy5LpJ60Z7WKy13unVdU4zThiB
	9K/0Pff5hFVwaEcScUt+3U8MAcH93uukXj2jdIodS1Tq5ULjtLzZepgIEIP1GdO2auZ2zWrBBw/dQ
	AMAkTwXu79WmV3CUhizA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ierOK-0003Ms-2P; Wed, 11 Dec 2019 02:06:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ierNA-000197-Gl; Wed, 11 Dec 2019 02:05:06 +0000
X-UUID: a332d64d51914a0f8689ca5cd863244c-20191210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=aX14XFV3v9enjNQQukse3rEThkp/4nt3pqUfFtZISK0=; 
 b=QWc+PiQ2lsv3Iiw4sm5UWbhpF2+cc7E5zuY3fqc7AR2BifNmE+IWS23zN4P6R/LmxYORdq8gQfEDJ6++4DKc3X5euxw0gb52uXX4wkl0uCozwm/Yl6ogaahqGsI9eOxbrM5q0sGmc8Ehsz4m40I1WZL801GM4rx/1ml4APRSxCI=;
X-UUID: a332d64d51914a0f8689ca5cd863244c-20191210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <min.guo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 646346349; Tue, 10 Dec 2019 18:04:58 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 17:55:59 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 09:54:40 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 11 Dec 2019 09:54:45 +0800
From: <min.guo@mediatek.com>
To: Bin Liu <b-liu@ti.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v9 0/6] Add MediaTek MUSB Controller Driver
Date: Wed, 11 Dec 2019 09:54:40 +0800
Message-ID: <20191211015446.11477-1-min.guo@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: B8A45FEE1BDC471EAE20714BD3FF23139CF6460935F71E7158ABA2C0EDD2E4BD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_180504_651764_BF0E326A 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

changes in v9:
changes of dt-bindings and DTS:
1. Add usb-role-switch
2. Remove label of usb connector child node
3. Change usb connector child node compatible as "gpio-usb-b-connector", "usb-b-connector";

changes in v8:
changes of dt-bindings:
1.Add reviewed by Rob

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

 .../devicetree/bindings/usb/mediatek,musb.txt |  57 ++
 arch/arm/boot/dts/mt2701-evb.dts              |  21 +
 arch/arm/boot/dts/mt2701.dtsi                 |  33 +
 drivers/usb/musb/Kconfig                      |   9 +-
 drivers/usb/musb/Makefile                     |   1 +
 drivers/usb/musb/mediatek.c                   | 582 ++++++++++++++++++
 drivers/usb/musb/musb_core.c                  |  74 ++-
 drivers/usb/musb/musb_core.h                  |  13 +-
 drivers/usb/musb/musb_dma.h                   |   9 +
 drivers/usb/musb/musb_host.c                  |  46 +-
 drivers/usb/musb/musb_io.h                    |  12 +-
 drivers/usb/musb/musbhsdma.c                  |  56 +-
 drivers/usb/musb/sunxi.c                      |   4 +-
 drivers/usb/musb/tusb6010.c                   |   2 +-
 14 files changed, 847 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/mediatek,musb.txt
 create mode 100644 drivers/usb/musb/mediatek.c

-- 
2.24.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
