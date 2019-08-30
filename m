Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D21CFA3F6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 23:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=owDhw7b3PXuOzw2pS7w94z8RB2xT0ePFO6RyHM0mphg=; b=PrUuYV8u6Bhtmd
	yaiFrMUXQe9EPDbgiMDMuH+8K+wp4FGNH/c4nki8kujuv43OkfBUQV26xvB+GdO1JljP4TAIO1vBS
	5/tAWixwtnKkDxV/IjeEWegsWqMPAHqZWlde/Qwf18nKbAQhWPCCVg9i6PUmpngGa0hgGgp64BDgT
	NwYNOqLhhP0tJjvxt53qDBCJXoNsyQKE0AKZuAWGE4aPKoI+TmRfOmRClSJ7HIXT1EK4479TXfB+8
	h3Qm7sZDA4XmeUN4jSoMCpVXVD58rGFlpnrJ5IzCgNDSnyuhQL9u5lHfCEYPFSrdE6vIGWrggSzM7
	tx9p0whYEaxINfPQGPBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3o6n-0004Ok-GJ; Fri, 30 Aug 2019 21:07:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o6d-0004Ob-4Y
 for linux-arm-kernel@bombadil.infradead.org; Fri, 30 Aug 2019 21:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ME5wbbe/hqhdMt9SRlffWPOQ0jJ1JCZB5iYXMXBf9DM=; b=f1wFXcYIUq5Wa7A01fPOkLOShc
 hKio2vEPyrC9dNl+x2L/49brJ+t8ehtzG3Ps7xMgqqwLkGeMqqBQkPZ7kB2xd2a+9y0oGDc05ZIYD
 ZoXIHYprFMflVyc5M9Ki776Z5tO+m2lOgcL/so3GZd92TFzfAaIgXiuuGCxzmO3uUJyRWqwD3q4ju
 Q3bXG1U4162HVC0EAMztjfGDMsnwREHNF0tDbos62dT3PXRHnqR6pPMGdB893i3pB9wK1V/IlzNhy
 HNTcI13l2IWjuxbYPZI36Q3+kF38I7MGhopl3o2ThJgajt7MNwP3wCJ3BlJSJdVOWF8/Pb7Y5uFQ3
 68TKuBqQ==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3o6s-00068L-Rh
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 21:07:08 +0000
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id C09AA100004;
 Fri, 30 Aug 2019 21:06:14 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP
 bindings
Date: Fri, 30 Aug 2019 23:06:06 +0200
Message-Id: <20190830210607.22644-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830210607.22644-1-miquel.raynal@bootlin.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_220706_929061_5A228D2F 
X-CRM114-Status: GOOD (  13.68  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Michal Simek <michal.simek@xilinx.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, alexandre@bootlin.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document the logicPD I2S FPGA block bindings in yaml.

Syntax verified with dt-doc-validate.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../bindings/sound/xlnx,logicpd-i2s.yaml      | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml

diff --git a/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
new file mode 100644
index 000000000000..cbff641af199
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/xlnx,logicpd-i2s.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Device-Tree bindings for Xilinx logicPD I2S FPGA block
+
+maintainers:
+  - Miquel Raynal <miquel.raynal@bootlin.com>
+
+description: |
+  The IP supports I2S playback/capture audio. It acts as a slave and
+  clocks should come from the codec. It only supports two channels and
+  S16_LE format.
+
+properties:
+  compatible:
+    items:
+      - const: xlnx,logicpd-i2s
+
+  reg:
+    maxItems: 1
+    description:
+      Base address and size of the IP core instance.
+
+  interrupts:
+    minItems: 1
+    maxItems: 2
+    items:
+      - description: tx interrupt
+      - description: rx interrupt
+    description:
+      Either the Tx interruption or the Rx interruption or both.
+
+  interrupt-names:
+    minItems: 1
+    maxItems: 2
+    items:
+      - const: tx
+      - const: rx
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - interrupts-controller
+
+examples:
+  - |
+    logii2s_dai: logii2s-dai@43c10000 {
+        reg = <0x43c10000 0x1000>;
+        compatible = "xlnx,logicpd-i2s-dai";
+        interrupt-parent = <&intc>;
+        interrupts = <0 29 IRQ_TYPE_LEVEL_HIGH>, <0 30 IRQ_TYPE_LEVEL_HIGH>;
+        interrupt-names = "rx", "tx";
+    };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
