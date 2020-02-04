Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5331523E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 01:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uISP2BrjOHTYu1fkXPZDD26JOlpm9r9fpnqSVtIMkfA=; b=h4XWQsydzVOsCD
	ZrXZ0kMRcRYHpBHWfjCBg4Z0NKKWWpTKZ8El0Vsdfg6NH/EtiQKzqqkSzgXaQ9xYrmCUqGU4pR1L0
	9jRXY9DIV+IzsTz82FdJVUUCbZA7jyjznFeQXT48hgvIiUqnROkO4SaSIzm+zLzieANr3oIxVqm+E
	mcJiXv5PiLuIl9lBKwDhNVZhkI93ienOMEb1x7kRIF2NEPf3hR+idcii/sRzGj6fdY/eMGGOTh7/8
	BZq3shjwfPTxwCT/ks5diuhKAj1ntJ9pvA8T2m+1ko3xMWWakHM7rf/nTIrBBqxor/2y1kh57xTdJ
	rTURHfOl/GBZPcSNgjcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8Gv-0000vB-8T; Wed, 05 Feb 2020 00:10:25 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8EL-0005g4-Fi; Wed, 05 Feb 2020 00:07:47 +0000
Received: by mail-pj1-x1041.google.com with SMTP id gv17so153926pjb.1;
 Tue, 04 Feb 2020 16:07:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AmvTxWNYbbqRFY29acB0Jj37QMjm3ZpkquLyekHQJRI=;
 b=DNoS8PP9tu+YUPFrfmW6JQUJYXKzBmqjG/9GECCG5e2iKZyK0jsegj9arM84i1hbKD
 E7DT5iFMEXPHF37KztAssbdIJ9qPrYfr24t6iB2dR3fDvlhPLxMYux5kkNf3m5GBQ1Y9
 q94CC2HUwlS1URG+7ogYn0B/MAMArA6/bm5KltugjqVAhS7Rm9Db4/1MItLxgFfIs5ng
 EsDOzpCV83cfDyoAfQsI+fuw6UcVEhW/b6DZLGBoCTxXMMai7ilEAq0211YqT5apFkWl
 OvaQzzCxoyvAxy3w2cUpiiixIL2GGboiuGbYjCfOHTwahWoSvSNbq4E7RjRCHvPvqbcw
 3MUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AmvTxWNYbbqRFY29acB0Jj37QMjm3ZpkquLyekHQJRI=;
 b=NTYkJaEnpUTXBjkG/QVCytmsx8nYAFpWjhPwlh/+jaq8VWHrs2HTwYcNKiS6srVBOs
 lWEkEMUvnzRPSYd3ly/3+Rb15VnD3CnIsPj5sYzK9H3xiCNocUus+ALogjTikQtVP5k6
 nAAPQmDopIjXk/1vRk4ibeC4RTmxObFzV24P5b3JP2hZ4gYchZHNnWw05lfrAav5WuWL
 Zl1tWcY/9IUiJ73zayhtX9+VBgT/eckxksBosCSFKW0uQqmQCTckwP5OqYifnJbqJhnI
 yYufMM54LYBMDsHhOaHR9IkoY+1K5AgOTzSK+HecPDMQACbaPLQA9E+4LrlITDrqoIRk
 pBmw==
X-Gm-Message-State: APjAAAWrJeLY26ph2zklAiVWN3xkgWA1I/HpO6zs7qGTt/dehrHKHqL2
 l9+kKsCsgpa1rkKUMiwnS2E9Os6V
X-Google-Smtp-Source: APXvYqyECzfty9WFxy19O/11qgx+ClTmtK+jWrBXYMa0UuRFHceFgyp2EPfw/dGKOEBldi2u1pkVkg==
X-Received: by 2002:a17:902:8b88:: with SMTP id
 ay8mr31646320plb.202.1580861263934; 
 Tue, 04 Feb 2020 16:07:43 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id g2sm25575468pgn.59.2020.02.04.16.07.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Feb 2020 16:07:43 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 11/12] dt-bindings: arm: Document Broadcom SoCs
 'secondary-boot-reg'
Date: Tue,  4 Feb 2020 15:55:51 -0800
Message-Id: <20200204235552.7466-12-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200204235552.7466-1-f.fainelli@gmail.com>
References: <20200204235552.7466-1-f.fainelli@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_160745_615229_67E48717 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 "james.tai" <james.tai@realtek.com>, Arnd Bergmann <arnd@arndb.de>,
 Scott Branden <sbranden@broadcom.com>,
 Sugaya Taichi <sugaya.taichi@socionext.com>, Ray Jui <rjui@broadcom.com>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Andrew Jeffery <andrew@aj.id.au>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>, Joel Stanley <joel@jms.id.au>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Consolidate and move the 'secondary-boot-reg' property from the 3
