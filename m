Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E251C8829
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7tante9f03oTEML8LbFAyk0NnZk7bZkkYYUKNOS8zZY=; b=p0C0yuHn9cPr22jx9zvRZHIcS+
	fM8myDP7ltFYL0PMRgMml2fbA1/DFa5YSGU0GHjvve9g7OwBpPJ/6cUXr5TQQWewp2a07sIQBONfN
	Lqfcdl+lYoSQOx0/sYB94G4DtzXaNisDD79/B2iynO3nhIeGKNM3psQUtvLgKEoW1tHdvacgRz2BG
	Mdc7hBcIZO7Rehxbb1upWpDtPJ4PoDLYJPwtDKpFndN9O4xZUTWPxOErhgdQRqa/v5g0vmMDnh6W1
	nPcX3zGzsXD1W2RLkixSVYmbKLEMnuui7benptYrO1iDjW3J6Xu+Xl8lFVLqCMK5wl4bj+W5ZTpm+
	v7EhUHVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWegl-00035l-V0; Thu, 07 May 2020 11:27:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWee7-0006o9-UW
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:24:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C27F81FB;
 Thu,  7 May 2020 04:24:55 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A96573F68F;
 Thu,  7 May 2020 04:24:54 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 09/17] arm64: dts: juno: usb: Use proper DT node name
Date: Thu,  7 May 2020 12:24:22 +0100
Message-Id: <20200507112430.183940-10-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042456_036059_1FCEB2BA 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The EHCI/OCHI DT binding requires to use "usb" as the node name stub.

Replace the existing name with "usb" to comply with the binding.
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index 6d7b24a8e761..5b589856dbaa 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -768,7 +768,7 @@
 		};
 	};
 
-	ohci@7ffb0000 {
+	usb@7ffb0000 {
 		compatible = "generic-ohci";
 		reg = <0x0 0x7ffb0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>;
@@ -776,7 +776,7 @@
 		clocks = <&soc_usb48mhz>;
 	};
 
-	ehci@7ffc0000 {
+	usb@7ffc0000 {
 		compatible = "generic-ehci";
 		reg = <0x0 0x7ffc0000 0x0 0x10000>;
 		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
