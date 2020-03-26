Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5179D1938FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 07:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JzKdoN5mMSSsTlkvDVs/LVmJuRJuH3YM0fFEVFh8bgU=; b=hCwVA5H3OWu3D+k56U2wD541UX
	oJL2NtMg52lg1n2mrJQSlIuaSI0TjQitoQ/TubXeK+0eHDc2oVuSqwwHYcrULA/GXN+Wg7JIwQAUs
	p1YAcMm3HVZB1J5FQzGy1E8gZLajZxQ2ntBlD+2vvw0i8DyfoTtcmFF01FlYtwI5Nafk3USZd3ruM
	iBGAq7ne1EX5CHanGWhg4/kXSQD0F+fEO3rw+MTYQ1YsZZfwZKFBBtMMmWtFMdgyDtB8leR21F6eK
	bq8rdoK86OB3uXm6CdMxBctj/FiChRZoJigC4wsEG4z099yYd+jud/2N+dlWCgEZLk3yZzAzK0rIK
	EA3jmj0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMM3-00019i-8H; Thu, 26 Mar 2020 06:51:03 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMKl-0007WM-QP
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 06:49:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so5715859wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Mar 2020 23:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=OqoIQwGb5n3SePvcsfXpsiGhZsEzkM1osWqIAh4olUk=;
 b=D8SvKWDdNlZyK5ziDkVAmrOu6yBoXejoXQvsJTarUtjvrjRaFRqVPpbjK42q82YBFp
 KOWq0ZbnIf2ecRm/0K9r1n72vynqYn5XcLU7cvc2rMi/nnOHyP9063cTM6JEhWMrTxgO
 SrRLkMhmESq5DA/qy9xVoWqfW9hI6tfSWT0mg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=OqoIQwGb5n3SePvcsfXpsiGhZsEzkM1osWqIAh4olUk=;
 b=rtw1KEhiJqbyssjNsYjo2s2wh2E1S+PSjT9CZIAmpnQOq5rYmqmJ4l+KfKRiVELz+5
 TVDqMBx8vVEkvY7uFkP6h6O+OsHW0na6MwkY33y32YUVSk03fvdCCItiMkoxIfiVaaPk
 hDGjvHNFH9bMbXb9rpPDZsSA9yKD0ymyh697xs/QfnlzQ6WfXEqkpqISyW7855ULW9ec
 95vQA+k3IYkrDmlqOZQUMxtOT8JSaxZT+7HSwCC2TBPRD4Y5NSugiDA0RDZYx6sQTAeO
 WkHQv+0OLh/GX7ErkdADfN1OTuknQY5IdV0eokUOEWwgY7zoAwAzAqm6ieHrsaJrwWX9
 HxUw==
X-Gm-Message-State: ANhLgQ0ocnnJIrZz/s60ohtOLjB0dVRzQA1nwc6N9AegEueSAQVy/54f
 Rza+POKpfhbIb5AQjxS7WiqsDQ==
X-Google-Smtp-Source: ADFU+vt/2yietOwJHiMpo5G10NhDGvTalng2fGBI9pVi6/t9Of/nyOV65l+l6KvkV2U/x2QRNZBW5w==
X-Received: by 2002:a05:600c:2111:: with SMTP id
 u17mr1483236wml.158.1585205382403; 
 Wed, 25 Mar 2020 23:49:42 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id v21sm2069137wmj.8.2020.03.25.23.49.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 25 Mar 2020 23:49:41 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Rob Herring <robh+dt@kernel.org>, Andrew Murray <andrew.murray@arm.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v5 5/6] arm: dts: Change PCIe INTx mapping for HR2
Date: Thu, 26 Mar 2020 12:18:45 +0530
Message-Id: <1585205326-25326-6-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
References: <1585205326-25326-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_234943_917567_71270ECA 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 arch/arm/boot/dts/bcm-hr2.dtsi | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/bcm-hr2.dtsi b/arch/arm/boot/dts/bcm-hr2.dtsi
index 6142c67..80c3add 100644
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
