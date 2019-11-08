Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2411F5B1F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 23:40:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g8POHXL62M6lIG8udo875o0++Ujqbdlxvk2QTVgaHGI=; b=D5J
	coPYomTQcVZNv9nWnD8L3UEeiMJVsILLpsy8Vh7yAsHbPHnsm8HQnTKDw8dPErBKN7HRvF9BTCk4P
	Nu1pirvn3AJqiwiFXaD7/+N1cKigCWiiKRBLCdecYgX41Tr7jmqQpPeHSdlAn+j7BnPDsDN3o35pj
	H5HK3ruVdiSo3jsSZoRrsP0ofXBTdWSJEl/UPCjaJzLSU/ICL9AlSNWwS0YS7Jf+wQtlgRRlRDGDT
	ue7xihnGrlOMqBkP1BS5gL7oj3YDOMkwhPfg3l5ecs+HXSnfiVzvIZvQ6C/CDwR45lg9cfB3OEWSX
	HRH4/7gZm/YhoK/lRfwoX0nbwMTGMyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTCva-0000Qy-CS; Fri, 08 Nov 2019 22:40:26 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTCvO-0000Nb-Ay
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 22:40:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6086F1A01BE;
 Fri,  8 Nov 2019 23:40:09 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 48F2F1A0181;
 Fri,  8 Nov 2019 23:40:09 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 387D5205CD;
 Fri,  8 Nov 2019 23:40:08 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 0/6] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Date: Sat,  9 Nov 2019 00:39:50 +0200
Message-Id: <cover.1573252696.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_144014_663330_D8A07436 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, linux-clk@vger.kernel.org,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Georgi Djakov <georgi.djakov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds support for dynamic scaling of the DDR Controller (ddrc) present in
imx8m series. Actual frequency switching is implemented inside TF-A, this
driver wraps the SMC calls and synchronizes the clk tree.

DRAM frequency switching requires clock manipulation but during this operation
DRAM itself is briefly inaccessible so this operation is performed a SMC call
to by TF-A which runs from a SRAM area. Upon returning to linux the clock tree
is updated to correspond to hardware configuration.

This is handled via CLK_GET_RATE_NO_CACHE for dividers but muxes are handled
manually: the driver will prepare/enable the new parents ahead of switching (so
that the expected roots are enabled) and afterwards it will call clk_set_parent
to ensure the parents in clock framework are up-to-date.

This series is atomically useful and roughly similar to devfreq drivers for
tegra and rockchip.

Running at lower dram rates saves power but can affect the functionality of
other blocks in the chip (display, vpu etc). Support for in-kernel constraints
will some separately.

Angus/Martin: You previously attempted to test on purism boards, this updated
version should work without hacks and has no dependencies.

Changes since v3:
* Rename to imx8m-ddrc. Similar blocks are present on imx7d and imx8qxp/imx8qm
but soc integration is different.
* Move dt bindings to /memory-controllers/fsl/
* Fix dt validation issues
* Fix imx8mm.dtsi ddrc referencing ddrc_opp_table which is only defined in evk
* Move opps to child of ddrc device node
* Only add imx_ddrc_get_dev_status in perf patch.
* Adjust print messages
Link to v3: https://patchwork.kernel.org/cover/11221935/

Leonard Crestez (6):
  clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
  clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
  dt-bindings: memory: Add bindings for imx8m ddr controller
  PM / devfreq: Add dynamic scaling for imx8m ddr controller
  PM / devfreq: imx8m-ddrc: Measure bandwidth with perf
  arm64: dts: imx8m: Add ddr controller nodes

 .../memory-controllers/fsl/imx8m-ddrc.yaml    |  61 ++
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  13 +-
 .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  13 +-
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  13 +-
 drivers/clk/imx/clk-imx8mm.c                  |  13 +-
 drivers/clk/imx/clk-imx8mn.c                  |  14 +-
 drivers/clk/imx/clk-imx8mq.c                  |  15 +-
 drivers/clk/imx/clk-pll14xx.c                 |   7 +
 drivers/clk/imx/clk.h                         |   1 +
 drivers/devfreq/Kconfig                       |  10 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/imx8m-ddrc.c                  | 569 ++++++++++++++++++
 15 files changed, 777 insertions(+), 13 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
 create mode 100644 drivers/devfreq/imx8m-ddrc.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
