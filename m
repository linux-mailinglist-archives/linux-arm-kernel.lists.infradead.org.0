Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 373B49FDAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:57:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aph3neaQRj61kSd6lDsTZxGhnH4CbLJj5+DrpR2TZuI=; b=CogVqLcJlgjK92wwfTzc1ttMiC
	wtNpK3YB/CzxVPEe7xxFPBy7Z18XsfdFVUi98farB0OII/VGHw2/lC5rpHhICiDu3csqP0uN7F4/s
	ZunC/tf1YQJz1vE9aB+VlF4gQ5Bj5Motj3gsZwUPKAAk+RmhWZD5yFTnZRtw8zdi9QJN9XAVoyxD+
	/jNibTGWO2dBTSHySqka6hUeXgcQTjNM5nUgVdKV6/qBZN8uh9eNmglFLwc1f6uXyAP0avcWqMKJd
	BtTyty2zYUez8Vax4zsCIjGOT7sxGzRicRoMF/qZLQ92iHFY/6CMo2LLhXBAikO4ciG+Bc03hO/ye
	sVU8EvJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tlG-0003rk-55; Wed, 28 Aug 2019 08:57:02 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2tjj-0002oD-7O
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:55:28 +0000
Received: by mail-pf1-x442.google.com with SMTP id v12so1267219pfn.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 01:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4tt2ENFTFe5Eg7RyJm4kt1zaNDOy/8f5U31zRIZv65I=;
 b=LcHIw+CZEXfRVziiWwb83Rl1r0BaJKLJakpIRvePqp2801Yn93HplPf6SiE/BVp/Ni
 vPMFtI6MmuAgfVgSw+q3wnDjR7AVJ/DgNgi3zPk5YBJOOWaHu/B401LK4sGIeWjixoAg
 35ksrf4zhBW6+Xndf50EnsM3qn6pSX8bcSSQY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4tt2ENFTFe5Eg7RyJm4kt1zaNDOy/8f5U31zRIZv65I=;
 b=skxHuPQC75Df6lF9hPb4p6812Dpi2lHX1G8HgVUCfRGtVTzRPC/vXUWNw/qfuiCrJ+
 Ne32sFOwvvpXjtJBhlkCZrRpw4JDqWvq2DNEuBg86B3HyqzlSnpzJLzhJi1l0/rW0E4z
 1UXQpMpXSUJG+BpnDkkBoG1Cd9Zoo27tyyJr1TN9z9xlQQlRH0pXUb+hMaEmnCv2yFyd
 e8f2h1CX6JhHCjsPMieDSSXoL29jzmTvl/HI9HmbkPP5WP4uIVIxsmW/ucKa+AiG2dRx
 Ul3Wl4f2Ecl5G7Qp0cQeiH1TPU/DSohSc8Co4zAJnU3MAf3xPlpaHu7n1YBDc0JUUjj/
 vZYA==
X-Gm-Message-State: APjAAAXQj1uGrZf3Pd9h5gDm3D2sEk7uekFwrJvfaFo8e9IKtxAS8FQR
 lPCCLyPRdvpzKjTyPMPpVVw79A==
X-Google-Smtp-Source: APXvYqzjmQDEnBY8EF8T2/7xO0+gEVIbuaFzBwd9SxiFVr28UeDbwHgrG+kry4Vz/9vqLf89/lFf4Q==
X-Received: by 2002:a62:83c9:: with SMTP id h192mr3280891pfe.57.1566982526310; 
 Wed, 28 Aug 2019 01:55:26 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id z189sm2431386pfb.137.2019.08.28.01.55.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 01:55:25 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v2 6/6] arm64: dts: Change PCIe INTx mapping for NS2
Date: Wed, 28 Aug 2019 14:24:48 +0530
Message-Id: <1566982488-9673-7-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
References: <1566982488-9673-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_015527_327479_79056B16 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi | 28 ++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
index 15f7b0e..d639928 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2.dtsi
@@ -117,8 +117,11 @@
 		dma-coherent;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic 0 GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie0_intc 1>,
+				<0 0 0 2 &pcie0_intc 2>,
+				<0 0 0 3 &pcie0_intc 3>,
+				<0 0 0 4 &pcie0_intc 4>;
 
 		linux,pci-domain = <0>;
 
@@ -140,6 +143,13 @@
 		phy-names = "pcie-phy";
 
 		msi-parent = <&v2m0>;
+		pcie0_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 281 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie4: pcie@50020000 {
@@ -148,8 +158,11 @@
 		dma-coherent;
 
 		#interrupt-cells = <1>;
-		interrupt-map-mask = <0 0 0 0>;
-		interrupt-map = <0 0 0 0 &gic 0 GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-map-mask = <0 0 0 7>;
+		interrupt-map = <0 0 0 1 &pcie4_intc 1>,
+				<0 0 0 2 &pcie4_intc 2>,
+				<0 0 0 3 &pcie4_intc 3>,
+				<0 0 0 4 &pcie4_intc 4>;
 
 		linux,pci-domain = <4>;
 
@@ -171,6 +184,13 @@
 		phy-names = "pcie-phy";
 
 		msi-parent = <&v2m0>;
+		pcie4_intc: interrupt-controller {
+			compatible = "brcm,iproc-intc";
+			interrupt-controller;
+			#interrupt-cells = <1>;
+			interrupt-parent = <&gic>;
+			interrupts = <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
+		};
 	};
 
 	pcie8: pcie@60c00000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
