Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D2A193C58
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 10:54:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dkKww9WuRtI30QOHnfWbm6P3T4h4BivbTFRYW4pUJ1c=; b=HDlNEdaH9upmbJ
	roxuxBqBaVRkVGaGL1uzRq1QAq11he248nDEbmP0fhuEbsmF063ZcNlE6xKs7ARkrGRs2kIpYw+sG
	Bh29kCymhADGp4iZZy54mHQri7KH/Hf/sKp0PmlKd1L7cKM4RZEJVzKb3HckuRaLhI5bytWwCmDIn
	V4yDPLB7ReDLdiilGxJM+D9HyMywvHtMdWIoK+do+bL/bMjShVzUMnoXlXzxcd3178zvDJvrEQEaP
	gPDIzVF0LOZPqdOZ1WdpXIpTPqElJYpW3r+XCnGRUw/6li+J/gJtyBbFXBMBYeEDu36vYeDoflGyQ
	LBuRQVeSoYI/Sq1srrkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHPDa-00031t-Qv; Thu, 26 Mar 2020 09:54:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHPDB-0002t3-FQ
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 09:54:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jHPD8-0002xj-2D; Thu, 26 Mar 2020 10:54:02 +0100
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jHPD7-0006Dm-OG; Thu, 26 Mar 2020 10:54:01 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Dinh Nguyen <dinguyen@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] ARM: dts: socfgpa: set bridges status to disabled
Date: Thu, 26 Mar 2020 10:53:56 +0100
Message-Id: <20200326095357.23841-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.26.0.rc2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_025405_509583_D787074D 
X-CRM114-Status: UNSURE (   9.41  )
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

The hps-to-fpga bridges can't be used, when the FPGA is not programmed.
Set the default state to disabled and leave enabling them to the board-specific
dts files.
Although this changes behavior, there are no in-tree users of the bridges, so
this won't break anything.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boot/dts/socfpga.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index 4f3993cc0227..7f0480354ee6 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -531,6 +531,7 @@ fpga_bridge0: fpga_bridge@ff400000 {
 			reg = <0xff400000 0x100000>;
 			resets = <&rst LWHPS2FPGA_RESET>;
 			clocks = <&l4_main_clk>;
+			status = "disabled";
 		};
 
 		fpga_bridge1: fpga_bridge@ff500000 {
@@ -538,6 +539,7 @@ fpga_bridge1: fpga_bridge@ff500000 {
 			reg = <0xff500000 0x10000>;
 			resets = <&rst HPS2FPGA_RESET>;
 			clocks = <&l4_main_clk>;
+			status = "disabled";
 		};
 
 		fpgamgr0: fpgamgr@ff706000 {
-- 
2.26.0.rc2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
