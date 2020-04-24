Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CEA1B7AA3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LhPmL81Lv5hm3svIKnso3SY3t9cUiVE4YybOnxLdq0c=; b=Pe2c+EP71S3Sm6
	+mIdzeG6fjvIojqchBHgSDfoKM13ttxh8ZUAWDt/wjuBvyLpTZPpLVg5uAxIsmMjDLJ9dkLHE9g+S
	dR79Nbh9iuV9EiHtrLv+U8VRX/UemycO8YomZdfYPRBj3WrpAjkZH+rgjgChVNFqADILmo/endj2w
	F7NT06/xGwUzyNQIeacCNGqxkpga9/O/h0Um0/H9MgbWlyizJQ0uRO8fdDMe9Eqyp65IZ93UIMStu
	HX6FIApGcXSBPkMCuCzsHCsvyfZXdizdgEjVbN2C27gFWA7ON7XqYZB3PXxX/3rv+em1PagAXrgE3
	kFm2YS0dxGMDDbGnUBYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0co-0003cq-On; Fri, 24 Apr 2020 15:52:22 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mx-0007nQ-8n; Fri, 24 Apr 2020 15:36:01 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id A560C1338;
 Fri, 24 Apr 2020 11:35:56 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=YRaDkEkTklAX2
 SkiwK41JMnq4nzpTHlfRqzovGYPSFo=; b=LRiL0r3pGsH7NH0UsiS1ZQyTZko/P
 FagohDpiXdVd/S3MxI4t/rZ8096CFZXNvqEG2vnqhBmpNhRlaWPaaLAcmScXt7eu
 H1qaG6DQtpk4cq2q+xFjxTonQKVXFa2ho/4EZCgl5qDvMNz4+j7Aua0ROYnBdFao
 0UrckhSmgNsQzuZNfBGWB8kZRa62j25gNy5tgWQ3OSgEKZMNVvsbMk0/GHenBXhH
 0WdgnhGNzaW/9Ubr76iCIR40rCct0FBj6vS74tSXqFjbtUDFm/8QO/oiHEtWrTJI
 0GpnjVnDRm9mjs0ZWL7CR56oQiyAH3wNlH+jDbCfsTI/2YNffUF+K33LQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=YRaDkEkTklAX2SkiwK41JMnq4nzpTHlfRqzovGYPSFo=; b=XMJBP5GB
 /bJqUF20ppXOg2IXy6n4jKj4tlyRjY3IEDLvMpE1hdWSZ4xX4iqktdcRoodepNrt
 lg134xyAe3W5nGO7XGm+GmS+LpyiOfoDqPKFicz+BYT2/bXzYPeA/j18pgarg8Gw
 BaHMyBEF0g9mKXIpfkZQ1QTyyVAJE8Vfmn1XK2HJfwZgiU844wTZgpNlfdfy6UXy
 cx1vJQt+ZfYXuElvlgpSgJAJib6VyavijETudd+m3/O8DZ4msVssR/Go0mf1z7x3
 H0f20lNqQM9GC0/TtzXPwenEWY0a7jau37iYWd1IEnd0zwtXLcHPPIvxc9R3phlb
 SFbSS2MBzwuS1g==
X-ME-Sender: <xms:XAejXr5W7-kI-k-ntRqkQLPWi0dF-vX5gRY1FK9a3Z7N7__mSB-tsQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenog
 evohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffojghf
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:XAejXhUWqZFRNR_5fZsp3aMzApxekHQOufLuZwxSzTrEP3nqQVPRJg>
 <xmx:XAejXiO1FOGTNcMczhzIZV_CIsdRnPyH4ztsR_9xlat1qHJrDJmNGg>
 <xmx:XAejXohhZB0zr4r85_LevF2B5lIibXBh2gUnjgBYyH68CRfv_g-PbA>
 <xmx:XAejXqLUGxn8iB0XqtXvIkK9k1qYa_qVCRJkfrBOxF7xp7wNnnJBpczcW48>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D40B5328005D;
 Fri, 24 Apr 2020 11:35:55 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 24/91] dt-bindings: clock: Add BCM2711 DVP binding
Date: Fri, 24 Apr 2020 17:34:05 +0200
Message-Id: <29a820e57e208b5ef8d498b121908604bb82245d.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083559_384031_D20A5C41 
X-CRM114-Status: UNSURE (   9.15  )
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
