Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F7FB12A88
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gjhPCncxrVrEVY70MrEIlYBuqPEVnoBVPPv3lNp7S0g=; b=LjGMJ2SrTAqDVZ
	TohX3R35jzzM+MU8ZveqKPNc9mRJuOhQfjlylLnbTY9tpCe8oBhbhT/5clbEqvzbnSw2iJgH2KHeU
	Qz17RG0hnbHl6G4rDEUBNbRIYJEpc4WLQLPfrWkXilYCwJt6xyOns9a90a3DEOa9EnNPHRI/SVTaj
	YGYXw5RBXMadpKo+vMEpmPRVxQyTQHo7i9Y7fqlzbi62VGZwNI4mN7cs2juS7qCdRGz7wNpnLp+q+
	ebq83uLiaCjadvsuKEH6uXsxa+zUKJ4ZO7L+9e43/KxFXUPn1GS+bW8OOWom0eIHXEnHCsZAFmwH0
	18A+40VqJqlnSWnHQHkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUYz-0001aV-4Q; Fri, 03 May 2019 09:33:05 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUYn-0001LH-7I; Fri, 03 May 2019 09:32:55 +0000
X-UUID: fa9ae2df388a4118890c70830f877623-20190503
X-UUID: fa9ae2df388a4118890c70830f877623-20190503
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 479837129; Fri, 03 May 2019 01:32:43 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 02:32:41 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 May 2019 17:32:39 +0800
Received: from mtkslt302.mediatek.inc (10.21.14.115) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 3 May 2019 17:32:39 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 00/10] Add Support for MediaTek PMIC MT6358
Date: Fri, 3 May 2019 17:31:07 +0800
Message-ID: <20190503093117.54830-1-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7D00067F9E396F22E551B149909C1757BD011A8E6CD7F1F19677A6571AAF39D12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_023253_284245_3364A925 
X-CRM114-Status: GOOD (  12.15  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Liam Girdwood <lgirdwood@gmail.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset including refactoring interrupt add support to MT6358 PMIC.
MT6358 is the primary PMIC for MT8183 platform.

changes since v2:
- rewrite the description of MT6358 regulators.
- refine some coding style in the dts for better code quality.
- refine the suspend behavior of mfd driver.
- some minor bug fix of mfd driver, like adding IRQCHIP_SKIP_SET_WAKE
  flag.
- remove unused MT6358 register.
- merge the same voltage table and remove unused chip id in the MT6358
  regulator driver.

Hsin-Hsiung Wang (8):
  mfd: mt6397: clean up code
  mfd: mt6397: extract irq related code from core driver
  mfd: mt6397: modify suspend/resume behavior
  dt-bindings: mfd: Add compatible for the MediaTek MT6358 PMIC
  regulator: Add document for MT6358 regulator
  mfd: Add support for the MediaTek MT6358 PMIC
  regulator: mt6358: Add support for MT6358 regulator
  arm64: dts: mt6358: add PMIC MT6358 related nodes

Ran Bi (2):
  rtc: mt6397: fix alarm register overwrite
  rtc: Add support for the MediaTek MT6358 RTC

 .../devicetree/bindings/mfd/mt6397.txt        |  11 +-
 .../bindings/regulator/mt6358-regulator.txt   | 358 +++++++++++
 arch/arm64/boot/dts/mediatek/mt6358.dtsi      | 358 +++++++++++
 drivers/mfd/Makefile                          |   4 +-
 drivers/mfd/mt6358-irq.c                      | 229 +++++++
 drivers/mfd/mt6397-core.c                     | 293 +++------
 drivers/mfd/mt6397-irq.c                      | 214 +++++++
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mt6358-regulator.c          | 586 ++++++++++++++++++
 drivers/rtc/rtc-mt6397.c                      |  90 ++-
 include/linux/mfd/mt6358/core.h               | 158 +++++
 include/linux/mfd/mt6358/registers.h          | 282 +++++++++
 include/linux/mfd/mt6397/core.h               |  15 +
 include/linux/regulator/mt6358-regulator.h    |  56 ++
 15 files changed, 2442 insertions(+), 222 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6358.dtsi
 create mode 100644 drivers/mfd/mt6358-irq.c
 create mode 100644 drivers/mfd/mt6397-irq.c
 create mode 100644 drivers/regulator/mt6358-regulator.c
 create mode 100644 include/linux/mfd/mt6358/core.h
 create mode 100644 include/linux/mfd/mt6358/registers.h
 create mode 100644 include/linux/regulator/mt6358-regulator.h

-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
