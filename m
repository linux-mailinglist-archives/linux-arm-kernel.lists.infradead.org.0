Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C39F71DEA23
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 16:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lkq84kq/TByoYJyDGwoEl/tCMccreM3Plu7dfGEwp5Q=; b=HyjxFv7HB3nq2+
	18l90fpnHGFT7vrsbhzgrWYf7juLw2lkt0Zezhq12KIhxjTqbMPHO/Ny1oDi0E/Y4/E0gVg1Fynsb
	yVEkcvLBWtNbgANTf8NalLWf0ODmc90xW0642KVsW/rmvT4MjdzMGncVI73JJz4lhU9uJkxuRXcJO
	PdzkXbl9U65W+jydYAoQGbXHZDAx/6QqYgncjA8d7Crl3YzdPVfXlSgHtHonw4LpztTNubyFwNGQa
	QeTMtPLipJ+wCvDPxFcWjPtL4io+r24lD1JN+5JnWTxa168CzQlygnVSsog9b8/W8/dkZ52R3/kmU
	yZk5bG6RouOyFtJQZ7tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc93I-0004Bt-6I; Fri, 22 May 2020 14:53:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc901-0007TO-0N
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 14:50:15 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AE4B92245D;
 Fri, 22 May 2020 14:50:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590159012;
 bh=BYyPzYkx4ERUweSk9BWxGWyjc7yozBVun6QzBUsgIKA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EBAoQ5ccC+pfpDBZhy71LJSQBFNfUlwi1/tQ1973v5AITP7blSjw3z7w7hQEsKXbH
 9AlRGvMVoXP9Jo2WLtCvy1HTE5rDloQaKlpQCsYPNw9AMaOyZ9CsKKN3LzzYzrsPVe
 pPu5kHG1PAUb6/y9cq2bKTNWIqVfDEAijh8IDG4g=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 11/41] ARM: dts: omap4-droid4: Fix occasional lost
 wakeirq for uart1
Date: Fri, 22 May 2020 10:49:28 -0400
Message-Id: <20200522144959.434379-11-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200522144959.434379-1-sashal@kernel.org>
References: <20200522144959.434379-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_075013_170615_73403240 
X-CRM114-Status: GOOD (  14.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maemo-leste@lists.dyne.org, Sasha Levin <sashal@kernel.org>,
 devicetree@vger.kernel.org, Tony Lindgren <tony@atomide.com>,
 Merlijn Wajer <merlijn@wizzup.org>, Sebastian Reichel <sre@kernel.org>,
 Pavel Machek <pavel@ucw.cz>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tony Lindgren <tony@atomide.com>

[ Upstream commit 738b150ecefbffb6e55cfa8a3b66a844f777d8fb ]

Looks like using the UART CTS pin does not always trigger for a wake-up
when the SoC is idle.

This is probably because the modem first uses gpio_149 to signal the SoC
that data will be sent, and the CTS will only get used later when the
data transfer is starting.

Let's fix the issue by configuring the gpio_149 pad as the wakeirq for
UART. We have gpio_149 managed by the USB PHY for powering up the right
USB mode, and after that, the gpio gets recycled as the modem wake-up
pin. If needeed, the USB PHY can also later on be configured to use
gpio_149 pad as the wakeirq as a shared irq.

Let's also configure the missing properties for uart-has-rtscts and
current-speed for the modem port while at it. We already configure the
hardware flow control pins with uart1_pins pinctrl setting.

Cc: maemo-leste@lists.dyne.org
Cc: Merlijn Wajer <merlijn@wizzup.org>
Cc: Pavel Machek <pavel@ucw.cz>
Cc: Sebastian Reichel <sre@kernel.org>
Signed-off-by: Tony Lindgren <tony@atomide.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/motorola-mapphone-common.dtsi | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/motorola-mapphone-common.dtsi b/arch/arm/boot/dts/motorola-mapphone-common.dtsi
index 01ea9a1e2c86..06fbffa81636 100644
--- a/arch/arm/boot/dts/motorola-mapphone-common.dtsi
+++ b/arch/arm/boot/dts/motorola-mapphone-common.dtsi
@@ -723,14 +723,18 @@
 };
 
 /*
- * As uart1 is wired to mdm6600 with rts and cts, we can use the cts pin for
- * uart1 wakeirq.
+ * The uart1 port is wired to mdm6600 with rts and cts. The modem uses gpio_149
+ * for wake-up events for both the USB PHY and the UART. We can use gpio_149
+ * pad as the shared wakeirq for the UART rather than the RX or CTS pad as we
+ * have gpio_149 trigger before the UART transfer starts.
  */
 &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>;
 	interrupts-extended = <&wakeupgen GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH
-			       &omap4_pmx_core 0xfc>;
+			       &omap4_pmx_core 0x110>;
+	uart-has-rtscts;
+	current-speed = <115200>;
 };
 
 &uart3 {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
