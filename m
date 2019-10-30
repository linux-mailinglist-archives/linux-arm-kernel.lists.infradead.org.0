Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1D5EA204
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 17:46:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T3XtGi4noddeU+ir8mCNmT9yDjC8GnBfT6YoooJpU7k=; b=QathtGeOnaNe6V
	6OJgfaemJ1wr7YEufaiaKfAAKYekeCz++E8sNaY7hF78MPtjPByDLJk9BiK2k5OmxqXxyCbzFe7wy
	jMqHCjHX7/X+W8+Neku9Y+yrZarMbF/tZum0t46YAGtr/Dl6I94GKRhZwgmd1fEa1dqyF7hWsam5o
	RxgXvc23nvtMxtQjO9+nVsHj8LbNqIdJzRrZ/WmhNuXODiZZ3k6ytZV6XYIiqDgAQH3FSq+X9QqtM
	UZm+ED6S0WFNzD8xGuKEcAx6p8BtFkovwI7fzvdk1PKMqem3rGdmwImY/vlkkl098kDr51CZpH+IW
	pDHrS9hJwg7VYrmrMBrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPr7D-0002aw-Mh; Wed, 30 Oct 2019 16:46:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPr72-0002aD-N3
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 16:46:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1iPr71-0003yZ-D1; Wed, 30 Oct 2019 17:46:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: zii-ultra: fix ARM regulator GPIO handle
Date: Wed, 30 Oct 2019 17:46:23 +0100
Message-Id: <20191030164623.1902-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_094624_749310_7AD72B2D 
X-CRM114-Status: GOOD (  12.21  )
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 patchwork-lst@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The GPIO handle is referencing the wrong GPIO, so the voltage did not
actually change as intended. The pinmux is already correct, so just
correct the GPIO number.

Fixes: 4a13b3bec3b4 (arm64: dts: imx: add Zii Ultra board support)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
Urgh, second fix for this regulator, it was really wrong in the
beginning. This time I actually measured the voltage on the board and
saw it changing as expected, so hopefully we are good now.
---
 arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
index 087b5b6ebe89..32ce14936b01 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-zii-ultra.dtsi
@@ -88,7 +88,7 @@
 		regulator-name = "0V9_ARM";
 		regulator-min-microvolt = <900000>;
 		regulator-max-microvolt = <1000000>;
-		gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
 		states = <1000000 0x1
 		           900000 0x0>;
 		regulator-always-on;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
