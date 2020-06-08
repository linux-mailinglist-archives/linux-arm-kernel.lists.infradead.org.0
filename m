Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28ABB1F25F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R6ZhKWcsJUmNLCmut7Vm5Me9783frC6wkATBGqUpAA4=; b=iCuw9/HvqlwcmJ
	maqbaUKf8t0kAhYX+QfD43MJgu9EURXGYN0LvwGtA2HOuy/azOqf4tBoOoWg5YaL+/aeJOLC8nf6U
	MibmK10xLDhxjL6AOEv8IXFK3ikrViuRgP8+QVwUpvg7PbBAzULotHXdFsMYlHP2UEgygj2lPzq45
	0t9gA4Lfz0e82Xs4QYNCzo5yJxd9LKsMtjqoQGcfKVbJ6+PSyvBlMMm6V1UnnzdmKSAxGRqbZvBLx
	naHXQXUa9DCsiwGXEsPYs/UFZtZPortmnsv/b5qGf5oncWWzaBuVcmzXYdJtH84miGgKHuAsH8ZOv
	9c40Ny9cj8YBWuNREC4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRKY-0005gJ-CV; Mon, 08 Jun 2020 23:37:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR2F-0004zz-0r
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 23:18:32 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ACC8F2088E;
 Mon,  8 Jun 2020 23:18:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658310;
 bh=5LLjVvfKIhhhhAkFZRcbjo1i0HT3vVmmCAbHlZmRPu0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=nqMOUOUXzw7EppOfjI6E/lRtrNk2N5ggpW4fFArH6JQlNa0IoONwRe5wFmK9IzfxF
 aQAvfIne7v53da6KEFDzRn9AhVQKXdU4cbh0widUUOBsQ6xUeJtCCQ7ayr4MIsyX8V
 XEHJEJ9jYwpl+C/9QHpCm4OXC2CLebkg8+06JA1M=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 311/606] ARM: dts: mmp3-dell-ariel: Fix the SPI
 devices
Date: Mon,  8 Jun 2020 19:07:16 -0400
Message-Id: <20200608231211.3363633-311-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608231211.3363633-1-sashal@kernel.org>
References: <20200608231211.3363633-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161831_117276_6F7886E1 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lubomir Rintel <lkundrak@v3.sk>

[ Upstream commit 233cbffaa0b9ca874731efee67a11f005da1f87c ]

I've managed to get about everything wrong while digging these out of
OEM's board file.

Correct the bus numbers, the exact model of the NOR flash, polarity of
the chip selects and align the SPI frequency with the data sheet.

Tested that it works now, with a slight fix to the PXA SSP driver.

Link: https://lore.kernel.org/r/20200419171157.672999-16-lkundrak@v3.sk
Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Cc: <stable@vger.kernel.org>
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/mmp3-dell-ariel.dts | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/mmp3-dell-ariel.dts b/arch/arm/boot/dts/mmp3-dell-ariel.dts
index 15449c72c042..b0ec14c42164 100644
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
