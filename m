Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C4211F1FC2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 21:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U8q2Womqh75K0mjgYJmEVXf9lsY4WoL+iThjorcgdGo=; b=XytSCc1BtfX0c+
	38MGKytsIuJbOdyNyTpcDGZk43ZYb1yqMRPqGl++eWJepg+B+edugoF+G/io01clxF/Bxd+WtM+8F
	AT8ltPnYw1+zPhUSBnk86xW9g/wT8qMOEHDW8sdwMHRS7WKCPQibTB7/wJPuc4fuLRtJ3KOvC7eoQ
	GROLZGZUMvhQATT4QDyyt8ouWqLrXIVp5lp5+0neoKiOhuqCaFgGv4nxkKuUmVIquddzMuOLPrxux
	JwnDxAO2EWQgC34S+8JNSO6sH+X6HHowVlAXmRGfiMw5McaFzuhwRsAjTUL+VMemnPq7qz2ZmH0yn
	EKgZTXxPRMTJCEkRNm9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiNQv-0002Gg-3l; Mon, 08 Jun 2020 19:27:45 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiNQj-0002Eh-E7; Mon, 08 Jun 2020 19:27:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B0A7CAE71;
 Mon,  8 Jun 2020 19:27:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 robh@kernel.org, mathias.nyman@linux.intel.com,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 1/9] dt-bindings: reset: Add a binding for the RPi Firmware
 USB reset
Date: Mon,  8 Jun 2020 21:26:53 +0200
Message-Id: <20200608192701.18355-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200608192701.18355-1-nsaenzjulienne@suse.de>
References: <20200608192701.18355-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_122733_621936_5C2235FB 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: lorenzo.pieralisi@arm.com, tim.gover@raspberrypi.org, helgaas@kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The firmware running on the RPi VideoCore can be used to reset and
initialize the board's xHCI controller. The reset controller is passed
to the PCI device through the DT, hence this binding.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index b48ed875eb8e..8f9d0986c28f 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -39,6 +39,22 @@ properties:
       - compatible
       - "#clock-cells"
 
+  usb-reset:
+    type: object
+
+    properties:
+      compatible:
+        const: raspberrypi,firmware-usb-reset
+
+      "#clock-cells":
+        const: 0
+        description: >
+          There is only one reset line available, so no need for cell decoding.
+
+    required:
+      - compatible
+      - "#reset-cells"
+
     additionalProperties: false
 
 required:
@@ -55,5 +71,10 @@ examples:
             compatible = "raspberrypi,firmware-clocks";
             #clock-cells = <1>;
         };
+
+        usb_reset: usb-reset {
+            compatible = "raspberrypi,firmware-usb-reset";
+            #reset-cells = <0>;
+        };
     };
 ...
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
