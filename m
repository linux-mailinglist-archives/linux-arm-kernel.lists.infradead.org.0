Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCFF8D4E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 15:38:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIinpEnvPatiFCkHwN6JIrtG+1Bczz6zJ6tFjNHfSrs=; b=Gi4ugdSXUMxQdc
	PSIuF9oDxKsYZt4ODRhMuLXd0LnPX4aMG2AayyxxAan+HtZZ9QYbSIidBefCV+YMvl690+ZyDMX1F
	TluWV1e5pWCLooqlPEU3+2iKfBWYDEhChCnruYqya+G165Y22wVjwyjQ1q6wES2GHPTpWBcmjl48U
	KLJEmHSc99EEek98e3O89TI1MBOvh702oeV89OnRvSXsxUfjdrI+VF2aQyE6d9QTQ0ZL8+DLC2qyf
	/3DGJ4hqhL+RrHNHyNIvEHOCgDMomnP/ULsS6HwtXqz42G5/FHaQ/rxYbAB2wyd1CiXjtOXyjDw60
	PmXhkiu1+9szeBADKsxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxtTl-00088b-7U; Wed, 14 Aug 2019 13:38:17 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxtTZ-00087q-Ia
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 13:38:08 +0000
Received: from sapphire.lan (unknown [192.168.100.188])
 by mx.tkos.co.il (Postfix) with ESMTP id 833CB440610;
 Wed, 14 Aug 2019 16:38:02 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v3 2/2] dt-bindings: arm: fsl: add Hummingboard Pulse
Date: Wed, 14 Aug 2019 16:37:05 +0300
Message-Id: <156d9e10449c4abe8314319f536aa744bd952538.1565789825.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <6bd3249a5f8ecd8af376145781c3f4345f198bdd.1565789825.git.baruch@tkos.co.il>
References: <6bd3249a5f8ecd8af376145781c3f4345f198bdd.1565789825.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_063805_886847_DB687688 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, Marco Felsch <m.felsch@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding documentation for the SolidRun Hummingboard Pulse board.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
v3: No change
v2: New patch suggested by Fabio
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..14ca94928677 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -219,6 +219,7 @@ properties:
           - enum:
               - fsl,imx8mq-evk            # i.MX8MQ EVK Board
               - purism,librem5-devkit     # Purism Librem5 devkit
+              - solidrun,hummingboard-pulse # SolidRun Hummingboard Pulse
           - const: fsl,imx8mq
 
       - description: i.MX8QXP based Boards
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
