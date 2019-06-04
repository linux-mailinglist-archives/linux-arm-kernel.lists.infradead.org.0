Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA3633DE2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 06:24:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nYK6umVtUW9VuWlVVk20MwKE8gZ2i0Ly4sKT96hVmwc=; b=AvZzBVbRyB/g49
	1dhfuos79kdkZBKnXZNrPzu9SNPzrd+nJZYoN1gsgoF/EdulEXuiCpD+dpmnQPykabUp+6XCFBlt6
	3/Bg6HarvVtsjURAI7TNl0jUTRe+wsdJbQzOH1YsznNGfW6yMX6W3qfnnguQEp4Qb5a2IiHIwkpS7
	4qensuNckPlHErKS/XoAdWtWhaxl36uaGUQJQRPCjBTRfmYFtg1RxOyFI0AiwxXW6gyjhASpbnyY4
	J7uXyc3sh7gCJHQxlFE+yvZXFo7HrHtaWp7oVsXGeBAKB1Rh2Cm0U6oD9ioWk3LcUJm+soHvdJPf0
	WvvTidvOLJYbeUW2h6dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY0zg-00013e-Cs; Tue, 04 Jun 2019 04:24:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY0zD-0000g4-Eb
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 04:23:49 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 937A324816;
 Tue,  4 Jun 2019 04:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559622226;
 bh=VYtcvA3wowRbQVxy9lVDS7Qdt8923RidXJkN2GiPjNU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=L2w2CTySlmeFLqYTfQqwzXF+cyaN4lSifCfVRBMfgAOsdzJTwKbRQBYmTRTiEKute
 BgPzXbzJKmdNg9YxeGopYySVpBQYW36b8jdND1tLPSL3PGOdlq+5SxNOfvGE69PMaq
 jxSicoEVAYvfLxbKNcYhxxklPU5DoZyUDCI5SbTI=
Received: by wens.tw (Postfix, from userid 1000)
 id 8698D5FD46; Tue,  4 Jun 2019 12:23:43 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 3/3] arm64: dts: allwinner: h6: Pine H64: Add interrupt line
 for RTC
Date: Tue,  4 Jun 2019 12:23:37 +0800
Message-Id: <20190604042337.26129-4-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604042337.26129-1-wens@kernel.org>
References: <20190604042337.26129-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_212347_515067_97811F7F 
X-CRM114-Status: GOOD (  12.17  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vincent Donnefort <vdonnefort@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The external PCF8563 RTC chip's interrupt line is connected to the NMI
line on the SoC.

Add the interrupt line to the device tree.

Fixes: 17ebc33afc35 ("arm64: allwinner: h6: add PCF8563 RTC on Pine H64 board")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 9e464d40cbff..189834518391 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -249,6 +249,8 @@
 	pcf8563: rtc@51 {
 		compatible = "nxp,pcf8563";
 		reg = <0x51>;
+		interrupt-parent = <&r_intc>;
+		interrupts = <0 IRQ_TYPE_LEVEL_LOW>;
 		#clock-cells = <0>;
 	};
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
