Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C1359206
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 05:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5Qtt66/j1xf5yZrzitaVcFBk78p3htssEHYwXX8EDjE=; b=dqwPCwvVVV1QH0JfTsHVvILT6f
	fTtuzgqCULB9/EtRKZH0VBO+JaZ/YmK+10Pt2BsxH2OZRor8gAtfKzJwId0JEmBotqmy2LGpBwZoK
	ncsJ8RCfkEuEFdh6GkSHxaPNALFyyarqpFSR4eBTyyzlZFGyueMKmCkqhmZ1xj9WRuVL5SC8TNos3
	CYsf1k1nbH5R3Kel4L8h3Zb5wYAJq7X4og9gnp5eolOTFx/DTVy3Wr/RIe4WGKbRjWlhhoNr9aceV
	2DvBgKAHLBJlWSGga56Mlla8KofTE/iTbxa6BbDlzjOKdiUtA/ZNo4Bs9BVKkqzB23GTaQLe66R3C
	dWU/j81w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hghha-00011s-KJ; Fri, 28 Jun 2019 03:37:30 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hghhK-00010k-Ix
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 03:37:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 410E91A0DAE;
 Fri, 28 Jun 2019 05:37:13 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 7156B1A1043;
 Fri, 28 Jun 2019 05:37:03 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 71D67402B3;
 Fri, 28 Jun 2019 11:36:51 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 leonard.crestez@nxp.com, viresh.kumar@linaro.org, ping.bai@nxp.com,
 daniel.baluta@nxp.com, l.stach@pengutronix.de, abel.vesa@nxp.com,
 andrew.smirnov@gmail.com, ccaione@baylibre.com, angus@akkea.ca,
 agx@sigxcpu.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: imx8mm: Correct OPP table according to latest
 datasheet
Date: Fri, 28 Jun 2019 11:28:00 +0800
Message-Id: <20190628032800.8428-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190628032800.8428-1-Anson.Huang@nxp.com>
References: <20190628032800.8428-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_203714_768772_E1F2FE71 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index c38813d..ab0d135 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -135,7 +135,7 @@
 			opp-hz = /bits/ 64 <1800000000>;
 			opp-microvolt = <1000000>;
 			/* Consumer only but rely on speed grading */
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
