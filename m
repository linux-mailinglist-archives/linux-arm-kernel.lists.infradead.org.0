Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89243631E2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 09:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CUJgOog2r5FGtDtrStUf/b1kOBCfrUNRWj/LFfDTFqs=; b=PVzPX1OPuFYpiDGsrK1wgcYj3h
	nvDbcY1vnWprOlbJBEHydeI0ABkT0roFkLJeAHG87+6PvEmGYZkA4il357QArLMKsdvQqsUJfmhmB
	Gzg2qr6h9PGDFH70J9GyTIkxSVaKkOrtMGdn4FRr+IFmEEQUt3cUZNK3KK1NU1fWrmrT+nkZSguax
	H9Q9QdWGIxGGxAe3floPsxMpykFYFR6wWYZ6Gco4uMuCE6/eIujTEIvgtU77v2H6HRrl/zyeUW+c6
	iERMIX/Zr1I0wAbTr3Uhfmz42xG1KYyMj7bO0tMJJjb84xNi9v7ii3N98p2tHVHxHoQv5Xk1rpMxp
	2J7jUokA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkkU9-0004IU-PQ; Tue, 09 Jul 2019 07:24:21 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkQM-0000u9-EO
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 07:20:28 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 406A3200540;
 Tue,  9 Jul 2019 09:20:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 3C36B20054F;
 Tue,  9 Jul 2019 09:20:10 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F258B4030B;
 Tue,  9 Jul 2019 15:19:56 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, leonard.crestez@nxp.com,
 aisheng.dong@nxp.com, daniel.baluta@nxp.com, ping.bai@nxp.com,
 l.stach@pengutronix.de, abel.vesa@nxp.com, ccaione@baylibre.com,
 angus@akkea.ca, andrew.smirnov@gmail.com, agx@sigxcpu.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: imx8mq: Add opp-suspend property to OPP table
Date: Tue,  9 Jul 2019 15:10:55 +0800
Message-Id: <20190709071056.26361-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190709071056.26361-1-Anson.Huang@nxp.com>
References: <20190709071056.26361-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_002026_823935_1125F738 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

Add opp-suspend property to each OPP, the of opp core will
select the OPP HW supported and with highest rate to be
suspend opp, it will speed up the suspend/resume process.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 58f66cb..4ba6a25f 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -156,6 +156,7 @@
 			/* Industrial only */
 			opp-supported-hw = <0xf>, <0x4>;
 			clock-latency-ns = <150000>;
+			opp-suspend;
 		};
 
 		opp-1000000000 {
@@ -164,6 +165,7 @@
 			/* Consumer only */
 			opp-supported-hw = <0xe>, <0x3>;
 			clock-latency-ns = <150000>;
+			opp-suspend;
 		};
 
 		opp-1300000000 {
@@ -171,6 +173,7 @@
 			opp-microvolt = <1000000>;
 			opp-supported-hw = <0xc>, <0x4>;
 			clock-latency-ns = <150000>;
+			opp-suspend;
 		};
 
 		opp-1500000000 {
@@ -178,6 +181,7 @@
 			opp-microvolt = <1000000>;
 			opp-supported-hw = <0x8>, <0x3>;
 			clock-latency-ns = <150000>;
+			opp-suspend;
 		};
 	};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
