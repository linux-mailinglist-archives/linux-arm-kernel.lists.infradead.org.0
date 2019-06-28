Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1513B59536
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 09:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xO9McZ1yK8PLiHh349qNZFksJ15BwzxzQSrK7fTJbtk=; b=cc5
	7KcoTF8hp4ikuazNckhX6qc5vWZ5TSYecTFHixD8U++OTunFWGBIezXzG5nmKO3cekGyRlYnpOpT5
	DwhvdfyyLCQUOiBO7jsZgWwpb9iedRemAiNuLNqiiAH6Yslovw47Y/StTXxro1frzcMPp1hOJclGW
	UpxpHQshsqAzvakWIXi0oSRLbc3JJ5LN6WxdH3KOKNPz7Z+iQgZH7PJhyAs/Ohb4E7MqIiokwy6QU
	dUfgajppp1eO12zQaUS99cjwvf7WGze8pcSOR314D5W+OjIQz8V/AOfJ76GA+sDOCr7LB6jvacmVE
	+NU36JLzp+rx80aidZifQIAHszJ1J5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hglUk-0007KC-DP; Fri, 28 Jun 2019 07:40:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hglUI-0006jK-JK
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 07:40:04 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D542E1A0DB5;
 Fri, 28 Jun 2019 09:40:00 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B8FD71A033F;
 Fri, 28 Jun 2019 09:40:00 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id CC6BC205D5;
 Fri, 28 Jun 2019 09:39:59 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFCv2 0/8] Add imx8mm bus frequency switching
Date: Fri, 28 Jun 2019 10:39:48 +0300
Message-Id: <cover.1561707104.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_004002_957955_C04D83D5 
X-CRM114-Status: GOOD (  12.22  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Saravana Kannan <saravanak@google.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series attempts to add upstream DVFS support for imx8mm, covering dynamic
scaling of internal buses and dram. It uses the interconnect framework for
proactive scaling (in response to explicit bandwidth requests from devices) and
devfreq in order expose the buses and eventually implement reactive scaling (in
response to measuredtraffic).

Actual scaling is performed through the clk framework: The NOC and main NICs
are driven by composite clks and a new 'imx8m-dram' clk is included for
scaling dram using firmware calls.

The interconnect and devfreq parts do not communicate explicitly: they both
just call clk_set_min_rate and the clk core picks the minimum value that can
satisfy both. They are thus completely independent.

This is easily extensible to more members of the imx8m family, some of which
expose more detailed controls over interconnect fabric frequencies.

TODO:
* Clarify DT bindings
* Clarify interconnect OPP picking logic
* Implement devfreq_event for imx8m ddrc
* Expose more dram frequencies

The clk_set_min_rate approach does not mesh very well with the OPP framework.
Some of interconnect nodes on imx8m can run at different voltages: OPP can
handle this well but not in response to a clk_set_min_rate from an unrelated
subsystem. Maybe set voltage on a clk notifier?

Vendor tree does not support voltage switching, independent freqs for
different parts of the fabric or any reactive scaling. I think it's important
to pick an upstreaming approach which can support as much as possible.

Feedback welcome.

Some objections were apparently raised to doing DRAM switch inside CLK:
perhaps ICC should make min_freq requests to devfreq instead?

Link to v1 (multiple chunks):
 * https://patchwork.kernel.org/patch/10976897/
 * https://patchwork.kernel.org/patch/10968303/
 * https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=91251

Also as a github branch (with few other changes):
    https://github.com/cdleonard/linux/tree/next_imx8mm_busfreq

Alexandre Bailon (2):
  interconnect: Add generic driver for imx
  interconnect: imx: Add platform driver for imx8mm

Leonard Crestez (6):
  clk: imx8mm: Add dram freq switch support
  clk: imx8m-composite: Switch to determine_rate
  arm64: dts: imx8mm: Add dram dvfs irqs to ccm node
  devfreq: Add imx-devfreq driver
  arm64: dts: imx8mm: Add interconnect node
  arm64: dts: imx8mm: Add devfreq-imx nodes

 arch/arm64/boot/dts/freescale/imx8mm.dtsi |  73 +++
 drivers/clk/imx/Makefile                  |   1 +
 drivers/clk/imx/clk-composite-8m.c        |  34 +-
 drivers/clk/imx/clk-imx8m-dram.c          | 357 ++++++++++++
 drivers/clk/imx/clk-imx8mm.c              |  12 +
 drivers/clk/imx/clk.h                     |  13 +
 drivers/devfreq/Kconfig                   |  10 +
 drivers/devfreq/Makefile                  |   1 +
 drivers/devfreq/imx-devfreq.c             | 142 +++++
 drivers/interconnect/Kconfig              |   1 +
 drivers/interconnect/Makefile             |   1 +
 drivers/interconnect/imx/Kconfig          |  17 +
 drivers/interconnect/imx/Makefile         |   2 +
 drivers/interconnect/imx/busfreq-imx8mm.c | 151 ++++++
 drivers/interconnect/imx/busfreq.c        | 628 ++++++++++++++++++++++
 drivers/interconnect/imx/busfreq.h        | 123 +++++
 include/dt-bindings/clock/imx8mm-clock.h  |   4 +-
 include/dt-bindings/interconnect/imx8mm.h |  49 ++
 18 files changed, 1606 insertions(+), 13 deletions(-)
 create mode 100644 drivers/clk/imx/clk-imx8m-dram.c
 create mode 100644 drivers/devfreq/imx-devfreq.c
 create mode 100644 drivers/interconnect/imx/Kconfig
 create mode 100644 drivers/interconnect/imx/Makefile
 create mode 100644 drivers/interconnect/imx/busfreq-imx8mm.c
 create mode 100644 drivers/interconnect/imx/busfreq.c
 create mode 100644 drivers/interconnect/imx/busfreq.h
 create mode 100644 include/dt-bindings/interconnect/imx8mm.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
