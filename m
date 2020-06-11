Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F111F1F625D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:32:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+qLvWP0j54mNuwHRLLcF4OzVL+WERPXeFk+3guS4pSs=; b=brhGaoZzinhnU7
	X2N9iwUafjhOmPUvf2pFCWL996fA45ZR3oYt2Mmab/Xbi9IfhUmAuyf1pUhO9e5HeVVBdeQaAEjA/
	aJm56YJyjpTCwJLcAD/rRxEC6USvrV4R+HkDMA56Y/6pWYSkaFgfpSlZsudLK4m1RZAtsIAkrollM
	1XiZmx4rDJkd923b9d6oM1gjwIeKVSfBwRxLTpNln365SPCCAKEzLeGn3emOPHBVHBXgnpKxDEEFr
	v2+tbabPouq/sEvX7cxmtfnG+M1E2QzwLdFs0gbWu19/zTGgHDsUC4HG+KhkwzaVeC4SnLjLBEPaQ
	9a/otBMSB0IdvkBWVBCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHhW-0001N6-Sv; Thu, 11 Jun 2020 07:32:38 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhK-0001LO-QC; Thu, 11 Jun 2020 07:32:28 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5E0E35800D3;
 Thu, 11 Jun 2020 03:32:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=BfQY97l1HsXaR
 odKqHBN4T2fOtec0sfUBI+DC279bkI=; b=r5DVazx4b/zznaw0bm32egqnPoCZd
 9y/X1aY6V2dMm1jZGwXky3C+4YMxH6y8PL//GSB/OnwfPXrJUYG7TP0jt8D3Yo/f
 kaP4WSBXhS4JguKMuL6vMrh7cvT6pRfJOoroVh/3OYuW0cHZYmw/2Ozv1Ua0kFox
 t2y0uRfCbdb0AiLaMggoIiOfKYKZ0+eYgKYVO8DIuXvTQKHJDOapbVpNKMmqIFo6
 H4psYFTqwF6YwuQzrHJtOc/WfCjWLDfnHkaZYhw9OVjqIK0mjSTHthxv9AZCliUC
 xoU+R3FoI03+2kJ03JK5nwrPj6G88Qn8/ztgAwzCwdyj7E5jNBvWs+P0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=BfQY97l1HsXaRodKqHBN4T2fOtec0sfUBI+DC279bkI=; b=VVw2ZRu5
 jZCOCEopZHPvFtuCw2Npoo+1FA0g7Qcu741nTjNlsMH8BSVzEwva5EDWfT+AxDVa
 EfAxMmjgfIsvOr2/221kF4pl8sJ3pgncuaHVfKZcwE0nocmLbSakA7W2I9vMvNJa
 yyjshetZw+S/aTnTRrDU0xcmdBRpHspql7lzuLbDHRBuMJF3xVTlyhAnDs4kQTNB
 ExEzRX28FD0JyxvDYhLTNSRpejnNBPUa6jsRqd4TldMeZlnJlhGc1fmzCK0m76lD
 R1p++lGLDKm6/8xGAxgEzVYhVgmzXbHbG1M/hz+vbzUc1l5hCUqwsDV92Lm0718N
 lqvQZbqjGh57jQ==
X-ME-Sender: <xms:CN7hXraqN86mguhldCkmxU-lSoSMq_OBgsW1V_GYcMZ_pBlW-CJ65w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:CN7hXqZP0UzqbkDfILyoMETjGP2LQ7JvPjGjoHILKgCd5kWzaQYPMA>
 <xmx:CN7hXt9lFhtOQB8l7dscJ_btXZLLo6a9H0r3W0j--YWYnekxGp7w3w>
 <xmx:CN7hXhomhzgUDMpaZV5O-sq3KUQnBvKD2_mqzIiqihOeZmOL6XtLPw>
 <xmx:CN7hXjgaur-FEMqyCSU_kENEY_1kROJK-qvgS4HMbJQCWw6AfGCDOQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 02C4D3280064;
 Thu, 11 Jun 2020 03:32:23 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 02/27] dt-bindings: clock: Add a binding for the RPi
 Firmware clocks
Date: Thu, 11 Jun 2020 09:31:51 +0200
Message-Id: <17ccd4479a13587c372f57420a5901cd1f673809.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003227_219466_A8B0B888 
X-CRM114-Status: UNSURE (   9.90  )
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
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The firmware running on the RPi VideoCore can be used to discover and
change the various clocks running in the BCM2711. Since devices will
need to use them through the DT, let's add a pretty simple binding.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Cc: devicetree@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Reviewed-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index cec540c052b6..b48ed875eb8e 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -22,6 +22,25 @@ properties:
       Phandle to the firmware device's Mailbox.
       (See: ../mailbox/mailbox.txt for more information)
 
+  clocks:
+    type: object
+
+    properties:
+      compatible:
+        const: raspberrypi,firmware-clocks
+
+      "#clock-cells":
+        const: 1
+        description: >
+          The argument is the ID of the clocks contained by the
+          firmware messages.
+
+    required:
+      - compatible
+      - "#clock-cells"
+
+    additionalProperties: false
+
 required:
   - compatible
   - mboxes
@@ -31,5 +50,10 @@ examples:
     firmware {
         compatible = "raspberrypi,bcm2835-firmware", "simple-bus";
         mboxes = <&mailbox>;
+
+        firmware_clocks: clocks {
+            compatible = "raspberrypi,firmware-clocks";
+            #clock-cells = <1>;
+        };
     };
 ...
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
