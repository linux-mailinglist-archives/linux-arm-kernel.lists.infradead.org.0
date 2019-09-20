Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB79B9027
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=kE9TtsG2H8aDC0wqQcnTDqVuDDAPNE/KbBbpn0qds0U=; b=k7
	+EgXeFKjv8iC9ofiVeQY70iU9P1hdE8n5pJawldUPpwDvSMkeQTY6b4bgBAOmuXoutndUbIY9pUEH
	U93lkFdXciwA+xKQKFusX/op592uX7+K64dutjrWeMYaF1DILeBrSOsLv/3iWPC+puCQwlPLtq/Vl
	KwjQXnjdTpQ1oVPX708A5gUJvFJnEIl9KcQXkZqzNBCFsBj1y+g3AFwDMwpSzVHCRs7WSjQTzVS61
	DQTV+4ZDRgkiJWaT4A5R6DAmOi35EOe1vb8xS0wisPF62mJ2MNd/umwm6Jb3+8Anwx7s0yoBp2kqX
	c41+1fiN2KjY8qTaJ3B7nN3lSnGpKuNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIYk-000309-CH; Fri, 20 Sep 2019 13:02:50 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIYc-0002za-Sv
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:02:44 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130240euoutp024326c354c53cd74e950f1bce765e736b~GJyUj898U2404924049euoutp029
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:02:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190920130240euoutp024326c354c53cd74e950f1bce765e736b~GJyUj898U2404924049euoutp029
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984560;
 bh=BchkBTQspeIDzutFJIeK4Onaadt8x5arqRDNHXthQ7w=;
 h=From:To:Cc:Subject:Date:References:From;
 b=dWU7/KeabY3grQRMH1AXJzuDWbkG7/ZIj1YrDhFJm2j5zeg+VzIyjestwKSS+FJYJ
 EBjMRshInjU16Cm5ZXXJh1eCsQAYnsRCwAtu6NoC6Hb9Ta6uNU6UwzpVdRBp+m9efA
 QDk+b8+6lbHgR4Aafmae9ugNjNGk7G/BIdOjyadc=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920130239eucas1p2d1302e0a4d05f59e4e90b202a52d0004~GJyTnxGNZ1581315813eucas1p2F;
 Fri, 20 Sep 2019 13:02:39 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B1.6A.04374.FEDC48D5; Fri, 20
 Sep 2019 14:02:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190920130238eucas1p147fca337fa84592ac7f83760449e26a1~GJySuD2cN2907129071eucas1p12;
 Fri, 20 Sep 2019 13:02:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190920130238eusmtrp13b4c6124a69d5f4b661f35270e78da48~GJyST4JNV0476604766eusmtrp1D;
 Fri, 20 Sep 2019 13:02:38 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-a3-5d84cdef18cb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 92.F0.04117.EEDC48D5; Fri, 20
 Sep 2019 14:02:38 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130237eusmtip204165d8c1eab4b4b8f27c099fc9acc0c~GJyRn90NH1284512845eusmtip2O;
 Fri, 20 Sep 2019 13:02:37 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 00/10] Basic sound support for Arndale board / wm8994
 updates
