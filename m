Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FF716A1D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:20:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+GyEuhHfyUNGaFEi55PRIs7Z5DAlmjK55+npDQ3FsGk=; b=LkOSnoUz6o6tl4
	k2n7A0kh87bqt8pmTHFVBeZV060Fcx8lAG2XfbVd8Y7x2uDvY8Zin8DTbe4x+fI+aG0EN/6ixzeyD
	mnTwQXnhvNweKS2LxkaQqi7gltKwgGewOB1SXp0OtoVhLDAeD/WZb3vS6XzyoLd19jW9NsNkfl3Nc
	Fc2m/FOGMHv42qJuj3af+t0MyX2slagAF8l8j3L0vF9tZsDtn0RydHRDLSz/HtxJ8Du4YXKi21bMi
	dBpZIYbidZUhE0mfioaTncLBDONG8QiGPJVQwjum/j8vpcrQEpSK9VpfeRkuGaVCiquaT7Kx2c+Iu
	/+i3qhFyfZPa9+1PPIAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69us-000445-JE; Mon, 24 Feb 2020 09:20:42 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69k2-0001jr-Al; Mon, 24 Feb 2020 09:09:34 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 7C04460A;
 Mon, 24 Feb 2020 04:09:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=aLIZ5LnWvXHZ2
 KPr943ijW9nE1rxXfu6BQqu+bNMhqk=; b=MyOYQRN1ivxuli0O9VwvFX3toOraW
 BorRGB/DXvZG/kcuG0lrqyoFgtQS4cPVf77IoOsae5xGJXD/WdpPh4zM/EkZLCPv
 Bf65zttBer3S6zAGebATwP12MqB8/HQ+0utrgv4m4cU9x9u+WY2za0dc1+oAtS6Q
 X2LpQ1Su3+DOqluQGEtNX920o3txbK8i/OpqKRk9LN2PZC50BUgnjr/CSxgAOkWt
 fycnjtx9xRMEm+/jm8qn4DbQB2IiKoc+9SFx/Nd7LcTgYqcbK5DT63xB312OMG1f
 yi0fBCUDcokxmhOH7M/lCJGXH4eoK6GwNfsTdDKmkBRcjMp6QzwxP7ElQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=aLIZ5LnWvXHZ2KPr943ijW9nE1rxXfu6BQqu+bNMhqk=; b=vK82XeD2
 tN01lrRlqIYhjq844eDqHAoL/JvZ9liUkLgJBErytm7MKu32XAaS5hFQ+qoK65B2
 ujFpomVr9QMMTvWXOcCP9rTpjhuHfxQYR1tSQJhvpGkTt0Qg/iJmJ9DRkFc8U1et
 sJukVoOdUPiO8JlJdqvib3fPeeL1dDelfn+naAQucYU5xZF+0B03xNP0MwstOhhM
 Pxd6BQ+AyvwpazBNFmxvM7or8fwWtL58Zs+iV6BuCHhE764cz7wMdmXb77Np1Xj8
 fi6iDfYwwqDbvkXPi2Hlhxg9Jzsfkt7AfV0wP9pCH+HcoiJ7LCD4ZdanePiqusG6
 367VsekrTsomeA==
X-ME-Sender: <xms:x5JTXgmUWlcZ69BwNFEZgLYWwDYDt-IjpbVRc6JGALgFXMB_HfDO4A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegovehorg
 hsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvg
 estggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhg
 necukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:x5JTXmYng-63hYNbwXJAGr9mlbVybD8XA_DQnsjOPJ4toCH-n6wbYA>
 <xmx:x5JTXgXIKD6vpGtE91-f3iwOH5TN_iy8ivH5_809foA_FYMD3m2Z-A>
 <xmx:x5JTXmD6nIeYMWNwLxdmwkuN-nWDfJu09Hoq70FoPVEdtjJJUUDVGA>
 <xmx:x5JTXlsqEma54XpKLlZYasWlHw2lKy6hn6y7IvZ2Zuo2rXrsoP5FtWdh2lM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B8BE8328005A;
 Mon, 24 Feb 2020 04:09:26 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 26/89] dt-bindings: clock: Add BCM2711 DVP binding
Date: Mon, 24 Feb 2020 10:06:28 +0100
Message-Id: <106e8a589a79eb70668b03d7160994c6a09a92c4.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010930_899533_7CFB4137 
X-CRM114-Status: GOOD (  10.24  )
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
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 has a unit controlling the HDMI0 and HDMI1 clock and reset
signals. Let's add a binding for it.

Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml | 47 +++++++-
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml

diff --git a/Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml b/Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml
new file mode 100644
index 000000000000..08543ecbe35b
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/brcm,bcm2711-dvp.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/brcm,bcm2711-dvp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM2711 HDMI DVP Device Tree Bindings
+
+maintainers:
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    const: brcm,brcm2711-dvp
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    dvp: clock@7ef00000 {
+        compatible = "brcm,brcm2711-dvp";
+        reg = <0x7ef00000 0x10>;
+        clocks = <&clk_108MHz>;
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
+
+...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
