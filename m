Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 772691B7A73
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmb9XFBeNSEU1hG2tl50NtzrqLHCNUvSz69Eix3hado=; b=jvhROiwaJOVs1U
	Z0k/2X+0tSdRGZ9UCUu+A/nzeyNcAE596qg7v7vPkrV+w1kQ9gMMNoKeTDvdl3MmF2i6oRf5u0GWo
	wn8ukT1Dz2FXWJTAqRBdaLhEHnNRtEDtl3ZkmuE62xFrLIM39WH7a7kqHk/iPesStKN2uyPGYopXk
	VQ8PC211aHQD9NQdYcATpy6/0Sd6/GYgng51zaQzEyoJuuxzUBvqBBOhR5uQsqyQApecRCncwOfP6
	vkT0LCrzAmO6xKgphvlUH1TqBAj9A8H5HqJVOxHNObhFCOWgwaaADykjiN+wiGu7qDn/wKSrQgv5v
	00PGrruJBU1k5g6OAPjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0Yg-0005i6-RR; Fri, 24 Apr 2020 15:48:06 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NA-0007xn-W2; Fri, 24 Apr 2020 15:36:15 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 9048678A;
 Fri, 24 Apr 2020 11:36:10 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=m33/GpK4Sa24j
 4S+fnmVvjFqz0KFoPPGqLfZr0rxfJ8=; b=mk/zFL1yTHH5kTKyt6HJCgSKCNKro
 NpdRpxpmwQd74E0Y1MVQ/296vDbUTlNflssuEh3ihEyK3pd2rmZ1eImFAUKqO9xx
 TORpLKMKiRHKwS+esi68lN3PQP9+9uwqss0F0WNJcne26kKQpOxaa5zg1+Q+R1mr
 XH81HOL0Qcl6teSmQSZPhas/x/Dk3PkiXIRWpEnovI1GXjkkzYU0Qz5Ag+QGfOcU
 FjPzo5AHF+0mr0Gn9+z+Mgtilsckt49E8Vm42dnRl32Q8zxaTNh6Ir1FmW0Xel00
 e1kO2t753SBvSlaMV9KNDBBzZjiFawSvFCJAhbkkC3PrnQcmZFEr4d/WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=m33/GpK4Sa24j4S+fnmVvjFqz0KFoPPGqLfZr0rxfJ8=; b=BHRiLxRL
 Up2Ju1gmxhn0dH+LnePTBirJZah1DG3U3nJmMKtbgdDOUmM4p4yJ5tHu0nqgz99z
 go/HDs1aUuSj/9xbpenJAsFnTNe+h4gqW6Lz+hpBuWXnDHxZUtOmkqxmCT8Zwx+I
 6kcnr/F4HrRISzBar3vc9XsWdUunhHNYSW2S+uWqeVnH3aotq3QVyUBcrm9S3gOp
 A9fPGK5ABTpkOQ3hibcbm/Hz+eS2HL+dIGAq3KQZwUwA8q/phvA8SCpbbWJ5PnjZ
 vRFrptovTckyyeM5ac9eHrfO7RLXRgMDWGEI0G69SbtYh3RYMhqYgEw5obggngoR
 ggxy1V7L9L25qQ==
X-ME-Sender: <xms:agejXkPuX7vVQXjhtp2Z9tFQxsxH-uJ0ie-O9UnwdRplyVq5O_R9lQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:agejXhanFMcucCZ2VAo0JLGccnUAiM09AbQ_aLqj3jxv3ODAhvij0w>
 <xmx:agejXkEfYDxf0qWlO8z244m2ErDkf3H0zvMrfapR6PSS1YbhKCA6PQ>
 <xmx:agejXr-ona9IUt2RJpik3Ldrko1mdX1JrmEIx-TY8MuR_8x7g-ENQA>
 <xmx:agejXgnitBwPv4XITGhQYnPwjCV-D3ylx8duJCs2kdmEya4oyXUtCaWegP4>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C8919328006A;
 Fri, 24 Apr 2020 11:36:09 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 34/91] dt-bindings: display: Add support for the BCM2711 HVS
Date: Fri, 24 Apr 2020 17:34:15 +0200
Message-Id: <009f6bb76ff74d1835f9f9c86a2b04947608edb5.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083613_148996_DA8E3039 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HVS found in the BCM2711 is slightly different from the previous
generations, let's add a compatible for it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml | 18 ++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
index 02410f8d6d49..bb1fa805b14e 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hvs.yaml
@@ -11,7 +11,9 @@ maintainers:
 
 properties:
   compatible:
-    const: brcm,bcm2835-hvs
+    enum:
+      - const: brcm,bcm2711-hvs
+      - const: brcm,bcm2835-hvs
 
   reg:
     maxItems: 1
@@ -19,6 +21,10 @@ properties:
   interrupts:
     maxItems: 1
 
+  clocks:
+    maxItems: 1
+    description: Core Clock
+
 required:
   - compatible
   - reg
@@ -26,6 +32,16 @@ required:
 
 additionalProperties: false
 
+if:
+  properties:
+    compatible:
+      contains:
+        const: brcm,bcm2711-hvs"
+
+then:
+  required:
+    - clocks
+
 examples:
   - |
     hvs@7e400000 {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
