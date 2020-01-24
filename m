Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 592FC14870E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:20:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9BKGax9tKpk2PgGpKv3vfJHfDFqIw/B9WTUI9HHR+g=; b=Gz7O3nJmo4M1QU
	1yhZ+Sp2cMwStqgprp72QiAUwIlH446VyP3E2ncoaaJPPvF5mD/covAC/UjG7du363gKg+UaEJ1GH
	J+bZYJgAqvL4YZBm+GnbpHq2m1LJ1yRXW6woxbie7ik7Yp0WGeAeOBuC+kNsQWEHD62eHlvxsTJBD
	Hw9Y3jRskX7CUcvbs2Z6xRkEVvVTFlgb7CGcPbl1CewYXgWGtcqd0IJo2NMNq2OJwZieZRpC4On70
	n9lAyeS9sRErenR+sPyLnUrAiwm2wMrQIEOdmyjxDkJXdjw809yfNQ/PQtR2Mt6Dx403N069HfPIW
	2ExY7cV1VcixK6nkAc8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuzp4-0002Hb-4D; Fri, 24 Jan 2020 14:20:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuzn2-0000Yk-Lm
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:18:30 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 434C62087E;
 Fri, 24 Jan 2020 14:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579875508;
 bh=HLGLxSrsXy20mO7PpmbyNdO1rFVVjTyzEN2g0d2ZYoA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=OpcpCvFmciq7INya800Y+JT9ucmfoZcvUyT362+B+TcwA+gwnlVFyIHV0ytdBZqpU
 V09mvoXnkidSXeHti9tRKAle0OgZqvIWRON0ykwkCigJJ2j4s0OZzZKhwnEn/IF9JV
 tvzPRik9UOkPrnyw6QfyVrH7O+cSsHW7oexgThp0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 009/107] ARM: dts: am57xx-beagle-x15/am57xx-idk:
 Remove "gpios" for endpoint dt nodes
Date: Fri, 24 Jan 2020 09:16:39 -0500
Message-Id: <20200124141817.28793-9-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124141817.28793-1-sashal@kernel.org>
References: <20200124141817.28793-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_061828_780225_A3E4FB6F 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Kishon Vijay Abraham I <kishon@ti.com>

[ Upstream commit 81cc0877840f72210e809bbedd6346d686560fc1 ]

PERST# line in the PCIE connector is driven by the host mode and not
EP mode. The gpios property here is used for driving the PERST# line.
Remove gpios property from all endpoint device tree nodes.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/am571x-idk.dts                | 4 ----
 arch/arm/boot/dts/am572x-idk-common.dtsi        | 4 ----
 arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi | 4 ----
 3 files changed, 12 deletions(-)

diff --git a/arch/arm/boot/dts/am571x-idk.dts b/arch/arm/boot/dts/am571x-idk.dts
index 0aaacea1d887b..975a6b1d3fc80 100644
--- a/arch/arm/boot/dts/am571x-idk.dts
+++ b/arch/arm/boot/dts/am571x-idk.dts
@@ -170,10 +170,6 @@
 	gpios = <&gpio3 23 GPIO_ACTIVE_HIGH>;
 };
 
-&pcie1_ep {
-	gpios = <&gpio3 23 GPIO_ACTIVE_HIGH>;
-};
-
 &mmc1 {
 	pinctrl-names = "default", "hs";
 	pinctrl-0 = <&mmc1_pins_default_no_clk_pu>;
diff --git a/arch/arm/boot/dts/am572x-idk-common.dtsi b/arch/arm/boot/dts/am572x-idk-common.dtsi
index a064f13b38802..ddf123620e962 100644
--- a/arch/arm/boot/dts/am572x-idk-common.dtsi
+++ b/arch/arm/boot/dts/am572x-idk-common.dtsi
@@ -147,10 +147,6 @@
 	gpios = <&gpio3 23 GPIO_ACTIVE_HIGH>;
 };
 
-&pcie1_ep {
-	gpios = <&gpio3 23 GPIO_ACTIVE_HIGH>;
-};
-
 &mailbox5 {
 	status = "okay";
 	mbox_ipu1_ipc3x: mbox_ipu1_ipc3x {
diff --git a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
index bc76f1705c0f6..9a94c96b0350e 100644
--- a/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
+++ b/arch/arm/boot/dts/am57xx-beagle-x15-common.dtsi
@@ -547,10 +547,6 @@
 	gpios = <&gpio2 8 GPIO_ACTIVE_LOW>;
 };
 
-&pcie1_ep {
-	gpios = <&gpio2 8 GPIO_ACTIVE_LOW>;
-};
-
 &mcasp3 {
 	#sound-dai-cells = <0>;
 	assigned-clocks = <&l4per2_clkctrl DRA7_L4PER2_MCASP3_CLKCTRL 24>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
