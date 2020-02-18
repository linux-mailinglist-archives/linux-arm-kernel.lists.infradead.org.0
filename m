Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF91162C51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 18:16:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hm03a5e66r7URpaQuPJPl8mHYXqhK1Vo9YsyugClHfo=; b=FpeFOfkzZ1Bkqa
	G7mrC3zC+hW+Szp2pFISRAibHPKyC0rshgSJCdQvnMgTpZqoq3ma582gShHHNhHsOtOTnHhxqvEMf
	zfufuLnMY+8sZONX/pvxlFx214ElYOf8r3Z9AToWYdvcLbpsD/Iqxh906YHZ019K3i0Dtx9BlOwUg
	2xWiz3x4V3/m77rmYD79n/WoGIzGwyRI5uL+J/Jdxrs9NMUtz5cLG4aaD4U2iovndHwSpPonvte6t
	eBm27ba/x44dn7UA7OR60GfOk0NPOQgWspnuhdSZjA17fHbrE0Z/u5zfxr9ht/Tj2eJN8g0FFWz+4
	1seHAXgOFVArGHHmN1fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j46UE-0005kB-5G; Tue, 18 Feb 2020 17:16:42 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j46RL-00026Q-C3
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 17:13:47 +0000
Received: by mail-ot1-f68.google.com with SMTP id 66so20236063otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 09:13:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9rvVQxjEcVSUPCQUA8Lpt3skYnAzdX5d/I/sFEuvNBI=;
 b=APl8OeTWDeFkw9FPzr4mERiD0Bx5QNLWSTg3+Wmip/DE80zW7f1o5IOyg8QlqgVzHJ
 pBvV2MCo9yz7HKGdQCzJHN0M+szfrW85b/o0GNFelQ4brIqU6GRAq8ux48qcgLnfxeol
 3yuMKvAHkP6ijn2RLRomFjTZyHitUwh6OoZG2tX+Uz3vo810zK1vjcBfcfCOw9GvlfCa
 XNqTAlWjzpLXkLYqajxHwvKGTE4f9DHhRqmCsWwwExPY/EJ8O6WUzdmqG3xMLF/6ykB3
 f8nHzgTC0QFyoIIZCeXkrR1dK4cc9EyqinIQk0a7dQfbIvKZdDmt2+PhzO8TwTLfKBuj
 UPqA==
X-Gm-Message-State: APjAAAX1ctn9ZNIxRfQhjZ6Pwu3IM1hMdBD+m1I1lovO7zyQSvf7duxb
 oaha/2tF0cKQORaqO79iDRFZado=
X-Google-Smtp-Source: APXvYqwA7mxMXzEdUlX4eeVusmEzMBWCscl1LrX6G+t9T9zWzSOg5CEef2pK0PwwCFSogRLqNYvU8w==
X-Received: by 2002:a05:6830:18c4:: with SMTP id
 v4mr15986958ote.265.1582046021808; 
 Tue, 18 Feb 2020 09:13:41 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id y25sm1545755oto.27.2020.02.18.09.13.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 09:13:41 -0800 (PST)
From: Rob Herring <robh@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 soc@kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Robert Richter <rrichter@marvell.com>, Jon Loeliger <jdl@jdl.com>,
 Alexander Graf <graf@amazon.com>, Matthias Brugger <mbrugger@suse.com>,
 Mark Langsdorf <mlangsdo@redhat.com>
Subject: [RFC PATCH 11/11] dt-bindings: Remove Calxeda platforms bindings
Date: Tue, 18 Feb 2020 11:13:21 -0600
Message-Id: <20200218171321.30990-12-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200218171321.30990-1-robh@kernel.org>
References: <20200218171321.30990-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_091343_553749_DA9A5048 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: kvm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-ide@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Joerg Roedel <joro@8bytes.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Eric Auger <eric.auger@redhat.com>,
 Alex Williamson <alex.williamson@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-edac@vger.kernel.org,
 Jens Axboe <axboe@kernel.dk>, Tony Luck <tony.luck@intel.com>,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 Cornelia Huck <cohuck@redhat.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 iommu@lists.linux-foundation.org, James Morse <james.morse@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: devicetree@vger.kernel.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/arm/calxeda.yaml      | 22 ----------
 .../devicetree/bindings/arm/calxeda/l2ecc.txt | 15 -------
 .../devicetree/bindings/ata/sata_highbank.txt | 44 -------------------
 .../devicetree/bindings/clock/calxeda.txt     | 17 -------
 .../memory-controllers/calxeda-ddr-ctrlr.txt  | 16 -------
 .../devicetree/bindings/net/calxeda-xgmac.txt | 18 --------
 .../bindings/phy/calxeda-combophy.txt         | 17 -------
 7 files changed, 149 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/calxeda.yaml
 delete mode 100644 Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
 delete mode 100644 Documentation/devicetree/bindings/ata/sata_highbank.txt
 delete mode 100644 Documentation/devicetree/bindings/clock/calxeda.txt
 delete mode 100644 Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
 delete mode 100644 Documentation/devicetree/bindings/net/calxeda-xgmac.txt
 delete mode 100644 Documentation/devicetree/bindings/phy/calxeda-combophy.txt

