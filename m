Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EB412B1A2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 07:04:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dr3bX+rAxBBuMA6mK3k+O7lMtJdFb3eCVQLZs/r7FRg=; b=iwoZCWiyrIwgUezTz+3sxDc4lY
	/vQt0NhX+0gU0bT/Ygc6eyPDUsyHkTlpNGUzgVcRslFZBnsxBdi+UI8gUVKQtJiMvFOedrP/3NAJx
	lVUwLUiqxBfM+XLFV+GyHZiPICh+28o4qvf1O5Nx9ycyK+UDigt+m5z/P1WkILm0p1K2IC3XE6TA5
	rJTK1tVEChbIJb5+ajtItfBHoshhmUvUgNg2qnEvFtwBCSoHS6yg6SZ35u7XxGL1o65W+Kyh5Sojh
	wnT+ihtj1BMvWDFnE58IDmEljQaIKF0YFhFwOCIXnOEFgff5ZbcnFr3L1mn2SmADpiegW6lRhbSH1
	awYTfkkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikijL-0005Om-AI; Fri, 27 Dec 2019 06:04:11 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikiiW-0004w9-AE
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Dec 2019 06:03:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DDFE62009E1;
 Fri, 27 Dec 2019 07:03:17 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id E28C42009E4;
 Fri, 27 Dec 2019 07:03:07 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B23B7402D8;
 Fri, 27 Dec 2019 14:02:55 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 manivannan.sadhasivam@linaro.org, andrew.smirnov@gmail.com,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 aisheng.dong@nxp.com, l.stach@pengutronix.de, angus@akkea.ca,
 cosmin.stoica@nxp.com, gary.bisson@boundarydevices.com,
 leonard.crestez@nxp.com, abel.vesa@nxp.com, jun.li@nxp.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] dt-bindings: arm: imx: Add the i.MX8MP EVK board
Date: Fri, 27 Dec 2019 13:59:45 +0800
Message-Id: <1577426385-31273-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577426385-31273-1-git-send-email-Anson.Huang@nxp.com>
References: <1577426385-31273-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_220320_498175_8700A220 
X-CRM114-Status: UNSURE (   6.46  )
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

Add board binding for i.MX8MP EVK board.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 6f241a3..2d1721f 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -283,6 +283,12 @@ properties:
               - fsl,imx8mn-evk            # i.MX8MN LPDDR4 EVK Board
           - const: fsl,imx8mn
 
+      - description: i.MX8MP based Boards
+        items:
+          - enum:
+              - fsl,imx8mp-evk            # i.MX8MP EVK Board
+          - const: fsl,imx8mp
+
       - description: i.MX8MQ based Boards
         items:
           - enum:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
