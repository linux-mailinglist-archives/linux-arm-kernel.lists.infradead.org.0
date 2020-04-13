Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 694A61A630B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 08:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPHbnLtPDBBjbIQHWjjPKR/u0xh2+Ws140fzcx29FZY=; b=t0e9KSoAVb5TwL
	AmL85SZqCXdEibE6mR7j8JsaV27nGFGgVQ+RaxOLNht72MN2YmyZAgr7VRG728XzZ0yUeMzWYwOB/
	Q4tSKjkL5cxoEV5tJVSChEKcy5P4qqc0RispZdrBdpHwfrw1bY/FLfI4FHu9/x3F353Qkljsab2YI
	6i2xgV/nn9lMibC6uson46wBOgperfEm7VorXqJn7rxTqZwjdCkgiTn2TsqpUrE8HQt1gMr22HQgm
	B+CBc1Pxo23AdVZIMbO/inYtdiGKXJpRZ+TJ09ZArexD3tNRpbgPHjPDSm++tXN/NnYnabHi//x8w
	UtkSx1txWfHD4R9KL1FQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNsXL-0003Pv-UF; Mon, 13 Apr 2020 06:25:39 +0000
Received: from mailoutvs37.siol.net ([185.57.226.228] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNsWd-0000az-H8
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 06:24:57 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 5C5E1522E4D;
 Mon, 13 Apr 2020 08:24:53 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 8Np3a-S-7_aZ; Mon, 13 Apr 2020 08:24:53 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 1BC9C522E48;
 Mon, 13 Apr 2020 08:24:53 +0200 (CEST)
Received: from localhost.localdomain (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id D8CA3522E4D;
 Mon, 13 Apr 2020 08:24:50 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 2/3] arm64: dts: allwinner: h6: orangepi: Disable OTG mode
Date: Mon, 13 Apr 2020 08:24:32 +0200
Message-Id: <20200413062433.1145043-3-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200413062433.1145043-1-jernej.skrabec@siol.net>
References: <20200413062433.1145043-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200412_232455_718535_FE914A6C 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.228 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

As can be seen from OrangePi Lite 2 and One Plus schematics, VBUS pin on
USB OTG port is directly connected to 5 V power supply. This mean that
OTG port can safely operate only in host mode, even though these two
boards have ID pin connected.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
index f1be3dd558ca..ebc120a9232f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi.dtsi
@@ -251,7 +251,12 @@ &uart0 {
 };
 
 &usb2otg {
-	dr_mode = "otg";
+	/*
+	 * OrangePi Lite 2 and One Plus, where this DT is used, don't
+	 * have a controllable VBUS even though they do have an ID pin.
+	 * Using it as anything but a USB host is unsafe.
+	 */
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
