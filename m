Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BCF1697A2
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxz/p2/3AXm1vWxyL0Aqk2xxifVjWRvyx0LPcvkVEnM=; b=sCYW+1G9i9Y+Kw
	+g+Cg4LKJ+hi09dprj0mmo1Y4FXUVpUvfSp7Zur7mjxNpWHC/L0m5NYjvgLwc9q/I939j5+ARtR7a
	pph+V7O8UgSB5bjlCLHigjlkixxR59wflInYeHrmLYUQr/rgPcCsxMz3+XY0hsvo2EWwd7/ywy9F5
	g0gQpBRxgGSJfhjEwRt0A5E10drlY7e/YyaQJ0rKRqZkT3WZspOVnP74OH4nBAWfsla1kxY74Nmkx
	PKz7u9Yr20s9I3ENOGzDYe4qmqjVMhxjSIHW+2S4jRCDnXwXEwLIt/Q6gYXfQgkuN9AVfV08OFfxf
	U5ULuTzcI0kNBqfEI6SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5r6I-0004Am-Iw; Sun, 23 Feb 2020 13:15:14 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5r5v-00049N-IF
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 13:14:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582463690; bh=O0vRhY+V2Jl0M2obAxrjSnldPLPIOsBZnIOFMxJMK+c=;
 h=From:To:Cc:Subject:Date:References:From;
 b=mJC075OALCfwecGtghLUWPgvLx+ENTajLDet/rRYECHBD3H+iU5h22uyPSOneXWA6
 bbpu90eCtl56eNcxBQGRX+/cQmM2Web00EzrUdJJ95Ykq8mD6V8vI/3bynYSeGVXBk
 Gh23GXprCha0Kn49mD4lg63UldnhkNREBDh2Cyww=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 4/4] ARM: dts: sun8i-a83t-tbs-a711: Enable charging LED
Date: Sun, 23 Feb 2020 14:14:35 +0100
Message-Id: <20200223131435.681620-5-megous@megous.com>
In-Reply-To: <20200223131435.681620-1-megous@megous.com>
References: <20200223131435.681620-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_051451_937343_29C793CC 
X-CRM114-Status: UNSURE (   7.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Lee Jones <lee.jones@linaro.org>,
 linux-leds@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The tablet has a LED connected to the PMIC. The LED is visible in the
top right corner of the tablet. Enable it.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
index 2fd31a0a0b344..40911b5d3f323 100644
--- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
@@ -300,6 +300,10 @@ &battery_power_supply {
 	status = "okay";
 };
 
+&charger_led {
+	status = "okay";
+};
+
 &reg_aldo1 {
 	regulator-min-microvolt = <1800000>;
 	regulator-max-microvolt = <1800000>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
