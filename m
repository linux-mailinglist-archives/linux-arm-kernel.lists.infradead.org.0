Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4DB5C6D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 03:53:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xGFRRbHSegVl2WNMIVmo3Ez8I0gP8DixHlml8SErMeM=; b=AZg
	ReZY3Yg9Pqmci7u6EQa8cAUXGA+wxMwdfZXvVw41JAJ8X5WvQHdK/t9eVrofntkGa+yDHcHsJGR+A
	GO1F/zKlJfDScwogqBYasyRO/LWheJQKKrBWqG8SqaCqjSd6gqaWiytFiqMNKD5VpoJBUmAdQMYS2
	2UvFeJqLkqpx2jrkRloisDSeoRoD1d1UF9GxKFljRLGefM3u7JrU1f6oH2DyV9JOAsPDYEhhRA+MX
	ClKXduJn4jL3AGqUSGjnjt+CxKBS0cPOo02Qllbx59OPK9p6NXz4NgiA9nnHke/LrozqmlPCS+Z3W
	jJH9T7EWQQ+OPzIDI8OF+QraZ7pOmcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi7z7-0001Rj-3u; Tue, 02 Jul 2019 01:53:29 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi7yt-0001Qr-Dv
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 01:53:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E56EE1A01F8;
 Tue,  2 Jul 2019 03:53:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D3DF71A0B0B;
 Tue,  2 Jul 2019 03:53:02 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CFDB9402D9;
 Tue,  2 Jul 2019 09:52:50 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, viresh.kumar@linaro.org, ping.bai@nxp.com,
 daniel.baluta@nxp.com, l.stach@pengutronix.de, abel.vesa@nxp.com,
 andrew.smirnov@gmail.com, angus@akkea.ca, ccaione@baylibre.com,
 agx@sigxcpu.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: imx8mq: Add gpio-ranges property
Date: Tue,  2 Jul 2019 09:43:59 +0800
Message-Id: <20190702014400.33554-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_185315_610257_C46F1BA8 
X-CRM114-Status: UNSURE (   5.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add "gpio-ranges" property to establish connections between GPIOs
and PINs on i.MX8MQ pinctrl driver.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 477c523..3187428 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -287,6 +287,7 @@
 				#gpio-cells = <2>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 10 30>;
 			};
 
 			gpio2: gpio@30210000 {
@@ -299,6 +300,7 @@
 				#gpio-cells = <2>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 40 21>;
 			};
 
 			gpio3: gpio@30220000 {
@@ -311,6 +313,7 @@
 				#gpio-cells = <2>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 61 26>;
 			};
 
 			gpio4: gpio@30230000 {
@@ -323,6 +326,7 @@
 				#gpio-cells = <2>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 87 32>;
 			};
 
 			gpio5: gpio@30240000 {
@@ -335,6 +339,7 @@
 				#gpio-cells = <2>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
+				gpio-ranges = <&iomuxc 0 119 30>;
 			};
 
 			tmu: tmu@30260000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
