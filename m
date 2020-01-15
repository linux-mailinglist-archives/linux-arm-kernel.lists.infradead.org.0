Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D0D13CC9E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 19:53:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iw/KYgyr4pbLfDAlHlMQbcPjCffkoggBy1pNFIE2518=; b=j0JGUvTfdEsHBnSUvjcwMWu5zb
	ZMjZ/7mUamLam34Rbhoj2VQ6jz9DrPJlROyhejDx/WYMK7q3Y1OJzP7ZRXcomVE73DlIU5p/AvZh/
	cpHjINpocI8KDrHjfXG7Jg9fd64qCK0SgIdRwo8ZPAx89WbOJZ+3uYcKVDye2kn3dKNkDtRpbqM4f
	pHrPR3nWPm/urV224fhXDQOJsSESOrvbRFA699Ryyd2OmSQ/Tzh7UEzVPcTe6d+2fVH8T0oKk6Y5f
	bURtC8ApSI5pcHF1mW/FWvEDyU18bQy/lCwmIOjJaxylj67wF4MPc4z7O/9nggLF/oPQ3g395hyzi
	n3ApaXIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irnnA-0000z5-Jc; Wed, 15 Jan 2020 18:53:24 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irnmg-0000b8-In; Wed, 15 Jan 2020 18:53:00 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so16817868wrh.5;
 Wed, 15 Jan 2020 10:52:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=fKeq8tFcSLHJkn6QSQqYD/5g8utINbdDLtdwNyNEqW4=;
 b=g3Yvbzc2/oSJbfhTH6JaJp2Qe9E1DGE7f7QjCd+z+Ij4tcyCxl2FfLxNq2ZV2xJMb/
 an7c+Akg/FwWYUEcDwDw/vfxSgZkYEB+XRpPDDjkIjuNe8KTJuggT0go8chdesQzK41r
 ScQiU7ArJmzpm1pobwp2EjOhJRgd6/K5chAGj+FzLtbbHKR0mG4umBN+XrYBkPcD3Vgm
 Mpj6e/oVvYZjUFwusNQ/0b4oCMDU4EdrfCdcTy+oy1HoJ5ysZUjfghfLg8myoqx6MRm+
 Dc0BPvdGD7VvS8+mn5tPHWl2E45CBef30B3QEYk8+C7lGCvrqwp1HSYF05PnEdYDBcF4
 o4sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=fKeq8tFcSLHJkn6QSQqYD/5g8utINbdDLtdwNyNEqW4=;
 b=f7Fe9Z5zjiT78W+z0odVJmgTeJqvtKhiZb9mh6v/5I+S5828H8V+/z9BzMyf+ZSi5o
 FrlQsutld/Ec96GBJLHveZ+xd+nLiSyNmTePS55O8giTFqFmKnHedkU0dEDRNFhLquFW
 I2aj3Io7FuOqHQs2v2E64NJQ3rqCNNd82Q9boKemIGpRLPFPuyJj/4noupOpikeAU+HS
 xGa/NDECQCI1z7DRV6KDQi8e9ouAJas96JzfkYvu9ijel3hrsPwlmyUIULz+ooXk+y6n
 N/cE7Lt0NimaKlW9DtVlgS97cS4+TWJOpoQFfqtCuBKn96cmwDtLJe9xgBqn/wf2EwjU
 CAYA==
X-Gm-Message-State: APjAAAWLXTlm+Yf8dP0Ca++1m7OqhwRVaUyeBC4yujX5oyBIFC795gQC
 toTcD/v4O6zZaaNt2pBmIb8=
X-Google-Smtp-Source: APXvYqzkLZfz2dbHy4Hqedrh3BrPKB+8frv2Otn76ljLVvnsbG51oSX9N6Z8/7bKT/Porz+sJ+Xf4w==
X-Received: by 2002:a5d:68cf:: with SMTP id p15mr33079769wrw.31.1579114373365; 
 Wed, 15 Jan 2020 10:52:53 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i5sm26296759wrv.34.2020.01.15.10.52.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 Jan 2020 10:52:53 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: rename dwmmc node names to mmc
