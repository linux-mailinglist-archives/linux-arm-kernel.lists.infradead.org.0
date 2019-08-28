Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C639FDA9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MHGxgGNIm5TzjLSn8Ae2EpgJwb0RJqS8xjdnP9wkpH4=; b=d3rvdsGokoZr9jRpDDSpgea2j6
	wpQr2SBtviHhtDMrHl0Ms4jmQtaDJ2tuDOfynU2jH403HX6ja43hzCWsFblaq2ayD3PvW5taTiqLB
	rRG2e1UBjYhMiaJdUobadZOKvgZej/WGYnFobFSbhzRUFEBG7gVO/BTjUQrQFA64AleMIa7cpa07p
	Z0hpaPluVQ//8pq0eLkMh3rt8D20/LsBeMfa1HlPIhposaSlQjGjLSUxFtfZWvK3mfgVxJUG2TRuG
	dL1T+rWHEtDG52MkILAHRkwQKnICOWTMAHdBgJ86fk/XqILnN4y/vRAJssAl6r6m5cXZ17Sr71vdN
	uW2E563w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tkk-0003TI-Hs; Wed, 28 Aug 2019 08:56:30 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tja-0002fa-QY
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:55:20 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so1106427pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:55:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jkpX1ijHWDM2pSw2CL8bgv/QG1teAX28pJhrQsOSXTI=;
 b=ePN3JK45wCI18izSDMyDahJtDpM5ggiPD0R6M0/OuLTl89L3hmifIDz27Lp15ypTXB
 GbhEli4ioA5t9Li85byKBFVCVyipWLOU0ea9BnQspBT3BlYlcjZbdV3RLlemeNzSzOhi
 6DhuvwKaajWbVtql0Gx5yA+AVS6XkO6AW0KZk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jkpX1ijHWDM2pSw2CL8bgv/QG1teAX28pJhrQsOSXTI=;
 b=b7DgUsX4SwvItIOzwjbnkgBccQuLOrg8/WIQA2eQmY1oJ+fItehvWA42UgdSUp6AGp
 0ds1DzHN5hV4L0wdWylxhWlFW1676hFqylOX+qJmzkxaCXQKxqyIDqOBDZDmuZM606/a
 C+WFDH+QSZoYga7UCFLO3INwOQomHEX46QWCc0vTTR1QLfYPjOYKLCioOb18IRdQ4N+G
 +PFatoOL6eTTbU985v9E3vVzjsIVykxmnQTRRx5g69Uk8n82LjkVCGMoStDl5p1CzgY7
 z/mmL7VIbBp+GJTIzkQCsja3v1OBR0/2OcwFsfIYh5vnMXd3JjwDaDMnPOcPCGBcXCDg
 CEdg==
X-Gm-Message-State: APjAAAVo4GmaG+TL9wvBROM1mMJyErJvCUr9OiwEtI9qD7SO1+GDFzwn
 K0XOFd7cijAM0g91231EdRVQFg==
X-Google-Smtp-Source: APXvYqzSHinVhp8n2vmG2pEF28DIV2Foi4lkasTYtJPdtoFln3/D5AmjRv3bu+ITVPJQqCW3HjFskw==
X-Received: by 2002:a17:90a:e38e:: with SMTP id
 b14mr3071449pjz.125.1566982518325; 
 Wed, 28 Aug 2019 01:55:18 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id z189sm2431386pfb.137.2019.08.28.01.55.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 01:55:17 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 4/6] arm: dts: Change PCIe INTx mapping for NSP
Date: Wed, 28 Aug 2019 14:24:46 +0530
Message-Id: <1566982488-9673-5-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_015519_014989_C637F121 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 arch/arm/boot/dts/bcm-nsp.dtsi | 45 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 39 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-nsp.dtsi b/arch/arm/boot/dts/bcm-nsp.dtsi
index 6925b30..0e28817 100644
--- a/arch/arm/boot/dts/bcm-nsp.dtsi
+++ b/arch/arm/boot/dts/bcm-nsp.dtsi
@@ -532,8 +532,11 @@
 		reg = <0x18012000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 1>,
+				<0 0 0 2 &pcie0_intc 2>,
+				<0 0 0 3 &pcie0_intc 3>,
+				<0 0 0 4 &pcie0_intc 4>;
 
 		linux,pci-domain = <0>;
 
@@ -562,6 +565,14 @@
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
@@ -569,8 +580,11 @@
 		reg = <0x18013000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie1_intc 1>,
+				<0 0 0 2 &pcie1_intc 2>,
+				<0 0 0 3 &pcie1_intc 3>,
+				<0 0 0 4 &pcie1_intc 4>;
 
 		linux,pci-domain = <1>;
 
@@ -599,6 +613,14 @@
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
@@ -606,8 +628,11 @@
 		reg = <0x18014000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie2_intc 1>,
+				<0 0 0 2 &pcie2_intc 2>,
+				<0 0 0 3 &pcie2_intc 3>,
+				<0 0 0 4 &pcie2_intc 4>;
 
 		linux,pci-domain = <2>;
 
@@ -636,6 +661,14 @@
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
