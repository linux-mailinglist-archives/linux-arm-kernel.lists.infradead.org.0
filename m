Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26EEC1E4902
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhPmL81Lv5hm3svIKnso3SY3t9cUiVE4YybOnxLdq0c=; b=ifp+R/SLHtQnvQ
	/wVhwJZdZlhIQbbMpLISYAM8Q0UUHn4byRmwPDcINTXZrGUDDArxHrwK79N4IyvbgVQV20yTqpEnJ
	sVoRUz93fIIvHsLinEu7AEjZneBGCWtnm2ty0ddFipJpj5kXNGEP8ojIwA6DuNRXuEO3j7UcldTPr
	Qtq6w+AfB+8OTe6ddh6zu8D7YAikW2q3ksueRDedgBSbliZrzyJIyrGxlO287ELvs3rLtgBc17kIZ
	oZSGoy9klkgSqT5xIErzwChkDXhrvqN1jXg+ooshsMUIpbhaK1LlkoeLsunrT5NQPzUjMEzyLnmbS
	91de8LYAAutx/llNnt0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyTk-00020D-Q7; Wed, 27 May 2020 16:00:29 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJ1-0005wi-0x; Wed, 27 May 2020 15:49:26 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id EF4EB581FEB;
 Wed, 27 May 2020 11:49:21 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=YRaDkEkTklAX2
 SkiwK41JMnq4nzpTHlfRqzovGYPSFo=; b=UVQmIsG5qqIhFyl2F8u+EQuH2yLVc
 M0CaCg1jByAr2IUYUJPdMQDYtY2UShHklK0h1NSFZ38l/CX/Y3BmVAZ2Pdi69ZBH
 hx4+mEjnt4RNtOFovq9PtY/MaLyDbQFrT+X+7dAb7tojH2P4QYZ+BfUFq/GClwaJ
 0x1h+hnLyXu6axUwDtxRHV8+2U0VOs86P/DBOWUsDtLNOCKY6kKwaoSTqNUGFLBs
 7hsMadn3aggoktz8E4+XCaZbbSrdsaItdBxTjdmR2Zj8LZydK/3JsxlLEOtqHJWh
 pNZC0CJ7V1rbL5CBl60Jce2ncB/zSoVlCF4iBCnbBuSf9OGxq6yCPsejA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=YRaDkEkTklAX2SkiwK41JMnq4nzpTHlfRqzovGYPSFo=; b=rG3EMx+8
 gtDgXkDJ/vrsy/p4JH/wadjeIsFKJVS1FbFyingn6AuBJXxdK5zJ4ln/atSQXMfZ
 vKPt3mHGo2COJo5Zj4aaYtkRMiVWDvcwbu73ASztIBbPdDLm28KzySW2TZ/agT/K
 oTzvP6h+X5+Ix+86ZUmFVTP/iLgeggJ96bSpHJV1i/Hbs12j/5s6LtonThj0s0cM
 JEBOqjwkEx2S/9w9FkJ1xZl60A67UyTB4URIU2gtL6rMnxodQ20jXrCJPAV4M6zc
 uFwqaY8ayIPzvstmMRDKxAp7Yw8D7vyPUEx+AzbpGxKWwZHN9NkicvLx8xkbZaoa
 BBjyGVwKZ4pUAQ==
X-ME-Sender: <xms:AYzOXgG7noB82Jh3eBUSq5F9zfaNIieIF59Igkk_A1_t_9megdl0fA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
 fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
 igihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrhhnpeevjeeijedtvefg
 fffgjeeugffguedtleetkeegteeufedtuddttdfgfffhgfeuffenucffohhmrghinhepug
 gvvhhitggvthhrvggvrdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhs
 thgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvg
 hrnhhordhtvggthh
X-ME-Proxy: <xmx:AYzOXpWheurrV9i7h4G8NsuLRLjJ83WWikap0a_brM0yBmUnZy-8Sw>
 <xmx:AYzOXqICHyZiLqQ7lE1474x3cA8y-lAInEV4zF_gkGuOzWDw9KdXBw>
 <xmx:AYzOXiEXzUXIo-1kNpxmPEdyELiGgctWNUycAlTGG3M5obLHC-Msrw>
 <xmx:AYzOXvN4DKkvINWQP0jzIGx-RpcZOfo_ZHjLmGKcMU2Lz8ariozqTA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8F51F30618B7;
 Wed, 27 May 2020 11:49:21 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 003/105] dt-bindings: clock: Add BCM2711 DVP binding
Date: Wed, 27 May 2020 17:47:33 +0200
Message-Id: <b9362d2328143cce6f22245bfe942ce4cd7badf1.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084923_210128_F354D034 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
