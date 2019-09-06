Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D640ABE40
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 19:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3IqG5KDkd8eTzu7/IBQ1CLysJdBx7WOmrjl2glQi0ks=; b=rLtW+w5nY9wSr4
	/ozUbV5fKEkeY9Q/0nEf1faDTbD0OGbWTjuRfBHC4c6VrAEKWbr77MvAp1RJ6UykF4Fo2eM+8j7et
	XPjQfuPHeByywEE5Dg+zyBCciAWM78kfNHL4uKy1QbHpVmtyZdkJmYPEiS0zuRVoGSUIt9Jt03KoR
	o1p7SlToiiiY/CqneEHabrovts71tWzfdFGqhji588dO3fIPSGQwupfII0rla3Qc8sUNCiyYsgKew
	+U9+uWng7WgjRiSJUPBtJPPcOb1WDSqUD7tPoobqNJk2upi9CcEPi1H9zS7IvKm6zrkVAPT25iyqd
	2v7mwQTUavA1DJtstOAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Hgb-0001yI-TE; Fri, 06 Sep 2019 17:06:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6HgS-0001xr-E9
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 17:06:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1i6HgP-0003kf-Vf; Fri, 06 Sep 2019 19:06:02 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: zii-ultra: fix ARM regulator states
Date: Fri,  6 Sep 2019 19:06:01 +0200
Message-Id: <20190906170601.2914-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_100604_479976_A5FAD69C 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Fabio Estevam <festevam@gmail.com>, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPIO controlled regulator for the ARM power supply is supplying
the higher voltage when the GPIO is driven high. This is opposite to
the similar regulator setup on the EVK board and is impacting stability
of the board as the ARM domain has been supplied with a too low voltage
when to faster OPPs are in use.

Fixes: 4a13b3bec3b4 (arm64: dts: imx: add Zii Ultra board support)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 7a1706f969f0..3faa652fdf20 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -101,8 +101,8 @@
 		regulator-min-microvolt = <900000>;
 		regulator-max-microvolt = <1000000>;
 		gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
-		states = <1000000 0x0
-		           900000 0x1>;
+		states = <1000000 0x1
+		           900000 0x0>;
 		regulator-always-on;
 	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
