Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A52AA16A206
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:22:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kGZrDV3ryBU03v70iMMYDgBPAnZjZF6exFsy+OTjmPM=; b=Wpip118E755pB7
	WAOIG+GxwU1h2E0FFdNUJxIrvCwuWoan7gdExcWborS16Oicg5znigy25C+RrvMdQ4UhZEllBCrZk
	8BT7lxCMpB1bVQs796zL120B6gg/+ElvCm+Me4RCED50/B48rXPY5/859Yku0YGNwnPoKllNUDF4a
	G/0wfp1lrRqEDkcMEtIjapuHMkaHPB5au584wfqe+Q6VJbPUwhEXt/A1Elim4tXIO+d/npaK9MWJJ
	TH6cRBqN6h8fhusfwLmROgeXCrNFrGwVS/QPmns6Qrtp0cvzYqFEqypuhul6fwxEwzsXBFRr3L0jn
	hOUTk1B8QeGsuKK8uvBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69wD-0005PX-0n; Mon, 24 Feb 2020 09:22:05 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kA-0001p0-6F; Mon, 24 Feb 2020 09:09:42 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 264EC630;
 Mon, 24 Feb 2020 04:09:36 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=w4ZWS7I/FMi9e
 iNUeFd2hb4b5Xeqa7Yfx7o20ZPZqYU=; b=JTA8tji+CZZpcxr0dtrdYDB1wPVQQ
 /VOFhn2z+By0P4mIAASVzS79grqcegrA588V9gbnrqwShRQOpgKmIKMSdl4EYXKT
 HYHWzTM4Y7+S+b/mbZeg9hfJVQnlpjmd95Ve9dmn91m/4BLUp/8gxa/AgOZmIT5S
 ojS5vH+X9CKPJyvAZbnf7UE35xDKtKZOK58gjJAFjn9FbpVuv51y4s5z/7B9Fg1/
 Wq1iZvfjteORphTjWKBia39YhJrskji8g6qpOfYAGgbJYpofYesYQ2AMOy8TQjBz
 f1ytfYlJyRrFIaJMlZ1Jm0cEJCFkVh2C3+4hDoSPkNgE1brQV1jBQp6Wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=w4ZWS7I/FMi9eiNUeFd2hb4b5Xeqa7Yfx7o20ZPZqYU=; b=amWnolIa
 kFoo2t0Qg154lAVfe5TE2HlEjFaHlVHv77KNMzbQFBFDquXFV5WNfE9kzZVqYPx6
 Zhm3S3ZQiZ26EAmtzdOfy9ji8LG0IJPtsWQSVq+8SZnnF4Y91NudksB7/caxeV+L
 AkJ2ibzCQAFYdT7Na+oYuVjt+pBrF5QZXAEGD7c1s2wpNYJ4LTCAyanLWdfgu3hT
 VXQ7aBn0tXyCldpwY4ch7xfHUYogDJ7nrH3ks7/rCf5es9nKoiM7Zvyx8ooVqsLf
 5Ls5hfYEjQNemQV58LDx+de/64am1DMIIhqV4K9kRJyRfFH7MTEO2aTfv3o3Qdhx
 RAyo9C7LdnxHYA==
X-ME-Sender: <xms:z5JTXomxGRuYd3rcagMms7q31v3p8KKh4RYmxNru9DRuJhAob61huw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvdegnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:z5JTXo5kbv8w5Cpu0yHCM4ganFoIb3yjw8a58J9un34Xi7JCgSNi-Q>
 <xmx:z5JTXpk5yP1pebAEim-iRflSjY78cC8SvmNTKK93ucYwvNRgEvUDNg>
 <xmx:z5JTXiRC5gusWDkp-vxTHknINGROZzmn34cJ98PbkL9isZzrfzahlA>
 <xmx:z5JTXnVB3Frk6-emshScC9ynE9lw3Vr9uqU9Vn1KdXzIoO7RryOiFQae03Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 66969328005E;
 Mon, 24 Feb 2020 04:09:35 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 32/89] dt-bindings: display: vc4: hdmi: Add missing
 clock-names property
Date: Mon, 24 Feb 2020 10:06:34 +0100
Message-Id: <d549097789913d64104d6a5924af5b5981beef9b.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010938_318626_78C0E35D 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

While the device tree and the driver expected a clock-names property, it
wasn't explicitly documented in the previous binding. The documented order
was wrong too, so make sure clock-names is there and in the proper order.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
index 834cc5f1c254..52b3cdac0bdf 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-hdmi.yaml
@@ -23,8 +23,13 @@ properties:
 
   clocks:
     items:
-      - description: The HDMI state machine clock
       - description: The pixel clock
+      - description: The HDMI state machine clock
+
+  clock-names:
+    items:
+      - const: pixel
+      - const: hdmi
 
   ddc:
     allOf:
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
