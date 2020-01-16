Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB06E13EB48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 18:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abQi8d8e3Y5cngImLc3lIcijZSeSBnIMwLTI2M4IjOU=; b=TUvx9EeFkVZG25
	zbWXHpkNz9i0oUVGCdkAL0qZC3OuQeJPVqHADbf2FE/TnTAw1yKrOroBhCcBgEkNyhO5RoRn/yDMt
	X33zuisnebmiGnDC/v+fKYQt86H+LnIRHU4BvQ6XBCOPvO6rChIWeZI9KWW9N4wfikdRgGuyfteq8
	zbNk/taTp5qKX/xu9N+4PL+YlKbuwFfg1hL+t2V1bhAjdyeQBmp/M1mP3ZACS49R8NLUC45tT0/Z4
	Xze1rjsdew8lpbc05tuqNF0Sjg2+JUpKkHFiHsCEXq6Wtg/FckFNBtZDheB60/NVQTuuV904TZUSt
	c9Yd9lOYH7PzWfESzNzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9GW-0008Ai-F7; Thu, 16 Jan 2020 17:49:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8iy-0007tX-B9
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:14:32 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1787D246B2;
 Thu, 16 Jan 2020 17:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579194866;
 bh=IsIQlCAKLjxmjSdijTYiULQA7efHkUvHXQUo4paPNIs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=APcXt/Ybt9vx0AZ6GR+pcLWY9EmHXEq7Cg0fUjrsMCdPqI0hphTUubhMr+ypS9j+V
 S6N3gIk04wlHzKBfwWtLqWa1BGJdIocPU1alZSaZv51GyQalwqGOBGs5XF4A46uFBH
 tnYHSD8XIeW75onmiiFZ0I2RCqcnMJr4uKZfh+5I=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 660/671] arm64: dts: juno: Fix UART frequency
Date: Thu, 16 Jan 2020 12:04:58 -0500
Message-Id: <20200116170509.12787-397-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_091428_442073_9D7469AC 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Andre Przywara <andre.przywara@arm.com>, Liviu Dudau <liviu.dudau@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andre Przywara <andre.przywara@arm.com>

[ Upstream commit 39a1a8941b27c37f79508426e27a2ec29829d66c ]

Older versions of the Juno *SoC* TRM [1] recommended that the UART clock
source should be 7.2738 MHz, whereas the *system* TRM [2] stated a more
correct value of 7.3728 MHz. Somehow the wrong value managed to end up in
our DT.

Doing a prime factorisation, a modulo divide by 115200 and trying
to buy a 7.2738 MHz crystal at your favourite electronics dealer suggest
that the old value was actually a typo. The actual UART clock is driven
by a PLL, configured via a parameter in some board.txt file in the
firmware, which reads 7.37 MHz (sic!).

Fix this to correct the baud rate divisor calculation on the Juno board.

[1] http://infocenter.arm.com/help/topic/com.arm.doc.ddi0515b.b/DDI0515B_b_juno_arm_development_platform_soc_trm.pdf
[2] http://infocenter.arm.com/help/topic/com.arm.doc.100113_0000_07_en/arm_versatile_express_juno_development_platform_(v2m_juno)_technical_reference_manual_100113_0000_07_en.pdf

Fixes: 71f867ec130e ("arm64: Add Juno board device tree.")
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/arm/juno-clocks.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/arm/juno-clocks.dtsi b/arch/arm64/boot/dts/arm/juno-clocks.dtsi
index e5e265dfa902..2870b5eeb198 100644
--- a/arch/arm64/boot/dts/arm/juno-clocks.dtsi
+++ b/arch/arm64/boot/dts/arm/juno-clocks.dtsi
@@ -8,10 +8,10 @@
  */
 / {
 	/* SoC fixed clocks */
-	soc_uartclk: refclk7273800hz {
+	soc_uartclk: refclk7372800hz {
 		compatible = "fixed-clock";
 		#clock-cells = <0>;
-		clock-frequency = <7273800>;
+		clock-frequency = <7372800>;
 		clock-output-names = "juno:uartclk";
 	};
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
