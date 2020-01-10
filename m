Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB521364A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 02:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8uQb2n3GpR3D+jW/OxomZfZod8OWtfwjJjKBFnlhDq8=; b=a6t99v/SWwdvbg
	i2l3FLtn+Q8Z2qdhx7etjU3v16fxax9b3JB6f61SU5k/b0f0hiLp86BxE6fdoBNx/tMAJ49bJCLd9
	EOkI3NiWQtqHr8ZwTgae7v26EAfJAAFzARGy+bXVapHPrp8RiH5+jMCqL3/RO4PG2YEDJiZyFsvqE
	febZ3m1pLYW+/vG9FeZn2ZloMyZnHhXq3nKaiT7aVx1zG2GF00FWCKRTTkSRPSic2wV3AJ9JSQk9X
	Alh6YYC4f9Sa+hRmuANVCK7A/2afDdwNVVm/ZNGDPqQwO2JXQEeSF0WdLzwydkKR9u7n5EHpsNw/B
	9fB05Hhy+puCy+HL7UaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipix0-0006oV-VA; Fri, 10 Jan 2020 01:18:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipiwr-0006nw-Nc
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 01:18:51 +0000
Received: from T480 (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3994520678;
 Fri, 10 Jan 2020 01:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578619129;
 bh=JyPQbn3ii00BbTuWPT/O+8JFsSDpDaYwlAmISdq6eBk=;
 h=Date:From:To:Cc:Subject:From;
 b=aEycvYBBScw/zA4nv0KCLBn8hK3fHZPlupAxK8emXRZw/oS7Io0bF1QqVIs2EblnS
 gtIEv4c2wDRtZUfIt/BhyZOVGtRCts27a1bdQntvYTxX8sZROQdw8maLEmwMXLf6f7
 1+XtlK1rls/e2f6GekaVIe9KtFy/Juoc4YfxUC+g=
Date: Fri, 10 Jan 2020 09:18:41 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org, arm@kernel.org
Subject: [GIT PULL] i.MX fixes for 5.5, round 2
Message-ID: <20200110011836.GW4456@T480>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_171849_810985_DE6B6DCB 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 7947e3238b64c00c396e6f5738f94c4d653bc6a2:

  ARM: imx: Fix boot crash if ocotp is not found (2019-12-12 10:44:28 +0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-fixes-5.5-2

for you to fetch changes up to 4b0b97e651ecf29f20248420b52b6864fbd40bc2:

  ARM: dts: imx7: Fix Toradex Colibri iMX7S 256MB NAND flash support (2020-01-09 19:21:53 +0800)

----------------------------------------------------------------
i.MX fixes for 5.5, round 2:

 - Fix i.MX8MM SDMA1 AHB clock setting to remove a "Timeout waiting for CH0"
   error seen with UART1.
 - Correct compatible of RV3029 RTC device on imx6q-dhcom board.
 - Correct interrupt trigger type for magnetometer on board
   imx8mq-librem5-devkit.
 - A series from Anson Huang to fix vdd3p0 power supplier for a few NXP
   development board.
 - Fix imx6q-icore-mipi board to use 1.5 version of i.Core MX6DL, so
   that Ethernet interface on the board works properly.
 - Fix Toradex Colibri board to get NAND flash support back.
 - Fix SGTL5000 VDDIO regulator connection for imx6q-dhcom, which
   is connected to PMIC SW2 output rather than a fixed 3V3 rail.
 - Fix 'reg' of CPU node on imx7ulp to get rid of a warning given by
   kernel.
 - Fix endian setting for DCFG on LS1028A SoC, so that register access
   of DCFG becomes correct.

----------------------------------------------------------------
Adam Ford (1):
      arm64: dts: imx8mm: Change SDMA1 ahb clock for imx8mm

Alexandre Belloni (1):
      ARM: dts: imx6q-dhcom: fix rtc compatible

Angus Ainslie (Purism) (1):
      arm64: dts: imx8mq-librem5-devkit: use correct interrupt for the magnetometer

Anson Huang (4):
      ARM: dts: imx6qdl-sabresd: Remove incorrect power supply assignment
      ARM: dts: imx6sx-sdb: Remove incorrect power supply assignment
      ARM: dts: imx6sl-evk: Remove incorrect power supply assignment
      ARM: dts: imx6sll-evk: Remove incorrect power supply assignment

Jagan Teki (1):
      ARM: dts: imx6q-icore-mipi: Use 1.5 version of i.Core MX6DL

Marcel Ziswiler (1):
      ARM: dts: imx7: Fix Toradex Colibri iMX7S 256MB NAND flash support

Marek Vasut (1):
      ARM: dts: imx6q-dhcom: Fix SGTL5000 VDDIO regulator connection

Peng Fan (1):
      ARM: dts: imx7ulp: fix reg of cpu node

Yinbo Zhu (1):
      arm64: dts: ls1028a: fix endian setting for dcfg

 arch/arm/boot/dts/imx6dl-icore-mipi.dts                 | 2 +-
 arch/arm/boot/dts/imx6q-dhcom-pdk2.dts                  | 2 +-
 arch/arm/boot/dts/imx6q-dhcom-som.dtsi                  | 2 +-
 arch/arm/boot/dts/imx6qdl-sabresd.dtsi                  | 4 ----
 arch/arm/boot/dts/imx6sl-evk.dts                        | 4 ----
 arch/arm/boot/dts/imx6sll-evk.dts                       | 4 ----
 arch/arm/boot/dts/imx6sx-sdb-reva.dts                   | 4 ----
 arch/arm/boot/dts/imx6sx-sdb.dts                        | 4 ----
 arch/arm/boot/dts/imx7s-colibri.dtsi                    | 4 ++++
 arch/arm/boot/dts/imx7ulp.dtsi                          | 4 ++--
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi          | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm.dtsi               | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts | 2 +-
 13 files changed, 12 insertions(+), 28 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
