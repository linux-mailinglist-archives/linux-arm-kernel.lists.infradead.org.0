Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7414BEE4CB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:39:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aqLiUDl6m2XnMvULbUS9Vavrso/86Ztg8s1kOJtMAZo=; b=AkpWzICiZKxb/R
	BjOgX1+846ypE4CEfDqhmNur0hgrBsyzxMkX7gUoHNBXc3NSK5IirzjfYGnyBsLnqR6ljROz639yX
	mOn1PpvIacHb9F+lVCQ3c7xOT8IBaDJOrEl5mMpnlwOfIRJGeTiP73bymp7DvgtmyDtpYI3N6kiJe
	jRBvru6z85pUtG028TKgcQZSsu6c3nqMfLC7ZGWkcl2QHJmtGTbT78FXXU9vwzwgjuDCL2tedU3t0
	lyDOTvmHPrVXMZoJmQ0ln0DXK2ZdhYnZrvLakvkRmwCHuJH4XYZlHvUvL081vy4gsHPnzkWJHU0n2
	rpgk5nsQma01AYwXKxVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfNa-00063b-1T; Mon, 04 Nov 2019 16:38:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfNP-00062K-2D; Mon, 04 Nov 2019 16:38:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C7F041F1;
 Mon,  4 Nov 2019 08:38:43 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4ECF43F71A;
 Mon,  4 Nov 2019 08:38:41 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@axis.com,
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-pci@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-rockchip@lists.infradead.org, linux-xtensa@linux-xtensa.org,
 rfi@lists.rocketboards.org
Subject: [PATCH v1 0/7] PCI: dt: Remove magic numbers for legacy PCI IRQ
 interrupts
Date: Mon,  4 Nov 2019 16:38:14 +0000
Message-Id: <20191104163834.8932-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_083847_197514_88874C33 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PCI devices can trigger interrupts via 4 physical/virtual lines known
as INTA, INTB, INTC or INTD. Due to interrupt swizzling it is often
required to describe the interrupt mapping in the device tree. Let's
avoid the existing magic numbers and replace them with a #define to
improve clarity.

Based on v5.4-rc5, compile tested

Signed-off-by: Andrew Murray <andrew.murray@arm.com>


