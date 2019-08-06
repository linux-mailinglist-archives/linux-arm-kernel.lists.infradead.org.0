Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C649E8301D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:56:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=YnbeYeSXWjjgsP/aKaqVVh2eepVxgFwPjnYvKPJEe5Y=; b=eco
	fGGZJRmdvk3uKeyLczvKLVhs5W9DA+AogDusO9KZVClfFpoZe2GYT6h63OeV/7kMdrSyXZDEPMgwu
	LHLaw9BtAilG2XCk5Wuqohwv7yT+7+OCQ5Zg0didheVunX2q3U1rgF/uWMM+Bt/119w4XHTcAwoWu
	2fOnEpFwlUFbpULRyJslZrETYXcl8Fu3JOjL0+pqwDE667HJa/ilCdXrt302XmnpwrxrcCRpOAyL3
	AVlyM0/R5nWDRLmaN6HXfIsPIQPzEq9DkVzEG9zNfgJEUWVMPVPMRRLlwcfGd19hIOSCajPaJzEDC
	H0YGzyk4+LIZ7RpwWm8f4yo9R0A2IRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hux8U-0000RW-2U; Tue, 06 Aug 2019 10:56:10 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hux8N-0000Po-Sk
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:56:05 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7A07D1A05E1;
 Tue,  6 Aug 2019 12:55:58 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6C6501A05D4;
 Tue,  6 Aug 2019 12:55:58 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 78284205DD;
 Tue,  6 Aug 2019 12:55:57 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Subject: [RFCv3 0/3] interconnect: Add imx support via devfreq
Date: Tue,  6 Aug 2019 13:55:51 +0300
Message-Id: <cover.1565088423.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_035604_211039_2DEE4CF2 
X-CRM114-Status: GOOD (  11.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-pm@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series add imx support for interconnect via devfreq: the ICC
framework is used to aggregate requests from devices and then those are
converted to "min_freq" requests to devfreq.

The dev_pm_qos API is used to request min frequencies from devfreq, it
relies on this patch: https://patchwork.kernel.org/patch/11078475/

This is greatly reduced compared to previous submissions:

 * Relying on devfreq and dev_pm_qos instead of CLK allows a wider range
of implementations for scaling individual nodes. In particular it's no
longer required to force DDR scaling into CLK.
 * No more "platform opp" stuff: forcing everything to scale together
loses many of the benefits of ICC. The devfreq "passive" governor can
still be used to tie some pieces of the fabric together.
 * No more suspend/resume handling: devfreq uses OPP framework which
already supports "suspend-opp".
 * Replace all mentions of "busfreq" with "interconnect"

Link to v2: https://patchwork.kernel.org/patch/11056789/

The per-soc platform drivers still need to defined the interconnect
graph and links to devfreq (by name) as well as bus widths. For example
some of the 128-bit buses on imx8m mini are 64-bit on imx8m nano.

There was another recent series tying icc and devfreq, for exynos:
 * https://lkml.org/lkml/2019/7/23/394

That series defines the interconnect graph/tree entirely inside
devicetree but that seems limiting. I'd rather keep the graph in a SOC
driver and #define ids for all bus masters/slaves. This way if USB1 and
USB2 are on the same bus they can still be treated differently.

One interesting idea from there is to turn devfreq nodes into
interconnect providers, this can avoid the need for a "virtual" ICC node
in devicetree. I expect devicetree folks will object to that?

Leonard Crestez (3):
  dt-bindings: interconnect: Add bindings for imx
  interconnect: Add imx core driver
  interconnect: imx: Add platform driver for imx8mm

 .../devicetree/bindings/interconnect/imx.yaml |  38 +++
 drivers/interconnect/Kconfig                  |   1 +
 drivers/interconnect/Makefile                 |   1 +
 drivers/interconnect/imx/Kconfig              |   9 +
 drivers/interconnect/imx/Makefile             |   2 +
 drivers/interconnect/imx/imx.c                | 258 ++++++++++++++++++
 drivers/interconnect/imx/imx.h                |  62 +++++
 drivers/interconnect/imx/imx8mm.c             | 114 ++++++++
 include/dt-bindings/interconnect/imx8mm.h     |  49 ++++
 9 files changed, 534 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/imx.yaml
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
