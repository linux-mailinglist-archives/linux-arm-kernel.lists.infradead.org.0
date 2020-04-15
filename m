Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7201A9575
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 10:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TxZNr6DH5j6jZ4gi4J9sXOt9w0xcpRBAcK1uvqW58k8=; b=NA8
	qdCnZEbwOmBcysCMSTo9UlhRde7a33vJKx8F5TClptswpcFcxTmehBG+xIqdOZcPAqp+Rb5daitm3
	oSQGDRW4b3bfmyJBFxySENudTEmbKEAUlQi2Bq9h8r9FiSmSFkhHsX+8k0ew6V/81xqPbKv7hXLH8
	A8klJqoLu6EhzFila8Wv/7wSguuIn9gdXr9z4VZRaDQMGte2sLAE8OdeKIoFuu/nqM4jfeZjW7ZVo
	l5hbERvfHV/a2asGR+eLztT4oLb+5l0EuEGRE9i/oLM1E6bB7FUVpmIeYnjpKZN22JGQc4nCTFxFL
	eNyUGP2vRbDzCeUQyyOWrQhkiNdL92A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOd1L-0006XI-SR; Wed, 15 Apr 2020 08:03:43 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOd0m-0006Lg-UF
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 08:03:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5A0641A079A;
 Wed, 15 Apr 2020 10:03:05 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4C4851A078C;
 Wed, 15 Apr 2020 10:03:05 +0200 (CEST)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B19C5202B0;
 Wed, 15 Apr 2020 10:03:04 +0200 (CEST)
From: Abel Vesa <abel.vesa@nxp.com>
To: Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Stephen Boyd <sboyd@kernel.org>, Sascha Hauer <kernel@pengutronix.de>,
 Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>
Subject: [PATCH v3 00/13] Add generic MFD i.MX mix and audiomix support
Date: Wed, 15 Apr 2020 11:02:40 +0300
Message-Id: <1586937773-5836-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_010309_252395_3D431D01 
X-CRM114-Status: UNSURE (   9.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Abel Vesa <abel.vesa@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8MP has some new IPs called mixes. They are formed usually by some
GPRs that can be split into different functionalities. The first example
here is the audiomix which has dedicated registers that can be registered
as a clock controller and some other registers that can be registered as
a reset controller, plus some dedicated ones that will be registered as
syscon and used by each dedicated audio IP.

More mixes to be following the same structure are to come, like hdmimix,
dispmix and mediamix. They will all be populated and registered by the MFD
imx-mix generic driver.

Changes since v2:
 * removed the runtime PM for now
 * changed the new SPDX identifiers to GPL-2.0-only
 * took care of the DT schema comment

Abel Vesa (13):
  mfd: Add i.MX generic mix support
  Documentation: mfd: Add DT bindings for i.MX Mix
  arm64: dts: imx8mp: Add AIPS 4 and 5
  arm64: dts: imx8mp: Add audiomix node
  clk: imx: gate2: Allow single bit gating clock
  clk: imx: pll14xx: Add the device as argument when registering
  clk: imx: Add helpers for passing the device as argument
  dt-bindings: clocks: imx8mp: Add ids for audiomix clocks
  clk: imx: Add audiomix clock controller support
  arm64: dts: imx8mp: Add audiomix clock controller node
  dt-bindings: reset: imx8mp: Add ids for audiomix reset
  reset: imx: Add audiomix reset controller support
  arm64: dts: imx8mp: Add audiomix reset controller node

 .../devicetree/bindings/mfd/fsl,imx-mix.yaml       |  34 ++++
 arch/arm64/boot/dts/freescale/imx8mp.dtsi          |  41 ++++-
 drivers/clk/imx/Makefile                           |   2 +-
 drivers/clk/imx/clk-audiomix.c                     | 175 +++++++++++++++++++++
 drivers/clk/imx/clk-gate2.c                        |  31 +++-
 drivers/clk/imx/clk-pll14xx.c                      |   8 +-
 drivers/clk/imx/clk.h                              |  55 ++++++-
 drivers/mfd/Kconfig                                |  11 ++
 drivers/mfd/Makefile                               |   1 +
 drivers/mfd/imx-mix.c                              |  48 ++++++
 drivers/reset/Kconfig                              |   7 +
 drivers/reset/Makefile                             |   1 +
 drivers/reset/reset-imx-audiomix.c                 | 117 ++++++++++++++
 include/dt-bindings/clock/imx8mp-clock.h           |  62 ++++++++
 include/dt-bindings/reset/imx-audiomix-reset.h     |  15 ++
 15 files changed, 590 insertions(+), 18 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/fsl,imx-mix.yaml
 create mode 100644 drivers/clk/imx/clk-audiomix.c
 create mode 100644 drivers/mfd/imx-mix.c
 create mode 100644 drivers/reset/reset-imx-audiomix.c
 create mode 100644 include/dt-bindings/reset/imx-audiomix-reset.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
