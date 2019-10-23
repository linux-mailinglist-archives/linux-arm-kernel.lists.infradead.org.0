Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54333E2649
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 00:15:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/RI6zvGI5d5FkhoJ4JVbB1bHfG9ebTMLArKiBOqZwo=; b=XU06178BX78Nve
	OBpAVKVLScwTh9PgWleaIIJafQvHtEOFb9mGYILEQKO9OPjsdJ7Ph3fXNIKQTn4Yarsth/+armvBm
	aDIG6dI3HiwEaWKVRQuUjWgQ7knC+W39bUG9g2JAPs65RZ3zREkvHFKWP0IkW09pSVcO5J8EROjB2
	Q/uBBk3Jg9J6ivD+nBEURL93jvZUIaptQpWWpFGEFtfuwxqdySAbaw5im1bQsMAbjTWbHs6Pqs7o3
	lKBiTPwcEAlXYK07eRvIv8Y38MKUs3Rvr0hDcydnjhj1V3EnayzzPso+SCtNBM5I7z4WgQ5BL3AJi
	4cO8KkD6U0MUPlYAyDxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOuY-0007VY-W9; Wed, 23 Oct 2019 22:15:23 +0000
Received: from mailoutvs11.siol.net ([185.57.226.202] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOtD-00050J-0D
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 22:14:00 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id BF1F552317E;
 Thu, 24 Oct 2019 00:13:56 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id gPm0DN_dKb0U; Thu, 24 Oct 2019 00:13:56 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 7F3FF523102;
 Thu, 24 Oct 2019 00:13:56 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 387EA52336B;
 Thu, 24 Oct 2019 00:13:54 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v5 6/6] dts: arm: sun8i: h3: Enable deinterlace unit
Date: Thu, 24 Oct 2019 00:13:32 +0200
Message-Id: <20191023221332.3674175-7-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023221332.3674175-1-jernej.skrabec@siol.net>
References: <20191023221332.3674175-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_151359_270158_CFF373C8 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.202 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, hverkuil@xs4all.nl, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner H3 SoC contains deinterlace unit, which can be used in
combination with VPU unit to decode and process interlaced videos.

Add a node for it.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm/boot/dts/sun8i-h3.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-h3.dtsi b/arch/arm/boot/dts/sun8i-h3.dtsi
index e37c30e811d3..7a59c57d2114 100644
--- a/arch/arm/boot/dts/sun8i-h3.dtsi
+++ b/arch/arm/boot/dts/sun8i-h3.dtsi
@@ -120,6 +120,19 @@
 	};
 
 	soc {
+		deinterlace: deinterlace@1400000 {
+			compatible = "allwinner,sun8i-h3-deinterlace";
+			reg = <0x01400000 0x20000>;
+			clocks = <&ccu CLK_BUS_DEINTERLACE>,
+				 <&ccu CLK_DEINTERLACE>,
+				 <&ccu CLK_DRAM_DEINTERLACE>;
+			clock-names = "bus", "mod", "ram";
+			resets = <&ccu RST_BUS_DEINTERLACE>;
+			interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+			interconnects = <&mbus 9>;
+			interconnect-names = "dma-mem";
+		};
+
 		syscon: system-control@1c00000 {
 			compatible = "allwinner,sun8i-h3-system-control";
 			reg = <0x01c00000 0x1000>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
