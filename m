Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8B7C4E347
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:19:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sdhnDXEzeAogtee4zJ5jM/BsAUqtOi/0pUPoILm3onA=; b=QWbzZxAxVzbU8GRWAX0GqgDx8n
	oTEptuK0yPsVvC34I7uP9SStLYYkLV8i4reM6qmRe6ciAbmJl1lHp04KnW8JGncR6PahRO/E+Scgw
	yichSQmNCEH9fjYc037d7K/xEFOccaLYoi5DGxyHcsVpwKvC8pjDbfDhyhMIe4DUtuQZBjEY4nGzR
	O0ISrcSgTRhTyl6ftSyuklgivFdXyO8//yUKdqejFo1xGCC1ZP12mAOl3LLSSNwrqcQBf3r97CBOT
	8Vgk0LOKJrYSKgUk209GOOw2whUAm039vnF557IJQsLebFK7RCsZFsNC1p7LoUUlYe/SkCrrNCg8o
	xXd2EeUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFhk-0004UK-QF; Fri, 21 Jun 2019 09:19:32 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFcI-0008OY-RX
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:13:57 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 7F00425AEEC;
 Fri, 21 Jun 2019 19:13:52 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 837D9940954; Fri, 21 Jun 2019 11:13:50 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 01/22] ARM: dts: r7s9210: Add RSPI
Date: Fri, 21 Jun 2019 11:13:28 +0200
Message-Id: <9105996ba984292ea42eb8c38721c792f26ce027.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021355_514128_D90441ED 
X-CRM114-Status: UNSURE (   9.12  )
X-CRM114-Notice: Please train this message.
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

Add RSPI support for RZ/A2 SoC.

Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210.dtsi | 45 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm/boot/dts/r7s9210.dtsi b/arch/arm/boot/dts/r7s9210.dtsi
index 22baa96f5974..8423004bb4b7 100644
--- a/arch/arm/boot/dts/r7s9210.dtsi
+++ b/arch/arm/boot/dts/r7s9210.dtsi
@@ -146,6 +146,51 @@
 			status = "disabled";
 		};
 
+		spi0: spi@e800c800 {
+			compatible = "renesas,rspi-r7s9210", "renesas,rspi-rz";
+			reg = <0xe800c800 0x24>;
+			interrupts = <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "error", "rx", "tx";
+			clocks = <&cpg CPG_MOD 97>;
+			power-domains = <&cpg>;
+			num-cs = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi1: spi@e800d000 {
+			compatible = "renesas,rspi-r7s9210", "renesas,rspi-rz";
+			reg = <0xe800d000 0x24>;
+			interrupts = <GIC_SPI 315 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 316 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 317 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "error", "rx", "tx";
+			clocks = <&cpg CPG_MOD 96>;
+			power-domains = <&cpg>;
+			num-cs = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
+		spi2: spi@e800d800 {
+			compatible = "renesas,rspi-r7s9210", "renesas,rspi-rz";
+			reg = <0xe800d800 0x24>;
+			interrupts = <GIC_SPI 318 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 319 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 320 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "error", "rx", "tx";
+			clocks = <&cpg CPG_MOD 95>;
+			power-domains = <&cpg>;
+			num-cs = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		ostm0: timer@e803b000 {
 			compatible = "renesas,r7s9210-ostm", "renesas,ostm";
 			reg = <0xe803b000 0x30>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
