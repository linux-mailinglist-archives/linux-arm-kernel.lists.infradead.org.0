Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA07916A119
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:10:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zLCDUmVGZwcQMKQeUQDp78O5ApwFLF99jaKBTkadu8=; b=KO5E2B+XeYdlIb
	QfKUeG/MpTDAI1AXogF0ty5lH6VcaYpYiBvxHF9GBDKB/NSSAXn8nytfdmxg5Mzp00OvVjmqihH0n
	XCEARFI2QkDova3NebaZDRfW4v01uxDBIAQEDhqrMKke2esu5FHFC7groJ+msjogGWDmOrj+iKnjh
	aXohdHqnT5iDiHdzn21XgqRk3DjjEeLL07/9GbOkOUsujPkFSpFpXC0FXQ1ClRuFK9nbJxB+MqUUz
	/dkF2iyvFUQFRrxDHnL88g9GoTK8lT1D6lZyEpKrYnZezsysOdcdzNJHJUuNQYtoy2elcWOlGAVe1
	YHG7groHcBvK7PRfCtoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69kM-0001Ti-6E; Mon, 24 Feb 2020 09:09:50 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ja-0001Qs-4m; Mon, 24 Feb 2020 09:09:06 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 5CCBB54F;
 Mon, 24 Feb 2020 04:08:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:08:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=mPma2BR0l1tBP
 abwm95lyd5UfLZW9fXkUpmHIiAKdz8=; b=yK5Ohju6603q5LvF1eeHhCRAciomk
 a88acboqocKkpJ56P/NHvNfJ8kHkYXP4hC7WYenUQjMOvkXnrEchJAipm1JnPP3l
 hzXdyuDyRIOaQLsk1ZQh957sTlqq8f1M+jtITQVmvn3tu6QrwxzU7OspOKXvDglc
 Xaij5T7+V279+aKKitTuFkniHGZ14Kad8cf++MHTMzF922tcHkMIoLOdEIZSO25k
 q2z7eSWxAWMNR0suJRdG+E5B8q4HLDuwwKUTnoCrL9mHIY7jErY6ipN9s1ApdAjt
 dCtj3XN34jiy1QBhXcchA6eZNPyucu0mcSMOuINVy65D2lsLVmdNrtM5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=mPma2BR0l1tBPabwm95lyd5UfLZW9fXkUpmHIiAKdz8=; b=SiqE15r0
 jST1WHM2j4nwUY3KRPrRZgAtqyYqAdIhCa210Bc6inU6yieqSj+FkK0ReZ31ughB
 2L72ugc1q9PVsp3X9jSQWYyWkIMWjxAgpQMZaTHXvnghbPrs2DU2R97KqMpzYXUR
 evmKCRZRz5IuE39aRKouTH1Zooiy1Nw6z2qfUEAAKDAfLXNYaq1ZDqflCjdBhcRE
 xfZyb6wAG98Gnd71/Bd9rpfnRg0SJd3iLcu74xj66lAdLraLoelEBwlqjcuJBVkX
 LuRbWZibnGwxyv8SiDwiMagxSmlg6AXrbfV/1x/HuJqEf4uRTJgZDpYUcDVrqkae
 d1y1mSEUGbFK2w==
X-ME-Sender: <xms:pJJTXtgKVwHM_3O-v7pJ9fNUvFDN1t-SGoJPw2wtCM-EFCtmRoawVw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:pJJTXix9Y3ulNkmav60cdqJtJzRB0eDhJ25b12-2X_35iSJPswp44w>
 <xmx:pJJTXpPykQdFZzlJ0PJYOPMDqOCx5ngeyKcn8HBcE_qQHq_pgPZdvw>
 <xmx:pJJTXjXRoICUAXNIZjtmbH35ojG9eghAedET_ASqQf2o0EVy6HCxrA>
 <xmx:qJJTXiS2ml6O3QORmCFbxt_L5y5Cbk-Nwiwxpu04jQJiNKnkjwRy-FdEIjA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 71D9D328005A;
 Mon, 24 Feb 2020 04:08:52 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 02/89] dt-bindings: i2c: brcmstb: Add BCM2711 BSC/AUTO-I2C
 binding
Date: Mon, 24 Feb 2020 10:06:04 +0100
Message-Id: <9e427ff22fa40b7146b44aee6468559499deb1f1.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010902_420008_BAE2C2A4 
X-CRM114-Status: GOOD (  12.48  )
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
Cc: devicetree@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Wolfram Sang <wsa@the-dreams.de>, Kamal Dasu <kdasu.kdev@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-i2c@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The HDMI blocks in the BCM2771 have an i2c controller to retrieve the
EDID. This block is split into two parts, the BSC and the AUTO_I2C,
lying in two separate register areas.

The AUTO_I2C block has a mailbox-like interface and will take away the
BSC control from the CPU if enabled. However, the BSC is the actually
the same controller than the one supported by the brcmstb driver, and
the AUTO_I2C doesn't really bring any immediate benefit.

We can model it in the DT as a single device with two register range,
which will allow us to use or or the other in the driver without
changing anything in the DT.

Cc: Kamal Dasu <kdasu.kdev@gmail.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Wolfram Sang <wsa@the-dreams.de>
Cc: bcm-kernel-feedback-list@broadcom.com
Cc: linux-i2c@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml | 40 ++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml b/Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
index 3189d74096e8..edbca2476128 100644
--- a/Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/brcm,brcmstb-i2c.yaml
@@ -15,11 +15,21 @@ allOf:
 properties:
   compatible:
     enum:
+      - brcm,bcm2711-hdmi-i2c
       - brcm,brcmstb-i2c
       - brcm,brcmper-i2c
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: BSC register range
+      - description: Auto-I2C register range
+
+  reg-names:
+    items:
+      - const: bsc
+      - const: auto-i2c
 
   interrupts:
     maxItems: 1
@@ -45,6 +55,26 @@ required:
 
 unevaluatedProperties: false
 
+if:
+  properties:
+    compatible:
+      contains:
+        enum:
+          - brcm,bcm2711-hdmi-i2c
+
+then:
+  properties:
+    reg:
+      minItems: 2
+
+  required:
+    - reg-names
+
+else:
+  properties:
+    reg:
+      maxItems: 1
+
 examples:
   - |
       bsca: i2c@f0406200 {
@@ -56,4 +86,12 @@ examples:
           interrupt-names = "upg_bsca";
       };
 
+  - |
+      ddc0: i2c@7ef04500 {
+          compatible = "brcm,bcm2711-hdmi-i2c";
+          reg = <0x7ef04500 0x100>, <0x7ef00b00 0x300>;
+          reg-names = "bsc", "auto-i2c";
+          clock-frequency = <390000>;
+      };
+
 ...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
