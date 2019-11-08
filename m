Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4994AF3C8E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 01:07:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ej2qn42mDXKsGaK9U0rWu7GqYRTvDqZ/xG0UJ4x7Xcw=; b=l9sqMj8zrtOFax
	lzZvjCyxu3jKGw40/8NiPrXicbPGz55WAlOI2T73TOv1Rx+TC146ZQUb2dqRvEsJlAahs8uDbm+Mg
	9/fXcMY2q1T/vKkX74A0cgx+Ac9LgyCSMqPZFLHhGho/UmfQpk3+oonAAbG/Bu0vlKBzf1XRXLVWc
	Mx0ovMB54Z+Fg5aAD/eMaHg9y4OS3GFPwcH2AtVQxoCAFq78vWp/lw2k1lA1prNILnQiHSBsotBIP
	+yfSxY76Uh8zK8c3NRJFI9lQeGG3zcMfFyDorrW27VOUhj6kVeDEZtVbfMyLhD1CQNrZN+xB+ckDU
	JJ8OSa/Y5eZKv8oRQ7QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSrnu-000180-7d; Fri, 08 Nov 2019 00:07:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSrnj-000173-EX; Fri, 08 Nov 2019 00:06:57 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1iSrnc-00069o-To; Fri, 08 Nov 2019 01:06:48 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: kishon@ti.com
Subject: [PATCH 1/2] dt-bindings: phy: drop #clock-cells from rockchip,
 px30-dsi-dphy
Date: Fri,  8 Nov 2019 01:06:39 +0100
Message-Id: <20191108000640.8775-1-heiko.stuebner@theobroma-systems.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_160655_633378_678C297F 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: mark.rutland@arm.com, bivvy.bi@rock-chips.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Further review of the dsi components for the px30 revealed that the
phy shouldn't expose the pll as clock but instead handle settings
via phy parameters.

As the phy binding is new and not used anywhere yet, just drop them
so they don't get used.

Fixes: 3817c7961179 ("dt-bindings: phy: add yaml binding for rockchip,px30-dsi-dphy")
Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
---
Hi Kishon,

this should ideally get into 5.5 as a fix for the previous change
so that the binding doesn't accidentially get used.

Thanks
Heiko

 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml      | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index bb0da87bcd84..476c56a1dc8c 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -13,9 +13,6 @@ properties:
   "#phy-cells":
     const: 0
 
-  "#clock-cells":
-    const: 0
-
   compatible:
     enum:
       - rockchip,px30-dsi-dphy
@@ -49,7 +46,6 @@ properties:
 
 required:
   - "#phy-cells"
-  - "#clock-cells"
   - compatible
   - reg
   - clocks
@@ -66,7 +62,6 @@ examples:
         reg = <0x0 0xff2e0000 0x0 0x10000>;
         clocks = <&pmucru 13>, <&cru 12>;
         clock-names = "ref", "pclk";
-        #clock-cells = <0>;
         resets = <&cru 12>;
         reset-names = "apb";
         #phy-cells = <0>;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
