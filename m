Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE2E105FE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 06:28:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GOchEpzDMMjek76qRSscUIaW45QqVLfcdf03AKQkX2o=; b=U+s5Zz6gaJth/H
	wSVnFZv6qcRkhrFOffjgMx7u+D6KLtpzJnvYXtEhqV8MhQyBuDP+gCu6s6MG8Jyuq3mwx6WVtC4pT
	8hh+4KZ9xn8s74zbcEd6gWaixFHfVcYOP/S/j70Kb05L0Zjdd8p15kaiyN1UZ3ADZLijSGu0FQKv9
	mNdf3XwDZ2fO7gSYgrOaipgsqcNRHZMV+8Ahz/AEh8lKzvl2eK3ZRsz4cQPHclIIgXFw/8Z1jeY5D
	DwemHLyUlgiDmHSYw30BpAZlUr2c8TKvZz0Y7zEVAz5XKbFwWz2UJXY9XBo0iML3niPGs5ln4kVol
	7yxdyXfaKYAitdEzDIlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY1Ux-0006le-NY; Fri, 22 Nov 2019 05:28:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY1Up-0006kx-IX
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 05:28:44 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8065620715;
 Fri, 22 Nov 2019 05:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574400523;
 bh=WszExPIIwxHba7R4ODtPaqd+zT5cyG2VdXTU71sfmK8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OSkm9qSFop3U93gMYFX6IKBQDMBu/5rpLxRhiLZ67FbJvVzb5YRmVpxI6c3qZCAE2
 HAKBrPDy2bcv8spNlNJCIurf0dFm9Se5V9+h6XxbtNITQrkrOEZG+zUAklq6k7dtdr
 8+qyji7VwYrUdEaT7mhW/VJjRlWspwiyLgHRiB7k=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 004/219] arm64: dts: marvell: armada-37xx: Enable
 emmc on espressobin
Date: Fri, 22 Nov 2019 00:25:02 -0500
Message-Id: <20191122052837.357-4-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191122052837.357-1-sashal@kernel.org>
References: <20191122052837.357-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_212843_629349_6707C096 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Ding Tao <miyatsu@qq.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ding Tao <miyatsu@qq.com>

[ Upstream commit 43ebc7c1b3ed8198b9acf3019eca16e722f7331c ]

The ESPRESSObin board has a emmc interface available on U11: declare it
and let the bootloader enable it if the emmc is present.

[gregory.clement@bootlin.com: disable the emmc by default]
Signed-off-by: Ding Tao <miyatsu@qq.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../dts/marvell/armada-3720-espressobin.dts   | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
index 3ab25ad402b90..846003bb480cd 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dts
@@ -60,9 +60,31 @@
 	cd-gpios = <&gpionb 3 GPIO_ACTIVE_LOW>;
 	marvell,pad-type = "sd";
 	vqmmc-supply = <&vcc_sd_reg1>;
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdio_pins>;
 	status = "okay";
 };
 
+/* U11 */
+&sdhci0 {
+	non-removable;
+	bus-width = <8>;
+	mmc-ddr-1_8v;
+	mmc-hs400-1_8v;
+	marvell,xenon-emmc;
+	marvell,xenon-tun-count = <9>;
+	marvell,pad-type = "fixed-1-8v";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc_pins>;
+/*
+ * This eMMC is not populated on all boards, so disable it by
+ * default and let the bootloader enable it, if it is present
+ */
+	status = "disabled";
+};
+
 &spi0 {
 	status = "okay";
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
