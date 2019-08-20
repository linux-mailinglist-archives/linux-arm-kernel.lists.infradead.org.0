Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36447964F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 17:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FUgxlaRz4LCF97JltD3fqvS6Kaj/RL4bJGfV/4mkimM=; b=KdD
	qraudXp55ZEr1AUc9WLAJ5PXt1+Pl4/VPa1cgkuwYK4yz6bx3Mhw16+WufeoOQxMrKhfiPhD4luhO
	XunGmFrjvmR3kZxWNut0chP/iLREhWReUiT6o3vMsJoOpq6xPA5vpD/4yYcoDPhpv7q5E83Wyq8lo
	0Qt6vChIs6xxoRZC1gxu6143xhf+gsTsjhoisLqLZtKU9kRQmUzsYgh4aWnX8l54rzEUrlUde94TL
	3gHhYyp4xdodi2MwagHHFHkiwKVCO4Mq4XOjCNuxYpJiI+ueVle3PwtQ0wSRUnnt+mOHhZG9gcqHn
	ndFrof/jckXOFnxWdWNJjwhW12FFjVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i06KG-00071e-39; Tue, 20 Aug 2019 15:45:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i06K2-00070k-7q
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 15:45:23 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B22CC2001DA;
 Tue, 20 Aug 2019 17:45:20 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9A2692001B7;
 Tue, 20 Aug 2019 17:45:20 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 96E0E20612;
 Tue, 20 Aug 2019 17:45:19 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/7] PM / devfreq: Add initial imx support
Date: Tue, 20 Aug 2019 18:45:05 +0300
Message-Id: <cover.1566315740.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_084522_563125_51E41F2A 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Anson Huang <Anson.Huang@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-pm@vger.kernel.org,
 linux-imx@nxp.com, Krzysztof Kozlowski <krzk@kernel.org>,
 linux-clk@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, devicetree@vger.kernel.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds devfreq support for imx8mm, covering dynamic scaling of
internal NOC and DDR Controller

Scaling for simple busses (NIC/NOC) is done through the clk framework
while DRAM scaling is performed in firmware with an "imx-ddrc" wrapper
for devfreq.

Changes since v1:
 * bindings: Stop using "contains" for "compatible"
 * bindings: Set "additionalProperties: false" and document missing stuff.
 * Remove (c) from NXP copyright notice
 * Fix various checkpatch issues
 * Remove unused dram_alt_root clk from imx-ddrc
Link to v1: https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=158773

Changes since RFC v3:
 * Implement passive support and set NOC's parent to DDRC
 * Drop scaling AHB/AXI for now (NOC/DDRC use most power anyway)
 * Stop relying on clk_min_rate
 * Split into two devreq drivers (and bindings) because the ddrc is
really a distinct piece of hardware.
 * Perform DRAM frequency inside devfreq instead of clk, mostly due to
objections to earlier RFCs for imx8m-dram-clk.
 * Fetch info about dram clk parents from firmware instead of
hardcoding in driver. This can more easily support additional rates.
 * Link: https://patchwork.kernel.org/cover/11056779/
 * Link: https://patchwork.kernel.org/patch/11049429/

Scaling buses can cause problems for devices with realtime bandwith
requirements such as display, the intention is to use the interconnect
framework to make DEV_PM_QOS_MIN_FREQUENCY to devfreq. There are
separate patches for that:

* https://patchwork.kernel.org/cover/11104055/
* https://patchwork.kernel.org/cover/11078671/

Leonard Crestez (7):
  clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram_alt/apb
  dt-bindings: devfreq: Add bindings for generic imx buses
  PM / devfreq: Add generic imx bus driver
  dt-bindings: devfreq: Add bindings for imx ddr controller
  PM / devfreq: Add dynamic scaling for imx ddr controller
  PM / devfreq: imx-ddrc: Measure bandwidth with perf
  arm64: dts: imx8mm: Add devfreq nodes

 .../devicetree/bindings/devfreq/imx-ddrc.yaml |  60 ++
 .../devicetree/bindings/devfreq/imx.yaml      |  68 +++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  53 +-
 drivers/clk/imx/clk-imx8mm.c                  |   6 +-
 drivers/clk/imx/clk-imx8mn.c                  |   6 +-
 drivers/clk/imx/clk-imx8mq.c                  |   7 +-
 drivers/devfreq/Kconfig                       |  12 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/imx-ddrc.c                    | 514 ++++++++++++++++++
 drivers/devfreq/imx-devfreq.c                 | 148 +++++
 10 files changed, 867 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
 create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml
 create mode 100644 drivers/devfreq/imx-ddrc.c
 create mode 100644 drivers/devfreq/imx-devfreq.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
