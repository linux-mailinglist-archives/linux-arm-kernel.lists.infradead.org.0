Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C99F11265F5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 16:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fP9tAWSBEAJHwkjXImQooHJzuOWte8XE2pVLDOBazok=; b=E4R
	2hgqHfLtDQ0N8v5xkUI58QNCUvdsisCWQDE0sTcfONjEPRZV8PWwuf+1xtSyRkMRTYWxB/uOfbzzK
	rWEA5a5bjjBCiGt2I29+S7rV21uwziiXSfOiisYfv5Yct+EAPs08FCBoxKjkssxG/SfMvHgCRV++P
	kWWH4r/H5yFUx1LjXiuG5Ftg1qMY9zGGQJwOyBRkzjCam2UnNEaNvp8956CYtsDQtq4XXr2xJXZvy
	Et6XtWZx/bkIdSpSC24MhM1u1ry0OYCkYyxYy32IXj/C6fuwOecmu2fBUuRZAqPFjPZTjPl+2b2sk
	X4vfOvi5z3FvJKDgVPRTgeNW04u9yfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihxx6-0006Ps-SF; Thu, 19 Dec 2019 15:43:00 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihxwy-0006Li-8M
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 15:42:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 70EDA1A0B95;
 Thu, 19 Dec 2019 16:42:50 +0100 (CET)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 63AC01A079C;
 Thu, 19 Dec 2019 16:42:50 +0100 (CET)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 8290E203C8;
 Thu, 19 Dec 2019 16:42:49 +0100 (CET)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH] PM / devfreq: imx8m-ddrc: Remove unused defines
Date: Thu, 19 Dec 2019 17:42:47 +0200
Message-Id: <9e89485ca173e1d118748dbe5cfc7068f74079bf.1576769985.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_074252_431383_821CC723 
X-CRM114-Status: UNSURE (   7.72  )
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

The IMX_SIP_DDR_DVFS_WAIT_CHANGE and IMX_SIP_DDR_FREQ_SET_HIGH defines
are not used so they can be removed.

Fixes: 518e99e2a22e ("PM / devfreq: Add dynamic scaling for imx8m ddr controller")

Reported-by: Shawn Guo <shawn.guo@kernel.org>
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/imx8m-ddrc.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/devfreq/imx8m-ddrc.c b/drivers/devfreq/imx8m-ddrc.c
index fea169619c59..ecbb1db05ea0 100644
--- a/drivers/devfreq/imx8m-ddrc.c
+++ b/drivers/devfreq/imx8m-ddrc.c
@@ -13,16 +13,10 @@
 #include <linux/clk-provider.h>
 #include <linux/arm-smccc.h>
 
 #define IMX_SIP_DDR_DVFS			0xc2000004
 
-/* Values starting from 0 switch to specific frequency */
-#define IMX_SIP_DDR_FREQ_SET_HIGH		0x00
-
-/* Deprecated after moving IRQ handling to ATF */
-#define IMX_SIP_DDR_DVFS_WAIT_CHANGE		0x0F
-
 /* Query available frequencies. */
 #define IMX_SIP_DDR_DVFS_GET_FREQ_COUNT		0x10
 #define IMX_SIP_DDR_DVFS_GET_FREQ_INFO		0x11
 
 /*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
