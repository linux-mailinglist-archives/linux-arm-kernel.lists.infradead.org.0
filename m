Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 824C91416D8
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 10:40:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oV4KOeGoCZH7xHmz/sgltLYLVIiGN4GCftOEYqUGEGM=; b=tQQ37/QE3fkghX
	G3Wg56Z5dCljTla9qVJLQ/rUY0xTk7PAT/k5y1vsaI5yoouyQfffvTJQ0o9toc8TPZ9WTn0/zs5rp
	6kExEihC4OsSD9LQuFciRfJ15aVIDOj5luH10zny/6srQtJXaDv9ZO/pJZpuiVU8PTJ84+I7OVYaU
	VHvbgTDl3UXoTQEVrxVAnol00Y1uG/kNO6///97heFW8z08Yr7qq+Jo2g23mAa76TssUWJ8N9rYfk
	lBx74jLetr9ZZirCrHtI3/w910JU/QDVU4L39iNj65v0sdviilmG7UkGBQeViyR73Q/Pu+TKeO8Bz
	6jCpbEShTLh5Bxzb6xKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iskZo-0006Ol-Be; Sat, 18 Jan 2020 09:39:32 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iskZa-0006Hi-Bc
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 09:39:20 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 98184DFE50;
 Sat, 18 Jan 2020 09:39:11 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id kxu7qTFbk0fu; Sat, 18 Jan 2020 09:39:10 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 61058DFE68;
 Sat, 18 Jan 2020 09:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id 6CHdSDrZ5C6U; Sat, 18 Jan 2020 09:39:10 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id F1D9CDFDB5;
 Sat, 18 Jan 2020 09:39:09 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 1/2] ARM: dts: mmp3: Fix the TWSI ranges
Date: Sat, 18 Jan 2020 10:38:57 +0100
Message-Id: <20200118093858.326659-2-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200118093858.326659-1-lkundrak@v3.sk>
References: <20200118093858.326659-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_013918_547452_DC4F5EAB 
X-CRM114-Status: UNSURE (   6.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lubomir Rintel <lkundrak@v3.sk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The register blocks don't occupy 4K. In fact, some blocks are packed
close to others and assuming they're 4K causes overlaps:

  pxa2xx-i2c d4033800.i2c: can't request region for resource
    [mem 0xd4033800-0xd40347ff]

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/mmp3.dtsi b/arch/arm/boot/dts/mmp3.dtsi
index 1eba7fb6629b5..59a108e49b41e 100644
--- a/arch/arm/boot/dts/mmp3.dtsi
+++ b/arch/arm/boot/dts/mmp3.dtsi
@@ -400,7 +400,7 @@ gcb5: gpio@d4019108 {
 
 			twsi1: i2c@d4011000 {
 				compatible = "mrvl,mmp-twsi";
-				reg = <0xd4011000 0x1000>;
+				reg = <0xd4011000 0x70>;
 				interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&soc_clocks MMP2_CLK_TWSI0>;
 				resets = <&soc_clocks MMP2_CLK_TWSI0>;
@@ -412,7 +412,7 @@ twsi1: i2c@d4011000 {
 
 			twsi2: i2c@d4031000 {
 				compatible = "mrvl,mmp-twsi";
-				reg = <0xd4031000 0x1000>;
+				reg = <0xd4031000 0x70>;
 				interrupt-parent = <&twsi_mux>;
 				interrupts = <0>;
 				clocks = <&soc_clocks MMP2_CLK_TWSI1>;
@@ -424,7 +424,7 @@ twsi2: i2c@d4031000 {
 
 			twsi3: i2c@d4032000 {
 				compatible = "mrvl,mmp-twsi";
-				reg = <0xd4032000 0x1000>;
+				reg = <0xd4032000 0x70>;
 				interrupt-parent = <&twsi_mux>;
 				interrupts = <1>;
 				clocks = <&soc_clocks MMP2_CLK_TWSI2>;
@@ -436,7 +436,7 @@ twsi3: i2c@d4032000 {
 
 			twsi4: i2c@d4033000 {
 				compatible = "mrvl,mmp-twsi";
-				reg = <0xd4033000 0x1000>;
+				reg = <0xd4033000 0x70>;
 				interrupt-parent = <&twsi_mux>;
 				interrupts = <2>;
 				clocks = <&soc_clocks MMP2_CLK_TWSI3>;
@@ -449,7 +449,7 @@ twsi4: i2c@d4033000 {
 
 			twsi5: i2c@d4033800 {
 				compatible = "mrvl,mmp-twsi";
-				reg = <0xd4033800 0x1000>;
+				reg = <0xd4033800 0x70>;
 				interrupt-parent = <&twsi_mux>;
 				interrupts = <3>;
 				clocks = <&soc_clocks MMP2_CLK_TWSI4>;
@@ -461,7 +461,7 @@ twsi5: i2c@d4033800 {
 
 			twsi6: i2c@d4034000 {
 				compatible = "mrvl,mmp-twsi";
-				reg = <0xd4034000 0x1000>;
+				reg = <0xd4034000 0x70>;
 				interrupt-parent = <&twsi_mux>;
 				interrupts = <4>;
 				clocks = <&soc_clocks MMP2_CLK_TWSI5>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
