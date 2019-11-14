Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B607BFCDAF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 19:33:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2aMbkVHydR/7GYEDv7HB4a/UVQB29p5kB13Cdx3Mj4w=; b=DjI
	ElJPfRs0nDg82NnVbgCZyAu1UhrHdNjKaLqb6E2303QN3RZemHMoyu193GxpC1ifmAV3bsC3Cy8Lp
	yp64H3p+/ZwSFHBLzGIH68oU1y6N6wY3iZWw3jRXU7P6/qcpypdTZNy1F8Y4a8bcS3W8sHvJgnTgt
	TbxT7rumUeKdqMihuT2hb2XxkFpbQ4GF+XG/F0N6cLjvezjPm9DhSEjO6CT4tH7+iKubhGbT1pdbc
	EtbJATjFnaRNOC4RretGOt3xJoaA2hpHCSW1eKm0AuZLAPly7pAJZMvqNaht7b33qzLcmDRveXuC0
	jBi6FXrVf4FWQPFrSu68u8DgjbMAYRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVJw6-0003TC-Ua; Thu, 14 Nov 2019 18:33:42 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVJvu-0003Ru-4X
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 18:33:32 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E2D6E1A0AC9;
 Thu, 14 Nov 2019 19:33:27 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C92DA1A04A9;
 Thu, 14 Nov 2019 19:33:27 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 608F4205D5;
 Thu, 14 Nov 2019 19:33:26 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v6 0/5] PM / devfreq: Add dynamic scaling for imx8m ddr
 controller
Date: Thu, 14 Nov 2019 20:33:17 +0200
Message-Id: <cover.1573756360.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_103330_456611_4CA3483A 
X-CRM114-Status: GOOD (  13.05  )
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
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
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

This series is useful standalone and roughly similar to devfreq drivers for
tegra and rockchip.

Running at lower dram rates saves power but can affect the functionality of
other blocks in the chip (display, vpu etc). Support for in-kernel constraints
will some separately.

This series has no dependencies outside linux-next.

Changes since v5:
* Fix a dram_apb/dram_alt mixup in imx8m_ddrc_set_freq
* Make clk_get_parent_by_index static (kbuild robot)
* Adjust messages in imx8m_ddrc_set_freq
* Use a for loop inside imx8m_ddrc_check_opps instead of while
* More elaborate description in dt-bindings file.
Link to v5: https://patchwork.kernel.org/cover/11240289/

Changes since v4:
* Restore empty _get_dev_status: testing shows this is *NOT* optional. If
absent then switching to simple_ondemand governor will trigger an Oops.
* Keep clk registration on single-line in clk-imx8m* for consistency with rest
of the file.
* Drop explicit "select PM_OPP"
* Check for NULL new_dram_core_parent
* Rename "out_dis_" labels to out_disable_*
* Use dev_warn on imx8m_ddrc_set_freq error paths after SMC call (where
operation is not abandoned).
* More elaborate error messages in imx8m_ddrc_target
* More elaborate checks when fetching clks in imx8m_ddrc_set_freq
* Rename ddrc nodes to memory-controller@* as per devicetree.org "Generic Names
Recommendation"
* Defer perf support, it requires perf changes to fetch PMU by DT
Link to v4: https://patchwork.kernel.org/cover/11235685/

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

Changes since v2:
* Add support for entire imx8m family including imx8mq B0.
* Also mark dram PLLs as CLK_GET_RATE_NO_CACHE (required for imx8mq b0 low OPP)
* Explicitly update dram pll rate at the end of imx_ddrc_set_freq.
* Use do_div in imx-ddrc (kbuild robot)
* Improve explanations around adding CLK_GET_RATE_NO_CACHE to dram clks.
(Stephen Boyd)
* Handle ddrc devfreq-events earlier for fewer probe defers.
* Validate DDRC opp tables versus firmware: supported OPPs depend on board and
SOC revision.
* Move DDRC opp tables to board dts because they can vary based on ram type on
board.
* Verify DDRC rate is changed in clk tree and otherwise report an error.
* Change imx_ddrc_freq.rate to be measure in MT/s and round down from HZ in
imx_ddrc_find_freq instead.
* Split away from NOC scaling and interconnect support.
Link to v2: https://patchwork.kernel.org/cover/11104113/

Changes since v1:
* bindings: Stop using "contains" for "compatible"
* bindings: Set "additionalProperties: false" and document missing stuff.
* Remove (c) from NXP copyright notice
* Fix various checkpatch issues
* Remove unused dram_alt_root clk from imx-ddrc
Link to v1: https://patchwork.kernel.org/cover/11090649/

Leonard Crestez (5):
  clk: imx8m: Set CLK_GET_RATE_NOCACHE on dram clocks
  clk: imx: Mark dram pll on 8mm and 8mn with CLK_GET_RATE_NOCACHE
  dt-bindings: memory: Add bindings for imx8m ddr controller
  PM / devfreq: Add dynamic scaling for imx8m ddr controller
  arm64: dts: imx8m: Add ddr controller nodes

 .../memory-controllers/fsl/imx8m-ddrc.yaml    |  72 +++
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts  |  18 +
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  10 +
 .../boot/dts/freescale/imx8mn-ddr4-evk.dts    |  18 +
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  10 +
 arch/arm64/boot/dts/freescale/imx8mq-evk.dts  |  24 +
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  10 +
 drivers/clk/imx/clk-imx8mm.c                  |  11 +-
 drivers/clk/imx/clk-imx8mn.c                  |  12 +-
 drivers/clk/imx/clk-imx8mq.c                  |  12 +-
 drivers/clk/imx/clk-pll14xx.c                 |   7 +
 drivers/clk/imx/clk.h                         |   1 +
 drivers/devfreq/Kconfig                       |   9 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/imx8m-ddrc.c                  | 465 ++++++++++++++++++
 15 files changed, 670 insertions(+), 10 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
 create mode 100644 drivers/devfreq/imx8m-ddrc.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
