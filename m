Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B89AD1DCB9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:05:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OFOob3JIi+HjZ6KOSFiaSSeo0aK+xonTB4Ua2zqIXBA=; b=lVUrxzIqiEdKDi
	4E0PqlMsTh4nA5VF74mmHI4PYl9Pli5aKX0dnM5mTM/6lnaGO2Jlpub6l+UnwsMAHqUa2XRGA88WV
	Aw6ouH/CwqaUiBFa/xlkfm7MC8SsO/Tl3B1QuIAfUo6fslG7wKOyTBKmLsV930a0T9DQ7XudtNNY6
	zH+jE8hUP0F0V7idR6CtTWtQNFDiTyZx9IjudZhUAFVaCREcD6YxU66B6l7M/RuYhCsNruUIj+xvm
	BJxkCcUQ25LJavgcBW62VDjX4LgKZxo59Z1DxlpcbfHyP1QXkqQkEBDbo/fetuh9p2mmybUlRoR8S
	+tBXAULu3fSg5Xez9yRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbj1A-0001Uy-3u; Thu, 21 May 2020 11:05:40 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbj11-0001UP-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 11:05:32 +0000
IronPort-SDR: hGRLG8aWrdrbkxZtwgCb8BftqOXAUJzjwLaPYDC9oRytCbfnoHsXnjqRQZODwxmSMFEvryS28q
 24JqJ1AQKZXw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2020 04:05:30 -0700
IronPort-SDR: w6ex6S5mus95JXDP7tKDjzG9Zphf6feFiBeRQb/5ef/2aF+miMWEZV2K9XHKHlD9ln5MKJtxrb
 ML3YzHUOAB1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,417,1583222400"; d="scan'208";a="309003364"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 21 May 2020 04:05:29 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jbj0y-0009h4-9S; Thu, 21 May 2020 19:05:28 +0800
Date: Thu, 21 May 2020 19:04:39 +0800
From: kbuild test robot <lkp@intel.com>
To: Peng Fan <peng.fan@nxp.com>
Subject: [RFC PATCH shawnguo] clk: imx: imx8m_clk_composite_mux_ops can be
 static
Message-ID: <20200521110439.GA55876@f61f8b3f25ca>
References: <202005211954.Rc03oK6u%lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202005211954.Rc03oK6u%lkp@intel.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_040531_752573_1F28AE92 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Fixes: 3f0365dafe32 ("clk: imx: add mux ops for i.MX8M composite clk")
Signed-off-by: kbuild test robot <lkp@intel.com>
---
 clk-composite-8m.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-composite-8m.c b/drivers/clk/imx/clk-composite-8m.c
index 8fa60f22d377f..2d9562ebddc3f 100644
--- a/drivers/clk/imx/clk-composite-8m.c
+++ b/drivers/clk/imx/clk-composite-8m.c
@@ -164,7 +164,7 @@ imx8m_clk_composite_mux_determine_rate(struct clk_hw *hw,
 }
 
 
-const struct clk_ops imx8m_clk_composite_mux_ops = {
+static const struct clk_ops imx8m_clk_composite_mux_ops = {
 	.get_parent = imx8m_clk_composite_mux_get_parent,
 	.set_parent = imx8m_clk_composite_mux_set_parent,
 	.determine_rate = imx8m_clk_composite_mux_determine_rate,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
