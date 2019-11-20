Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70AE8104591
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 22:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hGPcTJlZqTxozkYVo2gGSTaW0aaa/xVrZ5yT6CLVl9A=; b=Ia4DpSL8eOZCqg
	gtxGk4NdM+Qa9lTzx8ui0grZt/IuexRSS10Kb4bBldSx8b49bYJcZh49TigD6BVLSGqdzZSPcfGn9
	iK6RY8qTLHC7UdnJlSVHBO1bHplSraKWqxYsoOt7YAp575VJ+i5bNiILnkBUFrh0O3uWAJUJf8XO7
	Sdtu0t6ZhTk3fn78rjOSvIVpNSzoEgviN8ycm15opttVomyi2mVXEmDlNGAoDflUjnK6XsCpqd1g+
	kbRFwW12R3xmTDYmyirdRudtBQL6cIF/HYkSApOI9Dcki3XzaSF2vWk0cqhPcqNvltgQjflG3Gw0R
	YgdlmoDLR5ZwyyiJx5LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXXJR-0003Os-HJ; Wed, 20 Nov 2019 21:14:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXXIh-0002xe-PW
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 21:14:14 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iXXIU-0001J4-Nr; Wed, 20 Nov 2019 22:13:58 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>)
 id 1iXXIQ-0001Xb-BH; Wed, 20 Nov 2019 22:13:54 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: shawnguo@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 kernel@pengutronix.de, festevam@gmail.com
Subject: [PATCH v3 2/2] ARM: dts: imx25: describe maximum speed of internal
 usbhost port1 phy
Date: Wed, 20 Nov 2019 22:13:34 +0100
Message-Id: <20191120211334.5580-3-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120211334.5580-1-m.grzeschik@pengutronix.de>
References: <20191120082955.3ovsoziurntmv7by@pengutronix.de>
 <20191120211334.5580-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: mgr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_131411_832987_CBD77AF3 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The internal usbphy of usbhost port1 is only full-speed capable.
We set this limitation in the dtsi.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/boot/dts/imx25.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx25.dtsi b/arch/arm/boot/dts/imx25.dtsi
index 7c7795b40ee0c..40b95a290bd6b 100644
--- a/arch/arm/boot/dts/imx25.dtsi
+++ b/arch/arm/boot/dts/imx25.dtsi
@@ -570,6 +570,7 @@
 				clock-names = "ipg", "ahb", "per";
 				fsl,usbmisc = <&usbmisc 1>;
 				fsl,usbphy = <&usbphy1>;
+				maximum-speed = "full-speed";
 				phy_type = "serial";
 				dr_mode = "host";
 				status = "disabled";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
