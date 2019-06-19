Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDFEB4B54F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 11:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JV9ThYwlD2/UpyDuE/WOTjMU6vNFbiFtLJQPD6YxpJU=; b=idd87abplHhaxr
	Y80jk2nIDsy4+ScUHop6SodzQbRwcnZt9Tr3o/mAAxc3NYSQAZuSV9bkeJTRjd9rFQx7JRMJiufJ/
	WUKLk3teusVSSzR+WD9LdrMq/hPGyvPnpaAuee7dfsCaVgGvKZ9hz46mU5uugCkqYwOArjuREoQuX
	fAdFjGM4SpjrSFHXwehHT1IFUAa57UgiE9Fib20PFmkMrYPPvQxmNZvWuQ7HwabiUqPXvoMJYspRo
	mlmpfXWSoyPspG08LLi6V6R1jaEb72MOeKDJf+ZU8089HX754YGcyUJapbAzHBNBJqW5P2VtftdPy
	phzWK411AX++Uox5rPUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXCf-0003pN-H3; Wed, 19 Jun 2019 09:48:29 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXC0-0003bO-V5
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 09:47:50 +0000
X-Originating-IP: 90.88.23.150
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 17FEA1C0007;
 Wed, 19 Jun 2019 09:47:32 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v3 11/16] dt-bindings: net: dwmac: Deprecate the PHY reset
 properties
Date: Wed, 19 Jun 2019 11:47:20 +0200
Message-Id: <07bc6b607cf1ad88214b7ce528fadf0b1ce30784.1560937626.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
References: <27aeb33cf5b896900d5d11bd6957eda268014f0c.1560937626.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_024749_176235_C4289279 
X-CRM114-Status: GOOD (  10.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?q?Antoine=20T=C3=A9nart?= <antoine.tenart@bootlin.com>,
 netdev@vger.kernel.org, Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even though the DWMAC driver uses some driver specific properties, the PHY
core has a bunch of generic properties and can deal with them nicely.

Let's deprecate our specific properties.

Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v2:
  - Use the deprecated keyword instead of duplicating them

Changes from v1:
  - New patch
---
 Documentation/devicetree/bindings/net/snps,dwmac.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 956308806c33..0bf322408500 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -172,16 +172,19 @@ properties:
           * snps,priority, TX queue priority (Range 0x0 to 0xF)
 
   snps,reset-gpio:
+    deprecated: true
     maxItems: 1
     description:
       PHY Reset GPIO
 
   snps,reset-active-low:
+    deprecated: true
     $ref: /schemas/types.yaml#definitions/flag
     description:
       Indicates that the PHY Reset is active low
 
   snps,reset-delays-us:
+    deprecated: true
     allOf:
       - $ref: /schemas/types.yaml#definitions/uint32-array
       - minItems: 3
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
