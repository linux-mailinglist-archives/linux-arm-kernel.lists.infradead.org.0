Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323C01955ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 12:03:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=I+RLr9cT+gSQdRzLuliX7uVAKaTyooDo3o3redKRfpU=; b=hk0
	g1Yp4gjql9WX9JHETmHJeLBcm5cRwkx66Ghoc7VVGfPcyDaimgGCayBoUTnbIFDLXVH/jV+S/6ebR
	4tpdBT9AhJD/f9Z81gM3lYIX1uBs2WIJxTJopEmHJsw5bnjrdo5Ci/vMu4JjabgAJEjlxb3nAQocZ
	wIm9cTRkjEhmoCQKrmqQ2rWJrEcsWMGLeEKaLZDDNKB+u0qOjCJCiD9HIApW9ggP7L1GXixerVT31
	7quoTciV+xevbZYjuM+Uofekbd84h2EW2DMtPPAnCIugHK9E9swoLlE3BF2f5JCWSelx41hXsTxka
	sf+7Ehq46ld6/ETXFY8rXyhc6ae18iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHmmA-00010w-Ub; Fri, 27 Mar 2020 11:03:46 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHmm1-0000zg-J1
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 11:03:39 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id ED4A31A0E3A;
 Fri, 27 Mar 2020 12:03:33 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 64D6B1A0E39;
 Fri, 27 Mar 2020 12:03:19 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 18BB440281;
 Fri, 27 Mar 2020 19:03:06 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 s.hauer@pengutronix.de, linux@roeck-us.net, gregkh@linuxfoundation.org,
 peng.fan@nxp.com, fugang.duan@nxp.com, krzk@kernel.org,
 bjorn.andersson@linaro.org, leoyang.li@nxp.com, olof@lixom.net,
 dinguyen@kernel.org, geert+renesas@glider.be,
 marcin.juszkiewicz@linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: arm: fsl-scu: Add imx8dxl pinctrl support
Date: Fri, 27 Mar 2020 18:55:57 +0800
Message-Id: <1585306559-13973-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_040337_770201_A25C8E31 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Update binding doc to support i.MX8DXL pinctrl.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
index 7f42cc3..3910d2c 100644
--- a/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
+++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
@@ -108,7 +108,8 @@ This binding uses the i.MX common pinctrl binding[3].
 Required properties:
 - compatible:		Should be one of:
 			"fsl,imx8qm-iomuxc",
-			"fsl,imx8qxp-iomuxc".
+			"fsl,imx8qxp-iomuxc",
+			"fsl,imx8dxl-iomuxc".
 
 Required properties for Pinctrl sub nodes:
 - fsl,pins:		Each entry consists of 3 integers which represents
@@ -116,7 +117,8 @@ Required properties for Pinctrl sub nodes:
 			integers <pin_id mux_mode> are specified using a
 			PIN_FUNC_ID macro, which can be found in
 			<dt-bindings/pinctrl/pads-imx8qm.h>,
-			<dt-bindings/pinctrl/pads-imx8qxp.h>.
+			<dt-bindings/pinctrl/pads-imx8qxp.h>,
+			<dt-bindings/pinctrl/pads-imx8dxl.h>.
 			The last integer CONFIG is the pad setting value like
 			pull-up on this pin.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
