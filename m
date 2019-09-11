Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1393AFC2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 14:06:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aADZeoJh7qcAkx1EXxGncrm+e8XI7hKP8Fq61pltH6Y=; b=HRo
	Bf6Pq5JpquZ2lISnYJ6kS1Z8cOuZgmccdXfCOpc+0pyoHxWQ1LMF1KiOcY9USBMIUTCa6VZdrVZ60
	4A+AtFzbW1aZj0kCT433rFVbWT/cYs1p/OZkqa9FmmnQuOmBfJTtXjEEOx19x2MD8r1LYO0KmymQB
	A85/sBDTJ/+rlz18ivf9gBWBuLwLLVY7Muq7BV0dGG/J6gUpJFcCNBOirXxB9jZjt9Ex6o39v9NXP
	nupfBpAKBrIY3zLJj8CXwevSNKRd58FebxdnsHwq/YBEJ7u1RNtaKjKJ81P8osRfhWyHkOzNThJS2
	vouLyOxlPLSDBbHgewRrAzgSGLqn9lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i81O4-00057O-01; Wed, 11 Sep 2019 12:06:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i81NQ-000505-Pj
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 12:05:38 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D942A1A05A2;
 Wed, 11 Sep 2019 14:05:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CC8311A0091;
 Wed, 11 Sep 2019 14:05:32 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 2843D205DE;
 Wed, 11 Sep 2019 14:05:32 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: [PATCH 0/3] clk: imx8m: Define gates for pll1/2 dividers
Date: Wed, 11 Sep 2019 15:05:26 +0300
Message-Id: <cover.1568203237.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_050537_035482_7260AC34 
X-CRM114-Status: UNSURE (   5.04  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The fixed dividers for sys_pll1 and sys_pll2 on imx8m each have a gate
attached but they're currently unused so they default to "always on".

Add them to the clk tree for the sake of corectness. This could expose
bugs where parent clocks were not correctly enabled.

The new gates are added between the PLL and fixed dividers and new gates
are enumerated at the end in dt-bindings. This should ensure
compatibility, even though none of these fixed dividers are directly
referenced by peripherals anyway.

There are small differences on imx8mq because the PLL physical
implementation is also different.

Leonard Crestez (3):
  clk: imx8mq: Define gates for pll1/2 fixed dividers
  clk: imx8mm: Define gates for pll1/2 fixed dividers
  clk: imx8mn: Define gates for pll1/2 fixed dividers

 drivers/clk/imx/clk-imx8mm.c             | 57 ++++++++++++++--------
 drivers/clk/imx/clk-imx8mn.c             | 57 ++++++++++++++--------
 drivers/clk/imx/clk-imx8mq.c             | 62 ++++++++++++++++--------
 include/dt-bindings/clock/imx8mm-clock.h | 19 +++++++-
 include/dt-bindings/clock/imx8mn-clock.h | 19 +++++++-
 include/dt-bindings/clock/imx8mq-clock.h | 22 ++++++++-
 6 files changed, 175 insertions(+), 61 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
