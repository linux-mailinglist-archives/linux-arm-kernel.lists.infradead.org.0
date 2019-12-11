Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D2D511AE4F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:52:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vpaxZEP2L9iVXm3QW+ONV65eD6vpc7qyGzBuyoCY8H0=; b=E8+92H/gU+GILWOb9g/00XZEDY
	tBf7c4ICpwvgJGogJ/VgmqYQsjV2G5IcM/nAWKTwhjSHIg4LcYWYxpcVwieXa3vtjyryEnd8TjjP+
	99vi+FscshjJiFIrgVHEyE6PKjJ2+OhzIdojGlfwWn/9PXmeRfXEMrXP4pb4rV+ju8V+Vd5lazaYT
	GnEUsvjfabIQQZIwQ9Bz85VQaSOqrmu4I2DZtI8fV5VdOM2agsfXGLN+roS8wKR9531SOSkQJUhXM
	iih4lfDQNQtdKEMPhrHqK+8Rrfw8OT5pDcEMNX4/oLPhRilb6TCzENg5Pf4K8p2k5P4hFyRXi8r+M
	2dLi1NWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3Lf-0007Fq-B3; Wed, 11 Dec 2019 14:52:19 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3LS-0007ES-AH
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:52:08 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191211145204euoutp01205ef924910a7e0cfa5d953f75c555df~fWLPwe1-g2200222002euoutp01T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:52:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191211145204euoutp01205ef924910a7e0cfa5d953f75c555df~fWLPwe1-g2200222002euoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576075924;
 bh=6yPCbgLPq9lCGS66YYBtZYi6Uzkol1G5zMpyUCDGzKk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NQhJYAwR9CmUxA4hzacki723PcW4H11W77l+Y0JXiM/ZgYIQ6/v4yFLwU0wp4TREa
 PG0m1P5UZaunMhJTgNVzlcojrxVTYVM5galUq0DI0OObVm1u+LoTkeEsFkvvko0tck
 pcIAfyH7ngYexBbR25UCSvKFZI2o6xuOlvfdiU/Q=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191211145204eucas1p1eed87b54d9998261541ed5de631bd8f1~fWLPcvuGs1611016110eucas1p1B;
 Wed, 11 Dec 2019 14:52:04 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 5D.CE.60698.49201FD5; Wed, 11
 Dec 2019 14:52:04 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191211145203eucas1p2aa9445d7b778451ff1da0e552ccdae18~fWLPKC6pS1912919129eucas1p23;
 Wed, 11 Dec 2019 14:52:03 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191211145203eusmtrp2e34c38f422a444028fab665fdba7fe16~fWLPJR_qW0452204522eusmtrp2h;
 Wed, 11 Dec 2019 14:52:03 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-76-5df102949857
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 67.6B.07950.39201FD5; Wed, 11
 Dec 2019 14:52:03 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191211145202eusmtip2fcc25505ece3a2c913bad879caf94a57~fWLOW-cWL1112911129eusmtip2C;
 Wed, 11 Dec 2019 14:52:02 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-usb@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/4] ARM: dts: exynos: Correct USB3503 GPIOs polarity
Date: Wed, 11 Dec 2019 15:51:55 +0100
Message-Id: <20191211145155.24927-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191211145054.24835-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0iTURjufHdnk2/T8GCSMcgwUpNJnbKsQOgjgvJPPwTTpZ+3vLE5rQiq
 aVajwsTI7KKpaXjZ5hRNsy01WiY4dbYknVZmUKBhWrayy7Yv699ze8/z8nIYXGohA5j07Dxe
 ma3IlFEiov2p0xpahs3Hb3k9TqLB6R8EainXk2jAPEeg86bbBCqs0VPIajXQqGy5HkPGaTuJ
 bF23KGQrHAao3GrCUHXdORw1P3HQSFMkR8UX60jUqjtPI2evFdsj4WqWJnHO8LaR5DorHDRn
 bLhIcRP2booz326iudba01xRv5ngrrQ1AG7BuO6QKE60M5nPTM/nleHRiaI0Te0EyNVJjp8t
 GcXOgCEfLfBiIBsJTd8/01ogYqTsfQCn9AOU25CyiwDeHP9rLAD46J4GX5lYqNRQglEP4ILe
 QQrENfFspIZ2pyg2AmpntZ6UH9sE4I/L5YSb4Ox3HLbb6z0lviwHTYZq0o0JdgPsrOzwYDG7
 Cy46qwihLwg2Gh57ur3YaKj9qvM8BNlXNJxZ+k0JoRg42TOPCdgXfrS00QIOhL87KzFhoBDA
 N4PNtEAuAWjTlAMhFQX7LMOuasa1XwjUd4UL8l5omXJibhmyPnBsVuKWcRcsbb+OC7IYXiiW
 CulgWGHR/avtGRr5ey8ONnTZMOFEVwGcsxqwEhBU8b+sCoAG4M+rVVmpvEqezReEqRRZKnV2
 alhSTpYRuL7XwC/LlwfAtHy0F7AMkK0WV3V8ipeSinzViaxeABlc5ie2FM/FS8XJihMneWVO
 glKdyat6wVqGkPmL5dUf4qVsqiKPP8bzubxyxcUYr4AzQLJjnEl0ej/vXHOn6IB3c8f6Zcsq
 5e6S2Ljlh+/GWnyT3qkT8OmZ6MCM2bAqTXCGdWvs5/3myJf7OiZjxiTeR/p1b7r7btR+m31h
 /xml7u/ODx8dKZ7ZcO29Dt8ecislZaNj87ZVxKlQntg+L74bc+lgs/pwW0FaaXCQ3GgfiygE
 MkKVpojYhCtVij+GKxDEWgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOIsWRmVeSWpSXmKPExsVy+t/xe7qTmT7GGqy9rm9x7vFvFouNM9az
 Wpze/47Fon3fXBaL5sXr2SzOn9/AbjHlz3Imi02Pr7FaXN41h83icvNFRosZ5/cxWSxa1sps
 sfbIXXaLphZji7bOZawWm9e1s1v8PHSeyUHQY/H3e8weGx6tZvXYOesuu8emVZ1sHneu7WHz
 2D93DbvH5iX1Hi0n97N49G1ZxejxeZNcAFeUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWe
 obF5rJWRqZK+nU1Kak5mWWqRvl2CXkbTkjuMBesEKxonXGFqYLzA18XIySEhYCLxeX4TG4gt
 JLCUUeL2RVWIuIzEyWkNrBC2sMSfa11ANVxANZ8YJf7fP8cEkmATMJToeguREBHYwChx5v0T
 FhCHWaCJRWLqrMdgVcICHhL7NiwCG8UioCqxc/52MJtXwFbiy88FLBAr5CVWbzjADGJzCthJ
 dH1bxwJxkq3Ep9ttbBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjKRtx35u2cHY
 9S74EKMAB6MSD++C7e9jhVgTy4orcw8xSnAwK4nwHm97FyvEm5JYWZValB9fVJqTWnyI0RTo
 qInMUqLJ+cAozyuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwLjA
 x0pO3KBY64Kd3eJjgXYPNlb/+lwtGfGs3jjv2ZbjK/g51ziudfayO/kyfcbUp4Ivnq1vUtnQ
 znQwOcs8sEfabt6HZOdKz4iadKZtEzIPNZx952bUfdavLmbnkXPfjj6L9/l/vPJV7P67nK45
 m9pPfVh86VafpnfN6beO6mlKy1U3uCTovFZiKc5INNRiLipOBADiH/wougIAAA==
