Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDAEF1C8BC8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 15:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sNg+Xht6bU29yWIC5TvtMw1VjRH8RDAyWcmdY7iVePc=; b=icKa18/TPdPfbY
	KywEcTW/JAyLSMqiOguoHi+PwJHW5v3Js9br1ZgP1kbsGUOvgl0SoogWk6Ib1LWNUBZGljVn+sykD
	3DOtVixO7pxt4hV12leh66/YAnzeIwj83FE9qMxa/S/Dj2Bz1qsApLtYd2wsY4p7FwQz+oNYDGUH9
	CGcSg2Ow5zdUUHQIBA6sCFUj8L28wrATD+816SaSarJ2afZ4k56P6xugT+YdXUUWQiSfpiktYwO1T
	ZcStl79AIPCqdeMkgfhxrVXg1+lnB33IYGEaf0if0F5GQ1LQltb/ntkdzOt0YHCTOiDKAA/KLibXW
	0GK7Kivtwcg6Kn9Z/9XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWgGK-0004j9-6Y; Thu, 07 May 2020 13:08:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWgGD-0004iQ-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 13:08:22 +0000
Received: from embeddedor (unknown [189.207.59.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BA11F20870;
 Thu,  7 May 2020 13:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588856900;
 bh=iF9jX+7z7ru6HD3PxDGP0QqjiXkokdLrWTYirF4yg5o=;
 h=Date:From:To:Cc:Subject:From;
 b=N5IeqxL+pm8uG+ioRyFmDRt8nvD6Ms5+PVbFa6RD5tUdKaFlFkKlV8vD6QEgLDVkk
 CM0cW36Z2FJX85xm9lHWd8pgla8pR0nbjoKHVIyHxmlxsQg0UjH7gSA8QBLPcGlS40
 amaw0LrBuHVZAyyr2YTyFaT7VE+NwlupSVpFf6Z8=
Date: Thu, 7 May 2020 08:12:45 -0500
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH] PM / devfreq: imx: Fix inconsistent IS_ERR and PTR_ERR
Message-ID: <20200507131245.GA709@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_060821_298247_742C1E8D 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix inconsistent IS_ERR and PTR_ERR in imx_bus_init_icc().

The proper pointer to be passed as argument to PTR_ERR() is
priv->icc_pdev.

This bug was detected with the help of Coccinelle.

Fixes: 16c1d2f1b0bd ("PM / devfreq: imx: Register interconnect device")
Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
---
 drivers/devfreq/imx-bus.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
index 532e7954032f..4f38455ad742 100644
--- a/drivers/devfreq/imx-bus.c
+++ b/drivers/devfreq/imx-bus.c
@@ -88,8 +88,8 @@ static int imx_bus_init_icc(struct device *dev)
 			dev, icc_driver_name, -1, NULL, 0);
 	if (IS_ERR(priv->icc_pdev)) {
 		dev_err(dev, "failed to register icc provider %s: %ld\n",
-				icc_driver_name, PTR_ERR(priv->devfreq));
-		return PTR_ERR(priv->devfreq);
+				icc_driver_name, PTR_ERR(priv->icc_pdev));
+		return PTR_ERR(priv->icc_pdev);
 	}
 
 	return 0;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
