Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B86031F6261
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=68GCQU1TwIvamJLlnAGJx+y8aX+rudZawkbKait5guI=; b=h6SJ9BMPnYtN/j
	ykkpiAL9WPUMmbdJPZVxR7Arx/C0PSMC87qp5noWb1hvVz1gNrZ7WjW1keVYKoONOw7W1lJDNGCSx
	lwF0em2a5JePTQZZI9J8KCxmOlRfXQBVB8jhQ790HcASZlOzLsO078v8CxIwh3S0cE0WraAvY8mdT
	9btmirRHU4C0Csz3aO2NSRxAJgH7FlHQwuyr5Oemuz7OLXSxKwUHJGVbh/qH6Uc7gU5my0rpuIvGJ
	8lWDBOwJdMygJUUE50VdshYj5IVHNxBTNAp/UUqIwqXp0ANnUfFXJNb/YtTM2f0SpmdLaDiIfCzGo
	PCUYZWiJspxvNid6PIEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHio-0002Gp-Qo; Thu, 11 Jun 2020 07:33:58 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhK-0001L9-QF; Thu, 11 Jun 2020 07:32:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 7C3D35800D1;
 Thu, 11 Jun 2020 03:32:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm3; bh=zmFIcZ3GkZ4CCs+528F5WWfO04
 q/aDJFP1TROWwgfjU=; b=k+zCE/7IG5loKNTVcux+qAQUSwMIOVhvo9wLr3Zg1H
 CnxIqQNfO2blrbLQRo3kDIRpObLJTaURH2WCJcEqBTZAcjSWV6f93xFwbWXA+dfh
 WaS1xT/72f2x73D7DScUmRMQR4lQnl0hAazhPQ/9bZ1lQkRpPBVeC9SaPzf7xAeF
 CDL30a4OruOW1BAYEfBdL9+8LYwt5mi8BMNmhhLaxHmESu/6W0a13LpZ5Zsw98dZ
 FFuhfPSPDPb3ErwpbsU30dM8bWLlYqoXYFsGXUcO2as0K5/f3YDSDP+xX4r2GuOi
 HJsaMSrYbjGnrHUoa0P6168/RRgcZ9aJake5yhW01/SQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=zmFIcZ3GkZ4CCs+52
 8F5WWfO04q/aDJFP1TROWwgfjU=; b=eWrU3WxlZMMOT/OhskKznyQ8w4VsoEVFC
 Qy8CR1FS7PHT6WV0TFyPrUde0Iij9jJdjdC7g8ZoAUs0K/b7HX5jLb34eQcyn7rJ
 F6GsM3zqBE9S672zHOyi9JiwwzZfLAPnJbTA/J6a7G2ZGS33Jmf/ugOjLTBiOHEh
 mlBOAanAfLQQbI3xU92AIswiPL+Luhro9t/p+KukdgsbEdAGNOulQ3KVaYPTFwkm
 tNgTtEsH0n/tMz9vMDlkDlycPWYLIFQ6zceef8Ic5+EiDTp5DtsRJ0BwPm5Bkzux
 +1dJ01zDiOWXgcgzAQ/LRdScKfT7QPfF04jLrCxNzKS4Oa6fVlUfg==
X-ME-Sender: <xms:BN7hXsgd7Z1tkQuk7TG4AiaZo8kThlTJ1wIKOT6qnzPGvkVhkpBjrQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpeejffehuddvvddvlefhgeelleffgfeijedvhefgieejtdeiueetjeetfeeukeej
 geenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:BN7hXlB6DXPOmgD16xaD2uNgal0oCnlNbvEOib_oQoWc3g8FOrlbYA>
 <xmx:BN7hXkFMwTHAnmS_X1v-I8lFQqkgqQfzobh58DQY8OgT12e1d6BfdQ>
 <xmx:BN7hXtRJn8gVipj-Z4LX2CcSZCv0E0C1uZVnWuhE8dFeLszEald-aw>
 <xmx:Bd7hXv7TTrc5pUvwpUHkvB835KFl2DgGW65jdNXR-pIGREeat_aA6Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5BC0F3280064;
 Thu, 11 Jun 2020 03:32:20 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 00/27] clk: bcm: rpi: Add support for BCM2711 firmware
 clocks
