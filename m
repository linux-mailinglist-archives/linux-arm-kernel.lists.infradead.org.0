Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D7A167A18
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 11:03:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ASVQUcPfq9ds1xf1Xp74ldRKVw693hb8uhIrG8/eMN0=; b=j8/32znE86pekA
	rxNVcelpjZvP+XS6Y11NFOhIgeLBgHGaevGaVbPGV0DgIScRJAXLM0a39/LjMkpMh52yWCtTzNWzv
	OAI3YohG3SNe5J8N9b5mNYfmJek989itkSTRMY4pvcU8b1XkoDGtSR8RKP4FrmCjrIMGxyhfD4/B5
	gNS36ie5RQNwmOb7olqn86wQEhq0qDM+CTyUsMo2oNBUAtd7xFhAoUyqv92VLjULyGCHAfrZiuk6t
	RKnXcQZGrfNIrI1zq9t5BdfNO2u5KefeprKVCKUmudNniO313bSsrgikPmfpbe+fjXTuYzUJ+o0WW
	5qpvPf0eBS6LmHgJ6lUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j559G-0006Rg-Af; Fri, 21 Feb 2020 10:03:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j558m-0006C9-7X; Fri, 21 Feb 2020 10:02:37 +0000
X-UUID: 1ad0f883c7a04829bb60b58a4c39000d-20200221
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=d/WFlzDa3S2eOt2IkKMzp95187HzPikccPGAx6OY+ks=; 
 b=nNfKTCdhUyaxTI7uSpUmCkClJPU1aFmQuoirsZOLv753DzWujwdvwdvkVDA8Dc4D+XIlEaPFagwfn3DFtK3TSPHnHySF9pA0WpwWMHEYYul59iso0QCHHUxEPyyK6aNM0xfUoBKfOJAECgeivF/eUQHeAd3s55Wma6ZO/204qY8=;
X-UUID: 1ad0f883c7a04829bb60b58a4c39000d-20200221
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1427919728; Fri, 21 Feb 2020 02:02:34 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 01:53:27 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 17:51:43 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 21 Feb 2020 17:52:59 +0800
From: Macpaul Lin <macpaul.lin@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, mtk01761
 <wendell.lin@mediatek.com>, Fabien Parent <fparent@baylibre.com>, Weiyi Lu
 <weiyi.lu@mediatek.com>, Mars Cheng <mars.cheng@mediatek.com>, Sean Wang
 <Sean.Wang@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>, Owen Chen
 <owen.chen@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>, "Evan
 Green" <evgreen@chromium.org>, Yong Wu <yong.wu@mediatek.com>, Joerg Roedel
 <jroedel@suse.de>, Shawn Guo <shawnguo@kernel.org>, Marc Zyngier
 <marc.zyngier@arm.com>, Ryder Lee <Ryder.Lee@mediatek.com>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-clk@vger.kernel.org>
Subject: [PATCH 0/5] Add basic clock support for mt6765
Date: Fri, 21 Feb 2020 17:52:17 +0800
Message-ID: <1582278742-1626-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_020236_271424_B9C3F6C3 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: CC Hwang <cc.hwang@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch set adds basic clock support for Mediatek's new 8-core SoC,
MT6765, which is mainly for smartphone application. Which has been
split from previous patch set v7: Add basic SoC support for mt6765.

  https://patchwork.kernel.org/cover/11370105/

Changes in this patch set:
1. Take patches #1, #3, #4 from origin patch set.
  - [v7,1/7] dt-bindings: clock: mediatek: document clk bindings for
    Mediatek MT6765 SoC
  - [v7,3/7] clk: mediatek: add mt6765 clock IDs
  - [v7,4/7] clk: mediatek: Add MT6765 clock support
2. Split origin patch #1 into 3 patches:
  - [PATCH 1/5] dt-bindings: clock: mediatek: document clk bindings for
    Mediatek MT6765 SoC
  - [PATCH 2/5] dt-bindings: clock: mediatek: document clk bindings
    mipi0a for Mediatek MT6765 SoC
  - [PATCH 3/5] dt-bindings: clock: mediatek: document clk bindings 
    vcodecsys for Mediatek MT6765 SoC

Macpaul Lin (3):
  dt-bindings: clock: mediatek: document clk bindings for Mediatek
    MT6765 SoC
  dt-bindings: clock: mediatek: document clk bindings mipi0a for
    Mediatek MT6765 SoC
  dt-bindings: clock: mediatek: document clk bindings vcodecsys for
    Mediatek MT6765 SoC

Mars Cheng (1):
  clk: mediatek: add mt6765 clock IDs

Owen Chen (1):
  clk: mediatek: Add MT6765 clock support

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
 drivers/clk/mediatek/Kconfig                  |  86 ++
 drivers/clk/mediatek/Makefile                 |   7 +
 drivers/clk/mediatek/clk-mt6765-audio.c       | 100 ++
 drivers/clk/mediatek/clk-mt6765-cam.c         |  74 ++
 drivers/clk/mediatek/clk-mt6765-img.c         |  70 ++
 drivers/clk/mediatek/clk-mt6765-mipi0a.c      |  68 ++
 drivers/clk/mediatek/clk-mt6765-mm.c          |  96 ++
 drivers/clk/mediatek/clk-mt6765-vcodec.c      |  70 ++
 drivers/clk/mediatek/clk-mt6765.c             | 952 ++++++++++++++++++
 include/dt-bindings/clock/mt6765-clk.h        | 313 ++++++
 20 files changed, 1899 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,vcodecsys.txt
 create mode 100644 drivers/clk/mediatek/clk-mt6765-audio.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-cam.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-img.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-mipi0a.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-mm.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765-vcodec.c
 create mode 100644 drivers/clk/mediatek/clk-mt6765.c
 create mode 100644 include/dt-bindings/clock/mt6765-clk.h

-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
