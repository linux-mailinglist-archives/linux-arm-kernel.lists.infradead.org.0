Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC691BE904
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 22:47:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+SA02Gt8AD/iJZwcdX4rV4eJZ3/2cagKf6+H6L9REU=; b=KflD/rMyLHUuhh
	1DyN0OymqLy0jmppuyWSp1KDFv7f60XEmmrfDfNCV8psk/ThoM6NYltBONl/WMJqymIdaAWo/vxzs
	eJnolbE3UjGfE4gksv+ZI+CT/OCXk2UQlibFaz/FFktkwW69ztSh5gesdJKWr7UveI4jh5efwiozC
	IjPP8+ONmcipEHzQtc/EpG+UYG8AG2Oc9sJ51Ay8c+6GP1/+KZbM1g6TceKsU82u4caLViuQIvIZi
	KQi1mZYYtTFRM31pqvlg+VN1yGBIjyFG7nBDqIjEHOu2MmcOjZkfb0yqiP65fY8V+RdcGS7/wwE67
	slbVJL+hRB1g97XklyRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtbj-0004tY-IC; Wed, 29 Apr 2020 20:47:03 +0000
Received: from plaes.org ([188.166.43.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtbG-0004nv-W2
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:46:36 +0000
Received: from localhost (unknown [IPv6:2001:1530:1000:d397:940e:6b9e:3deb:3])
 by plaes.org (Postfix) with ESMTPSA id D789440AF0;
 Wed, 29 Apr 2020 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=plaes.org; s=mail;
 t=1588193186; bh=vMo2TanI9GatNd59nOo9RI6zU3bToC+1dQv+F9Smax0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ffDlUeufauuoxFHGEN5d8Qaun4h95SBfuOJN8ElGVTF3o8YKdyywlB63loQJbtjHN
 IFd7iDKB+op4gl/yfMubDxwnqxvKrtEdIpHlZguhjF49a3XB1n856GBtHPauRBl/ak
 w2n82M9FQK8yLCDrZfAGmjDCNy7FNNVRfIJNIY/pSQsjAmddr59JVCEET6i60zIQq5
 G0OaxCQuUVr0R4wbntqTRYjjLdML7HoTL2hKQANOI298gERNIfbIXmOTEKvgCXm/h0
 MRqyKswe28vDe2dGM1vJ3327ixfrD0CW8rmpcV9vKtjQmj1eQog5J8PL0llRtXHIJx
 GLKsU+M1cGKwQ==
From: Priit Laes <plaes@plaes.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-sunxi@googlegroups.com
Subject: [PATCH v2 4/6] dt-bindings: net: sun7i-gmac: Add syscon support
Date: Wed, 29 Apr 2020 23:46:10 +0300
Message-Id: <20200429204612.31883-5-plaes@plaes.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200429204612.31883-1-plaes@plaes.org>
References: <20200429204612.31883-1-plaes@plaes.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_134635_232871_C9C1CFBF 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
