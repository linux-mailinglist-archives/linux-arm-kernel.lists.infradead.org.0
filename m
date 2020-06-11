Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA8B41F64A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 11:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhPmL81Lv5hm3svIKnso3SY3t9cUiVE4YybOnxLdq0c=; b=sFEsgSVcIqw3O0
	HZyEX4aIB7i2r2e+yI3F+76tdHcPFyBwQfoM61ZNP70gBdVtGemSxxMvd2jRdI41laxlxTYGjNHMt
	IpUbMe0gHr3pmpzhc6rSy2aVbTh13KZLlMd+8XIS6SeysZSKhwHOcFS4h6J++QuSTJFixXhFYAfAo
	xVJFtwuC5SUK2cuCGMqeEdZ3csewzL/1LHvtiikbd1Em2jfqn0YuUH/2bYuG5E2HrTguY3CgaBRYN
	YWflwV5pMw1bJxvEikK2lFA/0+Ldww1NaCKGtqwJb2XbneIJe6Ncz9zKNlIa3xE4qiuvIkUt1ufie
	o0OxI5EteubOmIqrFZQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjJRI-0006Co-9R; Thu, 11 Jun 2020 09:24:00 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjJQq-00061K-7F; Thu, 11 Jun 2020 09:23:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0E13658018B;
 Thu, 11 Jun 2020 05:23:23 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 05:23:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=YRaDkEkTklAX2
 SkiwK41JMnq4nzpTHlfRqzovGYPSFo=; b=gCJgwzgReJcjeSezMp6lCOFFkSgif
 56B94ecjo4XbepYjypGnZ8w5Uz/Oiwx737se7ypowozSjvavJ9Q3V0eU/PqIIUzr
 qea+Yo4NWOW24KJPEpv69ojIgKXGaki7zQ4IzR/6LiPRrejyvmqn9nWxSfAoDl3D
 37Dyisb0rgCg5Xdp62ukxebfxOf0HkE0/PXwQwzDOdmA2/nOsHHhRMBfxkspILv6
 OGYGoYK+wQ9BVAh7odqx/vREs8I/VA3mJ2/y1uP0RV1Wi9IDy7NGms8SYh9w0KEd
 KTWcAFOrI3DOmIUFDgemmCftuB93/95j6wK4biLR0oZzxBO7cKnNNseMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=YRaDkEkTklAX2SkiwK41JMnq4nzpTHlfRqzovGYPSFo=; b=IOGmyAUC
 79QJB8dGCVwcKS4tFZZejjobok/DKNYctiVTEdXppMbAGNr1+DmK0QzfLS0qbKT3
 avazsFI+kSnNPvpqxy6buCvHqHM/BWlT64p/nAoPT7ryK8PZ8ieKg3laH4AEPndd
 4yYFkbkdmWxT5O3kfhK9PlIkt/8ideyAlJ5bcyeRTfiv7TOACRK2RTlkH4ntBkSO
 x7qv3c4zW1/NrTfQaZ8+XdbmpbvIfcQ4yYJyFswnEWv5My1TCAXfqwexvjozpgTT
 H7oDbFSCZQCxHPWRRev7JZZCKLaY+CoxwAshODYFlVYeRHz1qHRtl+soKGFUXmAf
 1MwtiFlAyYY5sg==
X-ME-Sender: <xms:CvjhXnwOfCqhl4z4rdqgopybZFTV4Q9DTxhahlekBQDIWqqwcd6zGA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehkedgudeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
 fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
 igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
 fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
 gvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhs
 thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvg
 hrnhhordhtvggthh
X-ME-Proxy: <xmx:CvjhXvSuG7YsmB1g4d_pc8E8T1p5Yio9TwKYA3bhGU1rS2zRKLHMnQ>
 <xmx:CvjhXhUOSUFsE3TfAtawomo0bXeSB7IRpshkiBySU0Z8T1DMqM_VGw>
 <xmx:CvjhXhhJAeVgt1HBjsL5oQe_3HTHAqsGjGWFRasVhKOu1nPN6cIfLg>
 <xmx:C_jhXuKvlSf07wYWwXPCMNrqdN6r3_qYKau5wxXE_xftfd8jCUBC0g>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9EBD930618C1;
 Thu, 11 Jun 2020 05:23:22 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 1/3] dt-bindings: clock: Add BCM2711 DVP binding
Date: Thu, 11 Jun 2020 11:23:15 +0200
Message-Id: <0b8f09baff1ff3c471631e6f523e2b2cd773ec47.1591867332.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
References: <cover.4c4625a8e076f3163b800b3d8986b282ee98d908.1591867332.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_022332_414162_0A33FD29 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 has a unit controlling the HDMI0 and HDMI1 clock and reset
signals. Let's add a binding for it.

Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh+dt@kernel.org>
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
