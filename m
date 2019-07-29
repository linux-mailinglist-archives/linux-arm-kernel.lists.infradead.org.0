Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45CB6792FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 20:25:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9M7MKG7WgdaK4i1F4YTCLj/PmCtcqxgZBTiibTRiluI=; b=Voj
	dUASCCBhY4AXnMN3zkEDug+5Z6sYPOaPcWbl8qI/kaOzqhrlI7xDWcIxs5R6M/quaCRsDlWv/aubF
	89PjbKvaTuGTaCjPABiW7m1QD78cH+s6leMJrnVpMasSd+9E+L0KiHJIfUG1aBtDvjcelFePRvWpw
	sWGyhDtCEw7W7b7ncdUjq77fFUUMGrBqRUVhWFW+6ffkHE9ZyGcxTu/cpJwVL1Fpm8wHRZnyVc5B/
	h3LjvpEUwy3kB5X6+CVkDjyJ9GpMXwfFfSpFDWHsG9qlUzLlP4W1A8VFkLAF+G9af7R66TQ6nbZ9+
	q2qflBcIKZ56YxyZtsSbYCOiJAu47nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsAKO-0006Dj-7W; Mon, 29 Jul 2019 18:24:56 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsAJw-00063n-Um; Mon, 29 Jul 2019 18:24:30 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 94D8196323;
 Mon, 29 Jul 2019 18:24:26 +0000 (UTC)
Received: from mxbox1.masterlogin.de (unknown [192.168.10.253])
 by mxout1.routing.net (Postfix) with ESMTP id C407B40983;
 Mon, 29 Jul 2019 18:24:26 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-185.76.97.79.bambit.de
 [185.76.97.79])
 by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 78DB0405D3;
 Mon, 29 Jul 2019 20:24:25 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v3 10/10] arm: dts: mt6323: add keys, power-controller,
 rtc and codec
Date: Mon, 29 Jul 2019 20:24:21 +0200
Message-Id: <20190729182421.7192-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_112429_219812_8D7EF50A 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

support poweroff and power-related keys on bpi-r2

changes since v2: none (=v2 part 7)

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm/boot/dts/mt6323.dtsi | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm/boot/dts/mt6323.dtsi b/arch/arm/boot/dts/mt6323.dtsi
index ba397407c1dd..7fda40ab5fe8 100644
--- a/arch/arm/boot/dts/mt6323.dtsi
+++ b/arch/arm/boot/dts/mt6323.dtsi
@@ -238,5 +238,32 @@
 				regulator-enable-ramp-delay = <216>;
 			};
 		};
+
+		mt6323keys: mt6323keys {
+			compatible = "mediatek,mt6323-keys";
+			mediatek,long-press-mode = <1>;
+			power-off-time-sec = <0>;
+
+			power {
+				linux,keycodes = <116>;
+				wakeup-source;
+			};
+
+			home {
+				linux,keycodes = <114>;
+			};
+		};
+
+		codec: mt6397codec {
+			compatible = "mediatek,mt6397-codec";
+		};
+
+		power-controller {
+			compatible = "mediatek,mt6323-pwrc";
+		};
+
+		rtc {
+			compatible = "mediatek,mt6323-rtc";
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
