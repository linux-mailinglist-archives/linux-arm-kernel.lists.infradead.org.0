Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C98F9237
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 15:26:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pu2dibF1s0pYz/RD78uj9o+ekrzTd/AQ+LQqciBcTsU=; b=o/zLnZgub/LMzr
	+ZJR39oG22SvLpj+rjR/hjmwWob0FrIiDDUETLpp4jr2Mvw7YdHMaOhafvYO4k4a/R00M8/DDlPLK
	YPA5iEm5N0+VlUDFdwerkpMOr81NcV2d8Xf7trunIAufjfxf45AF/F0/uVDEjrb630X/HEGugU5er
	SRI/OYRaJvlVWJRC84h4CEpxYhk26H0iMa1Ff2XKMy2P4fe8P6lYeQ1ZuGhNki+6bs9oMM9Obwqa3
	j/pj/bZbi6inAxSrGhCAaQu303eUUU7PhkooX+Ma+v3pOYRjSGNnDFWDXmBQMHiHQCnIL+dBvoO29
	TAYh63KlXXgcxj6OXFZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUX7H-0000WF-Ch; Tue, 12 Nov 2019 14:25:59 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUX6G-0007ZZ-Fi
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 14:24:58 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xACEOrBt098073;
 Tue, 12 Nov 2019 08:24:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573568693;
 bh=Z/GDAOp5hkp+SYDfUmkON22BaPQPy5r+LjA+Gy96kHM=;
 h=From:To:CC:Subject:Date;
 b=M69IsmgHTFR6OJYf6whr65S1Yd9+vFcfX/t4OPZtPj91NXnK6ZuPzvaz1XXL+92oz
 V4AqxYWH3/8JcD1j90L13AaICbnzFAhzVVtDwW3g49OEq5kXeDKL6OuxGddP5ZvNfV
 HCWHqTHoUPKi7IS/cn5FoNbyY9K1YAQxyjSi/hE0=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xACEOrJn115938
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 Nov 2019 08:24:53 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 12
 Nov 2019 08:24:35 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 12 Nov 2019 08:24:35 -0600
Received: from uda0869644b.dal.design.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xACEOrBf036029;
 Tue, 12 Nov 2019 08:24:53 -0600
From: Benoit Parrot <bparrot@ti.com>
To: Tony Lindgren <tony@atomide.com>, Tero Kristo <t-kristo@ti.com>
Subject: [Patch v3 00/10] ARM: dts: dra7: add cal nodes 
Date: Tue, 12 Nov 2019 08:27:43 -0600
Message-ID: <20191112142753.22976-1-bparrot@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_062456_629074_0E8C4405 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, linux-omap@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds the needed clkctrl and ty-sysc nodes for CAL module.
It also adds support for the module in related dtsi and dts for DRA72,
DRA76 and AM654 SoC.

Changes since v2:
- Add non-standard clock node naming to commit message as per Tony's
  comment

Changes since v1:
- Fix clock name to make it generic
- Updated the binding to use ti,camerrx-control instead of sycon_camerrx
- Split off the clk code into its own patch
- Add clk mailing list as requested

Benoit Parrot (10):
  clk: ti: dra7: add cam clkctrl data
  ARM: dts: dra7: add cam clkctrl node
  ARM: OMAP: DRA7xx: Make CAM clock domain SWSUP only
  ARM: dts: dra7-l4: Add ti-sysc node for CAM
  ARM: dts: DRA72: Add CAL dtsi node
  arm: dts: dra72-evm-common: Add entries for the CSI2 cameras
  arm: dtsi: dra76x: Add CAL dtsi node
  arm: dts: dra76-evm: Add CAL and OV5640 nodes
  arm64: dts: k3-am65-main Add CAL node
  arm64: dts: k3-am654-base-board: Add CSI2 OV5640 camera

 arch/arm/boot/dts/dra7-l4.dtsi                | 43 ++++++++++++++++---
 arch/arm/boot/dts/dra72-evm-common.dtsi       | 35 +++++++++++++++
 arch/arm/boot/dts/dra72x.dtsi                 | 43 +++++++++++++++++++
 arch/arm/boot/dts/dra76-evm.dts               | 39 +++++++++++++++++
 arch/arm/boot/dts/dra76x.dtsi                 | 43 +++++++++++++++++++
 arch/arm/boot/dts/dra7xx-clocks.dtsi          | 14 ++++++
 arch/arm/mach-omap2/clockdomains7xx_data.c    |  2 +-
 arch/arm64/boot/dts/ti/k3-am65-main.dtsi      | 23 ++++++++++
 .../arm64/boot/dts/ti/k3-am654-base-board.dts | 36 ++++++++++++++++
 drivers/clk/ti/clk-7xx.c                      | 19 ++++++++
 include/dt-bindings/clock/dra7.h              | 10 +++++
 11 files changed, 300 insertions(+), 7 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
