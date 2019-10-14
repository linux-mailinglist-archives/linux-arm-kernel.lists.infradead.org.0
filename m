Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D36D6625
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 17:32:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cTmFURRaoi96WIx9h7dAi0yt94yC4Vrhmb5S+NE4iS8=; b=NXT
	sDlb7m9aH1zzCDBSPT0alO6XPx8uuQE1onRFGWAKxwBAEOkt4dMVZX4rZmJoq7hGwe3XZRwkhDarq
	488jPmR2hQuSprehMoEpkrvL+2Tb5YQz0w+7I6uOuLcSNo4X+uKUeGzF+7IQncQ6XnJ/071f0RxFk
	0eOdmeHIgsSjkoaNh2Q2dXn/BIjm72L974x58GQQI9TPgNBs3usJNxURsdnVhRPFTQOsP4k+yL38d
	Qb4HrEy8Ule9qFlC9CqSiL8y3p5fY5e/rZDgGw1+co7HwZOIXbxsLvpYf0iUeG1/SsGBX0cL8ktBW
	hjWpn9z8xhiIoD22gXJ5GZPqOOeQy8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK2L0-0001Yz-VA; Mon, 14 Oct 2019 15:32:46 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK2Ks-0001Y5-Ka
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 15:32:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 79FA41A0199;
 Mon, 14 Oct 2019 17:32:32 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D7AB1A00EA;
 Mon, 14 Oct 2019 17:32:32 +0200 (CEST)
Received: from fsr-ub1864-103.ea.freescale.net
 (fsr-ub1864-103.ea.freescale.net [10.171.82.17])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id F329520624;
 Mon, 14 Oct 2019 17:32:31 +0200 (CEST)
From: Daniel Baluta <daniel.baluta@nxp.com>
To: shawnguo@kernel.org
Subject: [PATCH] firmware: imx: Remove call to devm_of_platform_populate
Date: Mon, 14 Oct 2019 18:32:28 +0300
Message-Id: <20191014153228.25167-1-daniel.baluta@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_083238_815737_EB08F6A8 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, linux-imx@nxp.com, kernel@pengutronix.de,
 daniel.baluta@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IMX DSP device is created by SOF layer. The current call to
devm_of_platform_populate is not needed and it doesn't produce
any effects.

Fixes: ffbf23d50353915d ("firmware: imx: Add DSP IPC protocol interface)
Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/firmware/imx/imx-dsp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/imx-dsp.c b/drivers/firmware/imx/imx-dsp.c
index a43d2db5cbdb..4265e9dbed84 100644
--- a/drivers/firmware/imx/imx-dsp.c
+++ b/drivers/firmware/imx/imx-dsp.c
@@ -114,7 +114,7 @@ static int imx_dsp_probe(struct platform_device *pdev)
 
 	dev_info(dev, "NXP i.MX DSP IPC initialized\n");
 
-	return devm_of_platform_populate(dev);
+	return 0;
 out:
 	kfree(chan_name);
 	for (j = 0; j < i; j++) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
