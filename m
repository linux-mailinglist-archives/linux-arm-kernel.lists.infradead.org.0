Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0117918BC07
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 17:12:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=aJuk8fl4IzjlNNIvLqInPA09IIPhFpEuZYfBsidpAzo=; b=DwG
	Q7v4/WrtSF4NDR/a3F1JFMHsMKvm9/cNfhdbTKNEk23/OpjnI9iTC7ikR4r9QhUVz2W9sptB8FUgP
	31L3Mgy6jmrCLPvJHATNEYC47xB4rZchKcLOVu5tZnZb1JHZDuSWnSbUJpW/v+BigkC6LdoJY7UL2
	Q0ZIX2mblMukmn3IzmVYn6+aEchlHI5RcDR7/4+AwVNr92X+5aN3u7RDfLazIL8NormZQmNK9B+xg
	NC7tKG/KYW1N3YPozKhg4nt10aAGgJo2X2yrFWFge+iDfmVPeZZeiaGyignrKySasMggaoasMe6/C
	Xygu/iaCkAjnPDiovDZcGzSKJzDHF+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jExme-0008F6-8R; Thu, 19 Mar 2020 16:12:36 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jExmD-00083K-II; Thu, 19 Mar 2020 16:12:10 +0000
Received: by mail-wm1-x341.google.com with SMTP id z12so2983602wmf.5;
 Thu, 19 Mar 2020 09:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=kcI9L10AVu3IFfDLlq7fYdN8ePr2Q+2h97GxsvZx3J0=;
 b=OAfJ6Cb3Q7fO4i8JHLbUWXZbGL9oGZ25fAszYa+CqeczsxwpIpylMDlEaAE3/6thJw
 KDRToGk8bkf4r6chrw1GbZXwv1UPYsxCBC+WIDQhNV4VNFn6bWcI0joUFSxwznheJPCg
 lxP0P/PWJiwSO2nMZL6FVLSU9KUopelr5zs871Yi9UHdL5tlvPnYh7KgRnh3EM+2SkVn
 itx45pb22aoykPkRDFoX1u728LHpvSdtwnjYuY2Zf0+IEe+xE+Nym0hoy0weKmpxdtLX
 KSooY/ODYEwZSNZQl24hdoaGVkigEYOPDppGJv2vGS3gNqp1WJ2az5SO3s7y1pUkXnVo
 y/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=kcI9L10AVu3IFfDLlq7fYdN8ePr2Q+2h97GxsvZx3J0=;
 b=c0TGpLbTtNXOrg3dZWzCmpeJkDMo0wTS0L8JqjLu/z9yQiecVGV2GEQwy9rQHmIPsO
 SBgcTk2xt7ILRAQ6usRW6Xy8eOcZ1tSHheGK3DK6Kd3pSqtv+iueRtRe/fzS1I9sEvPi
 X4+wv72gNxGARN3kHUboufjvu2yB/pM2uhos0p4PFiC1PmpAvAEKNKoYtnPEa+t6/hGV
 qiZ2tNupldUjxwoy7WNq3yeeBYkn7xk9KNLOHEa1Rau8ZOVZ8A6eylgP4gQBk0tKY294
 1fT1gCLBCs0Wy54p/SL/zmrxCB3l+GGzTGJ1OMiKi5UBb4MpVTD69RwLpDmfYhUPRyCU
 mBQQ==
X-Gm-Message-State: ANhLgQ1zakgx/M6ilXbfLwxcXFNQQ9O1xXg+rOkD+CtZsPlfGaAnOenm
 0GOtdp5I/Z0lracLvyfHUr8=
X-Google-Smtp-Source: ADFU+vv7RkcNf6iJ+zQ/ULJBSRGSg9vNsaWp0WejEfo/Y0gYZuPRr4L3BhyGJyqw2V3klwYvuQYG2g==
X-Received: by 2002:a05:600c:210d:: with SMTP id
 u13mr4718627wml.92.1584634327036; 
 Thu, 19 Mar 2020 09:12:07 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w204sm3973485wma.1.2020.03.19.09.12.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Mar 2020 09:12:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v2 1/2] dt-bindings: sram: convert rockchip-pmu-sram
 bindings to yaml
Date: Thu, 19 Mar 2020 17:11:58 +0100
Message-Id: <20200319161159.24548-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_091209_631253_F6683D5E 
X-CRM114-Status: GOOD (  14.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Changed v2:
  Merge with sram.yaml
---
 .../devicetree/bindings/sram/rockchip-pmu-sram.txt       | 16 ----------------
 Documentation/devicetree/bindings/sram/sram.yaml         | 13 +++++++++++++
 2 files changed, 13 insertions(+), 16 deletions(-)
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
index 7b83cc6c9..a9b1c2b74 100644
--- a/Documentation/devicetree/bindings/sram/sram.yaml
+++ b/Documentation/devicetree/bindings/sram/sram.yaml
@@ -224,6 +224,19 @@ examples:
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
