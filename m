Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A4B11AE33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=0++5a67umofe6R0D6Fg+Fwa/tcoLLUgR+bnhPpCPmgM=; b=kT
	nFR6EtJkxKgogqktmrMA8qiBNJYlMzOyNJXmZmpYF+q2ipa/U85Dp0XQAdifhgLJxgLA0cI3bXqto
	RfpKM02W8NA0PAauZ4EP4SA0laC35ilfDnoY8dckGlxRbx5pbCetPgt+WTIRM2vo8wx+hSsOiQKvB
	O2N3Q9KIwbOuM1MNrLm7e38035Yl/M48irWgRjfat2iY++2vzXn9oosKja7fBpR48JmtVkMvExm1D
	k8Tc1SPpy3/nYYO1ZuC8//aguI+KxdKoBBwymvsmw9g+JNwbNMzRMuo5Z0PGtckzGFdNNCM6J2HDY
	VVNexYtacHrbraaec/OZWKlu+QQXSPgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3H5-0003dP-8y; Wed, 11 Dec 2019 14:47:35 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3GO-00039K-K8
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:46:54 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191211144649euoutp02967d54e04fe27e3410af92bd94876b64~fWGqBWFqU1029810298euoutp02D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:46:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191211144649euoutp02967d54e04fe27e3410af92bd94876b64~fWGqBWFqU1029810298euoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576075609;
 bh=XB9Dsgs+MX/AW0zv105VApQLwH1V9mP5dnZl5ja9Fws=;
 h=From:To:Cc:Subject:Date:References:From;
 b=B3eaRYB5Mr5X1qoQKjpAxqQ+/m+bFucthlmfslL7uK4t2T56Rnc4I+gqKXDSvbEZf
 koSrdW0qg9CccebV2zHfS6EXlRLe/RLoUBYHRm6aNB3VNs41I0c7jDESUTylIJWB2j
 Jg7xhD1QbFizIWDASrrUBTUBAG8v+5VWmkxpRvSA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191211144648eucas1p1f40add69b0d3c98ea90cc7eb58bfaa21~fWGpnfauJ0132701327eucas1p1t;
 Wed, 11 Dec 2019 14:46:48 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 79.19.60679.85101FD5; Wed, 11
 Dec 2019 14:46:48 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191211144647eucas1p23d85dee21029f864076eece98aadd525~fWGpBdiL80793007930eucas1p2g;
 Wed, 11 Dec 2019 14:46:47 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191211144647eusmtrp2d8491073638ef673156b058d2fc4659a~fWGpAmAX10169801698eusmtrp20;
 Wed, 11 Dec 2019 14:46:47 +0000 (GMT)
X-AuditID: cbfec7f4-0e5ff7000001ed07-35-5df101584de4
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9C.9A.07950.75101FD5; Wed, 11
 Dec 2019 14:46:47 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191211144647eusmtip1c700ac96bfe3e4b5c78b020d9f2807c5~fWGoV4f1Q0906009060eusmtip1p;
 Wed, 11 Dec 2019 14:46:47 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-usb@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4] USB3503: correct GPIOs polarity and update the driver
