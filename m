Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E52193C56
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 10:54:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pJ4JlVgwt1Wg3ndB8esIh46NRgvYCDKfVX/BXD2g+k=; b=LvwyU+20dnJI3b
	bvyPfDcMynE9PiU19s7UQSJn2cA7zpSDHxCY+SeHa0WoDOz3Ub14O6UrlnK7eUimXTx08kXqruHKh
	Qweyq16EY3sdkQalHwrSjqXJOjd5HApYsz97fyZOe8lmEiEFcN9O+4Gl297FCqzMYpCnjDjRDqf9O
	WdPRrZyAPu1x41T4x8qXTYrqrJbnh2yJWueZsg35FrC5eOhn+FK8wiucsDR3LzTovA0GLgrc8lzIL
	D9pjRTwdP++3aIWV9BeYB5oy8Thqr5kUGW/rdIZX0k1BjEP+wHRabJwVs2xEmcMFx5Vf9puFPBmk2
	7JnnnIi18HYhsDrlqvtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPDL-0002tx-Kl; Thu, 26 Mar 2020 09:54:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPDB-0002t4-FK
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 09:54:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jHPD8-0002xk-2D; Thu, 26 Mar 2020 10:54:02 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jHPD7-0006Do-Ow; Thu, 26 Mar 2020 10:54:01 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Dinh Nguyen <dinguyen@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 2/2] ARM: dts: socfpga: Add fpga2hps and fpga2sdram bridges
Date: Thu, 26 Mar 2020 10:53:57 +0100
Message-Id: <20200326095357.23841-2-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200326095357.23841-1-s.trumtrar@pengutronix.de>
References: <20200326095357.23841-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_025405_509677_4FB1057F 
X-CRM114-Status: UNSURE (   8.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the remaining two bridges on the Cyclone-V SoCFPGA SoCs.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/socfpga.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index 7f0480354ee6..c2b54af417a2 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -542,6 +542,20 @@ fpga_bridge1: fpga_bridge@ff500000 {
 			status = "disabled";
 		};
 
+		fpga_bridge2: fpga-bridge@ff600000 {
+			compatible = "altr,socfpga-fpga2hps-bridge";
+			reg = <0xff600000 0x100000>;
+			resets = <&rst FPGA2HPS_RESET>;
+			clocks = <&l4_main_clk>;
+			status = "disabled";
+		};
+
+		fpga_bridge3: fpga-bridge@ffc25080 {
+			compatible = "altr,socfpga-fpga2sdram-bridge";
+			reg = <0xffc25080 0x4>;
+			status = "disabled";
+		};
+
 		fpgamgr0: fpgamgr@ff706000 {
 			compatible = "altr,socfpga-fpga-mgr";
 			reg = <0xff706000 0x1000
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