Andrew Murray (7):
  PCI: dt: Add legacy PCI IRQ defines
  arm64: dts: Use IRQ flags for legacy PCI IRQ interrupts
  arm: dts: Use IRQ flags for legacy PCI IRQ interrupts
  xtensa: dts: Use IRQ flags for legacy PCI IRQ interrupts
  powerpc: dts: fsl: Use IRQ flags for legacy PCI IRQ interrupts
  powerpc: dts: Use IRQ flags for legacy PCI IRQ interrupts
  dt-bindings: PCI: Use IRQ flags for legacy PCI IRQ interrupts

 .../devicetree/bindings/pci/83xx-512x-pci.txt |  18 +--
 .../devicetree/bindings/pci/aardvark-pci.txt  |  10 +-
 .../devicetree/bindings/pci/altera-pcie.txt   |  10 +-
 .../bindings/pci/axis,artpec6-pcie.txt        |  10 +-
 .../bindings/pci/cdns,cdns-pcie-host.txt      |  10 +-
 .../bindings/pci/faraday,ftpci100.txt         |  68 ++++----
 .../bindings/pci/fsl,imx6q-pcie.txt           |  10 +-
 .../bindings/pci/hisilicon-pcie.txt           |  20 +--
 .../bindings/pci/host-generic-pci.txt         |  10 +-
 .../devicetree/bindings/pci/kirin-pcie.txt    |  10 +-
 .../bindings/pci/layerscape-pci.txt           |  10 +-
 .../devicetree/bindings/pci/mediatek-pcie.txt |  40 ++---
 .../devicetree/bindings/pci/mobiveil-pcie.txt |   8 +-
 .../devicetree/bindings/pci/pci-rcar-gen2.txt |   8 +-
 .../bindings/pci/pci-thunder-pem.txt          |  10 +-
 .../devicetree/bindings/pci/pcie-al.txt       |   4 +-
 .../devicetree/bindings/pci/qcom,pcie.txt     |  20 +--
 .../bindings/pci/ralink,rt3883-pci.txt        |  18 +--
 .../bindings/pci/rockchip-pcie-host.txt       |  10 +-
 .../devicetree/bindings/pci/ti-pci.txt        |  10 +-
 .../devicetree/bindings/pci/uniphier-pcie.txt |  10 +-
 .../bindings/pci/v3-v360epc-pci.txt           |  34 ++--
 .../devicetree/bindings/pci/versatile.txt     |  40 ++---
 .../devicetree/bindings/pci/xgene-pci-msi.txt |  10 +-
 .../devicetree/bindings/pci/xgene-pci.txt     |  10 +-
 .../bindings/pci/xilinx-nwl-pcie.txt          |  10 +-
 .../devicetree/bindings/pci/xilinx-pcie.txt   |  20 +--
 arch/arm/boot/dts/alpine.dtsi                 |   6 +-
 arch/arm/boot/dts/artpec6.dtsi                |  10 +-
 arch/arm/boot/dts/gemini-dlink-dir-685.dts    |  34 ++--
 arch/arm/boot/dts/gemini-sl93512r.dts         |  34 ++--
 arch/arm/boot/dts/gemini-sq201.dts            |  34 ++--
 arch/arm/boot/dts/gemini-wbd111.dts           |  34 ++--
 arch/arm/boot/dts/gemini-wbd222.dts           |  34 ++--
 arch/arm/boot/dts/imx6qdl.dtsi                |  10 +-
 arch/arm/boot/dts/imx6sx.dtsi                 |  10 +-
 arch/arm/boot/dts/integratorap.dts            |  36 +++--
 arch/arm/boot/dts/keystone-k2e.dtsi           |  11 +-
 arch/arm/boot/dts/keystone.dtsi               |  10 +-
 arch/arm/boot/dts/qcom-apq8064.dtsi           |  10 +-
 arch/arm/boot/dts/qcom-ipq4019.dtsi           |  10 +-
 arch/arm/boot/dts/versatile-pb.dts            |  36 +++--
 arch/arm64/boot/dts/al/alpine-v2.dtsi         |   6 +-
 .../boot/dts/amd/amd-overdrive-rev-b0.dts     |   2 +-
 .../boot/dts/amd/amd-overdrive-rev-b1.dts     |   2 +-
 arch/arm64/boot/dts/amd/amd-overdrive.dts     |   2 +-
 arch/arm64/boot/dts/amd/amd-seattle-soc.dtsi  |  12 +-
 arch/arm64/boot/dts/amd/husky.dts             |   2 +-
 arch/arm64/boot/dts/arm/fvp-base-revc.dts     |  10 +-
 arch/arm64/boot/dts/arm/juno-base.dtsi        |  12 +-
 arch/arm64/boot/dts/cavium/thunder2-99xx.dtsi |  10 +-
 .../arm64/boot/dts/freescale/fsl-ls1012a.dtsi |  10 +-
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi     |  10 +-
 arch/arm64/boot/dts/hisilicon/hip06.dtsi      |  10 +-
 arch/arm64/boot/dts/qcom/msm8998.dtsi         |  10 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi          |  10 +-
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |  10 +-
 .../boot/dts/socionext/uniphier-ld20.dtsi     |  11 +-
 .../boot/dts/socionext/uniphier-pxs3.dtsi     |  11 +-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        |  12 +-
 arch/powerpc/boot/dts/bluestone.dts           |  12 +-
 arch/powerpc/boot/dts/charon.dts              |  12 +-
 arch/powerpc/boot/dts/digsy_mtc.dts           |  12 +-
 arch/powerpc/boot/dts/fsl/b4420qds.dts        |   4 +-
 arch/powerpc/boot/dts/fsl/b4420si-post.dtsi   |   2 +-
 arch/powerpc/boot/dts/fsl/b4860qds.dts        |   4 +-
 arch/powerpc/boot/dts/fsl/b4860si-post.dtsi   |   2 +-
 arch/powerpc/boot/dts/fsl/b4qds.dtsi          |   2 +-
 arch/powerpc/boot/dts/fsl/b4si-post.dtsi      |  12 +-
 arch/powerpc/boot/dts/fsl/bsc9132qds.dts      |   2 +-
 arch/powerpc/boot/dts/fsl/bsc9132si-post.dtsi |  12 +-
 arch/powerpc/boot/dts/fsl/c293pcie.dts        |   2 +-
 arch/powerpc/boot/dts/fsl/c293si-post.dtsi    |  12 +-
 arch/powerpc/boot/dts/fsl/gef_sbc310.dts      |  12 +-
 arch/powerpc/boot/dts/fsl/mpc8536ds.dts       |  12 +-
 arch/powerpc/boot/dts/fsl/mpc8536ds_36b.dts   |  12 +-
 arch/powerpc/boot/dts/fsl/mpc8540ads.dts      | 100 ++++++------
 arch/powerpc/boot/dts/fsl/mpc8544ds.dts       |  22 +--
 arch/powerpc/boot/dts/fsl/mpc8544ds.dtsi      |  22 +--
 arch/powerpc/boot/dts/fsl/mpc8548cds_32b.dts  |  14 +-
 arch/powerpc/boot/dts/fsl/mpc8548cds_36b.dts  |  14 +-
 arch/powerpc/boot/dts/fsl/mpc8548si-post.dtsi |  12 +-
 arch/powerpc/boot/dts/fsl/mpc8560ads.dts      | 100 ++++++------
 arch/powerpc/boot/dts/fsl/mpc8568mds.dts      |  22 +--
 arch/powerpc/boot/dts/fsl/mpc8568si-post.dtsi |  12 +-
 arch/powerpc/boot/dts/fsl/mpc8569mds.dts      |   2 +-
 arch/powerpc/boot/dts/fsl/mpc8569si-post.dtsi |  12 +-
 arch/powerpc/boot/dts/fsl/mpc8641_hpcn.dts    | 150 +++++++++---------
 .../powerpc/boot/dts/fsl/mpc8641_hpcn_36b.dts | 150 +++++++++---------
 arch/powerpc/boot/dts/fsl/p2020ds.dts         |   2 +-
 arch/powerpc/boot/dts/fsl/p2020ds.dtsi        |  46 +++---
 arch/powerpc/boot/dts/fsl/ppa8548.dts         |   2 +-
 arch/powerpc/boot/dts/fsl/sbc8641d.dts        |   4 +-
 arch/powerpc/boot/dts/haleakala.dts           |  12 +-
 arch/powerpc/boot/dts/holly.dts               |  42 ++---
 arch/powerpc/boot/dts/hotfoot.dts             |  12 +-
 arch/powerpc/boot/dts/kuroboxHD.dts           |  28 ++--
 arch/powerpc/boot/dts/kuroboxHG.dts           |  28 ++--
 arch/powerpc/boot/dts/lite5200.dts            |  12 +-
 arch/powerpc/boot/dts/lite5200b.dts           |  22 +--
 arch/powerpc/boot/dts/media5200.dts           |  26 +--
 arch/powerpc/boot/dts/mpc5121ads.dts          |  20 +--
 arch/powerpc/boot/dts/mpc8308rdb.dts          |  12 +-
 arch/powerpc/boot/dts/mpc8313erdb.dts         |  20 +--
 arch/powerpc/boot/dts/mpc832x_mds.dts         |  60 +++----
 arch/powerpc/boot/dts/mpc832x_rdb.dts         |  22 +--
 arch/powerpc/boot/dts/mpc8349emitxgp.dts      |   8 +-
 arch/powerpc/boot/dts/mpc836x_mds.dts         |  60 +++----
 arch/powerpc/boot/dts/mpc836x_rdk.dts         |  16 +-
 arch/powerpc/boot/dts/mucmc52.dts             |  12 +-
 arch/powerpc/boot/dts/mvme5100.dts            |  48 +++---
 arch/powerpc/boot/dts/pcm030.dts              |  22 +--
 arch/powerpc/boot/dts/pcm032.dts              |  22 +--
 arch/powerpc/boot/dts/pq2fads.dts             |  28 ++--
 arch/powerpc/boot/dts/socrates.dts            |   8 +-
 arch/powerpc/boot/dts/storcenter.dts          |  28 ++--
 arch/powerpc/boot/dts/stx_gp3_8560.dts        |  36 +++--
 arch/powerpc/boot/dts/taishan.dts             |  20 +--
 arch/powerpc/boot/dts/tqm5200.dts             |  12 +-
 arch/powerpc/boot/dts/tqm8540.dts             |  16 +-
 arch/powerpc/boot/dts/tqm8541.dts             |  16 +-
 arch/powerpc/boot/dts/tqm8555.dts             |  16 +-
 arch/powerpc/boot/dts/tqm8560.dts             |  16 +-
 arch/powerpc/boot/dts/virtex440-ml510.dts     |  43 ++---
 arch/powerpc/boot/dts/xcalibur1501.dts        |  13 +-
 arch/powerpc/boot/dts/xpedite5200.dts         |   8 +-
 arch/xtensa/boot/dts/virt.dts                 |  12 +-
 .../dt-bindings/interrupt-controller/irq.h    |   8 +
 128 files changed, 1326 insertions(+), 1189 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
