Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DF6D1697AA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 14:15:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNgkY+r1UdLnDzs8GB2AQVWNXgN01XSWVh4mkb2vBmM=; b=LZwmwm+WbzmbJS
	etuY3sPjmfzx9i4v6N82WzCxcoGG0+cO6qlbhzjix6ZuDsMEYIIjO07r90vilO97SSQ+x9ZB2FtxM
	CHmwXrgYhxptekF19CZj7Hm5jT8/HiW2KGt+cQG71GlxOB6kKi4HVqOHuEnUBdVPl4eqoDMgAEpBb
	VX5S3XKhJMln4G1cJRK1lFljhcIYojO9O+8SKfNMF7rnp089oDJFYTjorzhGzYk22WyRXR8qCOjYl
	jO/sz+Ah8jCysxIztvJWaSheEEcWG8LOL0OKMmKYLlPcPWrcVEpDeZ45itjnFy4grDea2nS2mqYMl
	WtCo+4kan7scmci0SuSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5r6k-0005pm-N8; Sun, 23 Feb 2020 13:15:42 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5r5v-00049L-ID
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 13:14:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582463689; bh=NMin2NjZeeqocWZC9NSK1oMc+IKPqF2jiBrmazxCDxs=;
 h=From:To:Cc:Subject:Date:References:From;
 b=rGyp96Slng/w/Z7/e3YLulL5bZqgnaIYdI5fCn37OVTi25dHUU6qMSWUoRJMMTFH3
 A0a3h0AKjpqQBgmI4pDVojzIgMFnrYegCmMSejetqfS1d4vnCStpAQ943VDbMh+pE9
 G4OGZrj2ZGK52DJLuab6irxsutHCdFVxLnjXm5FA=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>,
 Dan Murphy <dmurphy@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 3/4] ARM: dts: axp813: Add charger LED
Date: Sun, 23 Feb 2020 14:14:34 +0100
Message-Id: <20200223131435.681620-4-megous@megous.com>
In-Reply-To: <20200223131435.681620-1-megous@megous.com>
References: <20200223131435.681620-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_051451_942640_936FA6A5 
X-CRM114-Status: UNSURE (   7.85  )
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

PMIC supports charging status indication via a LED. Add support
for it.

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 arch/arm/boot/dts/axp81x.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/axp81x.dtsi b/arch/arm/boot/dts/axp81x.dtsi
index 1dfeeceabf4c3..00b092f94433d 100644
--- a/arch/arm/boot/dts/axp81x.dtsi
+++ b/arch/arm/boot/dts/axp81x.dtsi
@@ -175,4 +175,9 @@ reg_drivevbus: drivevbus {
 	usb_power_supply: usb-power-supply {
 		compatible = "x-powers,axp813-usb-power-supply";
 	};
+
+	charger_led: charger-led {
+		compatible = "x-powers,axp813-charger-led";
+		status = "disabled";
+	};
 };
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
