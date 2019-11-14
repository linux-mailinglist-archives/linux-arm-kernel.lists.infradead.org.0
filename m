Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 499DEFCF55
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 21:12:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NQj9XuLlmXFog6/4MVAXxkoMPMFEfQS75E792F25q4E=; b=AXX
	H2/EM+Fzro2+xlSL94mX2+pCwg/If/lyJS0rtvc5eYExiT/JIQ/e2lYx+ZL4LowUxa19rPP+CEB2N
	2BSim3mAGdYkscZk8/tmxupYllGP4+H01aHfn29fmRTDTP3CJo4E/h7zEoIVrTkHZq2Xz7YE/a57X
	WnwFel0SO4qQYmq/wyE+oz1FW7+ICpGPb8jDl0cAnJOV2TkjXzMuLK66YfdGViEJ4YzZnDYtewMDs
	7GAfbC2llzK9PGib2qXW97HWA3L33MqX+d272UnISVWn6pPx5eEfh5kh+HL0qv6cu51Hu8Uvx9DBK
	joU+gNvUeaz2mC9m4nyTrmYHXm7s23g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVLTe-0001A1-9N; Thu, 14 Nov 2019 20:12:26 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVLRy-0008Lx-0A
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 20:10:51 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3F2691A00A6;
 Thu, 14 Nov 2019 21:10:40 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 21B9E1A009D;
 Thu, 14 Nov 2019 21:10:40 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 05AF02060A;
 Thu, 14 Nov 2019 21:10:38 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v6 0/9] interconnect: Add imx support via devfreq
Date: Thu, 14 Nov 2019 22:09:47 +0200
Message-Id: <cover.1573761527.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_121045_422900_32F4BF5F 
X-CRM114-Status: GOOD (  10.46  )
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
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>,
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

This depends on other series for devfreq pm/qos and ddrc:
	https://patchwork.kernel.org/cover/11244283/
	https://patchwork.kernel.org/cover/11212887/
	https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=196443

Also available as a github branch (with various unrelated changes):
	https://github.com/cdleonard/linux/tree/next_imx_busfreq

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

Leonard Crestez (9):
  dt-bindings: interconnect: Add bindings for imx8m noc
  PM / devfreq: Add generic imx bus scaling driver
  PM / devfreq: imx: Register interconnect device
  interconnect: Add imx core driver
  interconnect: imx: Add platform driver for imx8mm
  interconnect: imx: Add platform driver for imx8mq
  interconnect: imx: Add platform driver for imx8mn
  arm64: dts: imx8m: Add NOC nodes
  arm64: dts: imx8m: Add interconnect provider properties

 .../bindings/interconnect/fsl,imx8m-noc.yaml  | 104 ++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  28 ++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  28 ++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  28 ++
 drivers/devfreq/Kconfig                       |   9 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/imx-devfreq.c                 | 187 +++++++++++
 drivers/interconnect/Kconfig                  |   1 +
 drivers/interconnect/Makefile                 |   1 +
 drivers/interconnect/imx/Kconfig              |  17 +
 drivers/interconnect/imx/Makefile             |   4 +
 drivers/interconnect/imx/imx.c                | 301 ++++++++++++++++++
 drivers/interconnect/imx/imx.h                |  60 ++++
 drivers/interconnect/imx/imx8mm.c             | 105 ++++++
 drivers/interconnect/imx/imx8mn.c             |  94 ++++++
 drivers/interconnect/imx/imx8mq.c             | 103 ++++++
 include/dt-bindings/interconnect/imx8mm.h     |  49 +++
 include/dt-bindings/interconnect/imx8mn.h     |  41 +++
 include/dt-bindings/interconnect/imx8mq.h     |  48 +++
 19 files changed, 1209 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
 create mode 100644 drivers/devfreq/imx-devfreq.c
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
