Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB70616A1E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:21:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K/z3ty8JpKC2t+KAQKlgW8KQGhgd9/YJ83KE2NhnUDc=; b=W7bIbL/waDOHgk
	uLzjXpim1q6o+gXQZynFKALZHfVXPVq3RCNw3zC92SFXmTXi36STPyrZnxk08o4CeNdUvK9yVhtne
	iMtgQvntIj7lfVECy9Shfz4gG2V9Ws4sL2P2i/JnNcXQ3cQEQ2Ja7YCw+Ltu/TeoDihZOTLlUenCr
	gN5RZZ5sRYoJw9ukba5ddC0lqBFzKT6Kv4aMgkhs0+zuZ11umv0916wdvv+4x4trgPI5QHppUhnrP
	bLGom1h0+iig9abWwfXtP6vtLpZBeuaVe5C30U/8uYlIk2CxEDAGFBUFpLcCklBtbRQHjFJYU5FIg
	Lkgx/bdmWgWcj25LF3hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69v8-0004Lb-Em; Mon, 24 Feb 2020 09:20:58 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69k7-0001na-UD; Mon, 24 Feb 2020 09:09:39 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 42B9162B;
 Mon, 24 Feb 2020 04:09:33 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:34 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=CbU6f6ZrrpRWQ
 5qiZhenLgFrNL32RR24Q5O8MBsSZvU=; b=W76T6gjD+sG5x7IbekSRVdLvYieY4
 0tMN/Qq1LQA8/98MKWgeqgmo+9AIL7z8LUwDt5cQBrzcA6KymtAMYeuV2Ufk3+jV
 OO455hMj7nz1fbRpTPUDRlAm0IuWuKAQ0Wi8TqcSk4FtXqjehlrt/3/uOWDh1c0z
 Y0O+m8ULJaojxWUiNRK4gdMRLh7m9G/iP2fOg+DAaZ1Pofy9gYqPHMmY3ZzftXuu
 eXiXqnWmH3oOU27yO7tBpd3O2szkIh3301nwnZ5AbzUQDZ1HtZZwxFzT173WjjY3
 yv4t99V8s0Rp2YgaDoE7JUzUQBbNCf6KlhlSQiK88iugXBLd44MPsY3Kg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=CbU6f6ZrrpRWQ5qiZhenLgFrNL32RR24Q5O8MBsSZvU=; b=RKzivMKy
 IQkX23piS/y2KwMA99ZW0TY+5SRbg4EinBkDfV+PiQXYEr0h9+zds8OQeHCmAIxP
 wQczdVgEGfBQ6Bqnts4qCLlJLYHmut8X80HdctAI6JskCQwXKvytevID6tzbNHbx
 cGxHJlcpQkZBGfH2UZXyw2CpbVCDDUmFNI9ydIYZguV5h6S/2BWeAYYpNvM4SRdL
 pOvR8W0hitW1A4DVREBSpD11cBwHuEGz64fBEcYh+C2hFXctcGerL7MhIhfOqIId
 hKH3IHeh+dr9mzyB01qS/e3dP6hxbdLuqz+2N9AxeUjsEeRwlYIOpeORcweakXCo
 WbnMb8CGWJEmOA==
X-ME-Sender: <xms:zJJTXgYA3KOAgVDKHdets8P1tOwZ0fTR-xPvmXsWcszeDVUNcjiO1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvdegnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:zJJTXiXEHLsjUhY8NMC6KWUNJq2o0A3JEeyhIxxbIRKE4pBJxlDAmw>
 <xmx:zJJTXgAUhB0WVorQIzALKP5zIVVyIZZeDWaIHpTMfoMnseuXUxS1Jg>
 <xmx:zJJTXhy86s8Ketq3N1zcox58fE7uiG28WP2OeyE5KR5NzpMbyyc8FQ>
 <xmx:zJJTXntbuq4xgKgCV9oiEPx5LN3QcXLPEsVThr0AZdszfRIuGq6HD5giWH8>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8691B3280066;
 Mon, 24 Feb 2020 04:09:32 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 30/89] dt-bindings: display: vc4: dpi: Add missing clock-names
 property
Date: Mon, 24 Feb 2020 10:06:32 +0100
Message-Id: <042c8f676d3d863b55092bb58c1f15db95370782.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010936_428458_A3171F0C 
X-CRM114-Status: UNSURE (   9.10  )
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
wasn't explicitly documented in the previous binding. Make sure it is now.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
index 288494b70e82..58213c564e03 100644
--- a/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
+++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-dpi.yaml
@@ -21,6 +21,11 @@ properties:
       - description: The core clock the unit runs on
       - description: The pixel clock that feeds the pixelvalve
 
+  clock-names:
+    items:
+      - const: core
+      - const: pixel
+
   port:
     type: object
     description: >
@@ -31,6 +36,7 @@ required:
   - compatible
   - reg
   - clocks
+  - clock-names
   - port
 
 additionalProperties: false
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
