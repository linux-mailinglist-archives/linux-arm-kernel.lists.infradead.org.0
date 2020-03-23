Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE3018F1E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f/hK9lvkwbzxudvVUf4DdapGkL6EHf8JvtK6RwJcEqw=; b=rl7
	l4lq8bsunbegqWZs7CWyxXsWh3KZYGFFQWIaJQNubm1uEieGeClIxenwJ1qxPqKTPhqoW3Ik8mbjJ
	PR05Unqfj1EA5vqiiYTPKdweBOx6fIoP1Dk/igdZQixCL8d0923tpnUPWPPJL5BQjNa/Sce1My6Zq
	GUsFIcNb2WDh4044ysF4vHqt2q1G5EtVMV/qbDCeWquBfNATQZQsNboaJ/TLdYZ9iPoxbmfrw0wwn
	X7QtHMgCVoqwwc5LtpLunk5ElM+GbAuQz18hwj1DxWJ+pUgDJjjSleqXRrsN1Y7vG/McsqA/yZPEA
	aglcxN1cMdofU40op+OZ45aErfHPFxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJSl-0001lO-Hz; Mon, 23 Mar 2020 09:33:39 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJSH-0001bn-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:33:11 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 23 Mar 2020 18:33:07 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id 19F0D60057;
 Mon, 23 Mar 2020 18:33:07 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 23 Mar 2020 18:33:07 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id B76B41A12AD;
 Mon, 23 Mar 2020 18:33:06 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 0/6] Add devicetree features and fixes for UniPhier SoCs
Date: Mon, 23 Mar 2020 18:32:44 +0900
Message-Id: <1584955970-8162-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_023309_942473_734EC6A3 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

This series adds new features that includes XDMAC for each SoC, and ethernet
aliases to inherit MAC address from u-boot and stabilization for ethernet on
PXs3.

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

Kunihiko Hayashi (6):
  dt-bindings: dma: uniphier-xdmac: Consolidate register region
    description
  ARM: dts: uniphier: Add XDMAC node
  arm64: dts: uniphier: Add XDMAC node
  ARM: dts: uniphier: Add ethernet aliases
  arm64: dts: uniphier: Add ethernet aliases
  arm64: dts: uniphier: Stabilize Ethernet RGMII mode of PXs3 ref board

 .../bindings/dma/socionext,uniphier-xdmac.yaml         |  5 ++---
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
 18 files changed, 78 insertions(+), 3 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
