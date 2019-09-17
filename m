Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CE90B497B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 10:29:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ER1npvI3tu/o4S4Q+ATLHLAAcXxeQy+39hhAuPBohEs=; b=mjre0zFwRyS5uD
	T8gWQ6FhhNH09Aw5Dp6R8CCFSO2uUDHC8ZRTsAkS3ZQDzGy1s62a88WQO9EIVjZPI3zWgu2Ye8+f4
	W/TH1JxksFxLI/N20itWy2hzai9hcVrBi23HeBMK5xw2Hu4DlGK0xZU7YrK6x1Tx5nbuDECSKMmqj
	O7cRlNdaSvkpYLnqVQDe7D+zq7GJm3xm8vJRJGUWq/bjxpcZRvOi+mUZGnFanJF3WkgJ9hFyuYCTy
	rTeqEoJNuQ9JwEnBxcoSxLne+7DEKxFQhrQDCgy16PRcfapbnDhA4G9LP1zsVfJRvjOd6colu0NXg
	eTwkzWCehpp8KfJVTshA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA8rW-0003vi-OU; Tue, 17 Sep 2019 08:29:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA8pM-0002Hc-Ph; Tue, 17 Sep 2019 08:27:14 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iA8pJ-0005ZY-02; Tue, 17 Sep 2019 10:27:09 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/13] arm64: dts: rockchip: move px30-evb console output to
 uart 5
Date: Tue, 17 Sep 2019 10:26:53 +0200
Message-Id: <20190917082659.25549-7-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190917082659.25549-1-heiko@sntech.de>
References: <20190917082659.25549-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_012713_088986_48259B33 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The px30-evb exposes uart2 through a uart-to-usb converter on the board
but these pins are shared with the sdmmc controller. With both activated
this results in a race condition depending in the probe order.
Whichever of the two probes first will break the other peripheral.

The px30-evb also exposes uart5 through pin its pin headers, so it's way
saner to use these pins for serial output and keep the sdmmc working in
all cases.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 6d50f6abcb48..80524afe94da 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -14,7 +14,7 @@
 	compatible = "rockchip,px30-evb", "rockchip,px30";
 
 	chosen {
-		stdout-path = "serial2:1500000n8";
+		stdout-path = "serial5:115200n8";
 	};
 
 	adc-keys {
@@ -454,7 +454,7 @@
 	status = "okay";
 };
 
-&uart2 {
+&uart5 {
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
