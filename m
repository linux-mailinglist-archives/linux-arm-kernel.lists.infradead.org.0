Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D411E5BED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 11:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s3+9QvgCsQZTmODBlctfJD20UTxkXkvy1ojYfHkBoBE=; b=kcFoDy6xppgVPk
	H5Ik4bhEQqJDdN88THM/apCdjv7i5Oxj8UWuAfosciODPYaSeOv31wZ//ao8goaAiA2lOSvEMLxlo
	XureHAo/fOLugLpYFVDWQ5cGWDV64u9HXM18UGuCW5C6P0kFvQzSLPEnEywijG1Wiq1llzgSOAU/3
	9BW73xSiXS6AkmnGpldC5RNDtoTwxTHByWC7EASuZRUQlEcC9+aVNpUsBKOIex9GmrXJ5l7IPLkhc
	ajVha83LU9TNZQQL1GyU85I9gvmv2VWOkPVCwStvJW2JEVT/tShMc9Iokmwqn8t54rwjsIdB9ZRhb
	hNhaZctT0hrFFGYjl4WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeEtK-0000jZ-Ez; Thu, 28 May 2020 09:31:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeEsr-0000Zd-3P
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 09:31:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jeEsl-0004mp-30; Thu, 28 May 2020 11:31:23 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1jeEsk-0007wV-AY; Thu, 28 May 2020 11:31:22 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/3] dt-bindings: Add vendor prefix for IoTmaxx GmbH
Date: Thu, 28 May 2020 11:31:14 +0200
Message-Id: <20200528093115.28268-2-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200528093115.28268-1-s.trumtrar@pengutronix.de>
References: <20200528093115.28268-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: str@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_023129_141203_ABC17552 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IoTmaxx GmbH is a developer of IoT solutions. The website is
https://www.iotmaxx.com/

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index d3891386d671..4ab5bac4bc9d 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -481,6 +481,8 @@ patternProperties:
     description: Inverse Path
   "^iom,.*":
     description: Iomega Corporation
+  "^iotmaxx,.*":
+    description: IoTmaxx GmbH
   "^isee,.*":
     description: ISEE 2007 S.L.
   "^isil,.*":
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
