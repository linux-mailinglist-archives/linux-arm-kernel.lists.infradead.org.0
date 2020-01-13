Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F552138B0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FE7BNdcpkHR9Z0WGHpTfmZ2GNRiqcyYwhvXnhF7lEf0=; b=Xd1MwR6SqqdmpTNSpw2zMrkqbd
	2bzre86xpfxqMtbgz5yHMVkzZL4ouQh2yCZRlyWVyUm4bFvhp4QPuUpeeiIG2pHUwQ4U9WrtcwPMF
	hY2dSMcK+OdX5LCV8tgPG6vnO8QLxNEBh0IYT+89tirbrLIHPh35lt2/gCzTHvlQtDmGYiXb60JDi
	qZvbEsgz+hY6uu7x7Io2IjKl41yKAWeflnb8DtBKdomY4awHS7ampx9UTzr1vr5RxqE0ZUubwiVGU
	eoPCtfhROLf6y+H+9PP1bjXN3+1GOnJ6QhtVqx/fwLEp2fcdZfDfA1ZiY/GjosGh9dtl2QTy7gWJt
	BEG73dmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsQc-0002wQ-QT; Mon, 13 Jan 2020 05:38:18 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqsQ7-0002kH-6z
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:37:48 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 77050200F27;
 Mon, 13 Jan 2020 06:37:45 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 4933A20038F;
 Mon, 13 Jan 2020 06:37:32 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 6C352402C7;
 Mon, 13 Jan 2020 13:37:19 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, vkoul@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ulf.hansson@linaro.org, srinivas.kandagatla@linaro.org,
 broonie@kernel.org, manivannan.sadhasivam@linaro.org,
 andrew.smirnov@gmail.com, rjones@gateworks.com,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 aisheng.dong@nxp.com, richard.hu@technexion.com, angus@akkea.ca,
 cosmin.stoica@nxp.com, l.stach@pengutronix.de, rabeeh@solid-run.com,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, jun.li@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, linux-spi@vger.kernel.org
Subject: [PATCH V2 2/7] dt-bindings: mmc: fsl-imx-esdhc: add i.MX8MP
 compatible string
Date: Mon, 13 Jan 2020 13:33:17 +0800
Message-Id: <1578893602-14395-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_213747_394755_744B0340 
X-CRM114-Status: UNSURE (   6.37  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for imx8mp

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch
---
 Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
index 2fb466c..c93643f 100644
--- a/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
+++ b/Documentation/devicetree/bindings/mmc/fsl-imx-esdhc.txt
@@ -21,6 +21,7 @@ Required properties:
 	       "fsl,imx8mq-usdhc"
 	       "fsl,imx8mm-usdhc"
 	       "fsl,imx8mn-usdhc"
+	       "fsl,imx8mp-usdhc"
 	       "fsl,imx8qxp-usdhc"
 
 Optional properties:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
