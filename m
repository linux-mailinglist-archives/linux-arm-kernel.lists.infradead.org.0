Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FBD214FF5C
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  2 Feb 2020 22:21:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3YCQ2lbi1M3VVqMs6ro6WVc2iahICdbWaC9+Vl/5qYA=; b=XhYwxfuwLQUpt5XxNrex+Zfug6
	fWP/hUBb7sMYBwBLuYmWp7QPALQBp+O9VJIGtyW0MAxQ9jEydxD/79QjR/+mplV4N9tLyf3EAdpwQ
	F+DKrVXelM5Aa9D9fYhvOow7vo204obrVk4WU09pA1VL3cPYuwnbhai2WyNDN+XF2XUvG2n4QKDsL
	1kAIZpeQZrTwaKhbDnTERHML/UgyppYfgeq71wyP8bYO178aUonpBlA0T0bA17dB8iQE6vI7Vu5pf
	ky1jY+ymcdufdBD3L2Yu9yK8oExPrvL+Nwo84Cva0yLWz2er4leu4Tc+2Pg6mei+017ZT/aDGEmJ/
	hCxsegZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyMgH-0005mj-Mr; Sun, 02 Feb 2020 21:21:25 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyMeD-0002Dz-Pt; Sun, 02 Feb 2020 21:19:19 +0000
Received: by mail-pl1-x641.google.com with SMTP id c23so5029187plz.4;
 Sun, 02 Feb 2020 13:19:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XfjR187NXdISi2xn1LCKRhzqRpFgh+EYN6/XoOzH7QE=;
 b=bSu+7wq9db2iSb/oq37AULgd0rrkKEniBWxHhxiWsz4MZR+ZkUtcZZWoucYeKwwiff
 T01eGU/hMPf3ZIt75OcoK8eGR08R84+ECLoBNPdTAybXeZPnefQtaecDVTKCbvhQcVU4
 hhOezpkMXHu18lsPq9iX6+gjghOS6NHOvzoMXzG9x8IFOTEZDj8L0UOIM8gw5xC7r51m
 7EtY6eHG5SZqHqtFLJAjVOQDPVGwnFE9vUcILmihdXOSKJYd5ILnrxsnpigAx5Mwqz4g
 Np+tRBqeQFWbuKgZHZxHEU2GQCW7QLu2qNSnTCJEMzDIvOemLee5gRyR9D0LAynNEIN5
 PMuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XfjR187NXdISi2xn1LCKRhzqRpFgh+EYN6/XoOzH7QE=;
 b=TYzXUARsOC1cm6fB6DeGNWo3RQfcnWA67sVFJeWsA1gVDBNgEXGE6aqdmFBNgGC4ud
 nVr5wnHLsg7evKW2dSn7jxVjYdwPtIGPHZsiP/nr6Y6ObFK9OW/AEKmDwIVkY1SB2LIK
 YY+AgDc8biHTBEF6ggnBwg3ExdycDyqlf90wpXqGPn+7SDazw5gbAtQJyN6o2wyr4V8H
 F0LPW6E+MHFbm/ZySjjU5IZJesa+1P8DrLNmcAWhbG6SGtr6HtA1kJDZ5+EsXoa3A/Hb
 bc4aGPCdZQXJxSWMN03IGlGQ6sHXp53w0jrf2G7e7MkFF6jd4ssWp+AlH3xIEEQT7BFw
 eokQ==
X-Gm-Message-State: APjAAAUYaC37nejgOu7UOc5CHuKxo5A7A5otQTigBMrqrzDd8xX6UC+E
 zKObWt3xc4I/rNhepYpjYJ8=
X-Google-Smtp-Source: APXvYqziE6DxBqxEoMo21k/aFZUUW0d950vCCF9swRBLnIWa1mvipMR0xnR4DoQiN2oGuecP0oaHtw==
X-Received: by 2002:a17:902:8545:: with SMTP id
 d5mr19658713plo.116.1580678356002; 
 Sun, 02 Feb 2020 13:19:16 -0800 (PST)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y24sm8755639pge.72.2020.02.02.13.19.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 02 Feb 2020 13:19:15 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@vger.kernel.org
Subject: [PATCH 11/12] dt-bindings: arm: Document Broadcom SoCs
 'secondary-boot-reg'
Date: Sun,  2 Feb 2020 13:18:26 -0800
Message-Id: <20200202211827.27682-12-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200202211827.27682-1-f.fainelli@gmail.com>
References: <20200202211827.27682-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200202_131917_887835_F6315258 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Scott Branden <sbranden@broadcom.com>,
 Lubomir Rintel <lkundrak@v3.sk>, Sugaya Taichi <sugaya.taichi@socionext.com>,
 Ray Jui <rjui@broadcom.com>, open list <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM IPROC ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM IPROC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Olof Johansson <olof@lixom.net>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Consolidate and move the 'secondary-boot-reg' property from the 3
existing bindingn document into the main cpus.yaml documentation.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 .../arm/bcm/brcm,bcm11351-cpu-method.txt      | 36 -----------------
 .../arm/bcm/brcm,bcm23550-cpu-method.txt      | 36 -----------------
 .../bindings/arm/bcm/brcm,nsp-cpu-method.txt  | 39 -------------------
 .../devicetree/bindings/arm/cpus.yaml         | 16 ++++++++
 4 files changed, 16 insertions(+), 111 deletions(-)
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
index c23c24ff7575..6f56a623c1cd 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -272,6 +272,22 @@ properties:
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
 required:
   - device_type
   - reg
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
