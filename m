Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2F772F02
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 14:39:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6JCnBbN4ortg3VRIgIqXi+DUfNdfNWltzxpJnlMG2Ww=; b=r8S
	hsi0tWdESMx2t9FvW1MBY3PhRGY5YjlODGWn0/TWOjtXMWq5E1fqo8xalr1VbPdx3fiKb2Ajcs7Vq
	DGljcowQId2CEoKlGS4elUqB9KmBHsEs8p9ttZwifO1jmOd1Uwz7lkT9cUPV8c00LzUWK+3Vyf3Ze
	1AncQVS9I64dK5WK0DdW6Qln5pvuI862hlUJDfdsHcLpxN69Zk12fWHwJKZYa5aJLpH1sQl5+y5//
	rUdSFUMHwP44mbs8llKz0aAbNrdsafNk51jlmQoBk/7dNAHDJc1PAQa4OzvcfAxrGluyfdiT7qTdm
	gEnpY1Vp+4QXPIAYm/xOE2YSpAHEglg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqGXx-0002Rd-FE; Wed, 24 Jul 2019 12:39:05 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqGXm-0002Ph-VM
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 12:38:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3BC6D1A01FD;
 Wed, 24 Jul 2019 14:38:51 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2D2CB1A0148;
 Wed, 24 Jul 2019 14:38:51 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id ED221205D8;
 Wed, 24 Jul 2019 14:38:49 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Will Deacon <will@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [RFCv2 0/3] PM / devfreq: Add imx driver
Date: Wed, 24 Jul 2019 15:38:43 +0300
Message-Id: <cover.1563971855.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_053855_152949_E13C817F 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Mark Rutland <mark.rutland@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Frank Li <Frank.li@nxp.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Alexandre Bailon <abailon@baylibre.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series attempts to add devfreq support for imx8mm, covering dynamic
scaling of internal buses and dram.

Actual scaling is performed through the clk framework: The NOC and main
NICs are driven by composite clks and a new 'imx8m-dram' clk is used for
scaling dram using firmware calls.

Frequency target is set via "clk_set_min_rate", this allows an unrelated
subsystem (for example interconnect) to also request minimum rates as a
form for proactive scaling.

The dram controller (DDRC) has a performance monitoring block attached
for which a perf driver already exists. Instead of reimplementing that
as devfreq-events the perf in-kernel API is used.

Changes since v2:
* Solve review comments
* Add yaml binding doc
* Add perf event support
Link to v2: https://patchwork.kernel.org/patch/11021571/

DRAM frequency switching through clk framework is here:
* https://patchwork.kernel.org/patch/11049429/
That part might not be accepted in clk and it might have to be moved to
devfreq also.

Leonard Crestez (3):
  dt-bindings: devfreq: Add initial bindings for i.MX
  PM / devfreq: Add imx driver
  PM / devfreq: Add imx perf event support

 .../devicetree/bindings/devfreq/imx.yaml      |  59 ++++
 drivers/devfreq/Kconfig                       |  10 +
 drivers/devfreq/Makefile                      |   1 +
 drivers/devfreq/imx-devfreq.c                 | 278 ++++++++++++++++++
 4 files changed, 348 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/devfreq/imx.yaml
 create mode 100644 drivers/devfreq/imx-devfreq.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
