Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 560CD1938FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 07:50:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X/tZ4CvzrCoIANrAOmdX59tsAvkpv3v2wp3ZrFR0wps=; b=mYvfhAdaamzMudJQ4TgUqQGZ57
	VF67SMjcbE5RminLTZ0WEjUjTwX3g22M57yBt/W4lgC2NfUHhhZzjmX3hj1MXLnpvgXdZ9CPdsqly
	h694KgemuQ/CqhUJm+8AOKyx7qWnxk3VRwcpAJvLWeBKyOwPT3DHVOlx/7r63Ao/pQ3wBxlM/IyPu
	lhSsSkDjYYGnhzlKQPOIlbfPMjrMmLF6390zRCFnNFni2pExbCVSwdDRbInE1sCj+8dbJ0Qpqb/bJ
	u7NbodW9a4a6oYTcGtOPPJ5JoCeeEyPLc8RTfZaNE019C33F6cP5DFQpxmhbaQ7yzbWcvZIU7TmrV
	7/R3u4tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMLl-00087Q-UT; Thu, 26 Mar 2020 06:50:46 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMKg-0007Rr-KH
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 06:49:40 +0000
Received: by mail-wm1-x343.google.com with SMTP id g62so5763660wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 23:49:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OVO9bKocQbOQc1/49KmYXs6ZePtPJP+gvN7tmpCfXfU=;
 b=NTCciXFrFmPV8p/p7Se0wRVKia7DN88jm5uIeaKNbyAlic+RsUF+B7vKYzASobnevi
 jjh8FsbzDj+k+HLucITbhLuKXFdhd8C42j/wwzeBhZpArOU9pu9KKR+Z8TCMjERkhgRO
 Sc868Vb47o/i+zLzdfPZYJlnzEff1j5Yq1hdk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OVO9bKocQbOQc1/49KmYXs6ZePtPJP+gvN7tmpCfXfU=;
 b=m/fZdEN0r+c+lehkzHC6Biq2Pa2Gb7uPpbOJf7sWtKCFJLnP6sz/GUU62Uz/lZ4tDu
 VA7XY3jY70pqzTOqt6119EhEmaRSfMO3CQ+7lVW5i4PzCk77AHji9CgpWP58OC5iFvzY
 k8mv+AAjIRNe+X6VB4ZKXlUPU9uPd0QUnYqpnat2FzyJnydY8Sjix4Oy8+TRs8aD/sGf
 dTg0ndvwJDsv4pWQSEnwc0TJIvaEVuoj/Fe1NJU7QZwU07elQ6ZW1iLg7gJbBwcTcuNV
 ZfPIKxvWrgXNCCjx5+HK4kZxTkINQsEVMPdOb7sdAE1rpjJ5YOW0hB0uvNzG+yd3V6pT
 V2Og==
X-Gm-Message-State: ANhLgQ3MQRIo96hNKoJgqTJbKhowR1exKeDXJlH00JKGyDvaYqonfDmW
 4ys1sVSi93FKluVhAkZsPbXFUA==
X-Google-Smtp-Source: ADFU+vtPQW2fLjN0Jb2qkD9Ufe80DstHs3fBKYta9Yd//1Td0RCacNfRNc3cx/4XWzWkCZufQuUagQ==
X-Received: by 2002:a1c:408b:: with SMTP id n133mr1410962wma.182.1585205376914; 
 Wed, 25 Mar 2020 23:49:36 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id v21sm2069137wmj.8.2020.03.25.23.49.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 25 Mar 2020 23:49:36 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Murray <andrew.murray@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v5 4/6] arm: dts: Change PCIe INTx mapping for NSP
Date: Thu, 26 Mar 2020 12:18:44 +0530
Message-Id: <1585205326-25326-5-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
References: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_234938_692966_D32DCA4E 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 Srinath Mannam <srinath.mannam@broadcom.com>, linux-kernel@vger.kernel.org,
 Ray Jui <ray.jui@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ray Jui <ray.jui@broadcom.com>

Change the PCIe INTx mapping to model the 4 INTx interrupts in the
IRQ domain of the iProc PCIe controller itself.

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 arch/arm/boot/dts/bcm-nsp.dtsi | 45 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
index da6d70f..6d73221 100644
--- a/arch/arm/boot/dts/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/bcm-nsp.dtsi
@@ -529,8 +529,11 @@
 		reg = <0x18012000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
+				<0 0 0 2 &pcie0_intc 1>,
+				<0 0 0 3 &pcie0_intc 2>,
+				<0 0 0 4 &pcie0_intc 3>;
 
 		linux,pci-domain = <0>;
 
@@ -559,6 +562,14 @@
 				     <GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie0_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie1: pcie@18013000 {
@@ -566,8 +577,11 @@
 		reg = <0x18013000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie1_intc 0>,
+				<0 0 0 2 &pcie1_intc 1>,
+				<0 0 0 3 &pcie1_intc 2>,
+				<0 0 0 4 &pcie1_intc 3>;
 
 		linux,pci-domain = <1>;
 
@@ -596,6 +610,14 @@
 				     <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie1_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie2: pcie@18014000 {
@@ -603,8 +625,11 @@
 		reg = <0x18014000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie2_intc 0>,
+				<0 0 0 2 &pcie2_intc 1>,
+				<0 0 0 3 &pcie2_intc 2>,
+				<0 0 0 4 &pcie2_intc 3>;
 
 		linux,pci-domain = <2>;
 
@@ -633,6 +658,14 @@
 				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie2_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	thermal-zones {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
