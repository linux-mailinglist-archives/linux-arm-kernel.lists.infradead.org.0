Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FECB1389D5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 04:41:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YTo3KSyFJrEXloozXmsmT8wQdC1zDVhhNiRCA8SuYtA=; b=pSZJs9Yx7M/Igs+ulCpb4ILCug
	xnW9YTIFv5ScD8fhZ6Gd92tuoYNbkRvE5ial0so34aOVbwl5rR+ftFc6Ly8gl7NtokL0w1uH3sJeq
	q1pyK/mhMAbi086oC9l2NahZzlXy8PM1lcAceC2SlwTx5nOVz1XY3fxP/UgwYF4XvrGofSH+Xvgtk
	xX5dah35mmRQzbMmamKZc1Xal1N+3FISxMBMIyh/V4dFDKTTK4R0IUV1YVlAUy43YPBF0HEJmwznD
	JCaSMqAKnz3lby946xBHsqD3FTqJUiOjDg9xkEzek3UE10zcSbQC8nDCuYmEpTb7W73oCEsHFL5Lt
	X/vg5kog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqqbj-0003Kk-El; Mon, 13 Jan 2020 03:41:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqqap-0002iK-7k
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 03:40:45 +0000
Received: from localhost (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5D47821744;
 Mon, 13 Jan 2020 03:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578886842;
 bh=FvVH49sG7SPNDxIiwK0wpOacKTVPlZ5aKH9Wf1jtAdY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VMrM3XWimjo0UsVTIUCCya5S5aLOrEdLJ8fC2sQPVfOL3/P6DtdCGYwKc0gbXgQh0
 tGCvDG12jrsZP62ApiuCNBHWWHszw9RCiuxcqQZvhUoh7fO7amjWhGA2u78eDvIjto
 LdW05d2rTuWDM/bMororOqDPLpYfZGi5XkU91ulo=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 4/6] i.MX device tree update for 5.6
Date: Mon, 13 Jan 2020 11:40:04 +0800
Message-Id: <20200113034006.17430-4-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113034006.17430-1-shawnguo@kernel.org>
References: <20200113034006.17430-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_194043_353271_58AD5FA2 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Stefan Agner <stefan@agner.ch>,
 Li Yang <leoyang.li@nxp.com>, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-dt-5.6

for you to fetch changes up to 9a820b55817011f53771e6bfebae5fe059f0a534:

  ARM: dts: imx: Add GW5912 board support (2020-01-12 14:22:35 +0800)

----------------------------------------------------------------
i.MX device tree update for 5.6:

 - New board support: i.MX6SL based Tolino Shine 3 eBook reader,
   i.MX7ULP Embedded Artists COM Board, i.MX6Q/DL based Gateworks
   Ventana Boards.
 - A couple of series from Andrey Smirnov to enhance i.MX6 RDU2 and
   VF610 ZII boards.
 - Add revision in board compatible string for imx6sx-sdb-reva and
   imx7d-sdb-reva board.
 - A fixup on imx6sl-tolino-shine3 board to remove incorrect power
   supply assignment.
 - Set initial buck regulator modes explicitly for phycore-imx6 board,
   so that a wrong initial mode set by bootloader does not interfere.
 - Add Add LCD support for imx7d-pico board.
 - A couple of patches from Michael Grzeschik to enhance USB Host
   support on i.MX25.
 - A couple of patches from Michael Trimarchi to remove duplicate
   Ethernet PHY reset properties on imx6qdl-icore and switch to
   phy-handle.
 - A couple of changes to add extirq node support on LS1021A SoC and
   make use of it on the LS1021A-TSN board.
 - A few random device additions and improvements on various boards.

----------------------------------------------------------------
Adam Ford (1):
      ARM: dts: imx6q-logicpd: Enable ili2117a Touchscreen

Andreas Kemnade (2):
      ARM: dts: add devicetree entry for Tolino Shine 3
      ARM: dts: imx6sll: add PXP module

Andrey Smirnov (6):
      ARM: dts: imx6: rdu2: Add node for UCS1002 USB charger chip
      ARM: dts: imx6: rdu2: Disable WP for USDHC2 and USDHC3
      ARM: dts: imx6: rdu2: Limit USBH1 to Full Speed
      ARM: dts: vf610-zii-dev-rev-b: Drop redundant I2C properties
      ARM: dts: vf610-zii-scu4-aib: Use generic names for DT nodes
      ARM: dts: vf610-zii-scu4-aib: Add node for switch watchdog

Anson Huang (3):
      ARM: dts: imx6sx-sdb-reva: Add revision in board compatible string
      ARM: dts: imx7d-sdb-reva: Add revision in board compatible string
      ARM: dts: imx6sl-tolino-shine3: Remove incorrect power supply assignment

Christoph Fritz (1):
      ARM: dts: phycore-imx6: set buck regulator modes explicitly

Fabio Estevam (6):
      ARM: dts: e60k02: Pass the memory unit address
      ARM: dts: imx7ulp-com: Add initial support for i.MX7UP COM board
      ARM: dts: imx51-babbage: Fix the DVI output description
      ARM: dts: imx7: Unify temp-grade and speed-grade nodes
      ARM: dts: imx7d-pico: Add LCD support
      ARM: dts: imx6ul-14x14-evk: Pass the "broken-cd" property

