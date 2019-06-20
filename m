Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EE4C4D1A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:08:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lU8cwtnWJ6Ok8KVcAw9vOu6TB6AbSDhSiHdYds1rk7U=; b=Fo+OZAxNtpq0mk
	5yHqESRTQv7opJlQVEJUAoAg8qkSjp49UmxnZxg5687dyM6qq7r6S6h/vQmPC3u/RLFk2UNY+s3xh
	eK3M2lRuXbY/MC0KB1OPX30ZhO8hXXuMjpofviv/mDwiSXIAwcAJdV5eUm3z99dBjGZ1teH3l4tcW
	3nFm3YqmNmF466pTy6oOU7lEiT54QpoRZb+nzm1Nfm/4/7BezHwqrFEwnfZV0wAkrkzBVesEcDc0g
	zwocHCCYnC5H4kPAmPc28RDST4WbGq+IaPD41ASGUN9ZVCOX6d6c2JDmqymipJ5gKz5qpfQyT+5x/
	yyUV+XM0Lnmq6c43hAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyfQ-0001fi-A9; Thu, 20 Jun 2019 15:08:00 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyf5-0001cf-GC
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:07:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 0F851CC535;
 Thu, 20 Jun 2019 17:07:37 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id x_DnkKbfHN_v; Thu, 20 Jun 2019 17:07:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 4F836CC360;
 Thu, 20 Jun 2019 17:07:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id G5jCZypA0uo0; Thu, 20 Jun 2019 17:07:27 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 602F1CC535;
 Thu, 20 Jun 2019 17:07:27 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 3/5] ARM: dts: mmp2: rename the USB PHY node
Date: Thu, 20 Jun 2019 17:07:22 +0200
Message-Id: <20190620150724.1406757-4-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150724.1406757-1-lkundrak@v3.sk>
References: <20190620150724.1406757-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080739_709226_610871A1 
X-CRM114-Status: UNSURE (   8.93  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This device is not an OTG phy, it's a regular USB HS phy. Follow the
generic node name recommendation, and rename it to "usb-phy".

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp2.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/mmp2.dtsi b/arch/arm/boot/dts/mmp2.dtsi
index e64639ce57a9..21432cb9143f 100644
--- a/arch/arm/boot/dts/mmp2.dtsi
+++ b/arch/arm/boot/dts/mmp2.dtsi
@@ -117,7 +117,7 @@
 				mrvl,intc-nr-irqs = <2>;
 			};
 
-			usb_otg_phy0: usb-otg-phy@d4207000 {
+			usb_phy0: usb-phy@d4207000 {
 				compatible = "marvell,mmp2-usb-phy";
 				reg = <0xd4207000 0x40>;
 				#phy-cells = <0>;
@@ -130,7 +130,7 @@
 				interrupts = <44>;
 				clocks = <&soc_clocks MMP2_CLK_USB>;
 				clock-names = "USBCLK";
-				phys = <&usb_otg_phy0>;
+				phys = <&usb_phy0>;
 				phy-names = "usb";
 				status = "disabled";
 			};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
