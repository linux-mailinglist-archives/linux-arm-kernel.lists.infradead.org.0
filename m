Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CD41265F7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:43:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Vv7PSKWLvIuiIjSUQx7VEaUIxaW3+2HDp070OzVVWg4=; b=RjN
	J1tM1doo7fdlF336jUeUgLZ9K43PfNYVfEgywbCITZ/RdZHEPYoSHj+Jpg4TTlMRB+qG/EepQj5el
	qOpXA3ys/qNkGprMf4kVRWmqNMN0z+K9tMgLyhKWpYsm4mv97Y2doWHlGWTvhwXDveuh11sh/Vsmj
	DcrCnFL1H+Q3fOPgRMRD7lhcmKcBk7GPV2disBuizekj1kXZy2gEN41KIaX+TvlYHgo6n3LWAnQ+y
	GBPoCAWSk21Z3cBIaHBqHJJ+E2jcHUbRy0KhxL2k80ecz0EvDuT2JZ+m2ThCBl/jLKcff8Z7IVOmo
	mQz2UfmLYMQWSdxBcDxxhiuhGq15oFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxy2-0006h4-1f; Thu, 19 Dec 2019 15:43:58 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxxt-0006fR-R6
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:43:51 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 26551200196;
 Thu, 19 Dec 2019 16:43:48 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 17B33201118;
 Thu, 19 Dec 2019 16:43:48 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 66C16203C8;
 Thu, 19 Dec 2019 16:43:47 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH] PM / devfreq: imx8m-ddrc: Fix argument swap in error print
Date: Thu, 19 Dec 2019 17:43:45 +0200
Message-Id: <8485366fbf06600d528ac31ef4a873f6717f2fd7.1576770177.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_074350_017566_D11490A8 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 linux-pm@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Fabio Estevam <fabio.estevam@nxp.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Martin Kepplinger <martink@posteo.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When frequency adjustment fails the old/new frequencies are swapped on
the dev_err call.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/imx8m-ddrc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
index ecbb1db05ea0..53df7923d893 100644
--- a/drivers/devfreq/imx8m-ddrc.c
+++ b/drivers/devfreq/imx8m-ddrc.c
@@ -258,14 +258,14 @@ static int imx8m_ddrc_target(struct device *dev, unsigned long *freq, u32 flags)
 	ret = imx8m_ddrc_set_freq(dev, freq_info);
 
 	new_freq = clk_get_rate(priv->dram_core);
 	if (ret)
 		dev_err(dev, "ddrc failed freq switch to %lu from %lu: error %d. now at %lu\n",
-			old_freq, *freq, ret, new_freq);
+			*freq, old_freq, ret, new_freq);
 	else if (*freq != new_freq)
 		dev_err(dev, "ddrc failed freq update to %lu from %lu, now at %lu\n",
-			old_freq, *freq, new_freq);
+			*freq, old_freq, new_freq);
 	else
 		dev_dbg(dev, "ddrc freq set to %lu (was %lu)\n",
 			*freq, old_freq);
 
 	return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
