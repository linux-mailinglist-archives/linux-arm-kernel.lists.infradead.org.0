Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C90119CE4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 03:45:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wlDxRDCoksaqdaE9ElUXG3SYTnIZcsHIfttq4Jma3Ho=; b=BIw
	5ZDurw5J76V/Z4GB9hT5if4tr83YHBPOHEFHL1SerPg1hIwU+tu3qK+POXOFA4+CUUg3nvojq00Xz
	4C1gJ6OZEqgOAdMJsHje8S2P74Hy1qAv2yZMOQC5oIJ/aWEcSoI4IPpMBQe2uoVKsHPD60jf20ZJ7
	rWeLqRZ/kyUxP8rewXQRCAr4yAVlE70p+RxoPaTiYQmu7I5EbPqUh+cXN73rqzRIg22x3f70dv1VL
	kl8HAqfwzOoHFagJX0KiZKtIYlOOM4RsC4XvbjYHPg9cyhD47oDyssyNcPC1yeVLVdZFHGPl1nGZq
	7bjPy2u6kDWYYgDJmxe/khbCJyUqyuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKBOC-0003bR-Vt; Fri, 03 Apr 2020 01:44:56 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKBN9-0002gO-Hg
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 01:43:53 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 03 Apr 2020 10:43:47 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 6221C18009F;
 Fri,  3 Apr 2020 10:43:47 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Fri, 3 Apr 2020 10:43:47 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id F263F1A01BB;
 Fri,  3 Apr 2020 10:43:46 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/5] Add devicetree features and fixes for UniPhier SoCs
Date: Fri,  3 Apr 2020 10:43:02 +0900
Message-Id: <1585878187-8131-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_184351_723904_9852EA95 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

This series adds new features that includes XDMAC for each SoC, ethernet
aliases to inherit MAC address from u-boot, and stabilization for ethernet
on PXs3 ref board.

Changes since v3:
- dt-bindings: Exclude from this series
  The alternative patch fixed by Yamada-san has been applied.
- Fix size of xdmac register region

Changes since v2:
- dt-bindings: Consolidate register description for xdmac
- Spread the size of xdmac register region

Changes since v1:
- dt-bindings: Remove extension register description for xdmac
- Remove extension register area from xdmac node
- Fix commit message for ethernet aliases
- Remove RGMII setting for LD20 global board

These patches in v1 have already been applied:
  ARM: dts: uniphier: Add USB3 controller nodes for Pro5
  arm64: dts: uniphier: Enable spi node for PXs3 reference board
  arm64: dts: uniphier: Add nodes of thermal monitor and thermal zone
    for PXs3
  ARM: dts: uniphier: Set SCSSI clock and reset IDs for each channel
  arm64: dts: uniphier: Set SCSSI clock and reset IDs for each channel

Kunihiko Hayashi (5):
  ARM: dts: uniphier: Add XDMAC node
  arm64: dts: uniphier: Add XDMAC node
  ARM: dts: uniphier: Add ethernet aliases
  arm64: dts: uniphier: Add ethernet aliases
  arm64: dts: uniphier: Stabilize Ethernet RGMII mode of PXs3 ref board

 arch/arm/boot/dts/uniphier-ld6b-ref.dts                |  1 +
 arch/arm/boot/dts/uniphier-pro4-ace.dts                |  1 +
 arch/arm/boot/dts/uniphier-pro4-ref.dts                |  1 +
 arch/arm/boot/dts/uniphier-pro4-sanji.dts              |  1 +
 arch/arm/boot/dts/uniphier-pro4.dtsi                   |  8 ++++++++
 arch/arm/boot/dts/uniphier-pro5.dtsi                   |  8 ++++++++
 arch/arm/boot/dts/uniphier-pxs2-gentil.dts             |  1 +
 arch/arm/boot/dts/uniphier-pxs2-vodka.dts              |  1 +
 arch/arm/boot/dts/uniphier-pxs2.dtsi                   |  8 ++++++++
 arch/arm64/boot/dts/socionext/uniphier-ld11-global.dts |  1 +
 arch/arm64/boot/dts/socionext/uniphier-ld11-ref.dts    |  1 +
 arch/arm64/boot/dts/socionext/uniphier-ld11.dtsi       |  8 ++++++++
 arch/arm64/boot/dts/socionext/uniphier-ld20-global.dts |  1 +
 arch/arm64/boot/dts/socionext/uniphier-ld20-ref.dts    |  1 +
 arch/arm64/boot/dts/socionext/uniphier-ld20.dtsi       |  8 ++++++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3-ref.dts    | 18 ++++++++++++++++++
 arch/arm64/boot/dts/socionext/uniphier-pxs3.dtsi       |  8 ++++++++
 17 files changed, 76 insertions(+)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
