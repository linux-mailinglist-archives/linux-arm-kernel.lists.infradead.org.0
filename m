Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEE3A7EAF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:01:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8bIeSDTiDdu1rproC0rZA7ntiUw1PPWdJo9WGC/qsvM=; b=ntX
	ILBhikc/mEpcWtQjEUmmzX05l9hsCtzF905fSGbgCYoRg1n5A2iQQxSz8YtMOv5uCOVock+rcS2Y8
	Lbkq9SJk9VmleZpapYbpSCvFrHEXJMdPKf/X4xDOOXFBKSjSyw3mpcT9Og/33Ae1Yg37RjcDb0wP7
	j5ydFPeNH5cru6JSp0vwH58LDEy/B1m7BSJCuOZHapbFAELe/LssokCnWZya/hsgG/v+UV2FBmRqT
	8jPjCH8njusmKDPonR/wD3X7vv5KSVKYmHHXj2xA5/kly5MhuRkLUu2WvGERiiho5lzohmjyyf1JH
	Zi68/Hb4o+VqIOVtxw6vvgRsxX8aAOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RAY-0001Gy-Ls; Wed, 04 Sep 2019 09:01:38 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RAL-0001GO-Ux
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:01:27 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 93A33200096;
 Wed,  4 Sep 2019 11:01:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C5B312003B1;
 Wed,  4 Sep 2019 11:01:12 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 28776402F0;
 Wed,  4 Sep 2019 17:01:08 +0800 (SGT)
From: Biwen Li <biwen.li@nxp.com>
To: shawnguo@kernel.org, leoyang.li@nxp.com, robh+dt@kernel.org,
 mark.rutland@arm.com
Subject: arm64: ls1028a-qds: correct bus of rtc
Date: Wed,  4 Sep 2019 16:51:04 +0800
Message-Id: <20190904085104.44709-1-biwen.li@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_020126_136129_3680CE86 
X-CRM114-Status: UNSURE (   6.48  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Biwen Li <biwen.li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rtc is on i2c2 bus(hardware), not on i2c1 channel 3,
so correct it

Signed-off-by: Biwen Li <biwen.li@nxp.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
index de6ef39f3118..6c0540ad9c59 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
@@ -133,11 +133,6 @@
 				vcc-supply = <&sb_3v3>;
 			};
 
-			rtc@51 {
-				compatible = "nxp,pcf2129";
-				reg = <0x51>;
-			};
-
 			eeprom@56 {
 				compatible = "atmel,24c512";
 				reg = <0x56>;
@@ -166,6 +161,14 @@
 	};
 };
 
+&i2c1 {
+	status = "okay";
+	rtc@51 {
+		compatible = "nxp,pcf2129";
+		reg = <0x51>;
+	};
+};
+
 &sai1 {
 	status = "okay";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
