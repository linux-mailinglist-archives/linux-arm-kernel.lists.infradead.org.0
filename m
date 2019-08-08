Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7260B86849
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 19:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OU8fbtlDDKAbWLc7l19XtsL2+YjxGfu8xUDx9gscsIE=; b=QvO4J9iKcTyR7V
	T6LANd6VWdXeEvH0pBQhT0+0CaDToDxUdDJyM4JhgVwX58DkfD/sEggTWx4rUUMJtzRLsK0kZuRMv
	lEGppVBGkjgHsWVZWPfo7ovB012v85txNicW9H5T++O53wRt8+UK1RH+Vu8x6kaGYK7IbMQ+ODHnb
	Ql8+Dek9/QcLE68GcU0y+i1qHxzfWi1myfAH+Q7o7uFqiLbEguyfRMDLCNCwcEP3UBLacqOcUfgkY
	cxH+Jw5KgfnvRVgcl6W1HxTXgtyr+gORZN4PkDn7lgzrNcQKdJfO52m7feBByQmtQ74TbX39QSV84
	FeMTE8q/KrzLQvnLA8vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvmXW-0004mJ-Lo; Thu, 08 Aug 2019 17:49:26 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvmXM-0004lf-E0
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 17:49:18 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.3])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 9A10744065C;
 Thu,  8 Aug 2019 20:49:08 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, NXP Linux Team <linux-imx@nxp.com>
Subject: [PATCH v2 2/2] dt-bindings: arm: fsl: add Hummingboard Pulse
Date: Thu,  8 Aug 2019 20:48:33 +0300
Message-Id: <d7237dcbb9812f11ba9df39c473753c7d5b87c4d.1565286513.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <48ba74b2dca636f8c0ad1287017193b7eb91a5d1.1565286513.git.baruch@tkos.co.il>
References: <48ba74b2dca636f8c0ad1287017193b7eb91a5d1.1565286513.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_104916_781726_15111E7A 
X-CRM114-Status: UNSURE (   9.18  )
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
Cc: Baruch Siach <baruch@tkos.co.il>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding documentation for the SolidRun Hummingboard Pulse board.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
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