Date: Fri, 20 Sep 2019 15:02:09 +0200
Message-Id: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTURz37O7uXkdXjlPyoGY0yliQZhndMkQx5FJfJPpiMmxuFxXdlE0t
 80O6tNR8pdlMlKwMbZmuZctHPphuq0RNNBVUzBQqHxjNBNEyt4v17ffk9z9wSExUjXuTiao0
 Vq2SJYsFQr7JujF8dHUwV3qssxXSYyNmHv2yqgWnK+cWBPRYnhHQD/uHcHp42EDQ62P5PNo4
 P47TVcPdPPpF/wxB21d7cDqvq5+g+5Zv4/RI4xovzI0x2LUCpr16hmCM+gIB86r+BqOr2QZM
 SaseMHajXxRxWXhWwSYnZrDqwNArwoTst1Ys1Q6v/cgdF2SDHKoQkCSCwajpXmIhEJIi2AjQ
 3Gw3nyNrAH0aHMU5YgeoaaoD7DZ+d8k5vQGgtf5N/F+jp81EFAJXUgCDULGlBDiwJzyMZqu0
 zhAGv/NQmaWZ5zA84EW00qxzYj48hEZLtc4FCoag3BmFQ0ZwP3pu6MUcXQR1BKqecqw5jHPo
 66NvGIc90KKtleCwLxqoKOJzhZsAFXVOERwpA2jWVge4VAjqs43gjjUMSlBLRyAnh6PN6WKC
 e6Ybmlxxd8jYDiw36TBOplD+LRGXPog29dz5CHqjOwvbfA4z6IEtx6mLoBT1flgQlAG/6v9b
 dQDogRebrlHGs5oTKvZqgEam1KSr4gPkKUoj2PkxA39sv9pA91acGUASiPdQjDVXKsJlGZpM
 pRkgEhN7UjUntVIRpZBlXmfVKbHq9GRWYwY+JF/sRWW5fI4RwXhZGpvEsqmsetflka7e2SCp
 fMAQfin8Sxw44x/J3HU3jy7hUWG1rhMFTJK8QBIZuj35+Of5fca0gdce0uOtWU83ctxifQOe
 PbE0RKcvx/jET5hc5tWCzgsN8oj1GMv0gVPG2vUhfGtvpT+lUITerwhdnHkn+Xg62upS6k2N
 SoIN78OXJPURb1SSZtd2IRTzNQmyoCOYWiP7C4BdDYgtAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrPLMWRmVeSWpSXmKPExsVy+t/xe7rvzrbEGpw8zm1x5eIhJouNM9az
 Wkx9+ITN4krrJkaL+UfOsVqcP7+B3eLblQ4mi02Pr7FazDi/j8li7ZG77Baf3+9ntWjde4Td
 4vCbdlaLiyu+MDnweWz43MTmsXPWXXaPTas62Tw2L6n3mD7nP6NH35ZVjB6fN8kFsEfp2RTl
 l5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXoZTTsOcZc8Fmg
 4kPLNbYGxkbeLkYODgkBE4m/e5O7GLk4hASWMkocXnSSDSIuJTG/RamLkRPIFJb4c62LDaLm
 E6PEh46/LCAJNgFDid6jfYwgtoiApkTHvNusIEXMAt+ZJA48PskMkhAWCJC4em8ZWBGLgKrE
 5f4mRpAFvALWEi13UyAWyEus3nCAeQIjzwJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiB
 gb3t2M8tOxi73gUfYhTgYFTi4fU41hIrxJpYVlyZe4hRgoNZSYR3jmlTrBBvSmJlVWpRfnxR
 aU5q8SFGU6DdE5mlRJPzgVGXVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQim
 j4mDU6qBcdUf9cCSPLu3L+f4n/ltEpuzrObtnoVPS8vm5S18FmY34wOTf1ngy7XG7/+z+d7R
 Nn7Gucfvy+Zb7HUlsi3VxvHKa/z7l89VvfH3pHqJnMf5zdO0y2+WPjX8ohTywU7qkHea5lXf
 Sse/vGGFG5/xPD60UaD6edzru3JOu0/4tBcxLVIqu/3RWImlOCPRUIu5qDgRAGwSqdeCAgAA
X-CMS-MailID: 20190920130238eucas1p147fca337fa84592ac7f83760449e26a1
X-Msg-Generator: CA
X-RootMTR: 20190920130238eucas1p147fca337fa84592ac7f83760449e26a1
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130238eucas1p147fca337fa84592ac7f83760449e26a1
References: <CGME20190920130238eucas1p147fca337fa84592ac7f83760449e26a1@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060243_136466_BE23093E 
X-CRM114-Status: GOOD (  14.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series adds basic audio support for Exynos5250 SoC based Arndale 
board, the Bluetooth receiver source and HDMI output are not covered yet.

There is also one fix for wm8994 driver related to WM1811 CODEC and wm8994
updates to handle MCLK clocks, similar to patches:
 ae1ea48c5c59 ("ASoC: arizona: Add gating for source clocks of the FLLs")
 7a4413d0dc96 ("ASoC: arizona: Add gating for clock when used for direct MCLK")

The main changes since v1:
 - Fixed bug in "ASoC: wm8994: Add support for MCLKn clock gating" patch
   (thanks to Charles),
 - dropped the MFD part patch and moved getting of clocks to the CODEC driver,
 - Added missing Kconfig entries to patch "ASoC: samsung: arndale: Add 
   support for WM1811 CODEC",
 - Added a patch renaming the driver and a patch for exynos_defconfig.

Sylwester Nawrocki (10):
  ASoC: wm8994: Do not register inapplicable controls for WM1811
  ASoC: samsung: arndale: Add missing OF node dereferencing
  ASoC: wm8994: Add support for setting MCLK clock rate
  ASoC: wm8994: Add support for MCLKn clock gating
  ASoC: samsung: arndale: Simplify DAI link initialization
  ASoC: dt-bindings: Document "samsung,arndale-wm1811" compatible
  ASoC: samsung: arndale: Add support for WM1811 CODEC
  ASoC: samsung: Rename Arndale card driver
  ARM: dts: arndale: Add audio support (WM1811 CODEC boards)
  ARM: exynos_defconfig: Enable Arndale audio driver

 .../devicetree/bindings/sound/arndale.txt     |   5 +-
 arch/arm/boot/dts/exynos5250-arndale.dts      |  27 ++-
 arch/arm/configs/exynos_defconfig             |   1 +
 sound/soc/codecs/wm8994.c                     | 199 +++++++++++++---
 sound/soc/codecs/wm8994.h                     |  10 +-
 sound/soc/samsung/Kconfig                     |  12 +-
 sound/soc/samsung/Makefile                    |   4 +-
 sound/soc/samsung/arndale.c                   | 217 ++++++++++++++++++
 sound/soc/samsung/arndale_rt5631.c            | 138 -----------
 9 files changed, 438 insertions(+), 175 deletions(-)
 create mode 100644 sound/soc/samsung/arndale.c
 delete mode 100644 sound/soc/samsung/arndale_rt5631.c

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