Marco Felsch (1):
      ARM: dts: imx6: phycore-som: add pmic onkey device

Michael Grzeschik (2):
      ARM: dts: imx25: consolidate properties of usbhost1 in dtsi file
      ARM: dts: imx25: describe maximum speed of internal usbhost port1 phy

Michael Trimarchi (2):
      ARM: dts: imx6qdl-icore-1.5: Remove duplicate phy reset methods
      ARM: dts: imx6qdl-icore: Add fec phy-handle

Peter Chen (1):
      ARM: dts: imx7s: Add power domain for imx7d HSIC

Philippe Schenker (1):
      ARM: dts: colibri-imx6ull: correct wrong pinmuxing and add comments

Rasmus Villemoes (1):
      ARM: dts: ls1021a: add node describing external interrupt lines

Robert Jones (3):
      ARM: dts: imx: Add GW5907 board support
      ARM: dts: imx: Add GW5913 board support
      ARM: dts: imx: Add GW5912 board support

Stefan Agner (1):
      ARM: dts: imx6qdl-apalis: mux HDMI CEC pin

Tim Harvey (1):
      ARM: dts: imx: Add GW5910 board support

Vladimir Oltean (1):
      ARM: dts: ls1021a-tsn: Use interrupts for the SGMII PHYs

 arch/arm/boot/dts/Makefile                         |  10 +
 arch/arm/boot/dts/e60k02.dtsi                      |   3 +-
 .../boot/dts/imx25-eukrea-mbimxsd25-baseboard.dts  |   2 -
 arch/arm/boot/dts/imx25-pdk.dts                    |   2 -
 arch/arm/boot/dts/imx25.dtsi                       |   3 +
 arch/arm/boot/dts/imx51-babbage.dts                |  64 ++-
 arch/arm/boot/dts/imx6dl-gw5907.dts                |  14 +
 arch/arm/boot/dts/imx6dl-gw5910.dts                |  14 +
 arch/arm/boot/dts/imx6dl-gw5912.dts                |  13 +
 arch/arm/boot/dts/imx6dl-gw5913.dts                |  14 +
 arch/arm/boot/dts/imx6q-gw5907.dts                 |  14 +
 arch/arm/boot/dts/imx6q-gw5910.dts                 |  14 +
 arch/arm/boot/dts/imx6q-gw5912.dts                 |  13 +
 arch/arm/boot/dts/imx6q-gw5913.dts                 |  14 +
 arch/arm/boot/dts/imx6q-logicpd.dts                |  10 +
 arch/arm/boot/dts/imx6qdl-apalis.dtsi              |   2 +-
 arch/arm/boot/dts/imx6qdl-gw5907.dtsi              | 399 +++++++++++++++++
 arch/arm/boot/dts/imx6qdl-gw5910.dtsi              | 491 +++++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-gw5912.dtsi              | 461 +++++++++++++++++++
 arch/arm/boot/dts/imx6qdl-gw5913.dtsi              | 348 +++++++++++++++
 arch/arm/boot/dts/imx6qdl-icore-1.5.dtsi           |   2 -
 arch/arm/boot/dts/imx6qdl-icore.dtsi               |  15 +-
 arch/arm/boot/dts/imx6qdl-phytec-phycore-som.dtsi  |   9 +
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi            |  84 +++-
 arch/arm/boot/dts/imx6sl-tolino-shine3.dts         | 322 ++++++++++++++
 arch/arm/boot/dts/imx6sll.dtsi                     |   9 +
 arch/arm/boot/dts/imx6sx-sdb-reva.dts              |   1 +
 arch/arm/boot/dts/imx6ul-14x14-evk.dtsi            |   1 +
 arch/arm/boot/dts/imx6ull-colibri.dtsi             | 188 ++++----
 arch/arm/boot/dts/imx7d-pico.dtsi                  |  90 ++++
 arch/arm/boot/dts/imx7d-sdb-reva.dts               |   3 +
 arch/arm/boot/dts/imx7d.dtsi                       |   2 +-
 arch/arm/boot/dts/imx7s.dtsi                       |  16 +-
 arch/arm/boot/dts/imx7ulp-com.dts                  |  79 ++++
 arch/arm/boot/dts/ls1021a-tsn.dts                  |   4 +
 arch/arm/boot/dts/ls1021a.dtsi                     |  19 +
 arch/arm/boot/dts/vf610-zii-dev-rev-b.dts          |  10 -
 arch/arm/boot/dts/vf610-zii-scu4-aib.dts           |  29 +-
 38 files changed, 2618 insertions(+), 170 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5907.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5910.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5912.dts
 create mode 100644 arch/arm/boot/dts/imx6dl-gw5913.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5907.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5910.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5912.dts
 create mode 100644 arch/arm/boot/dts/imx6q-gw5913.dts
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5907.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5910.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5912.dtsi
 create mode 100644 arch/arm/boot/dts/imx6qdl-gw5913.dtsi
 create mode 100644 arch/arm/boot/dts/imx6sl-tolino-shine3.dts
 create mode 100644 arch/arm/boot/dts/imx7ulp-com.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
