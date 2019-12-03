Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA7B10F690
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 05:58:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kiUidtpg8av9JKlcLjHRZwzNckS4HK/7CU0O/W9wORA=; b=pfwu4kMgcSFJ0ytRYSxClIX6p5
	A0wh4+qmnQxBhDkSVZO54F1UsJBfuB2ViMZtSKpJ0Ne/BXLOhzRLRMFXKC6dfAMr9h8Y+Wojv0CqD
	pdYmpQ8p3NcCSKecEVpNSwBIUk28BiVoSffPpO9qazz4aC/X01bOIPYHUECOBBI7az21PrjIumISW
	ogWmN+K84Rt3lBZIlMwqEQPGHZaoh9cs5TrdzmJ0Jgxbnsy4WcUjE1i4FqcE/tNJLKxbx1Cv8jBMi
	timzrE/n2lRuAlgYxB5FZeG1BwO1CSy+vxdfHmGGKHe6G7WHlDANPu+fT4evTc/jHbYiFoxdG+35y
	8Lnrr9EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic0Gw-0001jv-Aj; Tue, 03 Dec 2019 04:58:50 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic0G6-0000ym-M1
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 04:58:00 +0000
Received: by mail-wm1-x341.google.com with SMTP id u18so1563322wmc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Dec 2019 20:57:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5EQ9rGer61vl3gVciY+E78pOpw9FBgHKH9v/WyZesyU=;
 b=NnXC6a+YemKnNQ13CElebpttdTTNKjemUS6z48obW+5NMCOJia26Zab9+aqXpyc5IY
 h8msHprLS+2yUh3iy6vYhIwf7f6IWZcA2dIkxx/I0jlUjABfqOUm+1ZQQgjEMolcnDOx
 +Khj7F5LsrE4AtZz4TUBoFartiHt7hqXeM1dQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5EQ9rGer61vl3gVciY+E78pOpw9FBgHKH9v/WyZesyU=;
 b=oGSKOn1e02mzZiBQPamI29ai0E9Z0bjqFzQ6O/pKNfD6z+IebzDP+St9sq9nFYF8GW
 FaLRTGRftE7p1Qu2ssR392VtsU1Len4Da4MpeGN0lgTiULGl/1QwPL3jRYC6PpcKzj7z
 E8EM9mQ7smpm+BW69A9v/sYd8N4ijBio1QNyyuTpfWJZe8WWOw7I36KhV6cU+9wQbjnT
 NkHwVXNni3FyQFqJ5/Zm4qiIEIv1zjBIC8fXW4zj3/yEmaMYZ32SHgr+nXBbviXdwabv
 7fHZi9ApRmI6vyTMmY/I1GhKQCA5fYCnBz2pmOmBQW5w5AXR3SDYW6oR5eIcVN3jkneX
 ZTfQ==
X-Gm-Message-State: APjAAAWVFLDdG9ieXhxeyDVmWhrwLgPf1tU4svpn/t2iFXByZUPw7POA
 hPNjVsbNugMlMBkkE9V3tieYpA==
X-Google-Smtp-Source: APXvYqxuBmmbVXH5kPj4wkVybb17DZ3Mwc0TM2Ex1DRaelK67SP9KvNgI9mZObMnqdnPhJo3CgfQJA==
X-Received: by 2002:a7b:c764:: with SMTP id x4mr17775306wmk.113.1575349076962; 
 Mon, 02 Dec 2019 20:57:56 -0800 (PST)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id k4sm1667807wmk.26.2019.12.02.20.57.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 02 Dec 2019 20:57:56 -0800 (PST)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v3 5/6] arm: dts: Change PCIe INTx mapping for HR2
Date: Tue,  3 Dec 2019 10:27:05 +0530
Message-Id: <1575349026-8743-6-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
References: <1575349026-8743-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_205758_774171_498527AF 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 arch/arm/boot/dts/bcm-hr2.dtsi | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-hr2.dtsi b/arch/arm/boot/dts/bcm-hr2.dtsi
index e4d4973..d840190 100644
--- a/arch/arm/boot/dts/bcm-hr2.dtsi
+++ b/arch/arm/boot/dts/bcm-hr2.dtsi
@@ -299,8 +299,11 @@
 		reg = <0x18012000 0x1000>;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic GIC_SPI 186 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
+				<0 0 0 2 &pcie0_intc 1>,
+				<0 0 0 3 &pcie0_intc 2>,
+				<0 0 0 4 &pcie0_intc 3>;
 
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
+		interrupt-map = <0 0 0 1 &pcie1_intc 0>,
+				<0 0 0 2 &pcie1_intc 1>,
+				<0 0 0 3 &pcie1_intc 2>,
+				<0 0 0 4 &pcie1_intc 3>;
 
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
