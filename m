Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537CB169238
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 00:15:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCo+OqRPHK9hYWbMuP3TAHXmy+a1T1QSZRWvSooWhkY=; b=MdFlW2WWyCIrbg
	kgDWKZtYeGsRG8BoNDPonKjPONaPy/Q0mC13BZsd92eqXyPN3zytxOdgijSLn0o8UFQ3TJ3I+OMwu
	PAChryxVaRZKM8YwrRYhNEoXgIz89Bo+bL0RkiV2nsz46zVw/AUhHyZSS0vpnJzN6S2MUaBSVAynr
	gUStdpFQET4xTAQYsOG+keBX7YUWE9SnZaT7Vrk0k2GyuKFQSpR3Xq9gfBL65K06R6aIFotmgXNNf
	HdwPVHlFRydI0NhJw9d+19NzUDspJhGUFqM1M4Pqco+BQCvRtN2alwLEoCigjUIAiarl6PpHI5SKT
	EfUMpAtNdPwen+qNFbxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5dzB-0007ge-J1; Sat, 22 Feb 2020 23:15:01 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5dyk-0007YV-MM
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 23:14:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582413272; bh=WwPRw8c1ksPjhP3qFyeLOPanGzgHH/wo0hf0oKx3fqE=;
 h=From:To:Cc:Subject:Date:References:From;
 b=aGVQrg/CmOuf7Mgexl9iQ0PdpxoBG17io2yR/F56s4kLZXF80RUVr6dZAzNA3x409
 Elfcnmzo1wJDBcswdpSWlWyzSovwzAeHQ7oEmzVslMvsezYaN8kOHNui0ssas3y2K7
 jHkup+yjw/2ou0xcGS6uCikver+f8S3eCTU/Xi4Y=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 4/4] ARM: dts: sun8i-a83t-tbs-a711: Increase voltage on the
 vibrator
Date: Sun, 23 Feb 2020 00:14:28 +0100
Message-Id: <20200222231428.233621-5-megous@megous.com>
In-Reply-To: <20200222231428.233621-1-megous@megous.com>
References: <20200222231428.233621-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_151435_070658_09A069F9 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Luca Weiss <luca@z3ntu.xyz>, Tomas Novotny <tomas@novotny.cz>,
 linux-input@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Vibrator motor is weak at the current voltage. Increase the voltage.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
index a22920275e99b..314491cdafca2 100644
--- a/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
+++ b/arch/arm/boot/dts/sun8i-a83t-tbs-a711.dts
@@ -434,8 +434,8 @@ &reg_ldo_io0 {
 };
 
 &reg_ldo_io1 {
-	regulator-min-microvolt = <3100000>;
-	regulator-max-microvolt = <3100000>;
+	regulator-min-microvolt = <3300000>;
+	regulator-max-microvolt = <3300000>;
 	regulator-name = "vcc-vb";
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
