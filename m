Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59172F5291
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:31:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WgiojXAEF7NBhoduAMwpCYtF//sl0woGd7f06bGPNig=; b=aBy47gt07jSO6Y
	ttaNWVQfv1tn5tci1QUXLfKr3KBT/+nZqUSAQwGTlC9w3JK9myaosiaqBj3S8qkfmgo34rBxhl8Wc
	K9paxmbzKIF4zKr3cPeDsk8T6bcrkP9Fq4DDdPH287qJ5xwqs02et39yZTfmpn0SI1K1N/wy4Rtai
	dJTLSw7qDZSqyxRtrjNNkhwEjGID0obQeavgL2DOhZB3oIM+f8mAwwWnaddsIROVx0tBm+c4zhAZT
	Q2U9HrvY7JzInLz/6eQ0T1aUTaUv1krf7vq1zyeIP37TzpChCcpNLAF3UxGw3bW+kmYlps1BFgXHG
	VzeVZThKNZqdOCx0tn5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT86F-0003w9-IS; Fri, 08 Nov 2019 17:31:07 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT867-0003vR-VQ
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:31:01 +0000
Received: from pendragon.bb.dnainternet.fi (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id C74E72D1;
 Fri,  8 Nov 2019 18:30:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1573234246;
 bh=sJX+WTyOOuSrR5i6yyFu+GvMFit1Vgq1lnOTyH/zj4s=;
 h=From:To:Cc:Subject:Date:From;
 b=MO1BSL5mFIdqkfTXOvxJnbMTigZuojxvQ+DsZAOm6h4UakKs4Ko/YviRo53ialZX0
 gzFBY21BmWGNmVO7MOOKJFLE1Y81KsnEEho51M2QBYqbxp9xvfgyaSYyMBZGlDZV3U
 xV+MYKi8EUonWTOA51KwPNWI3oQSzHwaEfL9r+Lw=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: zynqmp: Use decimal values for drm-clock
 properties
Date: Fri,  8 Nov 2019 19:30:32 +0200
Message-Id: <20191108173032.27832-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_093100_168478_E9D7C954 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Simek <michal.simek@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The #clock-cells and clock-accuracy properties are all expressed in
decimal, except for the drm-clock. Fix it, as decimal is easier to read
for those properties.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
index 2936e5f97f84..22b4bce6431f 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-clk.dtsi
@@ -66,9 +66,9 @@
 
 	drm_clock: drm-clock {
 		compatible = "fixed-clock";
-		#clock-cells = <0x0>;
+		#clock-cells = <0>;
 		clock-frequency = <262750000>;
-		clock-accuracy = <0x64>;
+		clock-accuracy = <100>;
 	};
 };
 
-- 
Regards,

Laurent Pinchart


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