Date: Thu, 11 Jun 2020 09:31:49 +0200
Message-Id: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003227_224328_689E6F22 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 Kamal Dasu <kdasu.kdev@gmail.com>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Since the whole DRM/HDMI support began to grow fairly big, I've chosen
to split away the two discussions between the firmware clocks and the
HDMI support.

Let me know what you think,
Maxime

Cc: bcm-kernel-feedback-list@broadcom.com
Cc: devicetree@vger.kernel.org
Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Cc: linux-clk@vger.kernel.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>

Changes from v3:
  - Moved the firmware structure to the driver, and changed for u32
  - Prevented cache issues with MMIO driver
  - Removed message when discovering min and max rates
  - Added the gathered tags

Changes from v2:
  - Rebased on top of next-20200526
  - Split away from the HDMI series
  - Fixed an of_node leakage in the firmware driver
  - Fixed an of_node leakage in the firmware clocks driver
  - Added the min/max rate retrieval to all the firmware clocks
  - Added proper name for the firmware clocks
  - Removed the PLLB setup from the firmware clocks and moved it back to
    the MMIO driver

Florian Fainelli (1):
  dt-bindings: arm: bcm: Convert BCM2835 firmware binding to YAML

Maxime Ripard (26):
  dt-bindings: clock: Add a binding for the RPi Firmware clocks
  firmware: rpi: Only create clocks device if we don't have a node for it
  clk: bcm: rpi: Allow the driver to be probed by DT
  clk: bcm: rpi: Statically init clk_init_data
  clk: bcm: rpi: Use clk_hw_register for pllb_arm
  clk: bcm: rpi: Remove global pllb_arm clock pointer
  clk: bcm: rpi: Make sure pllb_arm is removed
  clk: bcm: rpi: Remove pllb_arm_lookup global pointer
  clk: bcm: rpi: Switch to clk_hw_register_clkdev
  clk: bcm: rpi: Make sure the clkdev lookup is removed
  clk: bcm: rpi: Use CCF boundaries instead of rolling our own
  clk: bcm: rpi: Create a data structure for the clocks
  clk: bcm: rpi: Add clock id to data
  clk: bcm: rpi: Pass the clocks data to the firmware function
  clk: bcm: rpi: Rename is_prepared function
  clk: bcm: rpi: Split pllb clock hooks
  clk: bcm: rpi: Make the PLLB registration function return a clk_hw
  clk: bcm: rpi: Add DT provider for the clocks
  clk: bcm: rpi: Add an enum for the firmware clocks
  clk: bcm: rpi: Discover the firmware clocks
  clk: bcm: rpi: Give firmware clocks a name
  Revert "clk: bcm2835: remove pllb"
  ARM: dts: bcm2711: Add firmware clocks node
  clk: bcm2835: Allow custom CCF flags for the PLLs
  clk: bcm2835: Don't cache the PLLB rate
  clk: bcm: rpi: Remove the quirks for the CPU clock

 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt  |  14 +---
 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml |  59 ++++++++++++++-
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts                                       |   5 +-
 drivers/clk/bcm/clk-bcm2835.c                                               |  34 ++++++--
 drivers/clk/bcm/clk-raspberrypi.c                                           | 311 +++++++++++++++++++++++++++++++++++++++++++-----------------------------
 drivers/firmware/raspberrypi.c                                              |  14 +++-
 6 files changed, 294 insertions(+), 143 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.txt
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml

base-commit: 192e08e14e37b78e83cc2f5b9eb5a15a7d71c4e2
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
