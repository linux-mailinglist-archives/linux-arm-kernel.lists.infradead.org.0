Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5C275533
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 19:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nqblVLBP4qHR08cKjCKs63e/k7hNUdElyF2ug9uI/o0=; b=eTp9Wqu5bEGnkt
	3HAXI0T9WiZZVzySc7SgRq5DUmzYvSC0AexANe88DkXNLHmPqsdeHJTF4rZYZV+m1kBDaJfyTW5pi
	VuGELCe7+QjQL0ah27vvyzya2uSmbVctbaSY4xWpyQza85q2MWDWhWpPJN6+iLK+IH15mlA/siRkI
	A9zJUDeqzfNzfARphCQcj6uh7pU0mYGwLkCV+D6FKQ8SsLmUbFInLW9obeEcpvziKmEnSYRuYY8Wv
	JgJGtzbcwFHcFPH7CFBteK0HDlYakbi9G+NClnT7iEwXvtfaELldspyKv/61S4NsSZhQTF3Wt2QZE
	TvHKmYk0Fr+ZMG/muZVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhIl-0002kz-3a; Thu, 25 Jul 2019 17:13:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhIY-0002kY-B2
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 17:12:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7893C174E;
 Thu, 25 Jul 2019 10:12:57 -0700 (PDT)
Received: from e123572-lin.arm.com (e123572-lin.cambridge.arm.com
 [10.1.194.48])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 072A13F71A;
 Thu, 25 Jul 2019 10:12:55 -0700 (PDT)
From: Kevin Brodsky <kevin.brodsky@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: fast models: Remove clcd's max-memory-bandwidth
Date: Thu, 25 Jul 2019 18:12:14 +0100
Message-Id: <20190725171215.71801-1-kevin.brodsky@arm.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_101258_472160_6EF4CC30 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Pawel Moll <pawel.moll@arm.com>,
 Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Sudeep Holla <sudeep.holla@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is unclear why max-memory-bandwidth should be set for CLCD on the
fast model. Removing that property allows allocating and using 32bpp
buffers, which may be desirable on certain platforms such as
Android.

Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
---

Changes in v2:
- Remove the attribute completely instead of increasing its value. It is
  optional and there is no clear reason why it should be set at all.

 arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 8 --------
 arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 2 --
 2 files changed, 10 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 687707020ec1..62ab0d54ff71 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -265,13 +265,5 @@
 				<0 0 42 &gic 0 0 GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
 				<0 0 43 &gic 0 0 GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
 				<0 0 44 &gic 0 0 GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
-
-		motherboard {
-			iofpga@3,00000000 {
-				clcd@1f0000 {
-					max-memory-bandwidth = <130000000>; /* 16bpp @ 63.5MHz */
-				};
-			};
-		};
 	};
 };
diff --git a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
index 454cf6c44c49..03a7bf079c8f 100644
--- a/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
+++ b/arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi
@@ -188,8 +188,6 @@
 					interrupts = <14>;
 					clocks = <&v2m_oscclk1>, <&v2m_clk24mhz>;
 					clock-names = "clcdclk", "apb_pclk";
-					/* 800x600 16bpp @36MHz works fine */
-					max-memory-bandwidth = <54000000>;
 					memory-region = <&vram>;
 
 					port {
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
