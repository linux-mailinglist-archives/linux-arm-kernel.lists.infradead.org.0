Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DBBF16A171
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DQ3PUGP+fJJp7hD3ijwqw+K42DA5q1qwLX8VcIxmpc=; b=VkRoH9uLQgnGo7
	cLJ7nW6zDdi3GS6ybmXLMfxwE5HyQgruBA7l/ANrqY6qY+P5px4hxtJj+OjJZ+KYJ4RzgiY8yvwsj
	n6n+zNBGI+ASA8LFQcjFtWhOrv0J/Nv+9ig2ENIaB0iJcy7QrfX1xe7ztwEKJJ0bTSAlQosP6LD3q
	ABL4EWdmSoMu3J0fw34shszQ7GicFv0xuwFJ14yBKqtHGtsEIKGOwDuTp45v5kKDhhBSMIBRsweQP
	lPPTMIFp9um9OMl/g92L6Q0qU2y3GP2c/pZSX67eRK77yczYHb/eDUX3DsAfB/hAApbo4oq8fZPph
	ZadqQoHWWTdJBhMUAv9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69oF-0005QH-4o; Mon, 24 Feb 2020 09:13:51 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jf-0001TB-1t; Mon, 24 Feb 2020 09:09:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id E69695C7;
 Mon, 24 Feb 2020 04:08:58 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=HvoZm/CXRFjaX
 9itj5UKgqnwKV1jLHEaQ0lrY8kkzVk=; b=MGDZcc/Aq+Rw4qJP/RvJzxTT9zuhi
 Vw+TSvutgz7J4MvR9+z/TbcjkJv4Zi88/MjjG+cIgUqJsI6OO5SuD6cRd72CXOQt
 JxLhFehkvSPlU3Yt2PPeUezeD8RxbQ4PMvq33YaFO0gZSq09wVLDMkWB1nol/HYU
 zKJ+4w2Txt1LtjjDqVyb3jQFYTc1pLhDQ9m90nKDOGn1+VeU5CEZEEQYc8WGeWrs
 7hP4oZ1/foDhV2db+JDIY7KrI6OJfLakLunHY9SQXPmBh3y2zqRDAd6eP4pWny2o
 sIHXd8Voz0Vo+ngIbUWFwe980Mbxc4t/nPmSzlPgrB4vfa38Dqd5m32wA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=HvoZm/CXRFjaX9itj5UKgqnwKV1jLHEaQ0lrY8kkzVk=; b=c+QKLXSW
 +lO4HtiCmhypK+Tn77ju2BGiGE7BW8mK1MP50t1b4EQ6lLOqGGTBV82mAINI5Xpa
 c9BFIe4wm1tirltt+UcyDrTn4jy2fCDSd35PXwpblyEdb6Db9fl2WK3BFnvJTyOc
 A1N9YrBqwqUynzJ2lVZ+9dBnXsg0KFQDzRf35dfQldUZDPyjbvBrF6pi6rzYIEZ2
 VLaFWgRTTe7Z6O93/VZyloD70+j1TC08nV35OS9x/KY3NqoBrnGvhX5r2+qNyS4H
 OL8rqQSdRQX5KiS2uFMc11sSQa2J73YBVw4OQf0pS44k5UL224UO9p7Xgo6pgxjJ
 W1g1YvEbQGr0Zw==
X-ME-Sender: <xms:qpJTXui9P-ESxQHWQI0LBhgMVPCVH-_TflmnM0T37CJ4nj8eXhQIeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnegovehorg
 hsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgjfhgggfes
 tdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvg
 estggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggvrdhorhhg
 necukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:qpJTXptRT016RRkMhbPQfof06Wfpic8DS3Pheb28o5RxhTaMcZ1pyw>
 <xmx:qpJTXuzKfIDjKvfhnyFsq8vH8PHwy67PHK6l2qfL59Ixa8tVZi1GGw>
 <xmx:qpJTXuYQ-EYI7Ph_T6fUEUFtwoVw5M2SOelNa6j3CuwQXXR9bbteHQ>
 <xmx:qpJTXqIMbS5I4ZHSFhuiDyYWNPNy0FtWfuosE_chf1Ddj-TKPAbvkKnsV_4>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2D4A3328005A;
 Mon, 24 Feb 2020 04:08:58 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 06/89] dt-bindings: clock: Add a binding for the RPi Firmware
 clocks
Date: Mon, 24 Feb 2020 10:06:08 +0100
Message-Id: <9166f3acdc2a64e3f3ca1cd2e283005ee2df37c9.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010907_220288_B805E714 
X-CRM114-Status: GOOD (  12.19  )
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The firmare running on the RPi VideoCore can be used to discover and
change the various clocks running in the BCM2711. Since devices will
need to use them through the DT, let's add a pretty simple binding.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: linux-clk@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml

diff --git a/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml b/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
new file mode 100644
index 000000000000..d37bc311321d
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/raspberrypi,firmware-clocks.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/raspberrypi,firmware-clocks.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: RaspberryPi Firmware Clocks Device Tree Bindings
+
+maintainers:
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  compatible:
+    const: raspberrypi,firmware-clocks
+
+  raspberrypi,firmware:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: >
+      Phandle to the mailbox node to communicate with the firmware.
+
+required:
+  - "#clock-cells"
+  - compatible
+  - raspberrypi,firmware
+
+additionalProperties: false
+
+examples:
+  - |
+    firmware_clocks: firmware-clocks {
+        compatible = "raspberrypi,firmware-clocks";
+        raspberrypi,firmware = <&firmware>;
+        #clock-cells = <1>;
+    };
+
+...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
