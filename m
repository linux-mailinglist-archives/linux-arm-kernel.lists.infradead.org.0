Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E59EB0706
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 04:57:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9mnxR3rDLtGO8Wng1xohmF7U7z4ix9oE9XE+P/CTq5U=; b=gTDCXG5+4XcQOKS1WvXpjG705X
	03MIOfTintbw7CEMyYsX7w1D+qU1zfOPcQazwl9UaJ8Kj7pQdg7/Ve4JpjYy+F7jT+gNox6WBXW6W
	7FyptUwfY1bBgzj9V4J0+cOcmCQeEs8a7SD2MzmItpehLrOdhQpj3Rxu3j6nQC/e2f29z3A6z7mW6
	9LecfOv1MnSGv0ywdhnBNmOP/asiKjfhtY1PhIcXFkvuJrme1UqO2Pp+6Wz+sWfMEL2by25rG2oyC
	wQ0eAn/v2rLe/20NQENTN7Kl0dQT6v0WYgh0S7beEdXIy69qyXA+GtqdW/52yw9hTJjCuot36c/ZC
	1vGobc2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8FIr-0004dj-F3; Thu, 12 Sep 2019 02:57:49 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8FIg-0004cC-9E
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 02:57:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 50B241A09A1;
 Thu, 12 Sep 2019 04:57:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A5A3B1A0617;
 Thu, 12 Sep 2019 04:57:29 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A3CAB402AE;
 Thu, 12 Sep 2019 10:57:23 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: imx7d: Add opp-suspend property
Date: Thu, 12 Sep 2019 10:56:32 +0800
Message-Id: <1568256992-31707-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568256992-31707-1-git-send-email-Anson.Huang@nxp.com>
References: <1568256992-31707-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_195738_465212_C41E38E2 
X-CRM114-Status: UNSURE (   7.08  )
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

Add "opp-suspend" property for i.MX7D to make sure system
suspend with max available opp.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx7d.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx7d.dtsi b/arch/arm/boot/dts/imx7d.dtsi
index 0083272..2792767 100644
--- a/arch/arm/boot/dts/imx7d.dtsi
+++ b/arch/arm/boot/dts/imx7d.dtsi
@@ -44,6 +44,7 @@
 			opp-microvolt = <1000000>;
 			clock-latency-ns = <150000>;
 			opp-supported-hw = <0xd>, <0xf>;
+			opp-suspend;
 		};
 
 		opp-996000000 {
@@ -51,6 +52,7 @@
 			opp-microvolt = <1100000>;
 			clock-latency-ns = <150000>;
 			opp-supported-hw = <0xc>, <0xf>;
+			opp-suspend;
 		};
 
 		opp-1200000000 {
@@ -58,6 +60,7 @@
 			opp-microvolt = <1225000>;
 			clock-latency-ns = <150000>;
 			opp-supported-hw = <0x8>, <0xf>;
+			opp-suspend;
 		};
 	};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
