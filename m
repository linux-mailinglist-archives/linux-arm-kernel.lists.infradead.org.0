Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248F8D0876
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 09:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Vwmx/iRpz2452cAh/OGJAvDm02EFQwhrVOiZGhS/5jU=; b=dUv
	GRePtrT7757rC3rQ2/SSHSWgS+ObxapQpmCNbblw1ko3tHh3b4LHivUcMI9sxcwP7qly/s+oIQ1l7
	FcJX8CAD2SB+BE/kbstOsMZryeV1IK1D+8+T8jBACL3IVZzMAhAG4SecpZXstDyE7MZT/MdP2GrX/
	qf4tTuIpgo7qkY+nfVTWOZCZFoCoC0m4mIq3wifUDelpkr1vTPp3dMx1saEKWhxXUOeYdEYhYpa1o
	WwkTS6ptu/Nmuu5OQt46lbYR0W7AFixdrm7t0hCbwUCTkgbUUnbv3uLznfFhyfppHPv17zSYWudwc
	+2QABd+m9IFwh+vKn89rtV2Hvzi+xuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI6a7-0007lw-Gj; Wed, 09 Oct 2019 07:40:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI6Zw-0007lP-N2
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 07:40:14 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E08CB1A09EF;
 Wed,  9 Oct 2019 09:40:10 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0E29A1A09F3;
 Wed,  9 Oct 2019 09:40:06 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CA114402B1;
 Wed,  9 Oct 2019 15:39:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: wim@linux-watchdog.org, linux@roeck-us.net, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] watchdog: imx_sc_wdt: Pretimeout should follow SCU firmware
 format
Date: Wed,  9 Oct 2019 15:37:47 +0800
Message-Id: <1570606667-16729-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_004012_891697_8CC2F771 
X-CRM114-Status: UNSURE (   7.30  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCU firmware calculates pretimeout based on current time stamp
instead of watchdog timeout stamp, need to convert the pretimeout
to SCU firmware's timeout value.

Fixes: 15f7d7fc5542 ("watchdog: imx_sc: Add pretimeout support")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/watchdog/imx_sc_wdt.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/watchdog/imx_sc_wdt.c b/drivers/watchdog/imx_sc_wdt.c
index 7ea5cf5..8ed89f0 100644
--- a/drivers/watchdog/imx_sc_wdt.c
+++ b/drivers/watchdog/imx_sc_wdt.c
@@ -99,8 +99,14 @@ static int imx_sc_wdt_set_pretimeout(struct watchdog_device *wdog,
 {
 	struct arm_smccc_res res;
 
+	/*
+	 * SCU firmware calculates pretimeout based on current time
+	 * stamp instead of watchdog timeout stamp, need to convert
+	 * the pretimeout to SCU firmware's timeout value.
+	 */
 	arm_smccc_smc(IMX_SIP_TIMER, IMX_SIP_TIMER_SET_PRETIME_WDOG,
-		      pretimeout * 1000, 0, 0, 0, 0, 0, &res);
+		      (wdog->timeout - pretimeout) * 1000, 0, 0, 0,
+		      0, 0, &res);
 	if (res.a0)
 		return -EACCES;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
