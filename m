Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55568167AB2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 11:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Rcl6QvlidxOXaY42LoXpEM6uzsRMDPZjvfM1Dz9kyI=; b=OwwXulqFgVwngs
	+9LUSHqrFSGkrnco7SAl1B+5jo+iZ41zULhzYvH1Sa5CWszeAHRdZQSyyw6P2j3UyVUWGIonmxVEK
	qkg4u2TOz+KokHIYhhiM50VLNBvubcu58JRadjEuR8ObCBN1v2/rldNy0v9WXyPeuzXW7Rh+eRq59
	c7JLFOVVQNAPqd7KDT2b6Rz2SVAYa7QMmHRUsfms++A364t0QO1k9VdUSK73ts4CLuIxrGcHp57Vv
	vqvR/7K1yu9eVJ383L6f+JRqEGKpPKzPjeYmn0eRRG45c2yxRtVSBfPMBVRL4mR8pw+HhXK8ZLKDU
	dHMulPaDGCbJBWUrnTvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j55SB-0007jg-Cm; Fri, 21 Feb 2020 10:22:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j55Rx-0007i9-UK; Fri, 21 Feb 2020 10:22:27 +0000
X-UUID: 8f1d503ab46c4029bb068720f729b1c5-20200221
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=BeBQELOP6/jjvwXwwsxHmMAHpAErb5cdnorUWLKW/vk=; 
 b=g4sm7Q9u/NwE+PBb8TOga72lL9ZKm5fT27j3XwL/hx5k/w+LVfPeevcWFLp3rV+U1sUKQ6vJ7XNbKPaoiIKCEEbb2vHm+vd6Yj4bvbXX3Z9wGw76WLpc2ftuMGKYLGZgqatXLHygrb5GTEUFXkWzLwWmSywYx7SaC/0JlvZuu2A=;
X-UUID: 8f1d503ab46c4029bb068720f729b1c5-20200221
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <macpaul.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 534051904; Fri, 21 Feb 2020 02:22:22 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 02:13:15 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Feb 2020 18:11:30 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 21 Feb 2020 18:11:53 +0800
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
Subject: [PATCH v8 0/4] Add basic SoC support for mt6765
Date: Fri, 21 Feb 2020 18:12:05 +0800
Message-ID: <1582279929-11535-1-git-send-email-macpaul.lin@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: DA3DDA379D4AE327C2F9F2B41F4294B902761E1F5B0BC745B996EC5B115CB3212000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_022225_986845_69857063 
X-CRM114-Status: GOOD (  12.85  )
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

This patch adds basic SoC support for Mediatek's new 8-core SoC,
MT6765, which is mainly for smartphone application.

Changes in V8:
1. Origin V7 patchset:
   https://patchwork.kernel.org/cover/11370105/
   Split origin V7 patchset into 2 patchset,
   keep remain patches #2, #5, #6, and #7 in the same order as this
   V8 patchset.
   [v7,2/7] dt-bindings: mediatek: Add smi dts binding for Mediatek
            MT6765 SoC
   [v7,5/7] soc: mediatek: add MT6765 scpsys and subdomain support
   [v7,6/7] arm64: dts: mediatek: add mt6765 support
   [v7,7/7] arm64: defconfig: add CONFIG_COMMON_CLK_MT6765_XXX clocks

Changes in V7:
1. Adapt V6's patchset to latest kernel tree 5.5-rc1.
   Origin V6 patchset:
   https://patchwork.kernel.org/cover/11041963/
2. Correct 2 clock-controller type in documentation:
   mipi0 and venc_gcon.
   [v7 1/7] dt-bindings: clock: mediatek: document clk bindings
3. Remove V6's patch 03 because it has been taken into 5.5-next-soc
   [v6, 03/08] dt-bindings: mediatek: add MT6765 power dt-bindings
3. Update Reviewed-by: Rob Herring <robh@kernel.org> for
   [v6, 04/08] clk: mediatek: add mt6765 clock IDs
   --> [v7, 03/07] clk: mediatek: add mt6765 clock IDs
4. Update SPDX tag for
   [v6, 05/08] clk: mediatek: Add MT6765 clock support
   --> [v7, 04/07] clk: mediatek: Add MT6765 clock support

Changes in V6:
1. Adapt V5's patchset to latest kernel tree.
   Origin V5 patchset.
   https://lore.kernel.org/patchwork/cover/963612/
2. Due to clk's common code has been submit by other platform,
   this patch set will have dependencies with the following patchsets
   as the following orders.
   2.a. [v8,00/21] MT8183 IOMMU SUPPORT
        https://patchwork.kernel.org/cover/11023585/
   2.b. [v11,0/6] Add basic node support for Mediatek MT8183 SoC
        https://patchwork.kernel.org/cover/10962385/
   2.c. [v6,00/14] Mediatek MT8183 scpsys support
        https://patchwork.kernel.org/cover/11005751/
3. Correct power related patches into dt-binding patches.
4. Re-order V5's 4/11, 6/11, and 7/11 due clk common code change
   and make dependencies in order.
5. Update some commit message in clk related patches.

Changes in V5:
1. add clk support

Changes in V4:
1. add gic's settings in reg properties
2. remove some patches about dt-bindings since GKH already took them

Changes in V3:
1. split dt-binding document patchs
2. fix mt6765.dtsi warnings with W=12
3. remove uncessary PPI affinity for timer
4. add gicc base for gic dt node

Changes in V2:
1. fix clk properties in uart dts node
2. fix typo in submit title
3. add simple-bus in mt6765.dtsi
4. use correct SPDX license format

Mars Cheng (3):
  dt-bindings: mediatek: Add smi dts binding for Mediatek MT6765 SoC
  soc: mediatek: add MT6765 scpsys and subdomain support
  arm64: dts: mediatek: add mt6765 support

Owen Chen (1):
  arm64: defconfig: add CONFIG_COMMON_CLK_MT6765_XXX clocks

 .../memory-controllers/mediatek,smi-common.txt     |    1 +
 arch/arm64/boot/dts/mediatek/Makefile              |    1 +
 arch/arm64/boot/dts/mediatek/mt6765-evb.dts        |   33 +++
 arch/arm64/boot/dts/mediatek/mt6765.dtsi           |  253 ++++++++++++++++++++
 arch/arm64/configs/defconfig                       |    6 +
 drivers/soc/mediatek/mtk-scpsys.c                  |  130 ++++++++++
 6 files changed, 424 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6765-evb.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6765.dtsi

-- 
1.7.9.5
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
