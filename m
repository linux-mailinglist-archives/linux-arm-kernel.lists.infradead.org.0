Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2C29FDAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OWJR2A/Jj9E3ibSWjnmHhJN+snJwANV2wCRjaTiNG8c=; b=OizIvJdRsMkccWyR0hmmZoOlxw
	XzHB5sVbUPkvKGNO4MGDZc5fF4PN4Ey6s8A07mTQztipoAYWhvTZobD9z4smJhbl0i1ZeGMDP67JU
	WIhya9V/Om9KMGMh/2yTknnQvX8RYwao6Q8Zk+7Bhy49BmJXlJOBubSYpXJhi1GwBKEii4qeD4E1r
	gN65zIq1KX8uV3sFWNyVLlE2a3M3tiv+PlP3pm32a+hadebsvpfXyWkUAzSigB4eDNROiRJmOPOLk
	z3m2UN47bMKBhddrZ2gEirNoUpFVrohItHJyVtkul4HjAD64L9hLFa233iRHjqhUJbOVFFWS9VonL
	fD4naZfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tkz-0003g2-A7; Wed, 28 Aug 2019 08:56:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tjf-0002jY-9X
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:55:24 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so909690plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=K4ivBVU5Ss+sLpYS30yLEkqdAEqwtQS/JgJ+Fiby4j4=;
 b=eKtsYmKJW0aXI/8/L6zIXUgqsErFCuAabhw6VyiEfl29rSzE77wDmpO1G75Pr/OCFl
 KvIo42UO0xcqE2MOpGPBUJhwnU4MeJhS2RfUxKCfNDlkMDmMrvMKah1jy9vXj1e5HA+M
 Mu31KEcxx1NlrT6ZkGUnO5inBWC6MkJ4ixjB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=K4ivBVU5Ss+sLpYS30yLEkqdAEqwtQS/JgJ+Fiby4j4=;
 b=WeMsciT6ulImnsX6ShZtwOiN205VWr0wutSqXOrbMrRl8tUjsy8b5CU+UdUsCUOADL
 +CEs44GVn/kxTrkRljw1mfciGlntXXDjuXJkIU8e2oyAwXElEeaWfjw5rIetzDzgpvdi
 x5rp2Xo+ZweRkBOGPHHBOIpI8ELC2rLaQ/Ue9C0XDhqfU1/5acoemiwsNGeRFQ/YrLNw
 hgznXpXQ1stwFfKqB/WxjjCrOtfp72Y0Mv4eEtTETrG+AUK4tMiK/EexoY0Zc6LEkGKs
 9yhC4QkTshxSmr8+WItXrqdJ0jDD5o5wxSfBTHtnhhsZ9+VrKq/VBvFIUS2eJNpQ6Q57
 8Zfg==
X-Gm-Message-State: APjAAAUMS7CJtT/NpFJHpPkxGi3s3vzM0QvDYh4Zy4klX0oExxQaGfV0
 fg/YPdXzAFk0sQe8V0YPw47Tiw==
X-Google-Smtp-Source: APXvYqz+7LioVOAuI3QiU89rfrqiB0N93ADo1DKZMN2YenWqSAyLfoBhEt48lDz4CAnZm6xE4t3VDQ==
X-Received: by 2002:a17:902:6a84:: with SMTP id
 n4mr3214093plk.109.1566982522329; 
 Wed, 28 Aug 2019 01:55:22 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id z189sm2431386pfb.137.2019.08.28.01.55.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 01:55:21 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 5/6] arm: dts: Change PCIe INTx mapping for HR2
Date: Wed, 28 Aug 2019 14:24:47 +0530
Message-Id: <1566982488-9673-6-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_015523_432434_879CAAA2 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 arch/arm/boot/dts/bcm-hr2.dtsi | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-hr2.dtsi b/arch/arm/boot/dts/bcm-hr2.dtsi
index e4d4973..eb449d0 100644
--- a/arch/arm/boot/dts/bcm-hr2.dtsi
+++ b/arch/arm/boot/dts/bcm-hr2.dtsi
@@ -299,8 +299,11 @@
 		reg = <0x18012000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 1>,
+				<0 0 0 2 &pcie0_intc 2>,
+				<0 0 0 3 &pcie0_intc 3>,
+				<0 0 0 4 &pcie0_intc 4>;
 
 		linux,pci-domain = <0>;
 
@@ -328,6 +331,14 @@
 				     <GIC_SPI 185 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie0_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie1: pcie@18013000 {
@@ -335,8 +346,11 @@
 		reg = <0x18013000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie1_intc 1>,
+				<0 0 0 2 &pcie1_intc 2>,
+				<0 0 0 3 &pcie1_intc 3>,
+				<0 0 0 4 &pcie1_intc 4>;
 
 		linux,pci-domain = <1>;
 
@@ -364,5 +378,13 @@
 				     <GIC_SPI 191 IRQ_TYPE_LEVEL_HIGH>;
 			brcm,pcie-msi-inten;
 		};
+
+		pcie1_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 192 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
