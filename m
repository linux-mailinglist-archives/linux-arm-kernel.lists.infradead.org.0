Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8654EB9FD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 23:52:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=rhgAdC0bQo5loPX9eGOSB/Ffw3ZTNkkims/bIIH5yQM=; b=mkn
	mCKGW7YJwvwK+/Z9LQPM1LTmLKyRSbJR7sKRDnSMvciO45d+wCYS81ky08xIN+EMKte5NOmQhj5or
	OZuFBDw3CvbXIlAkxIapHyNo7Xx0YZbQxHd5MreOmJ+S/dicUwVwTnKY/iHB8lS4/iyw1RlkYc2pb
	57JtP+trTWyrIUxxQEvdg3YnAaTrnGSXxC5oRwk2fVWucHFxqSNjW0IxUuHSaD7y7COxWD+jb8Rqu
	ir10VswYW7kmytetJ/kHSlTDhAcIFTUL58mKd1onBOKbkX6Z/Ik6rUu+36eJ0tycKmFLki8D/RCUy
	bwUq+Etc2XnVdZ8yHJtoQbi3WGuBT9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQJIz-0001Xy-8C; Thu, 31 Oct 2019 22:52:37 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQJIi-0001Wd-5W
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 22:52:22 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 078442002ED;
 Thu, 31 Oct 2019 23:52:18 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EBF892000BB;
 Thu, 31 Oct 2019 23:52:17 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E39D0205E9;
 Thu, 31 Oct 2019 23:52:16 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [PATCH RFC v5 00/10] interconnect: Add imx support via devfreq
Date: Fri,  1 Nov 2019 00:51:59 +0200
Message-Id: <cover.1572562150.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_155220_492550_637ABEF0 
X-CRM114-Status: GOOD (  13.40  )
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
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <Anson.Huang@nxp.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Kaehlcke <mka@chromium.org>, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Martin Kepplinger <martink@posteo.de>, linux-arm-kernel@lists.infradead.org,
 Dong Aisheng <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Alexandre Bailon <abailon@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series adds upstream DRAM and interconnect scaling support for imx8m
series chips. It uses a per-SOC interconnect provider layered on top of
multiple instances of devfreq for scalable nodes along the interconnect.

Existing qcom interconnect providers mostly translate bandwidth requests into
firmware calls but equivalent firmware on imx8m is much thinner. Scaling
support for individual nodes (NIC/NOC and DDRC) is implemented through
devfreq.

The imx interconnect provider doesn't communicate with devfreq instance
directly but rather computes "minimum frequencies" for nodes along the path
and creates dev_pm_qos requests.

This needs core changes for dev_pm_qos frequency support for devfreq:

	https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=196443

Since imx interconnect only needs to interact with imx devfreq it would also be
possible to tie them together directly, but it would be a little sad.

Since there is no single devicetree node that can represent the
"interconnect" the main NOC is picked as the "interconnect provider" and
will probe the interconnect platform device if #interconnect-cells is
present. This is a bit odd.

On i.MX there are multiple instances of a few interconnect IPs, this
patch identifies them by enumerating the entire devicetree scanning for
the "interconnect-node-id" property. As far as I see current providers
do this based entirely on compatible string of the interconnect instance
and this seems very odd to me. Do you think we could move this
"interconnect-node-id" approach to core interconnect bindings?

The same interconnect-node-id property is used to identify the DDRC and
this is arguably a hack.

Also as a github branch (with few other changes):
    https://github.com/cdleonard/linux/tree/next_imx_busfreq

This is layered upon imx-ddrc scaling support:
* https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=196459
The DDRC only really interacts by receiving dev_pm_qos requests.

Changes since RFCv4:
* Drop icc proxy nonsense
* Make devfreq driver for NOC probe the ICC driver if
#interconnect-cells is present.
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
* No more special suspend handling: use suspend-opp on devfreq instead.
* Replace all mentions of "busfreq" with "interconnect"
Link to v2: https://patchwork.kernel.org/patch/11056789/

Leonard Crestez (10):
  dt-bindings: devfreq: Add bindings for generic imx buses
  PM / devfreq: Add generic imx bus driver
  PM / devfreq: imx: Register interconnect device
  PM / devfreq: Add devfreq_get_devfreq_by_node
  interconnect: Add imx core driver
  interconnect: imx: Add platform driver for imx8mm
  interconnect: imx: Add platform driver for imx8mq
  interconnect: imx: Add platform driver for imx8mn
  arm64: dts: imx8m: Add NOC nodes
  arm64: dts: imx8m: Add interconnect provider properties

 .../devicetree/bindings/devfreq/imx.yaml      |  83 ++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |  26 ++
 arch/arm64/boot/dts/freescale/imx8mn.dtsi     |  26 ++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi     |  26 ++
 drivers/devfreq/Kconfig                       |  12 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/devfreq.c                     |  42 ++-
 drivers/devfreq/imx-devfreq.c                 | 185 ++++++++++++
 drivers/interconnect/Kconfig                  |   1 +
 drivers/interconnect/Makefile                 |   1 +
 drivers/interconnect/imx/Kconfig              |  17 ++
 drivers/interconnect/imx/Makefile             |   4 +
 drivers/interconnect/imx/imx.c                | 273 ++++++++++++++++++
 drivers/interconnect/imx/imx.h                |  60 ++++
 drivers/interconnect/imx/imx8mm.c             | 105 +++++++
 drivers/interconnect/imx/imx8mn.c             |  94 ++++++
 drivers/interconnect/imx/imx8mq.c             | 103 +++++++
 include/dt-bindings/interconnect/imx8mm.h     |  49 ++++
 include/dt-bindings/interconnect/imx8mn.h     |  41 +++
 include/dt-bindings/interconnect/imx8mq.h     |  48 +++
 include/linux/devfreq.h                       |   1 +
 21 files changed, 1187 insertions(+), 11 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml
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
