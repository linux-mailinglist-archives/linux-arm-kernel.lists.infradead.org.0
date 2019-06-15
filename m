Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A49C470EE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 17:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71lyTEu13zf99la11vLrNnzlKvN/ApvTPWZuajhFlvE=; b=neJFNjcET2H/9x
	TKZ/JaQ2WhS04kicG22PKPSeceb8Ta5wiG/3YnuYytUioBWd3GdkCxc9DkirmLWYSJ7xW8BW1nXft
	cj9scxXKNi6FruRSWgHVQEXe2SJVpkqIXFrOolwXn4fOr9uc0jfvtw/mtuuSN8TVSCpHEF2aieq2u
	cO2CLwlSYL9PwQJ5xAE3ZrxUMJO1CNRtPykQbKR6g8oFxN5FpOF9Mwb1ZECSTaS0NiOgerwtYFW0B
	maF0tnF0EaDbIcgQUs9Hl1jU+gKRZ4mwWmmOY1NrcH2nCizmIslKnygaWE+uZYvAjxZ004fk0Gdtj
	0qTWFyjG5jM/ihgOZHAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcAew-0007lY-W9; Sat, 15 Jun 2019 15:32:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcAda-00077d-6l; Sat, 15 Jun 2019 15:30:41 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hcAdY-0002kc-38; Sat, 15 Jun 2019 17:30:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: rockchip: enable rk3328 watchdog clock
Date: Sat, 15 Jun 2019 17:30:32 +0200
Message-Id: <20190615153032.27772-3-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190615153032.27772-1-heiko@sntech.de>
References: <20190615153032.27772-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_083038_435205_7E36F2E9 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Heiko Stuebner <heiko@sntech.de>, sboyd@kernel.org, mturquette@baylibre.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, papadakospan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Leonidas P. Papadakos <papadakospan@gmail.com>

Add the missing clock property for the watchdog on rk3328.

Signed-off-by: Leonidas P. Papadakos <papadakospan@gmail.com>
[set wdt node to always enabled, as it is not board-specific]
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 994468671b19..e9fefd8a7e02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -407,6 +407,7 @@
 		compatible = "snps,dw-wdt";
 		reg = <0x0 0xff1a0000 0x0 0x100>;
 		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru PCLK_WDT>;
 	};
 
 	pwm0: pwm@ff1b0000 {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
