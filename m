Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C7E127458
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 04:55:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LP8aFKEPFlKAxYMCf7iIEWuVw1AIO4xwnYmiLLRBfTs=; b=T5wlFdYiyhTXeuvXIJC/mJZ09L
	mtM3MMys1CKPILEuA9zWIA9x8fusNKI1HX/Jr6reBDN8RAMTG5ShIUfGsx8VlPr3vKDdJkYOUasdT
	Y0v+mC5Tzic9IdmO/2Ip2Wn3PjbCuO5pKoOPVYvPXgZhcUIZTlsrt61ZIArGytPzGW79vOo9+FJW0
	98s6IpzIhGmp0l1FJtS3fYcCbmbJ/uqgEt6mEQMgOYPDpneGpjLkp4kQBrUp1+TUOuE1n+pQn5W0k
	d+n1mXVDOc5QuCkYMvmd3OiG4bdPE/ShvdNbYQBKPmJB/x1fMfQE9rsD20KrnbpWWlwnxLNQnwrAP
	AtrQfRoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii9ON-0002iI-Qt; Fri, 20 Dec 2019 03:55:55 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii9NK-0000pp-Ts
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 03:54:54 +0000
Received: by mail-pf1-x442.google.com with SMTP id y14so4446076pfm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 19:54:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=csAZpz1aDlZN19GUotv3truaMbqTwx/sneZlPvFv09g=;
 b=XbH99UFd3Yc1WQYJdi3wfqgj7LA4xRGdaTXRVXgL+J+eQfkRnZOH8RE8WCvi5LTkGT
 VRVarm3JHCBeCR2uu2HGov1iKPNd/d1dEpU2uYF163DC30qGO/hhsqb4Go97srZ1k62K
 OCQH72UlQmvGcUCmX7SQWIQ50aNkz0mi4qbyY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=csAZpz1aDlZN19GUotv3truaMbqTwx/sneZlPvFv09g=;
 b=LiTJtJtyQorOSXZRvKtcZkfCrvlT6eJeMsWsvFV9l18LuWg+wkR5n1X4NeVfhKBz5A
 bFkpoBdD2KXLpNm59iZSx8illO+shpivu5j9tpDsQXkAydDSCweZB4CdB2s5CknyTu/i
 ZFGk/xSdeS1KnqBmWstpm4higf957Sz1RCcn3HlR/5kHjSBtiGI3QgweFOFRLIcl94pq
 dDotF0/3YhUxzpAPjWzjshYR3LtGJk39mXUIpuEVc6SD+Kom0mF4DC75kuepZmU9nsfV
 ZyoYRczXjk9acMEbqJkeKy03Qm9jP44ElBU7J6qxfZ9inWeuaArBvIBM3FClKcw97zGT
 UgLw==
X-Gm-Message-State: APjAAAW+afSNSg1jugovPO8Tuh7/oxDx0l3zVSGvWPMqcBa2fl38Kmvk
 KftFKufa/JCFOzOczz/7lO/OMw==
X-Google-Smtp-Source: APXvYqxAPNCcAHqjrFYqAfO36aS4XBHic4sg/Y9dBgXZhEioOz1V1hEFGKEqm4nd8e3aViOZso17ZA==
X-Received: by 2002:a62:788a:: with SMTP id
 t132mr13743427pfc.134.1576814090019; 
 Thu, 19 Dec 2019 19:54:50 -0800 (PST)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id t65sm10522205pfd.178.2019.12.19.19.54.45
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 19 Dec 2019 19:54:49 -0800 (PST)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Andrew Murray <andrew.murray@arm.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 3/6] arm: dts: Change PCIe INTx mapping for Cygnus
Date: Fri, 20 Dec 2019 09:24:15 +0530
Message-Id: <1576814058-30003-4-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576814058-30003-1-git-send-email-srinath.mannam@broadcom.com>
References: <1576814058-30003-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_195451_335841_8898AF8C 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
