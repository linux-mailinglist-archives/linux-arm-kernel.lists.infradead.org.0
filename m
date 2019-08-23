Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CA99B231
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=z++Vw2wLFRlB8tnQGHdB0t3XXJ2xZO092Z7CiB5JS44=; b=fEP
	0bQVsCFK+vVJmKydTMcfLQlPU3AaABzpvP2vp94r8y45K73BXCUhlSbjlySdnJR4e3P4hUnwyCDX+
	VEhjyQOz8cOJk1szBhte4rdI77FYdBx9lrP4TX3QnJDXRfd2GnW5v/H6JNXJsOA4plTSEcM8QtmB7
	rR/1Te/VoL/buJexyoMlKuTscLDDklrUrCWd6YYFM4z50YgevDI1e0Yvsn/1bLO15EduDHAGZhZkm
	sGYM34SohVQtJq/rLX9xO1CUy6qb+ND31FpLEwGNjdF8hJ+eLmhXjpGm+YFVfyzhPcJ7BCLKGT5EY
	7c36vaEtBJMxAC1lB5w65tztkxxuZ6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Agx-00021e-30; Fri, 23 Aug 2019 14:37:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Agb-0001qs-NH
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:37:07 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D737A200741;
 Fri, 23 Aug 2019 16:37:02 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C86A920073F;
 Fri, 23 Aug 2019 16:37:02 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E792D205D9;
 Fri, 23 Aug 2019 16:37:01 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [RFCv4 0/7] interconnect: Add imx support via devfreq
Date: Fri, 23 Aug 2019 17:36:53 +0300
Message-Id: <cover.1566570260.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_073706_040840_B5E54EE3 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add imx support for interconnect via devfreq: the ICC
framework is used to aggregate requests from devices and then those are
converted to DEV_PM_QOS_MIN_FREQUENCY requests for devfreq.

The devfreq parts are posted separately, this series only intersects in
devicetree: https://patchwork.kernel.org/cover/11104113/

Since there is no single devicetree node that can represent the "interconnect"
new API is added to allow individual devfreq nodes to act as parsing proxies
all mapping to a single soc-level icc provider. This is still RFC
because this

The rest of the changes are small and deal with review comments.

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

Leonard Crestez (7):
  PM / devfreq: Add devfreq_get_devfreq_by_node
  interconnect: Add of_icc_add_proxy
  dt-bindings: devfreq: imx: Describe interconnect properties
  interconnect: Add imx core driver
  interconnect: imx: Add platform driver for imx8mm
  soc: imx8mm: Register interconnect platform device
  arm64: dts: imx8mm: Add interconnect properties

 .../devicetree/bindings/devfreq/imx-ddrc.yaml |   5 +
 .../devicetree/bindings/devfreq/imx.yaml      |   5 +
 arch/arm64/boot/dts/freescale/imx8mm.dtsi     |   5 +
 drivers/devfreq/devfreq.c                     |  42 ++-
 drivers/interconnect/Kconfig                  |   1 +
 drivers/interconnect/Makefile                 |   1 +
 drivers/interconnect/core.c                   |  88 +++++-
 drivers/interconnect/imx/Kconfig              |   9 +
 drivers/interconnect/imx/Makefile             |   2 +
 drivers/interconnect/imx/imx.c                | 279 ++++++++++++++++++
 drivers/interconnect/imx/imx.h                |  60 ++++
 drivers/interconnect/imx/imx8mm.c             | 105 +++++++
 drivers/soc/imx/soc-imx8.c                    |   4 +
 include/dt-bindings/interconnect/imx8mm.h     |  49 +++
 include/linux/devfreq.h                       |   1 +
 include/linux/interconnect-provider.h         |   7 +
 16 files changed, 645 insertions(+), 18 deletions(-)
 create mode 100644 drivers/interconnect/imx/Kconfig
 create mode 100644 drivers/interconnect/imx/Makefile
 create mode 100644 drivers/interconnect/imx/imx.c
 create mode 100644 drivers/interconnect/imx/imx.h
 create mode 100644 drivers/interconnect/imx/imx8mm.c
 create mode 100644 include/dt-bindings/interconnect/imx8mm.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
