Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61AF4D3FF2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 14:52:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Vhsg17XGmaHZcXie8OpuXnkrX1Yf+1riDOlEIeNkbk=; b=Nw2LRy3/9Om1M4
	NJ6nM8XmToaFA9FKxS1V9tWgs43zu7Wzo8xPZ+8MGuH1YKlcEy+ZxZG4xr0+ZqQqnpQteRZKmA+rK
	naOozMDEC9lRMQ1BErs/C+zyHvqcIBGjK7rWs3qduKsym/eakdTt/j/YuCPS8BgRR1Qjw0J2Y7klg
	T73YZCSlvgaw6JBvHuuvJUW4u45YyUgmstRLd3XZuokpO5oBUrWMqsiLZwN8nUF/UDoc1EnSZF1Tw
	yPhR8pDYTZdEyaggik1t73xF1WX1q8+nEfXbGXVdU4iiis2Ny+6RMNyV3D1xd/7rHox88/j+42wHe
	ic34tN7b8aphs37oeKYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIuOw-0001fZ-SX; Fri, 11 Oct 2019 12:52:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuOC-0000n6-7H
 for linux-arm-kernel@bombadil.infradead.org; Fri, 11 Oct 2019 12:51:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HYYUga3eQ+Hx61C0ZsIYhhAHwREb7B/R5yTZAd7IcQ4=; b=jtpdSRD1Ahj4ZGE9/IWXUia07K
 4VyCtlh5b0qzgszgXBr0Ri0D7aR2KIwG3eiJi1Y2nfqhsoQ0oNtCSLGZdwygqrrOdrMTP5YS7g2bt
 xHyS8vGnbbyBTOYKyeXwSwYRgm2ALmopsxc6cTlv/jqEZcDnDD0vBjb14Q/ARS4EnAAA8ylR/SnHX
 UlUJtrwbmKI1C5IwlOHeXEMoaO6WdwLyWNEC6sFiMUq5RkTapp3NRz1M08IaKZoEfiyo+UlHkG4St
 OSCKKgk4SoWt3ihvnNxbNmAPZJ8gZCtpoDfs+gub+PUeV6sJJT8jCmhZenflbtAL16bNNwyMElxEH
 9t2vWoCw==;
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIuOY-0007rA-Do
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 12:51:48 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id A01A820000A;
 Fri, 11 Oct 2019 12:50:43 +0000 (UTC)
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: Add vendor prefix for Overkiz SAS
Date: Fri, 11 Oct 2019 14:50:20 +0200
Message-Id: <20191011125022.16329-2-kamel.bouhara@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191011125022.16329-1-kamel.bouhara@bootlin.com>
References: <20191011125022.16329-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_135146_774784_AF6DBF72 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
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
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Overkiz is a smarthome solutions provider, more information on:
https://www.overkiz.com

Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 967e78c5ec0a..9b1582b3bdc3 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -705,6 +705,8 @@ patternProperties:
     description: Ortus Technology Co., Ltd.
   "^osddisplays,.*":
     description: OSD Displays
+  "^overkiz,.*":
+    description: Overkiz SAS
   "^ovti,.*":
     description: OmniVision Technologies
   "^oxsemi,.*":
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
