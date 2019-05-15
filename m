Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F24E1E81B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 08:03:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5Q9bijJ/ViwhvdFPh1fKE3NdpfR5jsnc7137HL1q+f8=; b=juN
	Yn5PkPVKnppfmCquu6TeBWYZpX4ilnIXbw+Nf/AESN7YREjpd17PYt9ZNliI+Nwci3fDfIqEKLaAd
	0r3dhwfnWRs/fXsWA6MQuG9WQi5y0iw70XRQi4lUfOGGF0+2uW1K4zdADkD03pMs1qdMZLIEjykLv
	3cv9zaIi2EOR1zU/tpUWodjmInnmP2YqRasqISVOdFEnSvT2iFlPPo/GzcLED3jQizPv2ICou16/B
	/SMzNNKU0595ql0qNby4DwNBIrNejlry0nOIjkFcUrIl9xOMb0u6P4KHVUxRV/3fumZtssiwaddMi
	8NjEkGPWY8HhBGTvjqnEGqU1pKdSymA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQn0J-0000Fc-RO; Wed, 15 May 2019 06:03:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQn0C-0000Eq-5R
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 06:02:57 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id B8162200196;
 Wed, 15 May 2019 08:02:50 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 0463B200012;
 Wed, 15 May 2019 08:02:47 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 064C24029A;
 Wed, 15 May 2019 14:02:41 +0800 (SGT)
From: Ran Wang <ran.wang_1@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [RESEND][PATCH] arm64: dts: lx2160a: Enable usb3-lpm-capable for usb3
 node
Date: Wed, 15 May 2019 14:04:34 +0800
Message-Id: <20190515060434.33581-1-ran.wang_1@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_230256_347643_30DC7890 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Ran Wang <ran.wang_1@nxp.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable USB3 HW LPM feature for lx2160a and active patch for
snps erratum A-010131. It will disable U1/U2 temperary when
initiate U3 request.

Signed-off-by: Ran Wang <ran.wang_1@nxp.com>
---
Depend on: https://lore.kernel.org/patchwork/patch/870134/

 arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
index 125a8cc..0073df3 100644
--- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
@@ -696,6 +696,8 @@
 			interrupts = <GIC_SPI 80 IRQ_TYPE_LEVEL_HIGH>;
 			dr_mode = "host";
 			snps,quirk-frame-length-adjustment = <0x20>;
+			usb3-lpm-capable;
+			snps,dis-u1u2-when-u3-quirk;
 			snps,dis_rxdet_inp3_quirk;
 			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
 			status = "disabled";
@@ -707,6 +709,8 @@
 			interrupts = <GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>;
 			dr_mode = "host";
 			snps,quirk-frame-length-adjustment = <0x20>;
+			usb3-lpm-capable;
+			snps,dis-u1u2-when-u3-quirk;
 			snps,dis_rxdet_inp3_quirk;
 			snps,incr-burst-type-adjustment = <1>, <4>, <8>, <16>;
 			status = "disabled";
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
