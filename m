Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78C511A6F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 10:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tCQXc+2KCzPWHsglxGivf1ilceA0omfGEwrLjBPOIb4=; b=eX3
	nvXWX6QBaAIUeJovqkrsYgIXHgQ8cCWPCUZPMUBbjQeuEeclUkYoEmgHsPuGm1IkXAfIKZ7NeVfcm
	M7/iTzS9IuYsI9/z9FvPsUCKWBbKHb4XsZfHF9snh3IUU9A9S9W9nI3vZPRRypCWWMUgCp3R+wOK4
	bTxpsdcoW/OdnFO3mD5hC0vjNLNSBgmezW/ilx/d8g/X8YO0rwXzHoUZJ2LDweJhRU5SRHsmrLyug
	5edLV5pRNsRLfeRDWfIF+yWAiiy0uBe9YVr7/oko486SrvwDpCIs7m+vZE0P3O+qeLdEPz8RP+BeR
	a2mSWXQNU/0jdoxJuvo5Feslm9q0oDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieyGB-0007GH-Hm; Wed, 11 Dec 2019 09:26:19 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieyFy-0007Dp-HE
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 09:26:07 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 295812008DD;
 Wed, 11 Dec 2019 10:26:02 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1B830200987;
 Wed, 11 Dec 2019 10:26:02 +0100 (CET)
Received: from fsr-ub1664-175.ea.freescale.net
 (fsr-ub1664-175.ea.freescale.net [10.171.82.40])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 9715620568;
 Wed, 11 Dec 2019 10:26:01 +0100 (CET)
From: Abel Vesa <abel.vesa@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sascha Hauer <kernel@pengutronix.de>
Subject: [RESEND v2 00/11] clk: imx: Trivial cleanups for clk_hw based API
Date: Wed, 11 Dec 2019 11:25:39 +0200
Message-Id: <1576056350-20715-1-git-send-email-abel.vesa@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_012606_708305_0FB946C4 
X-CRM114-Status: UNSURE (   5.53  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Shawn, just rebased on your clk/imx branch as requested.

Abel Vesa (11):
  clk: imx: Add correct failure handling for clk based helpers
  clk: imx: Rename the SCCG to SSCG
  clk: imx: Replace all the clk based helpers with macros
  clk: imx: pllv1: Switch to clk_hw based API
  clk: imx: pllv2: Switch to clk_hw based API
  clk: imx: imx7ulp composite: Rename to show is clk_hw based
  clk: imx: Rename sccg and frac pll register to suggest clk_hw
  clk: imx: Rename the imx_clk_pllv4 to imply it's clk_hw based
  clk: imx: Rename the imx_clk_pfdv2 to imply it's clk_hw based
  clk: imx: Rename the imx_clk_divider_gate to imply it's clk_hw based
  clk: imx7up: Rename the clks to hws

 drivers/clk/imx/Makefile             |   2 +-
 drivers/clk/imx/clk-composite-7ulp.c |   2 +-
 drivers/clk/imx/clk-divider-gate.c   |   2 +-
 drivers/clk/imx/clk-frac-pll.c       |   7 +-
 drivers/clk/imx/clk-imx7ulp.c        | 182 ++++++------
 drivers/clk/imx/clk-imx8mq.c         |   6 +-
 drivers/clk/imx/clk-pfdv2.c          |   2 +-
 drivers/clk/imx/clk-pllv1.c          |  14 +-
 drivers/clk/imx/clk-pllv2.c          |  14 +-
 drivers/clk/imx/clk-pllv4.c          |   2 +-
 drivers/clk/imx/clk-sccg-pll.c       | 549 -----------------------------------
 drivers/clk/imx/clk-sscg-pll.c       | 549 +++++++++++++++++++++++++++++++++++
 drivers/clk/imx/clk.h                | 102 ++++---
 13 files changed, 724 insertions(+), 709 deletions(-)
 delete mode 100644 drivers/clk/imx/clk-sccg-pll.c
 create mode 100644 drivers/clk/imx/clk-sscg-pll.c

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
