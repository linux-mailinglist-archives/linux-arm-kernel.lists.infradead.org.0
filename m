Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D19AAD5C46
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 09:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DJn/qiGV5fUU4TyZHhaWf9PF6yJkWef1Gb5ThAGHYx4=; b=ndo
	1wJq59U9u53FmBgdgeLSRIzxhBvfMB7NaWUtO0TNu/mxTDJ2cdTY53MIB5u0qyg0fU1U1kpi1XOc2
	yVB/d6PGnfFgp901tRQM+mMUGyteNhDUMOTjAUDRM4CRu9Ve2fk1z+TBfYCWBRSFFo+FdAXnitwut
	kWbHtiYoraylgJJKgxcUj7yFN1iOrOLrCH6Pa0EllfKcg361dCKOotNvQLvE1ZJ7s42jTcES905hT
	g5a1fsqXyXURxL1jyUQnKgt0lJtj1liMV0fuh3NX1OdJNZQ2f9ZBNfHc8ndWCNEJJhdwEWEN7dqQp
	hA8bblTUiwhRCyGElXETg7b3qgjmnlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJuid-0003VU-Kc; Mon, 14 Oct 2019 07:24:39 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJuiT-0003V8-6P
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 07:24:30 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1C11020037F;
 Mon, 14 Oct 2019 09:24:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C26DF2000B6;
 Mon, 14 Oct 2019 09:24:18 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2892D402FF;
 Mon, 14 Oct 2019 15:24:13 +0800 (SGT)
From: Wen He <wen.he_1@nxp.com>
To: linux-devel@linux.nxdi.nxp.com, Shawn Guo <shawnguo@kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [v3] arm64: dts: ls1028a: Update the property of the DT node dpclk
Date: Mon, 14 Oct 2019 15:13:27 +0800
Message-Id: <20191014071327.28961-1-wen.he_1@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_002429_377414_5A10AC63 
X-CRM114-Status: UNSURE (   8.17  )
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
Cc: Wen He <wen.he_1@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the property #clock-cells = <1> to #clock-cells = <0> of the
dpclk, since the Display output pixel clock driver provides single
clock output.

Signed-off-by: Wen He <wen.he_1@nxp.com>
---
change in v3:
        - according the maintainer correction node name
        - update the commit message

 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 51fa8f57fdac..616b150a15aa 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -82,7 +82,7 @@
 	dpclk: clock-controller@f1f0000 {
 		compatible = "fsl,ls1028a-plldig";
 		reg = <0x0 0xf1f0000 0x0 0xffff>;
-		#clock-cells = <1>;
+		#clock-cells = <0>;
 		clocks = <&osc_27m>;
 	};
 
@@ -665,7 +665,7 @@
 		interrupts = <0 222 IRQ_TYPE_LEVEL_HIGH>,
 			     <0 223 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "DE", "SE";
-		clocks = <&dpclk 0>, <&clockgen 2 2>, <&clockgen 2 2>,
+		clocks = <&dpclk>, <&clockgen 2 2>, <&clockgen 2 2>,
 			 <&clockgen 2 2>;
 		clock-names = "pxlclk", "mclk", "aclk", "pclk";
 		arm,malidp-output-port-lines = /bits/ 8 <8 8 8>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
