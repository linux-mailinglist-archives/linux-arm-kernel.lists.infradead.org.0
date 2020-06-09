Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937CE1F319D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 03:15:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rzQ3T0oI7UUxTI+DxlPVACK/4VQAl3bPJ2YqNr38VUU=; b=cQ7
	sCrKkIcB+HvzeFDmyiJPtC8gow69vdtAeq3qQOicp2H6GlkNqmkaS0WbKyv6LXe1aa/o6cHvI49k1
	kpKc39sJ8kNVy9wGTHISoPjSEJfkhbMLolh/DvatRg8dcZniPwCn72Gsk1XD+lTO5Zc9sSmOnJJeT
	eEvLSqHfY0WYoKjLnBpwHPnXUyJlNcu+sOxJjaoVG+LLfKTTjKtBPX9zx9Xv3/+8BXGRpj3ONj6AJ
	fgGdGHpHWMho42U7If1e4qgODY1SVw539kwEsIiLvWrvozMxshAIrn5rHmiO69Dk+3I6qdSc6Thq/
	h59nsveg1b+W8ahdeOeGm8EuR3UFe/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiSqv-00071j-Sz; Tue, 09 Jun 2020 01:14:57 +0000
Received: from lucky1.263xmail.com ([211.157.147.131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiSqn-00070m-Ae; Tue, 09 Jun 2020 01:14:51 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 335D5AD6BE;
 Tue,  9 Jun 2020 09:14:42 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from localhost.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P3328T139696397076224S1591665277471272_; 
 Tue, 09 Jun 2020 09:14:39 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9366da969142352c044371455015e4cb>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: vkoul@kernel.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
From: Sugar Zhang <sugar.zhang@rock-chips.com>
To: Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 0/13] Patches to improve transfer efficiency for Rockchip
 SoCs.
Date: Tue,  9 Jun 2020 09:14:14 +0800
Message-Id: <1591665267-37713-1-git-send-email-sugar.zhang@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_181449_567031_7C116632 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [58.22.7.114 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [211.157.147.131 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.157.147.131 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: devicetree@vger.kernel.org, Carlos de Paula <me@carlosedp.com>,
 dmaengine@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 Robin Murphy <robin.murphy@arm.com>, Dan Williams <dan.j.williams@intel.com>,
 "Leonidas P. Papadakos" <papadakospan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



Changes in v2:
- fix FATAL ERROR: Unable to parse input tree

Sugar Zhang (13):
  dmaengine: pl330: Remove the burst limit for quirk 'NO-FLUSHP'
  dmaengine: pl330: Add quirk 'arm,pl330-periph-burst'
  dt-bindings: dma: pl330: Document the quirk 'arm,pl330-periph-burst'
  ARM: dts: rk3036: Add 'arm,pl330-periph-burst' for dmac
  ARM: dts: rk322x: Add 'arm,pl330-periph-burst' for dmac
  ARM: dts: rk3288: Add 'arm,pl330-periph-burst' for dmac
  ARM: dts: rk3xxx: Add 'arm,pl330-periph-burst' for dmac
  ARM: dts: rv1108: Add 'arm,pl330-periph-burst' for dmac
  arm64: dts: px30: Add 'arm,pl330-periph-burst' for dmac
  arm64: dts: rk3308: Add 'arm,pl330-periph-burst' for dmac
  arm64: dts: rk3328: Add 'arm,pl330-periph-burst' for dmac
  arm64: dts: rk3368: Add 'arm,pl330-periph-burst' for dmac
  arm64: dts: rk3399: Add 'arm,pl330-periph-burst' for dmac

 .../devicetree/bindings/dma/arm-pl330.txt          |  1 +
 arch/arm/boot/dts/rk3036.dtsi                      |  1 +
 arch/arm/boot/dts/rk322x.dtsi                      |  1 +
 arch/arm/boot/dts/rk3288.dtsi                      |  3 ++
 arch/arm/boot/dts/rk3xxx.dtsi                      |  3 ++
 arch/arm/boot/dts/rv1108.dtsi                      |  1 +
 arch/arm64/boot/dts/rockchip/px30.dtsi             |  1 +
 arch/arm64/boot/dts/rockchip/rk3308.dtsi           |  2 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi           |  1 +
 arch/arm64/boot/dts/rockchip/rk3368.dtsi           |  2 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           |  2 +
 drivers/dma/pl330.c                                | 44 +++++++++++++++-------
 12 files changed, 49 insertions(+), 13 deletions(-)

-- 
2.7.4




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
