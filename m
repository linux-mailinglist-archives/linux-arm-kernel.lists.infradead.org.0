Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B510138AF8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 06:38:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=33ko+/PBM70cyR5ANhD4d3n3q8kHzavzJQfQrcbp+WI=; b=q22
	izgE5QNnDlLZ9YjB7vqcJ44CRP78bBIcWcSuVLdhQFcz+aorLYqA2I7RuD/xQGT5cq8RQdjCgF0Yt
	OMbjuvx65a1SPv1saP+Nsg9w8HxBxpDkfr5QZ8/8Vf0r/Qzx+qRAwmgHgRLeraiJr3CQ7mFv8Y5HQ
	usuN2f4QyWzNRVP6+7OdrqfV5Ld288QoKS4Q4L8bixAWX14q0/J9oprAAB2iHUlHE/LcN0GxUS6xD
	FlPP90o9NbssihDjm/ZH0UIdCZzkygpER6+ZxFLnktcLPuCC9z0erF/QNaa+3/+LhzegnP6p+jO/S
	CsDy0WiKghLsJGl0sMj0UoJlixaR5wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqsQG-0002kz-Nb; Mon, 13 Jan 2020 05:37:56 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqsQ5-0002jl-Ut
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 05:37:47 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 89A1C1A01C0;
 Mon, 13 Jan 2020 06:37:43 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B8A81A01A4;
 Mon, 13 Jan 2020 06:37:30 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 246E540285;
 Mon, 13 Jan 2020 13:37:17 +0800 (SGT)
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
Subject: [PATCH V2 1/7] dt-bindings: fsl-imx-sdma: Add i.MX8MM/i.MX8MN/i.MX8MP
 compatible string
Date: Mon, 13 Jan 2020 13:33:16 +0800
Message-Id: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_213746_140404_773EC0E8 
X-CRM114-Status: UNSURE (   5.84  )
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

Add imx8mm/imx8mn/imx8mp sdma support.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch
---
 Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
index 9d8bbac..c9e9740 100644
--- a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
@@ -10,6 +10,9 @@ Required properties:
       "fsl,imx6q-sdma"
       "fsl,imx7d-sdma"
       "fsl,imx8mq-sdma"
+      "fsl,imx8mm-sdma"
+      "fsl,imx8mn-sdma"
+      "fsl,imx8mp-sdma"
   The -to variants should be preferred since they allow to determine the
   correct ROM script addresses needed for the driver to work without additional
   firmware.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
