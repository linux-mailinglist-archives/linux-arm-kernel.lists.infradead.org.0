Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0421BF75D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 13:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+SA02Gt8AD/iJZwcdX4rV4eJZ3/2cagKf6+H6L9REU=; b=mwVgmHLmX6xYxm
	3fCpVP9iqWSBC3vTU3Rd5y+PIWLb8M32E3L2JHpLUPS618vrVgpZZq32lKrhA7n8z3bzyoMlU+oDF
	7vcc5DLyjMPyRQAl4acBIBFgc4Sf1NUjan8xYLo0LOF7YIVQuIOCysq/31Y5TxYGCbdpX7oINSlY5
	qo+Tpfrbr+ygtv1/b1Yhe9IEeLMJ5uHljdGGDFe3it2UsYa7FnceOyQl4jpL5fuxtypiW9hMiLNr9
	uTSAC9KnhfnTUrUPUw3y9EiiQ+npVt8ihLMelfMH89JkLo0pXLqdCLNNpBz7if12xgAFS8M48RWjx
	efGbHlaIft5Imt0m03gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU7pJ-00063x-R4; Thu, 30 Apr 2020 11:58:01 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU7oZ-0005bG-8A
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 11:57:16 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id D017B4092D;
 Thu, 30 Apr 2020 11:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588247834; bh=vMo2TanI9GatNd59nOo9RI6zU3bToC+1dQv+F9Smax0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QkPepq9jRIHzXYSDHzmANJ+RqWrN2Do7/VE3yhAEqeTTI/ddCGQF3C5E55wE/Wpk6
 ETVZ7nf+ZlG6jVnqeNNpbWJwCHZpcjzVkNXa9YEK6Aeirv272bl10ne4TgEan1X9tU
 6UZnTnma0bOmJP7Ls8Vb3PcNVMfP1uoPkHI9GROJnbK7St8rcR+sqPwSUShjQTxLeC
 eFpwtNQGmlpsoQtfbI+6x9rhEZ1k3+24xq9FxVr0rU18bdHgSlYQ32YaS13OhL1qmx
 5e8Zuz6RWT9bMmIPwXynHtWIu4Ip167IeoVqKE2Dy34d4Ff+Gjv+pK5IupeH0i5raY
 XSkvGP8QXQ4jw==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v3 4/6] dt-bindings: net: sun7i-gmac: Add syscon support
Date: Thu, 30 Apr 2020 14:57:00 +0300
Message-Id: <20200430115702.5768-5-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200430115702.5768-1-plaes@plaes.org>
References: <20200430115702.5768-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_045715_467126_8CD1F787 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Priit Laes <plaes@plaes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that driver supports syscon-based regmap access, document also the
devicetree binding.

Signed-off-by: Priit Laes <plaes@plaes.org>
---
 .../bindings/net/allwinner,sun7i-a20-gmac.yaml    | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index 703d0d886884..c41d7c598c19 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -29,17 +29,26 @@ properties:
   clocks:
     items:
       - description: GMAC main clock
+
+      # Deprecated
       - description: TX clock
 
   clock-names:
     items:
       - const: stmmaceth
+
+      # Deprecated
       - const: allwinner_gmac_tx
 
   phy-supply:
     description:
       PHY regulator
 
+  syscon:
+    $ref: /schemas/types.yaml#definitions/phandle
+    description:
+      Phandle to the device containing the GMAC clock register
+
 required:
   - compatible
   - reg
@@ -48,6 +57,7 @@ required:
   - clocks
   - clock-names
   - phy-mode
+  - syscon
 
 unevaluatedProperties: false
 
@@ -55,11 +65,12 @@ examples:
   - |
     gmac: ethernet@1c50000 {
         compatible = "allwinner,sun7i-a20-gmac";
+        syscon = <&syscon>;
         reg = <0x01c50000 0x10000>;
         interrupts = <0 85 1>;
         interrupt-names = "macirq";
-        clocks = <&ahb_gates 49>, <&gmac_tx>;
-        clock-names = "stmmaceth", "allwinner_gmac_tx";
+        clocks = <&ahb_gates 49>;
+        clock-names = "stmmaceth";
         phy-mode = "mii";
     };
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
