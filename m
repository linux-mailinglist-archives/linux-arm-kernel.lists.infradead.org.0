Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD044BB960
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 18:16:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5/XSeySLiU1NXe7mj8jv/a3IJp4i2ubpljERjYqvMWc=; b=MA/rrevCc92Ch+1tLP0IKSCDeY
	X+cjdsfb0xnf2E0eYPTU+kQVzeDkBliY8TWAH5OyEwbhbrjjCX3pwoQ+lcslhOmn8iz3O5iTQy/OT
	wy3LEsnY5DHsWzMl3mJfKA6BLEsqJEPVbW0g/aggQIZAwV2mnliRGn6rLWmWoZ6IofiyEAXJK1cvt
	pCzdgIpuODCu7jX78cP9RpN1t8wr6XY3Hfy/ro7DFmVJHAXhGlL6lyFhZj9Xy8H3JFnt0ZYXo9ET7
	jnrd1i6STb316R1AbwJewt0Y2FCi7Ua6Wq3OkbxSdfTSJqrUsE3LmeCh9DadVl+1ujjhpuGd9piie
	0AEdjpaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCR0j-0005pu-5p; Mon, 23 Sep 2019 16:16:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQz6-0003SR-Ko
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 16:14:47 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F375A20B7C;
 Mon, 23 Sep 2019 16:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569255284;
 bh=LTvLyPkZ7lh2IDczYfBNwnxnXfly/CnHg9F9GnaeWnU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qRKJm6V/awTf/tmnqOaszbM5rG1JhwHYeZnXY9EUidxEzzOuR2hZKAkjuqK99cuPk
 SeD7gSGrj+ODNf6ZAeJp2f3o+bAvP1Q7vt0HIrTfCfFkgmuKrNOekYZDWhofu2hqho
 E3f2b4cKCNv77kPCxe7DcS/Q6RbjLeKjO8e+FyZ8=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andrzej Hajda <a.hajda@samsung.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [RFT v4 5/8] ARM: dts: exynos: Remove MCT subnode for interrupt map
 on Exynos4412
Date: Mon, 23 Sep 2019 18:14:08 +0200
Message-Id: <20190923161411.9236-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923161411.9236-1-krzk@kernel.org>
References: <20190923161411.9236-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_091444_915523_C772F989 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sylwester Nawrocki <snawrocki@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Multi Core Timer node has interrupts routed to two different parents -
GIC and combiner.  This was modeled with a interrupt-map within a
subnode but can be expressed in an easier and more common way, directly
in the node itself.

Tested on Odroid U3 (Exynos4412).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v3:
1. Use interrupts-extended instead of interrupts-map.
---
 arch/arm/boot/dts/exynos4412.dtsi | 19 +++++--------------
 1 file changed, 5 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4412.dtsi b/arch/arm/boot/dts/exynos4412.dtsi
index 8b6d5875c75d..9b5fb4e54d7c 100644
--- a/arch/arm/boot/dts/exynos4412.dtsi
+++ b/arch/arm/boot/dts/exynos4412.dtsi
@@ -246,22 +246,13 @@
 		timer@10050000 {
 			compatible = "samsung,exynos4412-mct";
 			reg = <0x10050000 0x800>;
-			interrupt-parent = <&mct_map>;
-			interrupts = <0>, <1>, <2>, <3>, <4>;
 			clocks = <&clock CLK_FIN_PLL>, <&clock CLK_MCT>;
 			clock-names = "fin_pll", "mct";
-
-			mct_map: mct-map {
-				#interrupt-cells = <1>;
-				#address-cells = <0>;
-				#size-cells = <0>;
-				interrupt-map =
-					<0 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
-					<1 &combiner 12 5>,
-					<2 &combiner 12 6>,
-					<3 &combiner 12 7>,
-					<4 &gic 1 12 IRQ_TYPE_LEVEL_HIGH>;
-			};
+			interrupts-extended = <&gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
+					      <&combiner 12 5>,
+					      <&combiner 12 6>,
+					      <&combiner 12 7>,
+					      <&gic 1 12 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
 		watchdog: watchdog@10060000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
