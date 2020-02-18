Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EA9E163516
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 22:33:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=195B41wxrporB9vaa29iJ/7rc8gXZAXuqdZlmjiKF7k=; b=Hkbybr+EAdEf/MXuyihTJAMpTa
	1RCr3Pw/5agjDN7VQiqH4uLUD4ASwub4Mihp8pWe4mFDFXNpyKKY1mYJgOBwmIw6I386nzH0UnvCB
	mZHVdRCB93vVGSppFCxfJ340qZvoVTbBMJmgZko0wqjHnYBE+GQW2bmgQn7iJlPQjIXY2y5F6qbIW
	97xhdZvEVzmiaD64ebGupp8BXqyyYtLyk3/L0iuiuMAUqTXYp/A6PpqPjGCUkqzTAyq/8UIXVhyUL
	uJkWiBt8753zx1phYSLQFPTsO7deM5MgjApbKEDI0ExZjOaMoeYMlwjjL8p2+oSaVagd7mLVAwUMV
	0HvTt0Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4AUV-0001Ih-4y; Tue, 18 Feb 2020 21:33:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ATd-0000a2-8E; Tue, 18 Feb 2020 21:32:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5DC6B1FB;
 Tue, 18 Feb 2020 13:32:20 -0800 (PST)
Received: from DESKTOP-VLO843J.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id EA1A63F68F;
 Tue, 18 Feb 2020 13:32:18 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	heiko@sntech.de
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Describe RK3328 GPIO_MUTE users
Date: Tue, 18 Feb 2020 21:32:00 +0000
Message-Id: <53637c0359ad9473dc1391a8428ba21017ec467e.1581376744.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1581376744.git.robin.murphy@arm.com>
References: <cover.1581376744.git.robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_133221_379030_8B45577F 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 pgwipeout@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add explicit properties to describe existing boards' GPIO_MUTE usage
for the analog codec.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: no change

 arch/arm64/boot/dts/rockchip/rk3328-a1.dts     | 1 +
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
index 16f1656d5203..797e90a3ac92 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
@@ -60,6 +60,7 @@
 };
 
 &codec {
+	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 62936b432f9a..bf3e546f5266 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -104,6 +104,7 @@
 };
 
 &codec {
+	mute-gpios = <&grf_gpio 0 GPIO_ACTIVE_LOW>;
 	status = "okay";
 
 	port@0 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
