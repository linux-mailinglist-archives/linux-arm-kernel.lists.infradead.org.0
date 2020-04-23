Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 368681B5910
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:22:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2jZQ243d5pxlnek+ONTcTdZS49G95giqvps2+R5O6E=; b=QX0N9Rlgo8JvwC
	IMC+glIrYFUrW0Bt9oOXkjs8xH9/bp7EjRwV6rZk+GW6U5jMJjgk57gibp95C8jWn6M/tAiF5t6p7
	vni1zVvYZSS4JOJSQPoROJ1/7Aar8hq54AVhLGH2Eo+sCDaaZP85skbvfZvrbuW5lxCfPC9AGtvtv
	pxpANvX/M2K21HFffFbebWi5PvCgwd0tCku6cFlXzg79XVqHruRFjxaBWS1DTEHSmT/Jikol7K3Wu
	gtEihzptY2cw+AYYWqRK01Th+EczBi2icOtEliF4l89JdzMk96CiU4I8+jgpmaRqEXooSPhQSGjZ6
	0un20HumCiWuHJ8ck+5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYzz-0007qR-Kd; Thu, 23 Apr 2020 10:22:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYzp-0007oK-6d
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:22:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jRYzn-0003dB-W1; Thu, 23 Apr 2020 12:22:15 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1jRYzn-0001Tc-0F; Thu, 23 Apr 2020 12:22:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: ls1046ardb: Set aqr106 phy mode to usxgmii
Date: Thu, 23 Apr 2020 12:22:12 +0200
Message-Id: <20200423102212.5412-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_032217_245009_00A3EC33 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Li Yang <leoyang.li@nxp.com>,
 Shawn Guo <shawnguo@kernel.org>, Madalin Bucur <madalin.bucur@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The AQR107 family of phy devices do not support xgmii, but usxgmii
instead. Since ce64c1f77a9d ("net: phy: aquantia: add USXGMII support
and warn if XGMII mode is set") the kernel warns about xgmii being
used. Change device tree to usxgmii.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
index d53ccc56bb63..02fbef92b96a 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
@@ -151,7 +151,7 @@ ethernet@ea000 {
 
 	ethernet@f0000 { /* 10GEC1 */
 		phy-handle = <&aqr106_phy>;
-		phy-connection-type = "xgmii";
+		phy-connection-type = "usxgmii";
 	};
 
 	ethernet@f2000 { /* 10GEC2 */
-- 
2.26.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