Date: Wed, 11 Dec 2019 15:46:34 +0100
Message-Id: <20191211144638.24676-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRzGe3fOzjmOZscp+WKlsDBIyEuKvJlJSdApAqMPJcWopSc1ncrm
 LP1Q6rzkKqkVZtLKpml5d96XaM1yedu8lOxDSlMoDWZ4gTS7OY/at+f//H8Pz5+Xl8JETXwP
 Ki4xhZUnShPEhABv6Vk274sEcxL/6fdiZJ5awVFDUR0f9XfN4iivU4sjVWkdgSyWehLpp8b4
 aNTwmECjqmGAiiydPKQrz8FQzdtxEmVlB6Lc/HI+aqzNI9Gy0cI7TDOlPyYwpn6yis+0F4+T
 jL4yn2A+jXUQTJe2mmQay24w2b1dOFPQVAmYBb3nKcE5QWg0mxCXysr9wi4KYjVLbfzkTpdr
 Vo2VzACZzmrgREE6CE5PaEg1EFAi+gWAQ4O1PG5YBHBwrAJ3UCJ6AUBz+/GNhM30CuOgCgC7
 p5/gm4llk3otQdABUG1XE46FG10N4MqdojUKo80Y1KqG1yhXOgJW6mw8h8Zpb7iiyiIcWkgf
 gq1lH3CuzwtW1b9e64O0gYRf5tsAtzgKDRlz65Ar/GZqIjm9E/5tf8rjAioAbeYakhtuAzia
 VbSePgi7TcN8NaBWb9oL6wx+nH0EagdWcIcNaWdotbs4bGxValoeYpwthDdzRRy9Bxabajdr
 3wyNrCMM1FqiuKeTwL7Z57y7wLP4f1UJAJXAnVUqZDGsYn8ie9VXIZUplIkxvlFJMj1Y/Uv9
 f0yLbcDw65IR0BQQbxWWtH6XiPjSVEWazAgghYndhKbcWYlIGC1NS2flSRfkygRWYQQ7KFzs
 LgzUzUhEdIw0hY1n2WRWvrHlUU4eGeCELNX95MtGSXrUrivKxUcd0c278z529xYr4ye3LTkL
 +3p4QcHXBzSlx2L0D7T2yLrgwu2kt83ZHnFLTzTr5l2Q+fy83HAWZaVPPSND6S1KGwDN78IP
 NPxeVlpnxJfvF/p3iX6G+fr4FRhGzthPh+e4Z4aoaS/83ufYr/MhEjGuiJUG+GByhfQfFhoT
 TkcDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupikeLIzCtJLcpLzFFi42I5/e/4Xd1wxo+xBm2bzS3OPf7NYrFxxnpW
 i9P737FYtO+by2LRvHg9m8X58xvYLTY9vsZqcXnXHDaLy80XGS1mnN/HZLFoWSuzxdojd9kt
 mlqMLdo6l7FabF7Xzm7x89B5JgcBj8Xf7zF7bHi0mtVj56y77B6bVnWyedy5tofNY//cNewe
 m5fUe7Sc3M/i0bdlFaPH501yAVxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6hsbmsVZG
 pkr6djYpqTmZZalF+nYJehmTfuxgLdgnWHFj0g32BsZGvi5GTg4JAROJh8d3M3cxcnEICSxl
 lJj9/wUTREJG4uS0BlYIW1jiz7UuNoiiT4wS8zu2MIIk2AQMJbreQiREBDYwSpx5/4QFJMEs
 cI1ZYtlmaRBbWMBXYs3fOWBTWQRUJX43N7GB2LwCthLbl1xhgdggL7F6wwHmCYw8CxgZVjGK
 pJYW56bnFhvpFSfmFpfmpesl5+duYgTGw7ZjP7fsYOx6F3yIUYCDUYmHd8H297FCrIllxZW5
 hxglOJiVRHiPt72LFeJNSaysSi3Kjy8qzUktPsRoCrR8IrOUaHI+MFbzSuINTQ3NLSwNzY3N
 jc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwbvbm4rSVmnjpzYlNcyNPlhgpPPm1Tf1r
 w43JkecrC5z2JzV3L/oa7DSpws8vbppG5iF9zV0yE28e98mRnzdBd8nd0mbVnx/7Xv03+nL0
 0Mpq/+f3DV515sc9W5s11ajhXq3DvTT1cIfVp54xfzuUeffcBw+/d5MWJAU9fFa1Tc30wF/z
 pqd9z5RYijMSDbWYi4oTAfL3nrmdAgAA
X-CMS-MailID: 20191211144647eucas1p23d85dee21029f864076eece98aadd525
X-Msg-Generator: CA
X-RootMTR: 20191211144647eucas1p23d85dee21029f864076eece98aadd525
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191211144647eucas1p23d85dee21029f864076eece98aadd525
References: <CGME20191211144647eucas1p23d85dee21029f864076eece98aadd525@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_064652_856238_7A596A0D 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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
 Maxime Ripard <mripard@kernel.org>,
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

Dear All,

A few days ago a patch for USB3503 driver has been posted (see v1 in the
changelog below), which changes the GPIO API used by the driver to the
new one (descriptor based). It turned out that this conversion broke USB
HUB operation on some boards (observed on Arndale5250).

Further analysis revealed that the existing code ignored the GPIO
polarity flags in the device tree. On the other hand the current GPIO
polarity flags used by various boards were simply incorrect, as it was
not possible to test them properly.

This patchset provides some standardisation for the GPIO polarity flags
for USB3503 chips in various DTS files and adds matching logic to USB3503
driver. For more information and rationale behind this approach, see the
thread linked as v1 below.

This patchset has been tested on the following boards:
Odroid X2, U3, XU and Arndale5250.

The patch for USB3503 driver should be merged one release later than the
DTS changes to keep the affected boards working in meantime.

Best regards
Marek Szyprowski
Samsung R&D Institute Poland


Changelog:
v2:
- added DTS fixes, assumed that RESET GPIO should be ACTIVE_LOW and all
  other GPIOs ACTIVE_HIGH
- integrated a fixup for USB3503 driver inverting the logic behind the
  RESET GPIO to match the standardised GPIOs polarity

v1: https://lore.kernel.org/linux-usb/20191205145633.187511-1-linus.walleij@linaro.org/T/
- initial version, contains only USB3503 driver patch


Patch summary:

Linus Walleij (1):
  usb: usb3503: Convert to use GPIO descriptors

Marek Szyprowski (3):
  ARM: dts: exynos: Correct USB3503 GPIOs polarity
  ARM: dts: qcom: Correct USB3503 GPIOs polarity
  ARM: dts: sun8i: a83t: Correct USB3503 GPIOs polarity

 .../boot/dts/exynos4412-odroid-common.dtsi    |  2 +-
 arch/arm/boot/dts/exynos5250-arndale.dts      |  2 +-
 arch/arm/boot/dts/exynos5410-odroidxu.dts     |  2 +-
 .../dts/qcom-mdm9615-wp8548-mangoh-green.dts  |  2 +-
 .../boot/dts/sun8i-a83t-cubietruck-plus.dts   |  2 +-
 drivers/usb/misc/usb3503.c                    | 94 +++++++------------
 include/linux/platform_data/usb3503.h         |  3 -
 7 files changed, 40 insertions(+), 67 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