existing binding documents into the main cpus.yaml documentation, also
make sure that the property is enforced when relevant.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../arm/bcm/brcm,bcm11351-cpu-method.txt      | 36 -----------------
 .../arm/bcm/brcm,bcm23550-cpu-method.txt      | 36 -----------------
 .../bindings/arm/bcm/brcm,nsp-cpu-method.txt  | 39 -------------------
 .../devicetree/bindings/arm/cpus.yaml         | 33 ++++++++++++++++
 4 files changed, 33 insertions(+), 111 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550-cpu-method.txt
 delete mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,nsp-cpu-method.txt

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351-cpu-method.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351-cpu-method.txt
deleted file mode 100644
index e3f996920403..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm11351-cpu-method.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Broadcom Kona Family CPU Enable Method
---------------------------------------
-This binding defines the enable method used for starting secondary
-CPUs in the following Broadcom SoCs:
-  BCM11130, BCM11140, BCM11351, BCM28145, BCM28155, BCM21664
-
-The enable method is specified by defining the following required
-properties in the "cpu" device tree node:
-  - enable-method = "brcm,bcm11351-cpu-method";
-  - secondary-boot-reg = <...>;
-
-The secondary-boot-reg property is a u32 value that specifies the
-physical address of the register used to request the ROM holding pen
-code release a secondary CPU.  The value written to the register is
-formed by encoding the target CPU id into the low bits of the
-physical start address it should jump to.
-
-Example:
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu0: cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a9";
-			reg = <0>;
-		};
-
-		cpu1: cpu@1 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a9";
-			reg = <1>;
-			enable-method = "brcm,bcm11351-cpu-method";
-			secondary-boot-reg = <0x3500417c>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550-cpu-method.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550-cpu-method.txt
deleted file mode 100644
index a3af54c0e404..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm23550-cpu-method.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-Broadcom Kona Family CPU Enable Method
---------------------------------------
-This binding defines the enable method used for starting secondary
-CPUs in the following Broadcom SoCs:
-  BCM23550
-
-The enable method is specified by defining the following required
-properties in the "cpu" device tree node:
-  - enable-method = "brcm,bcm23550";
-  - secondary-boot-reg = <...>;
-
-The secondary-boot-reg property is a u32 value that specifies the
-physical address of the register used to request the ROM holding pen
-code release a secondary CPU.  The value written to the register is
-formed by encoding the target CPU id into the low bits of the
-physical start address it should jump to.
-
-Example:
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu0: cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a9";
-			reg = <0>;
-		};
-
-		cpu1: cpu@1 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a9";
-			reg = <1>;
-			enable-method = "brcm,bcm23550";
-			secondary-boot-reg = <0x3500417c>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,nsp-cpu-method.txt b/Documentation/devicetree/bindings/arm/bcm/brcm,nsp-cpu-method.txt
deleted file mode 100644
index 677ef9d9f445..000000000000
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,nsp-cpu-method.txt
+++ /dev/null
@@ -1,39 +0,0 @@
-Broadcom Northstar Plus SoC CPU Enable Method
----------------------------------------------
-This binding defines the enable method used for starting secondary
-CPU in the following Broadcom SoCs:
-  BCM58522, BCM58525, BCM58535, BCM58622, BCM58623, BCM58625, BCM88312
-
-The enable method is specified by defining the following required
-properties in the corresponding secondary "cpu" device tree node:
-  - enable-method = "brcm,bcm-nsp-smp";
-  - secondary-boot-reg = <...>;
-
-The secondary-boot-reg property is a u32 value that specifies the
-physical address of the register which should hold the common
-entry point for a secondary CPU. This entry is cpu node specific
-and should be added per cpu. E.g., in case of NSP (BCM58625) which
-is a dual core CPU SoC, this entry should be added to cpu1 node.
-
-
-Example:
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu0: cpu@0 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a9";
-			next-level-cache = <&L2>;
-			reg = <0>;
-		};
-
-		cpu1: cpu@1 {
-			device_type = "cpu";
-			compatible = "arm,cortex-a9";
-			next-level-cache = <&L2>;
-			enable-method = "brcm,bcm-nsp-smp";
-			secondary-boot-reg = <0xffff042c>;
-			reg = <1>;
-		};
-	};
diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index c23c24ff7575..d7b181a44789 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -272,6 +272,39 @@ properties:
       While optional, it is the preferred way to get access to
       the cpu-core power-domains.
 
+  secondary-boot-reg:
+    $ref: '/schemas/types.yaml#/definitions/uint32'
+    description: |
+      Required for systems that have an "enable-method" property value of
+      "brcm,bcm11351-cpu-method", "brcm,bcm23550" or "brcm,bcm-nsp-smp".
+
+      This includes the following SoCs: |
+      BCM11130, BCM11140, BCM11351, BCM28145, BCM28155, BCM21664, BCM23550
+      BCM58522, BCM58525, BCM58535, BCM58622, BCM58623, BCM58625, BCM88312
+
+      The secondary-boot-reg property is a u32 value that specifies the
+      physical address of the register used to request the ROM holding pen
+      code release a secondary CPU. The value written to the register is
+      formed by encoding the target CPU id into the low bits of the
+      physical start address it should jump to.
+
+if:
+  # If the enable-method property contains one of those values
+  properties:
+    enable-method:
+      contains:
+        enum:
+          - brcm,bcm11351-cpu-method
+          - brcm,bcm23550
+          - brcm,bcm-nsp-smp
+  # and if enable-method is present
+  required:
+    - enable-method
+
+then:
+   required:
+     - secondary-boot-reg
+
 required:
   - device_type
   - reg
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
