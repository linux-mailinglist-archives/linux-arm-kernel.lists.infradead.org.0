Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B271A157274
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=meMNnp/lyy8wbSCuELQozhJ6D4xTnCPJe/4evYQngyo=; b=DdJg5D2XH+0uE5
	bBijdD+3sveodXb6r4sg9+k3+CPselWaynxcEKE/mfaZuf2vuzR5qLb3rhFrh+PSeRxjoJj4CpV9S
	z/xLyHiX+w6p0lhHimoRmHIhz+E0xiXFk6m+LQXlS4o59Nygw0zPIyFClwyqVPg4ItsTizhnRL+n2
	04RjdTp7c5q/MSHbm6xqZKnkaMJKWBa2gpvK60ztO5nNlQt/mxPBf3RxB5/agl8fbi9GjzY3GuFir
	0BRJI0t79sDIdwKOsyNLyFGT4DXArYAIK8uIEDVB8mDGjpQfFYG0nZ4TcpsfLgSJgJ2QYUWxwz1DJ
	/nZuRvYXkPuGguarPhog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15vy-0005MA-15; Mon, 10 Feb 2020 10:04:54 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15vT-0005DY-4O
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:04:24 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id A96051E20;
 Mon, 10 Feb 2020 05:04:21 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 10 Feb 2020 05:04:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=lLlJQuK4aZhWh
 uAwBdMqfq93dW9cBbZAvLLBJQZvB1Q=; b=H3wPUD4lcCIEgRq/x9z1tD/7O+wqB
 YgC6hXGVib7O3pbNxyzqB40AzMRig2lZGfPdR/9KcXAP0Q8t6J7U24TRQlXMo1Gr
 asA3mG1WuJlPSTQvyTt4BkS5N899mX+MDCDndIcxVcDKkiwjqouzPeL10OJRPXbA
 K2CFolNQP2jup+Ysi0R7DW+h7AgY2MH2sDvBdIQ/QvNxe61RjsEgPS0rvzevyhyR
 scqJmYpUAVmFvIjyDub1y6Yr+9i/5J/CjdsZUzhdIzjejY1dco/h2wzKNwnvaP6n
 burRCMNGiaaAE5y+0UiaoRTBQMHSLAexdXB2aCXe8SmgOCQejHdH75h+Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=lLlJQuK4aZhWhuAwBdMqfq93dW9cBbZAvLLBJQZvB1Q=; b=UtfR4gIr
 tYEsT05bW7y0vVsFyCbGTLX6K8dtm14FkztpT0wQrb5NLMWRVbZ0vTe29TRsE9by
 1FHFZqOeuRjFCD8iNjWbtDfdSoU4/Ww2ES5ZG59ja/F3TSKvS2L2lQuuV+CXNbzU
 hF3eYZVwCcN6rv/Kaj4OwpaY+YbS2OWlgXuAxcZFizcNyre0Yov4z968iYPXIfFq
 RxKVdndDB5pz7b5Ac8p65hNqDshx7XYNFtaCZW41HI+rs/VmCl/c+v+/1YCqCerq
 hHa0y3A8J/0b0bi0/5ffbP4K/ca6BckItvWnr794vkEBAFunlpXjYFQIqkBo1SNj
 Es8kf+y9A5/Zfw==
X-ME-Sender: <xms:pSpBXvZLLeU-Jznqb9k4AL4-EGeBTCYarn5pMGXyRH3LX9LNF6H7Jw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedugddutdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:pSpBXiMwBekUsw6WKqYCLdCfm-0RoC7azGlPASFzW0GS9Uu4ZT2xUQ>
 <xmx:pSpBXrBQBu0kxhNfUI09yUqtbY6goKLD_pJvvH18pjWQIf0Ay4VRtg>
 <xmx:pSpBXpLWSA5mTu4ZUDgRKKPBMrycC_lKs0mWWBHyLfwdA9PjhmUPfg>
 <xmx:pSpBXsGVMmO8yX0Ib1egwjY8vJGRxrK8gJrxgoJCR3zYaVat0DNchg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 49DC13060701;
 Mon, 10 Feb 2020 05:04:21 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, sakari.ailus@linux.intel.com
Subject: [PATCH 2/2] dt-bindings: media: csi: Fix clocks description
Date: Mon, 10 Feb 2020 11:04:17 +0100
Message-Id: <20200210100417.78583-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200210100417.78583-1-maxime@cerno.tech>
References: <20200210100417.78583-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_020423_324863_6F444A9E 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mchehab+huawei@kernel.org, devicetree@vger.kernel.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 1de243b07666 ("media: dt-bindings: media: sun4i-csi: Add compatible
for CSI1 on A10/A20") introduced support for the CSI1 controller on A10 and
A20 that unlike CSI0 doesn't have an ISP and therefore only have two
clocks, the bus and module clocks.

The clocks and clock-names properties have thus been modified to allow
either two or tree clocks. However, the current list has the ISP clock at
the second position, which means the bindings expects a list of either
bus and isp, or bus, isp and mod. The initial intent of the patch was
obviously to have bus and mod in the former case.

Let's fix the binding so that it validates properly.

Fixes: 1de243b07666 ("media: dt-bindings: media: sun4i-csi: Add compatible for CSI1 on A10/A20")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../media/allwinner,sun4i-a10-csi.yaml        | 30 +++++++++++--------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index afde17d9dab1..8453ee340b9f 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -33,20 +33,26 @@ properties:
     maxItems: 1
 
   clocks:
-    minItems: 2
-    maxItems: 3
-    items:
-      - description: The CSI interface clock
-      - description: The CSI ISP clock
-      - description: The CSI DRAM clock
+    oneOf:
+      - items:
+        - description: The CSI interface clock
+        - description: The CSI DRAM clock
+
+      - items:
+        - description: The CSI interface clock
+        - description: The CSI ISP clock
+        - description: The CSI DRAM clock
 
   clock-names:
-    minItems: 2
-    maxItems: 3
-    items:
-      - const: bus
-      - const: isp
-      - const: ram
+    oneOf:
+      - items:
+        - const: bus
+        - const: ram
+
+      - items:
+        - const: bus
+        - const: isp
+        - const: ram
 
   resets:
     maxItems: 1
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
