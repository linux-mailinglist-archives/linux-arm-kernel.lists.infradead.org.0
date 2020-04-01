Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F318219ADF5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7jMsBCoyD4HXD3+7mQfP3AlEvG0oPuzA2OfYoLrcm3g=; b=ipl
	2pl6GvFmkOVB7wLe1NumfD/6FkmnjZ0TBoVsowtwwZHh58ZsyS8WmzfRcev3d+yiGe6tKU4j5Ngvh
	CM4SxhvnSjN9Up/cR3MITQiEwK8OIO78gZN4kxooytpTa0UJdGxz2xQqQT9dIam7y0oDVms3hhhyb
	4c0s8n3/r+EAlXkT3Cm+BEoOcfjHchNoU8fIddXbZJ/giClWjQOqQnpgbjvShtaOchfiZknRib1VS
	9iGRV+IDlAZM3ZQ/pUyybNp/4sWx4deh6rNJ3KL4xLGw69mQ4g79ZyaSrLuEcjeohgQRR29qwfD3E
	kiPWlL1MLGUtvzpgwwFxn/RAatNPAwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeR7-0002qK-6b; Wed, 01 Apr 2020 14:33:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJeQe-0002eT-Az
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:33:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E0506200DCC;
 Wed,  1 Apr 2020 16:33:13 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C5C70200DBA;
 Wed,  1 Apr 2020 16:33:13 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B56FE20507;
 Wed,  1 Apr 2020 16:33:12 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH v2 0/8] interconnect: Add imx support via devfreq
Date: Wed,  1 Apr 2020 17:32:59 +0300
Message-Id: <cover.1585751281.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_073316_657246_9DFB6756 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-imx@nxp.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
 Silvano di Ninno <silvano.dininno@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Dong Aisheng <aisheng.dong@nxp.com>,
 Saravana Kannan <saravanak@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
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

Also available on a github branch (with few unrelated changes):
	https://github.com/cdleonard/linux/tree/next

Changes since v1:
* Fix dt_bindings_check for yaml and reduce example to fit current
features
* Fix comment spelling in imx-bus
* Drop mentions of passive governor from imx-bus (will repost later)
* Improve error message in imx_bus_init_icc
* Use dev_pm_opp_set_rate
Link: https://patchwork.kernel.org/cover/11458971/

Changes since RFCv6:
* Allow building interconnect drivers as modules
* Handle icc_provider_del errors in imx_icc_unregister (like EBUSY).
* Rename imx-devfreq to imx-bus, similar to exynos-bus
* Explain why imx bus clock enabling is not required
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

 .../bindings/interconnect/fsl,imx8m-noc.yaml  | 101 ++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  24 ++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  24 ++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  24 ++
 drivers/devfreq/Kconfig                       |   8 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/imx-bus.c                     | 180 +++++++++++
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
 19 files changed, 1199 insertions(+)
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
