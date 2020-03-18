Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3FA2189525
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 06:21:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T0sardpDOel+rQm67kJuIdxZnFcIU/EHi46W+S1J2SE=; b=LS4tZMLjU+COpqgTDGeSSL43ze
	72d9a1T1P+PlQLkqet/CH5eWOZ/jEplvsV7ecJZXDXhgao0RNEQsE/w4I2DEXRpWXTudc+fXbyhR2
	Vy5IBqzS6asG6KFlB/PUYXC++BDYYW2FgLy5Ra3QL1ZXFnL9JenHENv7sJvbsztMObDGAmCd+0KPG
	RCaLseTEp1EB3nURvYXlXK1BAiMYojOAenha6elH6XlaoZmyrDiV8JJDbXkoNTHKepWSaLe5BrtJB
	1AybiRE17nV4jPGmr4Yl62Wg+PAE6SUyHsBdjGpAXv4mzBpuSMv2pG3HgvvmtH/entYSYUdFnzpY+
	luFNYd5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jER8l-0000TY-2x; Wed, 18 Mar 2020 05:21:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jER7N-0006cx-4g
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 05:19:50 +0000
Received: from localhost.localdomain (80.251.214.228.16clouds.com
 [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 106B32076C;
 Wed, 18 Mar 2020 05:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584508788;
 bh=eAGk9me3buu7BmEUHUO18n8JJyYIjp6lmBjoNAecsZw=;
 h=From:List-Id:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N6ljAzKxl3SvUd5zD8mqALUbPiJsWQQcJJlXJu20UldoneznLZBGeuw44WdnCdgaN
 BDke75InQURyv2puZ5pJ6HALyNDn3BGtWMtsc9UzfVShWTRJd5hGBzy+O6lVuBTJxN
 XoK8KGUgKNvknUIsSrfJ4M3dh2uTijI++eOkde9Q=
From: Shawn Guo <shawnguo@kernel.org>
To: soc@kernel.org,
	arm@kernel.org
Subject: [GIT PULL 6/6] i.MX defconfig changes for 5.7
Date: Wed, 18 Mar 2020 13:19:18 +0800
Message-Id: <20200318051918.32579-6-shawnguo@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200318051918.32579-1-shawnguo@kernel.org>
References: <20200318051918.32579-1-shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_221949_242798_FE6D9E80 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi,

The series from Li Yang that updates arm64 defconfig for NXP LS family
support, conflicts with changes from other platform maintainers badly.
Stephen Rothwell helped to resolve them on linux-next.

Shawn


The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-defconfig-5.7

for you to fetch changes up to 61097b57dd079b5ba7b41127d2045198003f9da4:

  arm64: defconfig: Enable e1000 device (2020-03-16 09:32:57 +0800)

----------------------------------------------------------------
i.MX defconfig changes for 5.7:

 - A seris from Li Yang to make defconfig useful for NXP LS family SoCs.
   Most drivers are built as module there, but those helping boot system
   with NFS are enabled built-in.
 - Enable i.MX8MP pinctrl and i.MX8MM thermal driver support in
   defconfig.
 - Enable i.MX DRM driver support for multi_v7_defconfig.
 - Enable ATMEL_MXT and AD7879 touch support for imx_v6_v7_defconfig.

----------------------------------------------------------------
Anson Huang (3):
      arm64: defconfig: Select CONFIG_PINCTRL_IMX8MP by default
      arm64: defconfig: add i.MX system controller thermal support
      arm64: defconfig: Enable CONFIG_IMX8MM_THERMAL as module

Christian Gmeiner (1):
      ARM: multi_v7_defconfig: enable drm imx support

Hou Zhiqiang (1):
      arm64: defconfig: Enable CONFIG_PCIE_LAYERSCAPE_GEN4

Li Yang (15):
      arm64: defconfig: run through savedefconfig for ordering
      arm64: defconfig: Enable NXP flexcan driver
      arm64: defconfig: Enable QorIQ DPAA1 drivers
      arm64: defconfig: Enable QorIQ DPAA2 drivers
      arm64: defconfig: Enable ENETC Ethernet controller and FELIX switch
      arm64: defconfig: Enable NXP/FSL SPI controller drivers
      arm64: defconfig: Enable QorIQ cpufreq driver
      arm64: defconfig: Enable ARM SBSA watchdog driver
      arm64: defconfig: Enable QorIQ IFC NAND controller driver
      arm64: defconfig: Enable QorIQ GPIO driver
      arm64: defconfig: Enable ARM Mali display driver
      arm64: defconfig: Enable flash device drivers for QorIQ boards
      arm64: defconfig: Enable RTC devices for QorIQ boards
      arm64: defconfig: Enable PHY devices used on QorIQ boards
      arm64: defconfig: Enable e1000 device

Oleksandr Suvorov (2):
      ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_ATMEL_MXT
      ARM: imx_v6_v7_defconfig: Enable TOUCHSCREEN_AD7879

 arch/arm/configs/imx_v6_v7_defconfig |  3 ++
 arch/arm/configs/multi_v7_defconfig  |  6 ++++
 arch/arm64/configs/defconfig         | 61 +++++++++++++++++++++++++++++-------
 3 files changed, 59 insertions(+), 11 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
