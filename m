Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBCFB5AA2B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 12:31:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iANelznn9HAG3dYBkp3iQ/2YEJVR3bXG9NttV7SVCF8=; b=rcQ
	gBClzm2sXWq2FWvvQXquvzH4e8GQc2uH5Hwg+OA8EAJ3PQ0L3h9MkgRiYeaVJnot9zaj5WZpaI1TG
	hmilFRr2cYMXNnmP5BeCCEmgHI9KkbT70iw0w7chXW85DJMMJpzVrsqHJwp7TE87oVjQetmyW/I36
	dyrndTsn9pkqAVtswQ103O1262K88Bm+T0uJ+v6Bk/AT1PirwyzUslH73/BWFNnyjyyWBaaJirYGP
	pgbIBMQ7tM3Y29y+AQsBOCshhN2tQhK2OUKwbqlhNB40CKtYMXzT5Y3+ax0ceSYKLxxfG+yy1738O
	pZV5SvRaQ986F1nLjl6fPvMM0tkZZCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhAdo-0000aW-JA; Sat, 29 Jun 2019 10:31:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhAdV-0000Yz-9w
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 10:31:14 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A8C9E2005C3;
 Sat, 29 Jun 2019 12:31:09 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D54F52005BD;
 Sat, 29 Jun 2019 12:30:59 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id D551D402F6;
 Sat, 29 Jun 2019 18:30:47 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, viresh.kumar@linaro.org, ping.bai@nxp.com,
 daniel.baluta@nxp.com, l.stach@pengutronix.de, abel.vesa@nxp.com,
 andrew.smirnov@gmail.com, ccaione@baylibre.com, angus@akkea.ca,
 agx@sigxcpu.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2 1/2] arm64: dts: imx8mm: Correct OPP table according to
 latest datasheet
Date: Sat, 29 Jun 2019 18:21:56 +0800
Message-Id: <20190629102157.8026-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_033113_496247_09B36A60 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

According to latest datasheet (Rev.0.2, 04/2019) from below links,
1.8GHz is ONLY available for consumer part, so the market segment
bits for 1.8GHz opp should ONLY available for consumer part accordingly.

https://www.nxp.com/docs/en/data-sheet/IMX8MMIEC.pdf
https://www.nxp.com/docs/en/data-sheet/IMX8MMCEC.pdf

Fixes: f403a26c865b (arm64: dts: imx8mm: Add cpu speed grading and all OPPs)
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- remove the comment to avoid any confusion.
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 70de15c..f0ac027 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -134,8 +134,7 @@
 		opp-1800000000 {
 			opp-hz = /bits/ 64 <1800000000>;
 			opp-microvolt = <1000000>;
-			/* Consumer only but rely on speed grading */
-			opp-supported-hw = <0x8>, <0x7>;
+			opp-supported-hw = <0x8>, <0x3>;
 			clock-latency-ns = <150000>;
 		};
 	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
