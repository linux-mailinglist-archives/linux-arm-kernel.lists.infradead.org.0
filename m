Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B03C01771E4
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 10:04:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hnqH/L/TEj+KAdV0RtsZbJnTYmu2cJNOyTxMm2vbal4=; b=CQu
	sUDdwyTbLlbv9DXQjzKp2dmaT4ijRUUHuYsBBwkkI0hp0WRiuQG6CMD++EsGDdaZCZ4HfvkafcUcW
	mdsPsyVXfURacxxrSJ/EDlyTVus0OZi3TIsFeEXT3W9NpzktaHkWWWz6iVMDfbWQO6PY7Mxg/R5sB
	9p0OWCM2etXwrRbGfmpeBk9jPsw8peuWeMQY2epfSPw/x/c1cP3jQZqWt3U/q51rn+LZtqDpq3PMW
	9pXUNrr0g6crR3Zgzt2bTAIbFVm8gKw9U8Wfh/HOd2t1y5LYLYG6IJkrd73+FX9Kob1AKm95jTXyB
	YJ3ixz9tKvsFTnGr+Mzvc2G44g9GgPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93TO-0005o6-Rz; Tue, 03 Mar 2020 09:04:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Sm-0005aU-Jx
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 09:03:43 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 73DCA201322;
 Tue,  3 Mar 2020 10:03:36 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 651C0201312;
 Tue,  3 Mar 2020 10:03:36 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F89820414;
 Tue,  3 Mar 2020 10:03:35 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 Mike Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, Anson Huang <anson.huang@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>
Subject: [RFC 00/11] Add generic MFD i.MX mix and audiomix support
Date: Tue,  3 Mar 2020 11:03:15 +0200
Message-Id: <1583226206-19758-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_010340_799327_A7F3E93E 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Abel Vesa (11):
  mfd: Add i.MX generic mix support
  arm64: dts: imx8mp: Add AIPS 4 and 5
  arm64: dts: imx8mp: Add audiomix node
  clk: imx: Add gate shared for i.MX8MP audiomix
  clk: imx: pll14xx: Add the device as argument when registering
  clk: imx: Add helpers for passing the device as argument
  dt-bindings: clocks: imx8mp: Add ids for audiomix clocks
  clk: imx: Add audiomix clock controller support
  arm64: dts: imx8mp: Add audiomix clock controller node
  reset: imx: Add audiomix reset controller support
  arm64: dts: imx8mp: Add audiomix reset controller node

 arch/arm64/boot/dts/freescale/imx8mp.dtsi      |  37 ++++
 drivers/clk/imx/Makefile                       |   2 +-
 drivers/clk/imx/clk-audiomix.c                 | 237 +++++++++++++++++++++++++
 drivers/clk/imx/clk-gate-shared.c              | 111 ++++++++++++
 drivers/clk/imx/clk-pll14xx.c                  |   6 +-
 drivers/clk/imx/clk.h                          |  46 ++++-
 drivers/mfd/Kconfig                            |  11 ++
 drivers/mfd/Makefile                           |   1 +
 drivers/mfd/imx-mix.c                          |  48 +++++
 drivers/reset/Kconfig                          |   7 +
 drivers/reset/Makefile                         |   1 +
 drivers/reset/reset-imx-audiomix.c             | 122 +++++++++++++
 include/dt-bindings/clock/imx8mp-clock.h       |  62 +++++++
 include/dt-bindings/reset/imx-audiomix-reset.h |  15 ++
 14 files changed, 699 insertions(+), 7 deletions(-)
 create mode 100644 drivers/clk/imx/clk-audiomix.c
 create mode 100644 drivers/clk/imx/clk-gate-shared.c
 create mode 100644 drivers/mfd/imx-mix.c
 create mode 100644 drivers/reset/reset-imx-audiomix.c
 create mode 100644 include/dt-bindings/reset/imx-audiomix-reset.h

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
