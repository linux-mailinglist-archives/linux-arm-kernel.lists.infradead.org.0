Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A106B1F439A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnmeynFn3dcLqu7I9wLoLAliTLhp7J9EmEFtJh+rHEg=; b=XR3hIQxZ/8r0QC
	zGGGrM5RWBocuD8xgOlRJpJEDaQKYBMo0zwVGuIG0Jsqt+0HQL1anJi3I24ZYSj4N7v3v0GpockJD
	QHbPe5dN40E9yM7HWXCncKrH1hYKJZSND98/kQyVcHIFhokFH27XO0Mm8suq48un75GTdeMNIQXlc
	IAWn8SMCd4H/ffDwojwZUQDUrEapvxeAREl1LxNZAV4V8W32D1n/tjeB6uFNtWW2ICRB61ZXA1gYr
	5/wzJyw3NmLp58e24Y7UXQ23hwnSIR7AjcM/VgdOkCZsXSpNv6md0gBlsF9B/0wfd6UBbX8I5TUeW
	nVkzZFAEa3qnnJY1RAiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiSb-00059T-RL; Tue, 09 Jun 2020 17:54:53 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiOC-0001Tg-E2; Tue, 09 Jun 2020 17:50:24 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3552BB183;
 Tue,  9 Jun 2020 17:50:21 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: f.fainelli@gmail.com, gregkh@linuxfoundation.org, wahrenst@gmx.net,
 p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 1/9] dt-bindings: reset: Add a binding for the RPi Firmware
 reset controller
Date: Tue,  9 Jun 2020 19:49:54 +0200
Message-Id: <20200609175003.19793-2-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200609175003.19793-1-nsaenzjulienne@suse.de>
References: <20200609175003.19793-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_105020_732082_397F6B67 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, tim.gover@raspberrypi.org,
 mathias.nyman@linux.intel.com, linux-pci@vger.kernel.org,
 linux-usb@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com, helgaas@kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The firmware running on the RPi VideoCore can be used to reset and
initialize HW controlled by the firmware.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

---

Changes since v1:
 - Correct cells binding as per Florian's comment
 - Change compatible string to be more generic

 .../arm/bcm/raspberrypi,bcm2835-firmware.yaml | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
index b48ed875eb8e..23a885af3a28 100644
--- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
@@ -39,6 +39,22 @@ properties:
       - compatible
       - "#clock-cells"
 
+  reset:
+    type: object
+
+    properties:
+      compatible:
+        const: raspberrypi,firmware-reset
+
+      "#reset-cells":
+        const: 1
+        description: >
+          The argument is the ID of the firmware reset line to affect.
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
+        reset: reset {
+            compatible = "raspberrypi,firmware-reset";
+            #reset-cells = <1>;
+        };
     };
 ...
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
