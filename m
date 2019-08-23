Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 781EF9A65A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 05:48:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/P/L545Uro1pJEifRnSWLT9x6QxL6txuKpXVqCkzskE=; b=oe45VFzu00z/BQ
	HLz46H1g6PTdjyAmCj2Hj8FUOe+aA9aBSccNvmNBT2AuGWM3gYRYKn5RUkvKauj9kNB9yKc5hjYwM
	36qcoF3SpeW3V+MvS5YVF0Q14F+5Ehhry/KJBBYP9XYcGHDT9fQdoHW8E9KbPVUNahejjGc71Dd6Y
	HjSIYYhamYTUbB0U1nXO4mD7N1Go2Q9JH+Yi3O7x5XTLf+pnyRwToRCeHMXhOmVXxEnymdUFGjzRR
	aSvEPC/pl2jtFNHgmTxrvuPAjcKR+xeXxsG11ePXO6y+DAhWzPbned09PLDOo2aU5xHnF8XEoSbhe
	6aYzCYM4+aTk8GvlkHTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i10Yg-0000y8-Jx; Fri, 23 Aug 2019 03:48:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i10Wy-00089A-6A; Fri, 23 Aug 2019 03:46:29 +0000
X-UUID: a789f59323564739878c0b2dfe1e23b4-20190822
X-UUID: a789f59323564739878c0b2dfe1e23b4-20190822
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 115587156; Thu, 22 Aug 2019 19:45:54 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 20:45:53 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 11:45:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 23 Aug 2019 11:45:34 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Mark
 Brown" <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH v5 00/10] Add Support for MediaTek PMIC MT6358
Date: Fri, 23 Aug 2019 11:45:21 +0800
Message-ID: <1566531931-9772-1-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 724ACC656101C80D0D4B68F2D13233D42BCF3B5D896D6C75D5318436924E44E62000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_204628_364491_CC769A86 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>, linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patchset including refactoring interrupt add support to MT6358 PMIC.
MT6358 is the primary PMIC for MT8183 platform.

changes since v4:
- fix some comments for mfd driver.
- fix some coding style issues for regulator driver.
- merge the same voltage tables and index tables for regulator driver.
- remove regulator-always-on for vemc.
- change mtk rtc struct and variable naming.
- use of_device_get_match_data() to replace of_match_device() for rtc
  driver.

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
  rtc: mt6397: Add support for the MediaTek MT6358 RTC

 Documentation/devicetree/bindings/mfd/mt6397.txt   |  11 +-
 .../bindings/regulator/mt6358-regulator.txt        | 358 ++++++++++++++
 arch/arm64/boot/dts/mediatek/mt6358.dtsi           | 361 ++++++++++++++
 drivers/mfd/Makefile                               |   4 +-
 drivers/mfd/mt6358-irq.c                           | 231 +++++++++
 drivers/mfd/mt6397-core.c                          | 281 ++++-------
 drivers/mfd/mt6397-irq.c                           | 214 ++++++++
 drivers/regulator/Kconfig                          |   9 +
 drivers/regulator/Makefile                         |   1 +
 drivers/regulator/mt6358-regulator.c               | 549 +++++++++++++++++++++
 drivers/rtc/rtc-mt6397.c                           |  85 +++-
 include/linux/mfd/mt6358/core.h                    | 158 ++++++
 include/linux/mfd/mt6358/registers.h               | 282 +++++++++++
 include/linux/mfd/mt6397/core.h                    |  15 +
 include/linux/regulator/mt6358-regulator.h         |  56 +++
 15 files changed, 2393 insertions(+), 222 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6358.dtsi
 create mode 100644 drivers/mfd/mt6358-irq.c
 create mode 100644 drivers/mfd/mt6397-irq.c
 create mode 100644 drivers/regulator/mt6358-regulator.c
 create mode 100644 include/linux/mfd/mt6358/core.h
 create mode 100644 include/linux/mfd/mt6358/registers.h
 create mode 100644 include/linux/regulator/mt6358-regulator.h

-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
