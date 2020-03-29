Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9133B196CB0
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 12:50:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90xEA7Zzck4++Zt1PSSzra506rMl0PwVr7O5ms5EcDQ=; b=fLspNTUQwIv+R/
	lFNq4yopfOrL0wh3R0yFPxeCOW9fR7L3a+NRpfMqKpsLQ1K1tjWzLDzbBQqp/jTWUJ1Q6FBvrk2oR
	B9iqP4avQek6lZa32FAA4JsdAP1Q5vKgv27MMOdTTVk0sOClFM1Vz4hZtiiwIgDPhzkoVC0CQzUIC
	XjMvPd8Mqmx9m2d0Sdv6f1W0XbVCtZDbiRJeKxnvRcWJQzKinI22KOpDyKA1gLpdp9GRLa+MEwmUV
	4oCV24wqYwgttsRtxV0gU7w7u8HJizYviCAQPJK0Cx0yhSdrZXJwtFGdvBcp9uFrA1V8ai+50XonN
	LBzGYvDXhS4JxaOCFUmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIVW9-0005ka-M5; Sun, 29 Mar 2020 10:50:13 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIVVN-00056w-2o
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 10:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:To:From:References:In-Reply-To
 :Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FIhy4sqBq+sE5SE/l6Fqg9Ig3bzmfn+3BSxVo4JGEjg=; b=s6gmbyy0re2ZBa05B4xYvZ/sFc
 +pBuFoACtn2czoTK0vTP6/vnw5ErI4VsuMVWreTOwV7mZ2PgyNEpwdEhk40SuNmuIm5bjhsctGfSy
 S7Yw4xD7qkWBoMzZkr+qsKZeNvTO+c1nEb7wz1W21I5e1ejGJPWPqpQyV13ZXtUMqLgdtfYAip+Aj
 d/M3iSu3ZInibuYKHmh6gDJANeB5UYK0B+Jj16TMfunLu6xQWcPiAd9dYZXLlkWpwlRRP3N2ojelg
 NtSbp1RUx7e566s+efmZ0G132Cphp8AOsHnnh3hVYk7l6VszGGoMU6eRpix16EjN+q1UMn2JnASaB
 3sYtjF4g==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:37656 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVUS-0004W2-To; Sun, 29 Mar 2020 11:48:29 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1jIVUP-0005hc-6g; Sun, 29 Mar 2020 11:48:25 +0100
In-Reply-To: <20200329104549.GX25745@shell.armlinux.org.uk>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, devicetree@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-pwm@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "Uwe Kleine-Konig" <u.kleine-koenig@pengutronix.de>
Subject: [PATCH RFC 5/6] arm64: dts: clearfog-gt-8k: add pwm-fan
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1jIVUP-0005hc-6g@rmk-PC.armlinux.org.uk>
Date: Sun, 29 Mar 2020 11:48:25 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_034925_243289_B3D64650 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pwm-fan support for controlling the fan speed.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
index dc531d136273..a514ae51ccbf 100644
--- a/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
+++ b/arch/arm64/boot/dts/marvell/armada-8040-clearfog-gt-8k.dts
@@ -31,6 +31,11 @@
 		ethernet2 = &cp1_eth2;
 	};
 
+	pwm {
+		compatible = "pwm-fan";
+		pwms = <&cp0_gpio2 16 40000>;
+	};
+
 	v_3_3: regulator-3-3v {
 		compatible = "regulator-fixed";
 		regulator-name = "v_3_3";
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