Date: Wed, 15 Jan 2020 19:52:44 +0100
Message-Id: <20200115185244.18149-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200115185244.18149-1-jbx6244@gmail.com>
References: <20200115185244.18149-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_105254_624148_D1326756 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current dts files with 'dwmmc' nodes are manually verified.
In order to automate this process rockchip-dw-mshc.txt
has to be converted to yaml. In the new setup
rockchip-dw-mshc.yaml will inherit properties from
mmc-controller.yaml and synopsys-dw-mshc-common.yaml.
'dwmmc' will no longer be a valid name for a node,
so change them all to 'mmc'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 6 +++---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 07fe187cf..32e752312 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -879,7 +879,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@ff370000 {
+	sdmmc: mmc@ff370000 {
 		compatible = "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff370000 0x0 0x4000>;
 		interrupts = <GIC_SPI 54 IRQ_TYPE_LEVEL_HIGH>;
@@ -894,7 +894,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@ff380000 {
+	sdio: mmc@ff380000 {
 		compatible = "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff380000 0x0 0x4000>;
 		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
@@ -909,7 +909,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff390000 {
+	emmc: mmc@ff390000 {
 		compatible = "rockchip,px30-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff390000 0x0 0x4000>;
 		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index fa0d55f1a..116f1900e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -584,7 +584,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@ff480000 {
+	sdmmc: mmc@ff480000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff480000 0x0 0x4000>;
 		interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
@@ -599,7 +599,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff490000 {
+	emmc: mmc@ff490000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff490000 0x0 0x4000>;
 		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
@@ -612,7 +612,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@ff4a0000 {
+	sdio: mmc@ff4a0000 {
 		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff4a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 78 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 91306ebed..acfaefdd3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -837,7 +837,7 @@
 		};
 	};
 
-	sdmmc: dwmmc@ff500000 {
+	sdmmc: mmc@ff500000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff500000 0x0 0x4000>;
 		interrupts = <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>;
@@ -849,7 +849,7 @@
 		status = "disabled";
 	};
 
-	sdio: dwmmc@ff510000 {
+	sdio: mmc@ff510000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff510000 0x0 0x4000>;
 		interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
@@ -861,7 +861,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff520000 {
+	emmc: mmc@ff520000 {
 		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff520000 0x0 0x4000>;
 		interrupts = <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index fd8618801..a0df61c61 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -204,7 +204,7 @@
 		#clock-cells = <0>;
 	};
 
-	sdmmc: dwmmc@ff0c0000 {
+	sdmmc: mmc@ff0c0000 {
 		compatible = "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff0c0000 0x0 0x4000>;
 		max-frequency = <150000000>;
@@ -218,7 +218,7 @@
 		status = "disabled";
 	};
 
-	sdio0: dwmmc@ff0d0000 {
+	sdio0: mmc@ff0d0000 {
 		compatible = "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff0d0000 0x0 0x4000>;
 		max-frequency = <150000000>;
@@ -232,7 +232,7 @@
 		status = "disabled";
 	};
 
-	emmc: dwmmc@ff0f0000 {
+	emmc: mmc@ff0f0000 {
 		compatible = "rockchip,rk3368-dw-mshc", "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xff0f0000 0x0 0x4000>;
 		max-frequency = <150000000>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index e62ea0e2b..ed654758c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -291,7 +291,7 @@
 		status = "disabled";
 	};
 
-	sdio0: dwmmc@fe310000 {
+	sdio0: mmc@fe310000 {
 		compatible = "rockchip,rk3399-dw-mshc",
 			     "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe310000 0x0 0x4000>;
@@ -307,7 +307,7 @@
 		status = "disabled";
 	};
 
-	sdmmc: dwmmc@fe320000 {
+	sdmmc: mmc@fe320000 {
 		compatible = "rockchip,rk3399-dw-mshc",
 			     "rockchip,rk3288-dw-mshc";
 		reg = <0x0 0xfe320000 0x0 0x4000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