X-CMS-MailID: 20191211145203eucas1p2aa9445d7b778451ff1da0e552ccdae18
X-Msg-Generator: CA
X-RootMTR: 20191211145203eucas1p2aa9445d7b778451ff1da0e552ccdae18
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191211145203eucas1p2aa9445d7b778451ff1da0e552ccdae18
References: <20191211145054.24835-1-m.szyprowski@samsung.com>
 <CGME20191211145203eucas1p2aa9445d7b778451ff1da0e552ccdae18@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_065206_564302_7846AB50 
X-CRM114-Status: GOOD (  14.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, Maxime Ripard <mripard@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Chen-Yu Tsai <wens@csie.org>,
 Andy Gross <agross@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Current USB3503 driver ignores GPIO polarity and always operates as if the
GPIO lines were flagged as ACTIVE_HIGH. Fix the polarity for the existing
USB3503 chip applications to match the chip specification and common
convention for naming the pins. The only pin, which has to be ACTIVE_LOW
is the reset pin. The remaining are ACTIVE_HIGH. This change allows later
to fix the USB3503 driver to properly use generic GPIO bindings and read
polarity from DT.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/boot/dts/exynos4412-odroid-common.dtsi | 2 +-
 arch/arm/boot/dts/exynos5250-arndale.dts        | 2 +-
 arch/arm/boot/dts/exynos5410-odroidxu.dts       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
index ea55f377d17c..9c39e82e4ecb 100644
--- a/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
+++ b/arch/arm/boot/dts/exynos4412-odroid-common.dtsi
@@ -267,7 +267,7 @@
 
 		intn-gpios = <&gpx3 0 GPIO_ACTIVE_HIGH>;
 		connect-gpios = <&gpx3 4 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&gpx3 5 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpx3 5 GPIO_ACTIVE_LOW>;
 		initial-mode = <1>;
 	};
 
diff --git a/arch/arm/boot/dts/exynos5250-arndale.dts b/arch/arm/boot/dts/exynos5250-arndale.dts
index d6c85efdb465..3eddf5dbcf7b 100644
--- a/arch/arm/boot/dts/exynos5250-arndale.dts
+++ b/arch/arm/boot/dts/exynos5250-arndale.dts
@@ -154,7 +154,7 @@
 		compatible = "smsc,usb3503a";
 
 		reset-gpios = <&gpx3 5 GPIO_ACTIVE_LOW>;
-		connect-gpios = <&gpd1 7 GPIO_ACTIVE_LOW>;
+		connect-gpios = <&gpd1 7 GPIO_ACTIVE_HIGH>;
 	};
 };
 
diff --git a/arch/arm/boot/dts/exynos5410-odroidxu.dts b/arch/arm/boot/dts/exynos5410-odroidxu.dts
index e0db251e253f..4f9297ae0763 100644
--- a/arch/arm/boot/dts/exynos5410-odroidxu.dts
+++ b/arch/arm/boot/dts/exynos5410-odroidxu.dts
@@ -170,7 +170,7 @@
 
 		intn-gpios = <&gpx0 7 GPIO_ACTIVE_HIGH>;
 		connect-gpios = <&gpx0 6 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&gpx1 4 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpx1 4 GPIO_ACTIVE_LOW>;
 		initial-mode = <1>;
 
 		clock-names = "refclk";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
