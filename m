Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9A8B1235
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IG7ISHYovRPAIuXS5tPAaaYbXqP7Lr9bZ7tAmT/zqeY=; b=dOJO5XxBjH7F/zDSRR+1ZsXvyK
	VylLa8V40Groj9f1rRWB1Npge9j5j1GNkknOXz6qpagfeeGIySY6StyUdgHz1uaw1YG6k7Q4OvEjW
	PdLLocXR29XJzbR4NHZLE4FsM8xno7lLOeQle4uqwu/CUTOfmIs9geJn5IotNzGhCTUkA4mIkfJ01
	ufzTdBRJq6jvfp3SOvjuNdA2/4vcaa0FHX3aMBqZLXVE91d/Av3wZ/mObGBL7rrc7qbSntVaSSyiL
	Uw1J9IKDNkJ4a+UiB09aGjSYA+dfILGmbkCnDhyBc1WjM9zexJ3+MmeHdetWIxRCotMYCKrBrxXLk
	JkNhyrgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8R5o-0006b2-PY; Thu, 12 Sep 2019 15:33:08 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8R4u-00062c-TT
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 15:32:14 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B06551A069F;
 Thu, 12 Sep 2019 17:32:11 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id CFB0F1A0691;
 Thu, 12 Sep 2019 17:32:05 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 63C2C4031F;
 Thu, 12 Sep 2019 23:31:58 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 02/15] arm64: dts: imx8qxp: move scu pd node before scu
 clock node
Date: Thu, 12 Sep 2019 23:30:39 +0800
Message-Id: <1568302252-28066-3-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
References: <1568302252-28066-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_083213_084366_398D5BBA 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 dongas86@gmail.com, catalin.marinas@arm.com, will.deacon@arm.com,
 oliver.graute@gmail.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, fabio.estevam@nxp.com,
 Mark Rutland <mark.rutland@arm.com>, shawnguo@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SCU clock depends on SCU Power domain. So let's move scu pd node
before scu clock to make it probe earlier.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Fabio Estevam <fabio.estevam@nxp.com>
Tested-by: Oliver Graute <oliver.graute@kococonnector.com>
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
 v2: new patch
---
 arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
index d851341..ced62ee 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
@@ -152,6 +152,11 @@
 			  &lsio_mu1 1 3
 			  &lsio_mu1 3 3>;
 
+		pd: imx8qx-pd {
+			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
+			#power-domain-cells = <1>;
+		};
+
 		clk: clock-controller {
 			compatible = "fsl,imx8qxp-clk";
 			#clock-cells = <1>;
@@ -169,11 +174,6 @@
 			#size-cells = <1>;
 		};
 
-		pd: imx8qx-pd {
-			compatible = "fsl,imx8qxp-scu-pd", "fsl,scu-pd";
-			#power-domain-cells = <1>;
-		};
-
 		rtc: rtc {
 			compatible = "fsl,imx8qxp-sc-rtc";
 		};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
