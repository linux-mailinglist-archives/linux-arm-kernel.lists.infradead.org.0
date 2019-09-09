Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 148E0AD534
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 11:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iKHsrxWK+e/UzeRsoG+a4dCG2UT00Baq8bERMKCL65s=; b=tcG
	LX9MwPp1qsJ0W+lDLKk74XXPcEiy1AwvMljedjazPmEfqbx36QR3IC4BNUAbxrpzdnfxLIeB8WaJI
	A4bnClNGPQ+IukYcmlogijZgWuOi+x3QwO7waZzZZODgvqqnHwpv8Mj+1Z5Xl16BHS4THyrykK/1Y
	ICFIJYHFwYx2dLXMI8HeR17J+l1w764WXLlxYg5iWs7ZJOft6CePB/rOgvHjox9Hi3mGYeQ/bMofo
	VhmW4ectLYvqQDkZDnVPPGGnCyUl9BjT2dyQA39YjEyrg10LE8lzynLS9DkjcfPbg3py3pJyjV2TL
	m0v1QabSSKqx6h5A/9CKLLgJAO5pk7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7FY0-0006mg-8V; Mon, 09 Sep 2019 09:01:20 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7FXo-0006lv-KT
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 09:01:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id DC9E31A026E;
 Mon,  9 Sep 2019 11:01:03 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E22451A000C;
 Mon,  9 Sep 2019 11:00:58 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 82D10402CF;
 Mon,  9 Sep 2019 17:00:52 +0800 (SGT)
From: Yinbo Zhu <yinbo.zhu@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v1] usb: dwc3: enable otg mode for dwc3 usb ip on layerscape
Date: Mon,  9 Sep 2019 17:02:44 +0800
Message-Id: <20190909090244.42543-1-yinbo.zhu@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_020108_806725_69F3C798 
X-CRM114-Status: UNSURE (   8.68  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 xiaobo.xie@nxp.com, jiafei.pan@nxp.com, Ran Wang <ran.wang_1@nxp.com>,
 yinbo.zhu@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

layerscape otg function should be supported HNP SRP and ADP protocol
accroing to rm doc, but dwc3 code not realize it and use id pin to
detect who is host or device(0 is host 1 is device) this patch is to
enable OTG mode on ls1028ardb ls1088ardb and ls1046ardb in dts

Signed-off-by: Yinbo Zhu <yinbo.zhu@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 7975519b4f56..5810d0400dbc 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -320,7 +320,7 @@
 			compatible = "fsl,ls1028a-dwc3", "snps,dwc3";
 			reg = <0x0 0x3110000 0x0 0x10000>;
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
-			dr_mode = "host";
+			dr_mode = "otg";
 			snps,dis_rxdet_inp3_quirk;
 			snps,quirk-frame-length-adjustment = <0x20>;
 			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index b0ef08b090dd..ecce6151b9b0 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -582,7 +582,7 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0x3000000 0x0 0x10000>;
 			interrupts = <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
-			dr_mode = "host";
+			dr_mode = "otg";
 			snps,quirk-frame-length-adjustment = <0x20>;
 			snps,dis_rxdet_inp3_quirk;
 			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
index dacd8cf03a7f..4b5413f7c90c 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
@@ -385,7 +385,7 @@
 			compatible = "snps,dwc3";
 			reg = <0x0 0x3110000 0x0 0x10000>;
 			interrupts = <0 81 IRQ_TYPE_LEVEL_HIGH>;
-			dr_mode = "host";
+			dr_mode = "otg";
 			snps,quirk-frame-length-adjustment = <0x20>;
 			snps,dis_rxdet_inp3_quirk;
 			status = "disabled";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