diff --git a/Documentation/devicetree/bindings/arm/calxeda.yaml b/Documentation/devicetree/bindings/arm/calxeda.yaml
deleted file mode 100644
index aa5571d23c39..000000000000
--- a/Documentation/devicetree/bindings/arm/calxeda.yaml
+++ /dev/null
@@ -1,22 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/arm/calxeda.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Calxeda Platforms Device Tree Bindings
-
-maintainers:
-  - Rob Herring <robh@kernel.org>
-description: |+
-  Bindings for boards with Calxeda Cortex-A9 based ECX-1000 (Highbank) SOC
-  or Cortex-A15 based ECX-2000 SOCs
-
-properties:
-  $nodename:
-    const: '/'
-  compatible:
-    items:
-      - enum:
-          - calxeda,highbank
-          - calxeda,ecx-2000
diff --git a/Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt b/Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
deleted file mode 100644
index 94e642a33db0..000000000000
--- a/Documentation/devicetree/bindings/arm/calxeda/l2ecc.txt
+++ /dev/null
@@ -1,15 +0,0 @@
-Calxeda Highbank L2 cache ECC
-
-Properties:
-- compatible : Should be "calxeda,hb-sregs-l2-ecc"
-- reg : Address and size for ECC error interrupt clear registers.
-- interrupts : Should be single bit error interrupt, then double bit error
-	interrupt.
-
-Example:
-
-	sregs@fff3c200 {
-		compatible = "calxeda,hb-sregs-l2-ecc";
-		reg = <0xfff3c200 0x100>;
-		interrupts = <0 71 4  0 72 4>;
-	};
diff --git a/Documentation/devicetree/bindings/ata/sata_highbank.txt b/Documentation/devicetree/bindings/ata/sata_highbank.txt
deleted file mode 100644
index aa83407cb7a4..000000000000
--- a/Documentation/devicetree/bindings/ata/sata_highbank.txt
+++ /dev/null
@@ -1,44 +0,0 @@
-* Calxeda AHCI SATA Controller
-
-SATA nodes are defined to describe on-chip Serial ATA controllers.
-The Calxeda SATA controller mostly conforms to the AHCI interface
-with some special extensions to add functionality.
-Each SATA controller should have its own node.
-
-Required properties:
-- compatible        : compatible list, contains "calxeda,hb-ahci"
-- interrupts        : <interrupt mapping for SATA IRQ>
-- reg               : <registers mapping>
-
-Optional properties:
-- dma-coherent      : Present if dma operations are coherent
-- calxeda,port-phys : phandle-combophy and lane assignment, which maps each
-			SATA port to a combophy and a lane within that
-			combophy
-- calxeda,sgpio-gpio: phandle-gpio bank, bit offset, and default on or off,
-			which indicates that the driver supports SGPIO
-			indicator lights using the indicated GPIOs
-- calxeda,led-order : a u32 array that map port numbers to offsets within the
-			SGPIO bitstream.
-- calxeda,tx-atten  : a u32 array that contains TX attenuation override
-			codes, one per port. The upper 3 bytes are always
-			0 and thus ignored.
-- calxeda,pre-clocks : a u32 that indicates the number of additional clock
-			cycles to transmit before sending an SGPIO pattern
-- calxeda,post-clocks: a u32 that indicates the number of additional clock
-			cycles to transmit after sending an SGPIO pattern
-
-Example:
-        sata@ffe08000 {
-		compatible = "calxeda,hb-ahci";
-		reg = <0xffe08000 0x1000>;
-		interrupts = <115>;
-		dma-coherent;
-		calxeda,port-phys = <&combophy5 0 &combophy0 0 &combophy0 1
-					&combophy0 2 &combophy0 3>;
-		calxeda,sgpio-gpio =<&gpioh 5 1 &gpioh 6 1 &gpioh 7 1>;
-		calxeda,led-order = <4 0 1 2 3>;
-		calxeda,tx-atten = <0xff 22 0xff 0xff 23>;
-		calxeda,pre-clocks = <10>;
-		calxeda,post-clocks = <0>;
-        };
diff --git a/Documentation/devicetree/bindings/clock/calxeda.txt b/Documentation/devicetree/bindings/clock/calxeda.txt
deleted file mode 100644
index 0a6ac1bdcda1..000000000000
--- a/Documentation/devicetree/bindings/clock/calxeda.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Device Tree Clock bindings for Calxeda highbank platform
-
-This binding uses the common clock binding[1].
-
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Required properties:
-- compatible : shall be one of the following:
-	"calxeda,hb-pll-clock" - for a PLL clock
-	"calxeda,hb-a9periph-clock" - The A9 peripheral clock divided from the
-		A9 clock.
-	"calxeda,hb-a9bus-clock" - The A9 bus clock divided from the A9 clock.
-	"calxeda,hb-emmc-clock" - Divided clock for MMC/SD controller.
-- reg : shall be the control register offset from SYSREGs base for the clock.
-- clocks : shall be the input parent clock phandle for the clock. This is
-	either an oscillator or a pll output.
-- #clock-cells : from common clock binding; shall be set to 0.
diff --git a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt b/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
deleted file mode 100644
index 049675944b78..000000000000
--- a/Documentation/devicetree/bindings/memory-controllers/calxeda-ddr-ctrlr.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Calxeda DDR memory controller
-
-Properties:
-- compatible : Should be:
-  - "calxeda,hb-ddr-ctrl" for ECX-1000
-  - "calxeda,ecx-2000-ddr-ctrl" for ECX-2000
-- reg : Address and size for DDR controller registers.
-- interrupts : Interrupt for DDR controller.
-
-Example:
-
-	memory-controller@fff00000 {
-		compatible = "calxeda,hb-ddr-ctrl";
-		reg = <0xfff00000 0x1000>;
-		interrupts = <0 91 4>;
-	};
diff --git a/Documentation/devicetree/bindings/net/calxeda-xgmac.txt b/Documentation/devicetree/bindings/net/calxeda-xgmac.txt
deleted file mode 100644
index c8ae996bd8f2..000000000000
--- a/Documentation/devicetree/bindings/net/calxeda-xgmac.txt
+++ /dev/null
@@ -1,18 +0,0 @@
-* Calxeda Highbank 10Gb XGMAC Ethernet
-
-Required properties:
-- compatible : Should be "calxeda,hb-xgmac"
-- reg : Address and length of the register set for the device
-- interrupts : Should contain 3 xgmac interrupts. The 1st is main interrupt.
-  The 2nd is pwr mgt interrupt. The 3rd is low power state interrupt.
-
-Optional properties:
-- dma-coherent      : Present if dma operations are coherent
-
-Example:
-
-ethernet@fff50000 {
-        compatible = "calxeda,hb-xgmac";
-        reg = <0xfff50000 0x1000>;
-        interrupts = <0 77 4  0 78 4  0 79 4>;
-};
diff --git a/Documentation/devicetree/bindings/phy/calxeda-combophy.txt b/Documentation/devicetree/bindings/phy/calxeda-combophy.txt
deleted file mode 100644
index 6622bdb2e8bc..000000000000
--- a/Documentation/devicetree/bindings/phy/calxeda-combophy.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Calxeda Highbank Combination Phys for SATA
-
-Properties:
-- compatible : Should be "calxeda,hb-combophy"
-- #phy-cells: Should be 1.
-- reg : Address and size for Combination Phy registers.
-- phydev: device ID for programming the combophy.
-
-Example:
-
-	combophy5: combo-phy@fff5d000 {
-		compatible = "calxeda,hb-combophy";
-		#phy-cells = <1>;
-		reg = <0xfff5d000 0x1000>;
-		phydev = <31>;
-	};
-
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
