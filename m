Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D3F9A23B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 23:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MShnJ+P/Zu6Ws6pXAoQaOSJ4rhQ/c7UX64YrSobv9gk=; b=GirMWXHT2RLojI
	gJ2mPKs6e8L//muUV8NB/S7r2CKI0MSXW2kwXKb+b2cH1Dmv7zxQQmRvMTTMOzjHkR9Q4IUGYWO0m
	UChqd5ClSq/kqc9MojBDF47zmzyDYX3DLf7u2/4S4xBQcUpFtn+FUP7VeqTBbdunfx1eh3RIncYAI
	bPoDaRIm8Eij403dOoHwhHts32K+gqxwEykvPe0ljqBlcENMDLima2S8GICRABtRoZYa8PMt9ve8Z
	YNfqQ3MOhs+vJKMabnPAaHwH8NjpZOvrPtpNO/lmJzULCIE0WQwxpBlYZnhxWBXqK9IzFqjVEOU5f
	J8TtlJoZMHr/kJRvH53A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ujn-0006Q4-EA; Thu, 22 Aug 2019 21:35:19 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0ujd-0006Hb-5e
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 21:35:10 +0000
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
 [90.65.161.137])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id CE5BBFF809;
 Thu, 22 Aug 2019 21:35:05 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH] ARM: dts: pbab01: correct rtc vendor
Date: Thu, 22 Aug 2019 23:35:03 +0200
Message-Id: <20190822213503.14726-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_143509_367456_7672E883 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rtc8564 is made by Epson but is similar to the NXP pcf8563. Use the
correct vendor name.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi b/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
index 82802f8ce7a0..d434868e870a 100644
--- a/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-phytec-pbab01.dtsi
@@ -128,7 +128,7 @@
 	};
 
 	rtc@51 {
-		compatible = "nxp,rtc8564";
+		compatible = "epson,rtc8564";
 		reg = <0x51>;
 	};
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
