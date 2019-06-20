Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790254D1AF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:09:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ATGm6GGRghqMwzRESgRcyo6xSj8pgpWsgZpkVoJkHsI=; b=i7EtBuVCe6aVye
	swS7O+8baCYiS4LUIyO3O4s/gs0tPJcPn/QQbjpPzA5qTYowJqO7TQ404dImZvtgSEI6ovPLarAhQ
	lhLmTRz6kRVe6Tso26NZWZkWNmE+QGkQik6T+MnX6gIcMmvY/FSnGP8S5en04QB83FfzJA1JAOKkf
	sFgDOeyqoUHBK8bUcQYWQ9g96On067sMZzcNSnaq79CSyaFRICoEhQ33Q3WGbMQhOt4E1nXM1LsNf
	P7PR069+qLBFltj56y/YoESgiscbKHkl5a5AqTJ7HVZnki6+tRMVrwKecDfCpX9kjeEKRZaYyEcs0
	qAo1JlzEZF0MgiYc3dDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdygM-0002PD-3p; Thu, 20 Jun 2019 15:08:58 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyf6-0001d3-K6
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:07:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 48FD2CC54A;
 Thu, 20 Jun 2019 17:07:39 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id T8NdU3UxI22t; Thu, 20 Jun 2019 17:07:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id DB6B1CC415;
 Thu, 20 Jun 2019 17:07:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id AcQmaE4KGXvF; Thu, 20 Jun 2019 17:07:27 +0200 (CEST)
Received: from belphegor.brq.redhat.com (nat-pool-brq-t.redhat.com
 [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 2EE29CC526;
 Thu, 20 Jun 2019 17:07:27 +0200 (CEST)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 2/5] ARM: dts: mmp2: fix the SPI nodes
Date: Thu, 20 Jun 2019 17:07:21 +0200
Message-Id: <20190620150724.1406757-3-lkundrak@v3.sk>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150724.1406757-1-lkundrak@v3.sk>
References: <20190620150724.1406757-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080740_826255_5F48B5A1 
X-CRM114-Status: UNSURE (   8.32  )
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

The SPI bus has a single address cell and not size cells.

Also, dtc thinks the SPI nodes are preferrably called "spi" and it is
right to think so.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp2.dtsi | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/mmp2.dtsi b/arch/arm/boot/dts/mmp2.dtsi
index 50b6c38b39cc..e64639ce57a9 100644
--- a/arch/arm/boot/dts/mmp2.dtsi
+++ b/arch/arm/boot/dts/mmp2.dtsi
@@ -346,35 +346,43 @@
 				status = "disabled";
 			};
 
-			ssp1: ssp@d4035000 {
+			ssp1: spi@d4035000 {
 				compatible = "marvell,mmp2-ssp";
 				reg = <0xd4035000 0x1000>;
 				clocks = <&soc_clocks MMP2_CLK_SSP0>;
 				interrupts = <0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				status = "disabled";
 			};
 
-			ssp2: ssp@d4036000 {
+			ssp2: spi@d4036000 {
 				compatible = "marvell,mmp2-ssp";
 				reg = <0xd4036000 0x1000>;
 				clocks = <&soc_clocks MMP2_CLK_SSP1>;
 				interrupts = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				status = "disabled";
 			};
 
-			ssp3: ssp@d4037000 {
+			ssp3: spi@d4037000 {
 				compatible = "marvell,mmp2-ssp";
 				reg = <0xd4037000 0x1000>;
 				clocks = <&soc_clocks MMP2_CLK_SSP2>;
 				interrupts = <20>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				status = "disabled";
 			};
 
-			ssp4: ssp@d4039000 {
+			ssp4: spi@d4039000 {
 				compatible = "marvell,mmp2-ssp";
 				reg = <0xd4039000 0x1000>;
 				clocks = <&soc_clocks MMP2_CLK_SSP3>;
 				interrupts = <21>;
+				#address-cells = <1>;
+				#size-cells = <0>;
 				status = "disabled";
 			};
 		};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
