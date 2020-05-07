Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083261C8821
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 13:26:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=oJMm3VxvqwNr5HujHchBpS/x3MqlA0YFn4JUVauVKQw=; b=R0n2oiCUa4V8t749tcXyh969n/
	vCIXM9qsrD27xfetgn6F0CMLMwT9gAtyU/SLTr6lpsOyYWB2lw3s4l7Y6fRyf//yUY5ziAhKgt71Q
	BzonLL4zI+zJbxFTJb8xY47m3CW0CpC46QFMi9gOomoR4Bd7+xS1nz1vOcoiYf5Ajer9A2yI999Oy
	e8xxQLQRwkDR2mN9o8iGPwyP8SxXG//9BBOd1drispctIwqjxuI1U3CgZAzILVFZUm58EkBxNczuk
	vut2OTgQzAGEoa+eS9mlMrDvReHzbEvl7Cw1f7FcVgox6M1/gZeaGkiRXvfFVnbgpd1uQfVF0OIn8
	zjUzu5lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWefI-0001iR-ON; Thu, 07 May 2020 11:26:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWee3-0006kk-4B
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 11:24:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3418E101E;
 Thu,  7 May 2020 04:24:50 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00B0E3F68F;
 Thu,  7 May 2020 04:24:48 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Subject: [PATCH v2 05/17] arm64: dts: juno: Fix mem-timer
Date: Thu,  7 May 2020 12:24:18 +0100
Message-Id: <20200507112430.183940-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200507112430.183940-1-andre.przywara@arm.com>
References: <20200507112430.183940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_042451_220535_7924E5AB 
X-CRM114-Status: GOOD (  10.44  )
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
 linux-arm-kernel@lists.infradead.org, Marc Zyngier <maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Juno's mem-timer DT node was not fully compliant with the DT binding,
which has certain expectation about child nodes and their size and
address cells values.

Use a cell size of 1, as the binding requests, and spell out the ranges
property to be binding compliant.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 arch/arm64/boot/dts/arm/juno-base.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-base.dtsi b/arch/arm64/boot/dts/arm/juno-base.dtsi
index f5889281545f..3feefd61eb76 100644
--- a/arch/arm64/boot/dts/arm/juno-base.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-base.dtsi
@@ -11,14 +11,14 @@
 		compatible = "arm,armv7-timer-mem";
 		reg = <0x0 0x2a810000 0x0 0x10000>;
 		clock-frequency = <50000000>;
-		#address-cells = <2>;
-		#size-cells = <2>;
-		ranges;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0 0x0 0x2a820000 0x20000>;
 		status = "disabled";
 		frame@2a830000 {
 			frame-number = <1>;
 			interrupts = <GIC_SPI 60 IRQ_TYPE_LEVEL_HIGH>;
-			reg = <0x0 0x2a830000 0x0 0x10000>;
+			reg = <0x10000 0x10000>;
 		};
 	};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
