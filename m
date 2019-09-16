Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A973B384D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:38:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZfYvGpgNDU58iFeToOPzERR7h+DvwOd1BFRFXASoCPo=; b=kMc+dwgda1VuanwWKSMfH+Fc2k
	1zLUUrlLZxeRgXF6Qtkm7K9AgiAcYaKByyGimQd38cXRYNW42HYdyXRNSi3n2DR1/Bt85ieyLsU2s
	yo3D1oimeXQlXAHHZXwtUxqdWbvUPH35TIdEuCDBWMuFQb3tazGh5DrGuPY2ZTprxmis/RIQW5zSF
	P+xmApAmtdBWmPwDalfoi9Tgv2D6P6VbkDxC4KiIjGyiz6JE3QVH3xAvEnB/v+uNuOQ/uYU1osltp
	F86TjfNYodNubUfJbXKWktWbYIhmu1Gb7HPRb0VMRFeYQRR9oISo8kscp08CezZ+idkJYWdvvYGiI
	PWcPzc3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oOG-0006Am-Pp; Mon, 16 Sep 2019 10:37:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oMt-0005O6-Rt
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:36:29 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B18D200022;
 Mon, 16 Sep 2019 12:36:23 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1777D20058B;
 Mon, 16 Sep 2019 12:36:19 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 88257402E6;
 Mon, 16 Sep 2019 18:36:13 +0800 (SGT)
From: Biwen Li <biwen.li@nxp.com>
To: leoyang.li@nxp.com, shawnguo@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: [3/3] Documentation: dt: binding: fsl: Add 'fsl,rcpm-scfg' property
Date: Mon, 16 Sep 2019 18:25:56 +0800
Message-Id: <20190916102556.16655-3-biwen.li@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190916102556.16655-1-biwen.li@nxp.com>
References: <20190916102556.16655-1-biwen.li@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_033628_232075_A40E2671 
X-CRM114-Status: UNSURE (   7.82  )
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
Cc: devicetree@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Biwen Li <biwen.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'fsl,rcpm-scfg' property is used to fix a bug
that FlexTimer cannot wakeup system in deep sleep on LS1021A

Signed-off-by: Biwen Li <biwen.li@nxp.com>
---
 .../devicetree/bindings/soc/fsl/rcpm.txt          | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
index 5a33619d881d..31e22f092b51 100644
--- a/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
+++ b/Documentation/devicetree/bindings/soc/fsl/rcpm.txt
@@ -34,6 +34,12 @@ Chassis Version		Example Chips
 Optional properties:
  - little-endian : RCPM register block is Little Endian. Without it RCPM
    will be Big Endian (default case).
+ - fsl,rcpm-scfg : Must add the property for SoC LS1021A,
+   Must include n + 1 entries (n = #fsl,rcpm-wakeup-cells, such as:
+   #fsl,rcpm-wakeup-cells equal to 2, then must include 2 + 1 entries).
+   The first entry must be a link to the SCFG device node.
+   The non-first entry must be offset of registers of SCFG.
+   (Currently only support SoC LS1021A)
 
 Example:
 The RCPM node for T4240:
@@ -43,6 +49,15 @@ The RCPM node for T4240:
 		#fsl,rcpm-wakeup-cells = <2>;
 	};
 
+The RCPM node for LS1021A:
+	rcpm: rcpm@1ee2140 {
+		compatible = "fsl,ls1021a-rcpm", "fsl,qoriq-rcpm-2.1+";
+		reg = <0x0 0x1ee2140 0x0 0x8>;
+		#fsl,rcpm-wakeup-cells = <2>;
+		fsl,rcpm-scfg = <&scfg 0x0 0x51c>; /* SCFG_SPARECR8 */
+	};
+
+
 * Freescale RCPM Wakeup Source Device Tree Bindings
 -------------------------------------------
 Required fsl,rcpm-wakeup property should be added to a device node if the device
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
