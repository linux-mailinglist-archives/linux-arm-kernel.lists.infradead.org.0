Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C4A76351
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 12:16:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rZ/NveSEFyjuEJgMTIaO1V6UNxabrvMqn8mnPbhBqJI=; b=VL1+KqjhkYXB59
	bQuNb4mbJiKwvaHnPCyQIMTStX181T3EvV46iEX6VNy744aCC+deF9rMsS5i6zl6M9lzXd7k27YFc
	HHZFg+StHa+KoLeFOaaN6y0sob2q7+qjzz1pgFLmXAt9eZqon7624ruIbmd0X4qJnAWt+eo5dcR5K
	2Pe1NelnXM/SPXzKbSoxyOBcxmfnplmhdZnFJSMlCJ2+lUfKgaNQHbBSBQih8QtHpLKzYRUT7ymNV
	mnvfq9z3a4OYJXCvGpvCuCqxcbqQD9q5Y8cicfZUgM2R5Ytb57bUq9eslyFAj3DN0T6x2ARyMyKQU
	DI89lLepC6dC168bd0kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqxHA-0008Vl-9a; Fri, 26 Jul 2019 10:16:36 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqxGv-0008VD-P0
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 10:16:23 +0000
Received: by mail-ed1-x543.google.com with SMTP id s49so17985744edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 03:16:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QFKLl3j0cV4b00IrtmDF2crMy7nq5ij9lMTGh/WZlxM=;
 b=Fy+55K5JBislxkoD9cJMvbdrIWiyweT7579G4qAXYGuX1AxPaY/BHx8VPAy36FFp+u
 dDucZNLmOatXw107QWpBy1XYvzfCteEu116OdNGO3jChwCVPjOSkr1G0hRWEerDeEZBg
 1E2RtYDkooI1ZghMpcPHJTTZscsK2GYbu48iYmc0+I11MO2nOXfUTnvhKHOlQyHFU/KJ
 FtuFgk9/qdImGCjJf2qTupwZFx5yhAfIEoBBSvcqRsF5o2iQEfug3xPLLbHDOItdmZAH
 kQLOZCVRm1QmW/5HbgY9EPgd8sfkNG25kMjxCPVnTNd5lZjDPQkGEBENcmMD5sIS9PUk
 T2oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QFKLl3j0cV4b00IrtmDF2crMy7nq5ij9lMTGh/WZlxM=;
 b=uGnkGia3E9tGwkJaclz/+v8p5EXn+MvLloM6exEkao4R+vpCXgFHxhOOCLiHcVD8s1
 fpDqjDL0YCmk3UhRbXSg8R/Q+8/T87jV/I0KaoBgQFuDWFEYbec+rXaOvUfQMpN5aXOU
 vzAQVVTmlbkQjbR6hX6aD/J96w+wRHB7ZdjmGb+29Mzm36OqyomE1GBuTnrZBXy1DmGg
 LXEU7Ubbpa8O5Ew7msfpKI/vtXv8F1+W+2XOzqdy7Al3fJP4Wce8CJt0I1+mcNloENUw
 RADfTp6q1V011h79SIGqWDIi7YKsffBGYpO4jCeuKAgbqg64J8Z/0fVSI8gS16WOB50V
 nndw==
X-Gm-Message-State: APjAAAVRrvzlMrhZLyJpxWHl+4NgirtkWJxr484NZqePxEQ20s//6Pzh
 nFSq5i5g1n+y0iqjpYca9Zg=
X-Google-Smtp-Source: APXvYqzKtp+ERuiP/pZGd7Mp5A9nxlmYRlwLXoWGAAN5xNzjADDpQK7LHhZVTSxxtfu002tP4sc8Jg==
X-Received: by 2002:a17:906:e213:: with SMTP id
 gf19mr31876779ejb.180.1564136179859; 
 Fri, 26 Jul 2019 03:16:19 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id oo19sm9819541ejb.38.2019.07.26.03.16.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 03:16:19 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: [PATCH 1/3] arm64: tegra: Add unit-address for CBB on Tegra194
Date: Fri, 26 Jul 2019 12:16:16 +0200
Message-Id: <20190726101618.26896-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_031621_815551_5BE1A2F0 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-tegra@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thierry Reding <treding@nvidia.com>

The control back-bone (CBB) starts at physical address 0, so give it a
unit-address to comply with standard naming practices checked for by the
device tree compiler.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi | 20 +++++++++----------
 .../boot/dts/nvidia/tegra194-p2972-0000.dts   |  2 +-
 arch/arm64/boot/dts/nvidia/tegra194.dtsi      |  2 +-
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
index 62e07e1197cc..02f6a8f0d741 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
@@ -8,17 +8,17 @@
 	compatible = "nvidia,p2888", "nvidia,tegra194";
 
 	aliases {
-		sdhci0 = "/cbb/sdhci@3460000";
-		sdhci1 = "/cbb/sdhci@3400000";
+		sdhci0 = "/cbb@0/sdhci@3460000";
+		sdhci1 = "/cbb@0/sdhci@3400000";
 		serial0 = &tcu;
 		i2c0 = "/bpmp/i2c";
-		i2c1 = "/cbb/i2c@3160000";
-		i2c2 = "/cbb/i2c@c240000";
-		i2c3 = "/cbb/i2c@3180000";
-		i2c4 = "/cbb/i2c@3190000";
-		i2c5 = "/cbb/i2c@31c0000";
-		i2c6 = "/cbb/i2c@c250000";
-		i2c7 = "/cbb/i2c@31e0000";
+		i2c1 = "/cbb@0/i2c@3160000";
+		i2c2 = "/cbb@0/i2c@c240000";
+		i2c3 = "/cbb@0/i2c@3180000";
+		i2c4 = "/cbb@0/i2c@3190000";
+		i2c5 = "/cbb@0/i2c@31c0000";
+		i2c6 = "/cbb@0/i2c@c250000";
+		i2c7 = "/cbb@0/i2c@31e0000";
 	};
 
 	chosen {
@@ -26,7 +26,7 @@
 		stdout-path = "serial0:115200n8";
 	};
 
-	cbb {
+	cbb@0 {
 		ethernet@2490000 {
 			status = "okay";
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
index 23597d53c9c9..740aaf597115 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
+++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
@@ -10,7 +10,7 @@
 	model = "NVIDIA Jetson AGX Xavier Developer Kit";
 	compatible = "nvidia,p2972-0000", "nvidia,tegra194";
 
-	cbb {
+	cbb@0 {
 		aconnect {
 			status = "okay";
 
diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
index adebbbf36bd0..2597eb7f747b 100644
--- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
+++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
@@ -14,7 +14,7 @@
 	#size-cells = <2>;
 
 	/* control backbone */
-	cbb {
+	cbb@0 {
 		compatible = "simple-bus";
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
