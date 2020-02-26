Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFFE917075E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PanQhA0s2aJc2Ujzn1p4ZBF+Nlv9aB8/GOqcKG7hgDY=; b=mU1rNpTa3QVnVz3FU7g7m9++hi
	B2O3dDJhnp08pa7JQbAkpr5TTUWDNbdhTbXEvnvkGaop6b8KRiZ2rVXjBFJVkKgRBfZGpxQIDj60c
	cct5fzQ6fVZw8Zbk7TEr/LP08MTpTEDqf3fGfDrz6z1ROec3/dokeLRktBn+sajajP2GrQX27btD3
	lm9dX9J+/n+I7qZV6gyWvaCdwbSrkeSFdzEjjHrlNF3w+LXTPXsG4H48A5dCrwf/aOmSfK6j7ExlA
	+Bb0DsJNynQCzJCV3SB0m6c8znkxbmRHakW6yHqPGRlJ165pZncxMnDxx82cjZnK0R5GWsyOZpsf1
	C9/636Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71Az-00065J-R8; Wed, 26 Feb 2020 18:12:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717W-00023d-Ok
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:20 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EA8C430E;
 Wed, 26 Feb 2020 10:09:17 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 63BA83F881;
 Wed, 26 Feb 2020 10:09:16 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 03/13] arm: dts: calxeda: Fix interrupt grouping
Date: Wed, 26 Feb 2020 18:08:51 +0000
Message-Id: <20200226180901.89940-4-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226180901.89940-1-andre.przywara@arm.com>
References: <20200226180901.89940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100918_895752_4429D50C 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently multiple interrupts for some devices are written as one array
instead of using the DT grouping notation (<0 42 4>, <0 23 4>).
This ends up in the same binary representation in the .dtb, but is
semantically not equivalent. The yaml schema checks will stumble over
this, so lets fix that first.

I refrained from using the symbolic names for GIC_SPI/GIC_PPI and
IRQ_TYPE_LEVEL_HIGH, mostly because it increases the delta between the
original DTS files and the mainline versions, so it's just additional
churn.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm/boot/dts/ecx-2000.dts    | 2 +-
 arch/arm/boot/dts/ecx-common.dtsi | 4 ++--
 arch/arm/boot/dts/highbank.dts    | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ecx-2000.dts b/arch/arm/boot/dts/ecx-2000.dts
index 81eb382b4c23..93cdd020637b 100644
--- a/arch/arm/boot/dts/ecx-2000.dts
+++ b/arch/arm/boot/dts/ecx-2000.dts
@@ -92,7 +92,7 @@
 
 		pmu {
 			compatible = "arm,cortex-a9-pmu";
-			interrupts = <0 76 4  0 75 4  0 74 4  0 73 4>;
+			interrupts = <0 76 4>, <0 75 4>, <0 74 4>, <0 73 4>;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/ecx-common.dtsi b/arch/arm/boot/dts/ecx-common.dtsi
index f819e3328a9e..b7e74a357471 100644
--- a/arch/arm/boot/dts/ecx-common.dtsi
+++ b/arch/arm/boot/dts/ecx-common.dtsi
@@ -202,14 +202,14 @@
 		ethernet@fff50000 {
 			compatible = "calxeda,hb-xgmac";
 			reg = <0xfff50000 0x1000>;
-			interrupts = <0 77 4  0 78 4  0 79 4>;
+			interrupts = <0 77 4>, <0 78 4>, <0 79 4>;
 			dma-coherent;
 		};
 
 		ethernet@fff51000 {
 			compatible = "calxeda,hb-xgmac";
 			reg = <0xfff51000 0x1000>;
-			interrupts = <0 80 4  0 81 4  0 82 4>;
+			interrupts = <0 80 4>, <0 81 4>, <0 82 4>;
 			dma-coherent;
 		};
 
diff --git a/arch/arm/boot/dts/highbank.dts b/arch/arm/boot/dts/highbank.dts
index 9e34d1bd7994..b6b0225a769e 100644
--- a/arch/arm/boot/dts/highbank.dts
+++ b/arch/arm/boot/dts/highbank.dts
@@ -142,14 +142,14 @@
 
 		pmu {
 			compatible = "arm,cortex-a9-pmu";
-			interrupts = <0 76 4  0 75 4  0 74 4  0 73 4>;
+			interrupts = <0 76 4>, <0 75 4>, <0 74 4>, <0 73 4>;
 		};
 
 
 		sregs@fff3c200 {
 			compatible = "calxeda,hb-sregs-l2-ecc";
 			reg = <0xfff3c200 0x100>;
-			interrupts = <0 71 4  0 72 4>;
+			interrupts = <0 71 4>, <0 72 4>;
 		};
 
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
