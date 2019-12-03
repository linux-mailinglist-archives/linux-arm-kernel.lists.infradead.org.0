Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D79C10F68E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 05:58:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LP8aFKEPFlKAxYMCf7iIEWuVw1AIO4xwnYmiLLRBfTs=; b=nwR0b2DNa/IvmibNfhF2/+Emz2
	xGZDIIRjNDlXaH8SWoJVq3q0hL1oDJAYbUfSjnU+dTNj9q7rEVU6/0KQnF8blzB2wFKVqzYbpH8H6
	GOg3f1sGCHMOTzPXQRFTDjTld+37p0AR+j31iOQm3ICls/qwhJRzDLng8r+LoAH4QyLXG0z0DZGah
	7Z8Zer4JJU49ju55o9ZoA1nCJrTCHELRCWULrNFw5JVRdC4hduI7YNpGJrjf6vzfOJNSCvx7qPTXx
	n9Tlk4CZCWCK5K15gl9oyjWk1Gnbo/UxnL9gRP9CYyGvpO+6MeAjgYhDsVIt7wRv/h+YzvnTx2Mfp
	htBpKJtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0GY-0001En-3M; Tue, 03 Dec 2019 04:58:26 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0Fv-0000me-QU
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 04:57:50 +0000
Received: by mail-wr1-x442.google.com with SMTP id y17so1977803wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 20:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=csAZpz1aDlZN19GUotv3truaMbqTwx/sneZlPvFv09g=;
 b=DsnYNBcDcy1taP30XJlBdVsFPL9jy6RWNpzX75AhPfWYul/QuFpfbVqYYO7c66IzfP
 kyY/KyskIGSRnqXWce5CCqlkjNwJIYwXz7rKuk9b4A/olAGgf0/qfCwpLiCkoX/oGZhz
 upNdFy7UpTbABhu+Ov0An7o2hpbS3L38a1gkw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=csAZpz1aDlZN19GUotv3truaMbqTwx/sneZlPvFv09g=;
 b=Iy1A4eGgBg598hyJeWQoJxtoygcsIXgDuFnkjIkVCIATUk2TrHuhEY1RjSukPT3o/4
 AJmdAxwBzvb2xMs93tN+XQ4FSGQk/IP++AwBGtYXsv5HfdrwD1gEXgaCzxZd1+g0yQsg
 xQYMrOR0mhjmJ7Ns23DO0uimCgb2AJ1d32mHHmknQl7xJwE1d5rkeif5z1oNBPQI4gDc
 Ukc2vvvW7MYHofK9kVwUeZD9qDLrgUv1hAm7hR+01yACSu7BydfPNwTnz5TF1/ODQ4da
 qVayFMlk4y7Cujtr8iKZP6eztutkdSURfrrXKODbh+KIlFB5gx7x9d5RqmpwOoO93n/e
 hmLA==
X-Gm-Message-State: APjAAAWmBGnJ6s6PpOuw64g055DjpVePFYSpDiGRKiEGlTL6joR/D7jP
 halkxAk3sDK+JrhjGdC5a3ZEdg==
X-Google-Smtp-Source: APXvYqzkB/DqlmTbL/Viz7mXTsWgRglxo5nji6HXDjTvx/bCPdKxBGUWQtxYYDiOkLbjM2gmQemPEA==
X-Received: by 2002:a5d:46d0:: with SMTP id g16mr2930329wrs.287.1575349066068; 
 Mon, 02 Dec 2019 20:57:46 -0800 (PST)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id k4sm1667807wmk.26.2019.12.02.20.57.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Dec 2019 20:57:45 -0800 (PST)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3 3/6] arm: dts: Change PCIe INTx mapping for Cygnus
Date: Tue,  3 Dec 2019 10:27:03 +0530
Message-Id: <1575349026-8743-4-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_205748_879196_1C5390DD 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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
IRQ domain of the iProc PCIe controller itself

Signed-off-by: Ray Jui <ray.jui@broadcom.com>
Signed-off-by: Srinath Mannam <srinath.mannam@broadcom.com>
---
 arch/arm/boot/dts/bcm-cygnus.dtsi | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-cygnus.dtsi b/arch/arm/boot/dts/bcm-cygnus.dtsi
index 2dac3ef..ca23e82 100644
--- a/arch/arm/boot/dts/bcm-cygnus.dtsi
+++ b/arch/arm/boot/dts/bcm-cygnus.dtsi
@@ -264,8 +264,11 @@
 			reg = <0x18012000 0x1000>;
 
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0>;
-			interrupt-map = <0 0 0 0 &gic GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie0_intc 0>,
+					<0 0 0 2 &pcie0_intc 1>,
+					<0 0 0 3 &pcie0_intc 2>,
+					<0 0 0 4 &pcie0_intc 3>;
 
 			linux,pci-domain = <0>;
 
@@ -292,6 +295,14 @@
 					     <GIC_SPI 98 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH>;
 			};
+
+			pcie0_intc: interrupt-controller {
+				compatible = "brcm,iproc-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 100 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 
 		pcie1: pcie@18013000 {
@@ -299,8 +310,11 @@
 			reg = <0x18013000 0x1000>;
 
 			#interrupt-cells = <1>;
-			interrupt-map-mask = <0 0 0 0>;
-			interrupt-map = <0 0 0 0 &gic GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <0 0 0 7>;
+			interrupt-map = <0 0 0 1 &pcie1_intc 0>,
+					<0 0 0 2 &pcie1_intc 1>,
+					<0 0 0 3 &pcie1_intc 2>,
+					<0 0 0 4 &pcie1_intc 3>;
 
 			linux,pci-domain = <1>;
 
@@ -327,6 +341,14 @@
 					     <GIC_SPI 104 IRQ_TYPE_LEVEL_HIGH>,
 					     <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
 			};
+
+			pcie1_intc: interrupt-controller {
+				compatible = "brcm,iproc-intc";
+				interrupt-controller;
+				#interrupt-cells = <1>;
+				interrupt-parent = <&gic>;
+				interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+			};
 		};
 
 		dma0: dma@18018000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
