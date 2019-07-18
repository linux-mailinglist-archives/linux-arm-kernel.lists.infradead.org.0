Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC0466CBCF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 11:24:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CjjZdhlevu4fltdojlX04R5lNNZcZXuPCl7OS7kEBSA=; b=FaDOFUPQ6MXZmsBhGyhER0jl62
	DDvSELjBvJC1ih2eNyfnxn74JYozJiYqAUu9dG08VzMPnb6UMteKwIpzIp/YoWuR0QOYZy+8T28VX
	7TMg2Ao+l2IniTxKkRA9MUw3ijJXLmcRAO6AopfI1D+cFhalfwoYYD8sLyhxZQDOk+O8vbkgWFt9d
	6aivJ0BbxCD5LZj9MmyLEYvTMmhDyb04sluE/I9glpVlNJQzbK9TuByuxx613ILh5DXAeHACoTj63
	sa4kJezkXz1l26rnxSo3geUzJqNlQwww0Qu9UfdK5fQIXOMyN4T8WyZZHrOhrQW+AfWuDIHu6qc17
	7LdnbC/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho2ee-0000Fv-Hh; Thu, 18 Jul 2019 09:24:48 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho2eO-0000EL-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 09:24:34 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 78B741A011D;
 Thu, 18 Jul 2019 11:24:29 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 333E41A00EE;
 Thu, 18 Jul 2019 11:24:24 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6FD70402CF;
 Thu, 18 Jul 2019 17:24:17 +0800 (SGT)
From: Anson.Huang@nxp.com
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] ARM: dts: imx6sl: move GIC to right location in DT
Date: Thu, 18 Jul 2019 17:15:06 +0800
Message-Id: <20190718091508.3248-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190718091508.3248-1-Anson.Huang@nxp.com>
References: <20190718091508.3248-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_022433_143002_25CFEEC9 
X-CRM114-Status: UNSURE (   7.40  )
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

GIC is inside of SoC from architecture perspective, it should
be located inside of soc node in DT.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6sl.dtsi | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index b36fc01..3a96b55 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -77,15 +77,6 @@
 		};
 	};
 
-	intc: interrupt-controller@a01000 {
-		compatible = "arm,cortex-a9-gic";
-		#interrupt-cells = <3>;
-		interrupt-controller;
-		reg = <0x00a01000 0x1000>,
-		      <0x00a00100 0x100>;
-		interrupt-parent = <&intc>;
-	};
-
 	clocks {
 		ckil {
 			compatible = "fixed-clock";
@@ -133,6 +124,15 @@
 			clocks = <&clks IMX6SL_CLK_OCRAM>;
 		};
 
+		intc: interrupt-controller@a01000 {
+			compatible = "arm,cortex-a9-gic";
+			#interrupt-cells = <3>;
+			interrupt-controller;
+			reg = <0x00a01000 0x1000>,
+			      <0x00a00100 0x100>;
+			interrupt-parent = <&intc>;
+		};
+
 		L2: l2-cache@a02000 {
 			compatible = "arm,pl310-cache";
 			reg = <0x00a02000 0x1000>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
