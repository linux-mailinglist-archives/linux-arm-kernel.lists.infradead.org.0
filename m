Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C04183E16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 01:59:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5ZS+fn9ZCEpdOtf/BQ3ncDYq+hHaWD8kReMsX99tjQU=; b=T/9
	wyeYuCsK3967Fdl94G4xd5beZNBw6F7dAYu3jku/LPgKM2QKvALrbPnLPS8Zpd0UefQGFURCZsVGM
	wOTBM/rexPNp0jR/ygx5XYO9tFKp0KsUdqr+ou7zKY4lEzTCllpLrIY3TFNpTbkDq2i4kBfdE+N/c
	v8t34WEXaanz26b8JKQPsz/xTHNGM9AfDFIqJaxGC1/yFmHdSJh3c9iNrrLI90Gho2glTEyGtBAb0
	TyG1Rlf4UFm52N9IMEyy23ZEPxhWMFGEUf61JTBW7/Kx27cit9Gi8+wpd0BA5Zs5Jysco+Y9zKWEU
	1VOxSFZmQOCa4bLIrqi74ojB6R841zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCYfM-0004NO-9U; Fri, 13 Mar 2020 00:59:08 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCYep-0004Bj-TU
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 00:58:37 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 13 Mar 2020 09:58:32 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 011E3603AB;
 Fri, 13 Mar 2020 09:58:33 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 13 Mar 2020 09:58:32 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id CB11F1A01BB;
 Fri, 13 Mar 2020 09:58:32 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 00/10] Add devicetree features and fixes for UniPhier SoCs
Date: Fri, 13 Mar 2020 09:58:06 +0900
Message-Id: <1584061096-23686-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_175836_062517_509F6F21 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds new features that includes XDMAC for each SoC,
USB controller for Pro5, SPI for PXs3-ref, and thermal zone for PXs3.

And more, this adds ethernet aliases to determine device name assignments
and fixes for SCSSI clock/reset IDs and stabilization for ethernet.

Kunihiko Hayashi (10):
  ARM: dts: uniphier: Add XDMAC node
  arm64: dts: uniphier: Add XDMAC node
  ARM: dts: uniphier: Add USB3 controller nodes for Pro5
  arm64: dts: uniphier: Enable spi node for PXs3 reference board
  arm64: dts: uniphier: Add nodes of thermal monitor and thermal zone
    for PXs3
  ARM: dts: uniphier: Add ethernet aliases
  arm64: dts: uniphier: Add ethernet aliases
  ARM: dts: uniphier: Set SCSSI clock and reset IDs for each channel
  arm64: dts: uniphier: Set SCSSI clock and reset IDs for each channel
  arm64: dts: uniphier: Stabilize Ethernet RGMII mode of LD20 global and
    PXs3 ref board

 arch/arm/boot/dts/uniphier-ld6b-ref.dts            |   1 +
 arch/arm/boot/dts/uniphier-pro4-ace.dts            |   1 +
 arch/arm/boot/dts/uniphier-pro4-ref.dts            |   1 +
 arch/arm/boot/dts/uniphier-pro4-sanji.dts          |   1 +
 arch/arm/boot/dts/uniphier-pro4.dtsi               |   8 ++
 arch/arm/boot/dts/uniphier-pro5.dtsi               | 160 ++++++++++++++++++++-
 arch/arm/boot/dts/uniphier-pxs2-gentil.dts         |   1 +
 arch/arm/boot/dts/uniphier-pxs2-vodka.dts          |   1 +
 arch/arm/boot/dts/uniphier-pxs2.dtsi               |  12 +-
 .../boot/dts/socionext/uniphier-ld11-global.dts    |   1 +
 .../arm64/boot/dts/socionext/uniphier-ld11-ref.dts |   1 +
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi   |  12 +-
 .../boot/dts/socionext/uniphier-ld20-global.dts    |  14 ++
 .../arm64/boot/dts/socionext/uniphier-ld20-ref.dts |   1 +
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi   |  20 ++-
 .../arm64/boot/dts/socionext/uniphier-pxs3-ref.dts |  28 ++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi   |  55 ++++++-
 17 files changed, 304 insertions(+), 14 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
