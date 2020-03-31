Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981B6199ABE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:04:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RqPlme2592oAEWMtxlxIirKhmtNnSVwnIim8uaIbNgw=; b=IGG
	f4ua2gvstvfxn4lgyHq5w8pQGnT8Y+soxvdPzVwzYimPssialtCsUhCQbUTpYT5vMZHSD8+xA1kvo
	L3Y6M/CCR+4fW6SMPM0S1+fX/hlCI/6RcepIteSAiV8yaToMTKoKyQ05WinVxqub33KLMheR1Toa5
	YmN0R6ob82cTgKJm8u1Ff/1Ytx5pHcl/T87IdnPRGZaS97n935s/GrYwHePJVF7VWVZdD8pjj5JUh
	mP9T9Us+sb+bCb2dR1sbe5Wh8iXYY2pJaS/N/te1hw+n26kp9W7cBDW+S1U/a3B3kWSJ5oBYUEllr
	xiLxNnBxjxLZzdLdkcqZPDtIHQGkDDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJN1-0005DN-QY; Tue, 31 Mar 2020 16:04:07 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJMq-0005By-Al; Tue, 31 Mar 2020 16:03:57 +0000
Received: by mail-ed1-x541.google.com with SMTP id a43so25753459edf.6;
 Tue, 31 Mar 2020 09:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RaTwRr96LXp/hTXZkNHh+ephRC8ostasbFPkQNr4Hb8=;
 b=rgtwhkzGGRUXYxeH5bHrhNHBc+JNY4l8GMVg4YFEl5L/oeNrTK+SSQvLvLYuMs0BHU
 /pDfG/JQYKRApYpuFaeQy9dioDlkxtTiqMM1RHkwJs5DUoEAKpq1nHUD+2Eg622wyGqu
 KUUvLmJc8kAcsQl9D51OEqcaVKE6WU1Ie3+r9DhE+wJabKtrCaAaEXEk1KAaLNpIMnKc
 LkNokC22Zxi2QcQxaDKXzQJfzK0ls+pE2UY5xuRCNmULNT4TvWajX6TiB/dO4bSyGxdd
 FgAhD2+fcm+3CyUmxIYmRGemPJialzqSLq4ZUZ5K3SE8RZfeKzLFCUSPIIMFH6f75se3
 3pMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RaTwRr96LXp/hTXZkNHh+ephRC8ostasbFPkQNr4Hb8=;
 b=kT3nWwAN5f7Z4DY4p2iocwQK8XZCtf4NVtzvjiq4i0m7RdB1swjQjg/m8Ze75+M9Ao
 a3pJKDRIYX86+Iq7cNgYl5ciCVpdJTZaHUIRnY1bhvdDZJq4kVTz3wxEXsDLSkMoIsqV
 96NSDBdX0bEHNiipC3Rq0X4nV4aPKow+MOsLoPL+ZDhuJZZAb5Aw42VJ/DUJrXcg/qIB
 LKnIhngADCiYQvDv7HsKHKodFI61EpjDmFYzcB4u6StdTb6YFkQGLfWQ10ZhiK+x+0dI
 dZrIxmpqAlCF/OtHwb6EdFNuMyPBRIWoVZW6Lm/phcFKhgQomXhMVRlfD1uEgVnO91FS
 38og==
X-Gm-Message-State: ANhLgQ0C0qbDzOAUT9zTU0TjFySWRZYR3QKAwtYm7slqikS/CG7lHtoP
 hf+7uXiP77ocswmJMp0y2qhq4P1a
X-Google-Smtp-Source: ADFU+vszFwYArrRRDeb7hvjW6c2dFE+s6oWpyrtFll1nJHKll+cyfkE5fWhk8+23o8wRsxRkmz8U1g==
X-Received: by 2002:adf:b1d8:: with SMTP id r24mr20580572wra.266.1585656839738; 
 Tue, 31 Mar 2020 05:13:59 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id 127sm3754936wmd.38.2020.03.31.05.13.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Mar 2020 05:13:59 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v3 1/2] dt-bindings: sram: convert rockchip-pmu-sram
 bindings to yaml
Date: Tue, 31 Mar 2020 14:13:51 +0200
Message-Id: <20200331121352.3825-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_090356_399000_A8F99F13 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'rockchip-pmu-sram' compatible nodes
are now verified with sram.yaml, although the original
text document still exists. Merge rockchip-pmu-sram.txt
with sram.yaml by adding it as description with an example.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
Not tested with hardware.

Changes v3:
  Document the compatible

Changed v2:
  Merge with sram.yaml
---
 .../devicetree/bindings/sram/rockchip-pmu-sram.txt       | 16 ----------------
 Documentation/devicetree/bindings/sram/sram.yaml         | 14 ++++++++++++++
 2 files changed, 14 insertions(+), 16 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt

diff --git a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt b/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
deleted file mode 100644
index 6b42fda30..000000000
--- a/Documentation/devicetree/bindings/sram/rockchip-pmu-sram.txt
+++ /dev/null
@@ -1,16 +0,0 @@
-Rockchip SRAM for pmu:
-------------------------------
-
-The sram of pmu is used to store the function of resume from maskrom(the 1st
-level loader). This is a common use of the "pmu-sram" because it keeps power
-even in low power states in the system.
-
-Required node properties:
-- compatible : should be "rockchip,rk3288-pmu-sram"
-- reg : physical base address and the size of the registers window
-
-Example:
-	sram@ff720000 {
-		compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
-		reg = <0xff720000 0x1000>;
-	};
diff --git a/Documentation/devicetree/bindings/sram/sram.yaml b/Documentation/devicetree/bindings/sram/sram.yaml
index 7b83cc6c9..605eb1460 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -29,6 +29,7 @@ properties:
       enum:
         - mmio-sram
         - atmel,sama5d2-securam
+        - rockchip,rk3288-pmu-sram
 
   reg:
     maxItems: 1
@@ -224,6 +225,19 @@ examples:
     };
 
   - |
+    // Rockchip's rk3288 SoC uses the sram of pmu to store the function of
+    // resume from maskrom(the 1st level loader). This is a common use of
+    // the "pmu-sram" because it keeps power even in low power states
+    // in the system.
+    sram@ff720000 {
+      compatible = "rockchip,rk3288-pmu-sram", "mmio-sram";
+      reg = <0xff720000 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0 0xff720000 0x1000>;
+    };
+
+  - |
     // Allwinner's A80 SoC uses part of the secure sram for hotplugging of the
     // primary core (cpu0). Once the core gets powered up it checks if a magic
     // value is set at a specific location. If it is then the BROM will jump
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
