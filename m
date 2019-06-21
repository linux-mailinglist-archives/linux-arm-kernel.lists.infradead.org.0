Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4374E37A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Z0VTJHOHdD8IOYjPwOrgO7KPFk76xjF5aIJJ1f4qIXA=; b=kajHAGroQ6LRwTFQUO6t587z7O
	3usW8DST+rHjlJ6oXAvANIJ62V9znB7kPI/1XI0BknzCOJzO0aO6uoxAyg+iQOGuJTdWSHT7urr2j
	IQ64fujPtdRont+cBMaldrj2bUENYX6lN9LGHUpItg7a5kXusxM8ypIvfrTJbP6k6l4wgPJBrEfYI
	1Gj/SYeyb/zx6K2EeiNoIoEibYBmyRSk3DsFye7tqkrRstYXGbmOnEuKQamOU2LL2U/+g95YNDZKN
	3Sduk0Tf8l9SQmdiMr+c7iFHcwaA0ERSEEJr+ChhDxNp4IzPrO3875KBJJF5EzvBoAsKbQwAwjFzc
	kXD/ASJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFo0-0003DO-To; Fri, 21 Jun 2019 09:26:01 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFd8-0008OY-6r
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:47 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 4DBAB25BE64;
 Fri, 21 Jun 2019 19:13:55 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id B5730942C3C; Fri, 21 Jun 2019 11:13:51 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 18/22] ARM: dts: r7s9210: Add IRQC device node
Date: Fri, 21 Jun 2019 11:13:45 +0200
Message-Id: <e23391f36ce14719768ad5395e93a54fec7edf5a.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021446_451640_6026FAF9 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Chris Brandt <chris.brandt@renesas.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chris Brandt <chris.brandt@renesas.com>

Enable support for the IRQC on RZ/A2M, which is a small front-end to the
GIC.  This allows to use up to 8 external interrupts with configurable
sense select.

Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
index 3d0bbc1f4543..72b79770e336 100644
--- a/arch/arm/boot/dts/r7s9210.dtsi
+++ b/arch/arm/boot/dts/r7s9210.dtsi
@@ -473,6 +473,25 @@
 			reg = <0xfcfe8004 4>;
 		};
 
+		irqc: interrupt-controller@fcfef800 {
+			compatible = "renesas,r7s9210-irqc",
+				     "renesas,rza1-irqc";
+			#interrupt-cells = <2>;
+			#address-cells = <0>;
+			interrupt-controller;
+			reg = <0xfcfef800 0x6>;
+			interrupt-map =
+				<0 0 &gic GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>,
+				<1 0 &gic GIC_SPI 5 IRQ_TYPE_LEVEL_HIGH>,
+				<2 0 &gic GIC_SPI 6 IRQ_TYPE_LEVEL_HIGH>,
+				<3 0 &gic GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
+				<4 0 &gic GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>,
+				<5 0 &gic GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>,
+				<6 0 &gic GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
+				<7 0 &gic GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-map-mask = <7 0>;
+		};
+
 		pinctrl: pin-controller@fcffe000 {
 			compatible = "renesas,r7s9210-pinctrl";
 			reg = <0xfcffe000 0x1000>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
