Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CBA21935B8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 03:17:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Y4VnwIgPueP3YA3PlatG92R15c11UAVuKR+JadL0c5M=; b=T4m
	V4nYpl9IjwT319JTiSvWrO8uAmGuYy005maXQF5wr0LbJ+jkyKq3CscOrT1JDGqNVJ1xjE0f8OBXm
	K7BHcAWk+RZo0bQub7LUNSm+z+0MRF9z6FAkqThN1BFpKvS1J2buDjgzqC+A+dXjicr94fIg7F82W
	3W1csl94c6/sVtqILuVLl3OKlhecywO5LrMeR5QYNpPrhowkywm1xuD3LX76+MCSP/HrPYKOrcjOn
	VFNJuOmMbsvlVGzLpFB47JnTuUELbB6EwnWiUvSdSXdFU2BGpxCxh1UhHEW4Okfc7wqPp/c/CyccO
	4rVrOVcOepg4nvCk1NQ8AuwEq3eLJxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHI4a-00059f-Vc; Thu, 26 Mar 2020 02:16:44 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHI4N-000580-RM
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 02:16:33 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9FE2C1A078A;
 Thu, 26 Mar 2020 03:16:25 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 923B41A0785;
 Thu, 26 Mar 2020 03:16:25 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 80CBB203CD;
 Thu, 26 Mar 2020 03:16:24 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Martin Kepplinger <martink@posteo.de>
Subject: [PATCH 0/8] interconnect: Add imx support via devfreq
Date: Thu, 26 Mar 2020 04:16:12 +0200
Message-Id: <cover.1585188174.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_191632_164906_84EA6109 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Alexandre Bailon <abailon@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds interconnect scaling support for imx8m series chips. It uses a
per-SOC interconnect provider layered on top of multiple instances of devfreq
for scalable nodes along the interconnect.

Existing qcom interconnect providers mostly translate bandwidth requests into
firmware calls but equivalent firmware on imx8m is much thinner. Scaling
support for individual nodes is implemented as distinct devfreq drivers
instead.

The imx interconnect provider doesn't communicate with devfreq directly
but rather computes "minimum frequencies" for nodes along the path and
creates dev_pm_qos requests.

Since there is no single devicetree node that can represent the
"interconnect" the main NOC is picked as the "interconnect provider" and
will probe the interconnect platform device if #interconnect-cells is
present. This avoids introducing "virtual" devices but it means that DT
bindings of main NOC includes properties for both devfreq and
interconnect.

Only the ddrc and main noc are scalable right now but more can be added.

Also available on a github branch (with various unrelated changes):
	https://github.com/cdleonard/linux/tree/next
Testing currently requires NXP branch of atf+uboot

Martin: I believe you should be able to use this to control DRAM
frequency from video by just adding interconnect consumer code to
nwl-dsi. Sample code:
	https://github.com/cdleonard/linux/commit/43772762aa5045f1ce5623740f9a4baef988d083
	https://github.com/cdleonard/linux/commit/7b601e981b1f517b5d98b43bde292972ded13086

Changes since RFCv6:
* Replace scalable-nodes stuff with just a fsl,ddrc property. Future
scalable nodes can be added as additional phandles on the NOC
* Allow building interconnect drivers as modules
* Handle icc_provider_del errors in imx_icc_unregister (like EBUSY).
* Rename imx-devfreq to imx-bus, similar to exynos-bus
* Explain why imx bus clock enabling is not required
* All dependencies accepted (some time ago).
Link: https://patchwork.kernel.org/cover/11244421/

Changes since RFCv5:
* Replace scanning for interconnect-node-id with explicit
scalable-nodes/scalable-node-ids property on NoC.
* Now passes make `dtbs_check`
* Remove struct imx_icc_provider
* Switch to of_icc_xlate_onecell
* Use of_find_device_by_node to fetch QoS target, this causes fewer probe
deferrals, removes dependency on devfreq API and even allows reloading ddrc
module at runtime
* Add imx_icc_node_destroy helper
* Remove 0/1 on DEFINE_BUS_SLAVE/MASTER which created spurious links
Link: https://patchwork.kernel.org/cover/11222015/

Changes since RFCv4:
* Drop icc proxy nonsense
* Make devfreq driver for NOC probe the ICC driver if
#interconnect-cells is present
* Move NOC support to interconnect series and rename the node in DT
* Add support for all chips at once, differences are not intereseting
and there is more community interest for 8mq than 8mm.
Link: https://patchwork.kernel.org/cover/11111865/

Changes since RFCv3:
* Remove the virtual "icc" node and add devfreq nodes as proxy providers
* Fix build on 32-bit arm (reported by kbuilt test robot)
* Remove ARCH_MXC_ARM64 (never existed in upstream)
* Remove _numlinks, calculate instead
* Replace __BUSFREQ_H header guard
* Improve commit message and comment spelling
* Fix checkpatch issues
Link to RFCv3: https://patchwork.kernel.org/cover/11078671/

Changes since RFCv2 and initial work by Alexandre Bailon:
* Relying on devfreq and dev_pm_qos instead of CLK
* No more "platform opp" stuff
* No more special suspend handling: use suspend-opp on devfreq instead
* Replace all mentions of "busfreq" with "interconnect"
Link to v2: https://patchwork.kernel.org/cover/11021563/

Leonard Crestez (8):
  dt-bindings: interconnect: Add bindings for imx8m noc
  PM / devfreq: Add generic imx bus scaling driver
  PM / devfreq: imx: Register interconnect device
  interconnect: Add imx core driver
  interconnect: imx: Add platform driver for imx8mm
  interconnect: imx: Add platform driver for imx8mq
  interconnect: imx: Add platform driver for imx8mn
  arm64: dts: imx8m: Add NOC nodes

 .../bindings/interconnect/fsl,imx8m-noc.yaml  | 138 ++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  24 ++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  24 ++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  24 ++
 drivers/devfreq/Kconfig                       |   9 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/imx-bus.c                     | 181 +++++++++++
 drivers/interconnect/Kconfig                  |   1 +
 drivers/interconnect/Makefile                 |   1 +
 drivers/interconnect/imx/Kconfig              |  17 +
 drivers/interconnect/imx/Makefile             |   9 +
 drivers/interconnect/imx/imx.c                | 298 ++++++++++++++++++
 drivers/interconnect/imx/imx.h                |  62 ++++
 drivers/interconnect/imx/imx8mm.c             | 108 +++++++
 drivers/interconnect/imx/imx8mn.c             |  97 ++++++
 drivers/interconnect/imx/imx8mq.c             | 106 +++++++
 include/dt-bindings/interconnect/imx8mm.h     |  49 +++
 include/dt-bindings/interconnect/imx8mn.h     |  41 +++
 include/dt-bindings/interconnect/imx8mq.h     |  48 +++
 19 files changed, 1238 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
 create mode 100644 drivers/devfreq/imx-bus.c
 create mode 100644 drivers/interconnect/imx/Kconfig
 create mode 100644 drivers/interconnect/imx/Makefile
 create mode 100644 drivers/interconnect/imx/imx.c
 create mode 100644 drivers/interconnect/imx/imx.h
 create mode 100644 drivers/interconnect/imx/imx8mm.c
 create mode 100644 drivers/interconnect/imx/imx8mn.c
 create mode 100644 drivers/interconnect/imx/imx8mq.c
 create mode 100644 include/dt-bindings/interconnect/imx8mm.h
 create mode 100644 include/dt-bindings/interconnect/imx8mn.h
 create mode 100644 include/dt-bindings/interconnect/imx8mq.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
