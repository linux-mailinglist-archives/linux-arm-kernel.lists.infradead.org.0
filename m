Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 035204E714
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 13:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jXlbkMcO3N+aBhLQp5nD2brfaCMc8MAxMrZYhI1/15M=; b=VK8
	3ze+ht/60jl4KJ/EWHqPWC+Z/LeAaFLLhOMfunpJoTANEW2gNFuWAy9Q+0pf0yEgR22AwrwxPAaUV
	l5FEsyUouSfP9KKHWz0iEpmXOCfUaf4srKgJhJZR5NERJwz4Ec2I+teXDi1uSfRY0xDnqm9xedud4
	g8QtsqG8OR4i8bu21O+7n19FxEEUvRJdl2Wm3OEiYyEweW5qkC+zIiyvl73z6+MDes1yjmk19zzMm
	1zJmXSQWTTYbeuzZ02nZybkMmW8AqI1nzw2jr5c62N6JnV/Qr1mGQyXsfhYHS2hkU1ltCzr8fimrw
	TQVY6BRORN0T2VFv47qxEffKUeq0Ndg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heHeA-0003h2-G0; Fri, 21 Jun 2019 11:23:58 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heHdr-0003gU-2w
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 11:23:40 +0000
Received: from localhost.localdomain (softbank126205003112.bbtec.net
 [126.205.3.112]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id x5LBNBVG009682;
 Fri, 21 Jun 2019 20:23:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com x5LBNBVG009682
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1561116193;
 bh=QbSpRhPCko1oAe/ciitvIbxO8D+SdDlQvNNtyfUnX9A=;
 h=From:To:Cc:Subject:Date:From;
 b=V8ciSa4abgStdvuFnsOHO6f1XVDMZHgkDhQZrC04DNFZYgAhyAsFOdjk/NmqprgGL
 R888tLjyzguPUC9poWAhvqozzhYxlDBox8hc9CiUFioam4LB1ol7Z43Ig7xNZPIuYc
 ci+a71SEvpAeaZ206s0SIHPO1Hsm/lRY3Oa8QqJUhstSI2Fu6e08jbnNfafhJPXDNm
 jpppC1iKF32jSGer3oSrhGZKUsHod8KlyoDsJf2iTpiz8Okej8SDquRJwAY5LEOKqk
 Od+SPOsJCPlfJYEaBXQDM7+HYuSaZOlw4SxDwpoAm0sMaE4a0Wj72wym337xcS/HwT
 1gbY6Zbr78NdQ==
X-Nifty-SrcIP: [126.205.3.112]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: linux-arm-kernel@lists.infradead.org, Dinh Nguyen <dinguyen@kernel.org>
Subject: [PATCH] ARM: dts: socfpga: update to new Denali NAND binding
Date: Fri, 21 Jun 2019 20:23:06 +0900
Message-Id: <20190621112306.17769-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_042339_358665_D5413496 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With commit d8e8fd0ebf8b ("mtd: rawnand: denali: decouple controller
and NAND chips"), the Denali NAND controller driver migrated to the
new controller/chip representation.

Update DT for it.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/boot/dts/socfpga.dtsi                |  2 +-
 arch/arm/boot/dts/socfpga_arria10.dtsi        |  2 +-
 .../boot/dts/socfpga_arria10_socdk_nand.dts   | 20 ++++++++++++-------
 3 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/socfpga.dtsi b/arch/arm/boot/dts/socfpga.dtsi
index ec1966480f2f..90d6d0d4417d 100644
--- a/arch/arm/boot/dts/socfpga.dtsi
+++ b/arch/arm/boot/dts/socfpga.dtsi
@@ -747,7 +747,7 @@
 
 		nand0: nand@ff900000 {
 			#address-cells = <0x1>;
-			#size-cells = <0x1>;
+			#size-cells = <0x0>;
 			compatible = "altr,socfpga-denali-nand";
 			reg = <0xff900000 0x100000>,
 			      <0xffb80000 0x10000>;
diff --git a/arch/arm/boot/dts/socfpga_arria10.dtsi b/arch/arm/boot/dts/socfpga_arria10.dtsi
index ae24599d5829..677394153f4d 100644
--- a/arch/arm/boot/dts/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10.dtsi
@@ -659,7 +659,7 @@
 
 		nand: nand@ffb90000 {
 			#address-cells = <1>;
-			#size-cells = <1>;
+			#size-cells = <0>;
 			compatible = "altr,socfpga-denali-nand";
 			reg = <0xffb90000 0x72000>,
 			      <0xffb80000 0x10000>;
diff --git a/arch/arm/boot/dts/socfpga_arria10_socdk_nand.dts b/arch/arm/boot/dts/socfpga_arria10_socdk_nand.dts
index e36e0a0f8aa6..9bd9e04c7361 100644
--- a/arch/arm/boot/dts/socfpga_arria10_socdk_nand.dts
+++ b/arch/arm/boot/dts/socfpga_arria10_socdk_nand.dts
@@ -9,12 +9,18 @@
 &nand {
 	status = "okay";
 
-	partition@nand-boot {
-		label = "Boot and fpga data";
-		reg = <0x0 0x1C00000>;
-	};
-	partition@nand-rootfs {
-		label = "Root Filesystem - JFFS2";
-		reg = <0x1C00000 0x6400000>;
+	nand@0 {
+		reg = <0>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+
+		partition@0 {
+			label = "Boot and fpga data";
+			reg = <0x0 0x1C00000>;
+		};
+		partition@1c00000 {
+			label = "Root Filesystem - JFFS2";
+			reg = <0x1C00000 0x6400000>;
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
