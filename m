Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3E81416DB
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 10:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r82wwYk88tJRoBrZMWvA5vuCg8DvPk1NRO+0U0gm+JM=; b=d++nk7k7uWOK++
	ut8HK7X5u8Yk9YzOX43p5aVLiLZanvJ3x8oUd3XT97drdY/oWJ2noGVxm+jLecBhTi7YDrwu2L59v
	0Khd75fWLEjSdGwnmm6d4BqmI1xvu1s/Bj2O4h+x3uTJ5nuNBB7JpqKtqDBR4MOmO/m5krPxjUIJq
	/Al7rmIFHK4RpQPYeeoxc0XQIX6QDJTC2M/w2OpyK8Yx2yS+A2tXGC+2ImEn+07qI/AFr6so06F/t
	q8n8etLrP+ubRDXH0C8upMs3x3Jl1+g5UQZGbXQA3DU695lVNE0DwuyFbnHi/H6CQDRtJvWRMNBde
	LNWnn39igGpFvNwOnelw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iskZi-0006JI-OS; Sat, 18 Jan 2020 09:39:26 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iskZa-0006Hl-9c
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 09:39:20 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 8C2B8DFE68;
 Sat, 18 Jan 2020 09:39:12 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id Ad-3PFtHFBS6; Sat, 18 Jan 2020 09:39:10 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id AD7DDDFDB5;
 Sat, 18 Jan 2020 09:39:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id D5FO8EMxwEGj; Sat, 18 Jan 2020 09:39:10 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 3A395DFD99;
 Sat, 18 Jan 2020 09:39:10 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Olof Johansson <olof@lixom.net>
Subject: [PATCH 2/2] ARM: dts: mmp3-dell-ariel: Fix the SPI devices
Date: Sat, 18 Jan 2020 10:38:58 +0100
Message-Id: <20200118093858.326659-3-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200118093858.326659-1-lkundrak@v3.sk>
References: <20200118093858.326659-1-lkundrak@v3.sk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_013918_483829_E8BF6D68 
X-CRM114-Status: UNSURE (   7.88  )
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

I've managed to get about everything wrong while digging these out of
OEM's board file.

Correct the bus numbers, the exact model of the NOR flash, polarity of
the chip selects and align the SPI frequency with the data sheet.

Tested that it works now, with a slight fix to the PXA SSP driver.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
---
 arch/arm/boot/dts/mmp3-dell-ariel.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/mmp3-dell-ariel.dts b/arch/arm/boot/dts/mmp3-dell-ariel.dts
index 15449c72c042b..b0ec14c421641 100644
--- a/arch/arm/boot/dts/mmp3-dell-ariel.dts
+++ b/arch/arm/boot/dts/mmp3-dell-ariel.dts
@@ -98,19 +98,19 @@ &twsi4 {
 	status = "okay";
 };
 
-&ssp3 {
+&ssp1 {
 	status = "okay";
-	cs-gpios = <&gpio 46 GPIO_ACTIVE_HIGH>;
+	cs-gpios = <&gpio 46 GPIO_ACTIVE_LOW>;
 
 	firmware-flash@0 {
-		compatible = "st,m25p80", "jedec,spi-nor";
+		compatible = "winbond,w25q32", "jedec,spi-nor";
 		reg = <0>;
-		spi-max-frequency = <40000000>;
+		spi-max-frequency = <104000000>;
 		m25p,fast-read;
 	};
 };
 
-&ssp4 {
-	cs-gpios = <&gpio 56 GPIO_ACTIVE_HIGH>;
+&ssp2 {
+	cs-gpios = <&gpio 56 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
