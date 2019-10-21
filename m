Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE35EDF2B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 18:16:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fsa6rRj9iPphsdwvPIOcwe+nZZwGycqMUUqdvTN6Ev4=; b=LxU3FW/Q8AfVhM
	IuEWwFEvK2Bg70xWjb8g/+i7KODO/Wu/Spf2vxeO5EpV53KZbNFXsTIndnZeYDWj8o3wNC60zn5wg
	O6tOqAxOz/Nuf4GX4KAFlwBnuudcxqRlzMFev/rFN43GD+YFvD3U6SZV5HEMO2NWvW3j2HXaAtKYd
	Q0NyFoaJZHkHGfVC264kVkvrYnQo7OWu/AP/QG5GCJyuFv3hygDkqzQGisqQeyTTEY83sy2B/95GK
	/REsa5bW91vmWMg1o919iBhFL29okpckQFM4DNiSvLXpT7lnD61/AHR3yZUKPVTH4YhlZir0YeWT9
	VY234J9cOetWPWSzdXAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMaLk-0003LZ-P9; Mon, 21 Oct 2019 16:16:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMaK5-0000dO-U7; Mon, 21 Oct 2019 16:14:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.217])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B58EC21872;
 Mon, 21 Oct 2019 16:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571674461;
 bh=peU7ouihHc9hidq+P9WiREumiGLtvR29ujNkdCjneXU=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=E+UmOTXdLqE8ZIaq1PdV4NdYW4SeUoAbxANrgvpJuFgksDbnOqjcpVAoQyUQX+zVO
 8XAkrW/RKs4OMyBYuAi53a1bZlHmx0nAaiRgUH+EHIhQsDcAErcoyKRbeu63JGch1l
 FPe8SJTdIBGyYOoutskDB28/qphPyKfNXN0OaCuA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v4 7/7] dt-bindings: sram: Merge Socionext SRAM bindings into
 generic
Date: Mon, 21 Oct 2019 18:13:51 +0200
Message-Id: <20191021161351.20789-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021161351.20789-1-krzk@kernel.org>
References: <20191021161351.20789-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_091422_080965_2AB64E41 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Socionext SRAM bindings list only compatible so integrate them into
generic SRAM bindings schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. New patch
---
 .../bindings/sram/milbeaut-smp-sram.txt       | 24 -------------------
 .../devicetree/bindings/sram/sram.yaml        | 15 ++++++++++++
 2 files changed, 15 insertions(+), 24 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt b/Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt
deleted file mode 100644
index 194f6a3c1c1e..000000000000
--- a/Documentation/devicetree/bindings/sram/milbeaut-smp-sram.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Milbeaut SRAM for smp bringup
-
-Milbeaut SoCs use a part of the sram for the bringup of the secondary cores.
-Once they get powered up in the bootloader, they stay at the specific part
-of the sram.
-Therefore the part needs to be added as the sub-node of mmio-sram.
-
-Required sub-node properties:
-- compatible : should be "socionext,milbeaut-smp-sram"
-
-Example:
-
-        sram: sram@0 {
-                compatible = "mmio-sram";
-                reg = <0x0 0x10000>;
-                #address-cells = <1>;
-                #size-cells = <1>;
-                ranges = <0 0x0 0x10000>;
-
-                smp-sram@f100 {
-                        compatible = "socionext,milbeaut-smp-sram";
-                        reg = <0xf100 0x20>;
-                };
-        };
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 95d8cc7e2b87..de39e06c1ed9 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -72,6 +72,7 @@ patternProperties:
           - rockchip,rk3066-smp-sram
           - samsung,exynos4210-sysram
           - samsung,exynos4210-sysram-ns
+          - socionext,milbeaut-smp-sram
 
       reg:
         description:
@@ -241,3 +242,17 @@ examples:
             reg = <0x1000 0x8>;
         };
     };
+
+  - |
+    sram@0 {
+        compatible = "mmio-sram";
+        reg = <0x0 0x10000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        ranges = <0 0x0 0x10000>;
+
+        smp-sram@f100 {
+            compatible = "socionext,milbeaut-smp-sram";
+            reg = <0xf100 0x20>;
+        };
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
