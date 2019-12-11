Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E645311AE49
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=q0gjuGpI+m3PxQqkhzF6pKXZl8Lf3DbSVx2M3TreE5w=; b=D/
	4QHxXR5JBgPUsxwdlT2qAR20uXpcgL5mt9s4ngtlNI9DDxa1NPyWMSiFGUXOEn3Amcw9x8Bu6V9IY
	zLhrnU/CZINURec0xrvT27ZIoBPikhcdcbsTMW1OcuGY1MiyYA3w2uWWxJhcKR6aTgGYFyfBNbfI2
	udSzupuw2CWx3DpzuW4dwyiU7eD8V6gQxYUa48o0oujZS0H5SmjLlJUNOQRLhoCgcT9MT6b7SBXLE
	xYVcqvfses5u/9BE/4NMfCUBe4KQ+ese/gbDy1LsmaBJenHjo/Z6c19L2TVkwLCn7k9XIvUMHxnBF
	FpbeTL1Rh4ulpZzgA3CfLgJ2pIGrvMYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if3Kh-0006w7-PY; Wed, 11 Dec 2019 14:51:19 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if3KV-0006ui-Ct
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:51:09 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191211145105euoutp021c51ed945113601b8b1e9eb73c5ed513~fWKZPLuNu1306013060euoutp02s
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 14:51:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191211145105euoutp021c51ed945113601b8b1e9eb73c5ed513~fWKZPLuNu1306013060euoutp02s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1576075865;
 bh=y6X2VuN3TK8h1ALvHiCLJoNf4SrhtQi+LqKL0ANBu/M=;
 h=From:To:Cc:Subject:Date:References:From;
 b=MiL/Fd3zp2RKqIXfNQwdjVWgcG7VfZdD8mzAyXMzHRw/3jkEQxrQy1iDxSoqcaX+G
 9ygHiiC0imz+iwiHiQhaLPhC5uefNDv3csogftxdm7X+/8aOG7CrihZTaQZVXC2AKp
 har5yjw1rb+u5UJW7FRjKDB7Sm2Eeyfi97QxIuyA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191211145105eucas1p19103c5902d083f1b46811ed08cedc3d8~fWKY0WRq61208812088eucas1p1r;
 Wed, 11 Dec 2019 14:51:05 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 4C.AE.60698.95201FD5; Wed, 11
 Dec 2019 14:51:05 +0000 (GMT)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191211145104eucas1p1ce04a26eebcd4c22d72f204e7ae0aa5a~fWKYPyWUN1610416104eucas1p1Z;
 Wed, 11 Dec 2019 14:51:04 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191211145104eusmtrp2208355dd766708d6a05e4411f136130d~fWKYO46ea0387303873eusmtrp2_;
 Wed, 11 Dec 2019 14:51:04 +0000 (GMT)
X-AuditID: cbfec7f5-a29ff7000001ed1a-c8-5df102590c4d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F9.B9.08375.85201FD5; Wed, 11
 Dec 2019 14:51:04 +0000 (GMT)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191211145104eusmtip220cd5817f29a2c1ac2db9228a611f12f~fWKXcypsK0952209522eusmtip2x;
 Wed, 11 Dec 2019 14:51:03 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-usb@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/4 RESEND] USB3503: correct GPIOs polarity and update
 the driver
Date: Wed, 11 Dec 2019 15:50:54 +0100
Message-Id: <20191211145054.24835-1-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfUhTURjGObt3915Hs+sUPFlYjgz60mKSR+zDKPFCkf5RQcGolbcpOrPN
 mSbShzp1pEkZDlEyLVe6nJ+rWTld1hTJpYYYpZYWlOasVpSpmfNq/fe8z/P+eF4Oh8JEZr4P
 FZuQxCoTZPFiQoCbnk11bz7C+yrdUp0JUffoNI7qdEY+6rI4cJTdUoqjjAojgez2WhIVzuh5
 qH60n4/6mksI1JfRA5DO3sJD5ZVZGLrXPkiiS5kSpMmt5KOGmmwSTVntvDAPpuLnEMbUjlTz
 GXPxIMnUV+USzJv+RwRjKTWQTMOt80xmpwVn8hurAOOs940SHBVsj2bjY5NZZeDO44KY19OP
 8cQsUcrHyQHsAjC5a4EbBekgmFfWhGuBgBLRdwD81tHOcwUi+juAToMfFzgBHM3X40tE0/Pv
 BBfoAbz2sAhwwzwxVdpAurYIeivUTmgXtrxoA4DTebqFEoz+jUFTv34+oShP+jAcrgx2ATjt
 D0cM+oVuIb0DFnaXkFzdalhd24q5WEi3kLB41AG4YC903Hy7qD3hmK1xEVgF58w3eByQAeC7
 7nskN1wGsO+SbpEIhU9sPXzXFRi9HhqbAzl7N7ySU4e7bEi7w4EJD5eNzcurpiKMs4UwRyPi
 ttfBYlvNv9q2F70YpxnYb6nAuXeUwsHsWbIA+Bb/7yoDoAp4s2qVQs6qJAns2QCVTKFSJ8gD
 Tp5W1IP5D9X1x/bjAWiZOWEFNAXEy4Rl9yelIr4sWZWqsAJIYWIvoU3jkIqE0bLUc6zy9DGl
 Op5VWcFKChd7CyXln6QiWi5LYuNYNpFVLqU8ys3nAnhlGA4z3L0dFdH6oTDkQEDcRvGP8bpd
 yebwIP+XuKbxaYDaqzQ40n6K6Ixwzg05MMOERZdr7IGatn0FaXsKW8MP9R7MW/sl8eIv2ZnJ
 NbmT6dssQ+812rFQi/yrs3mFdfkfJuV6h+F3xKwfo46c3WQ+EpJq/Dz+M01iFBDpkfvFuCpG
 tnUDplTJ/gKAnpkITAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAIsWRmVeSWpSXmKPExsVy+t/xe7oRTB9jDWa+MbQ49/g3i8XGGetZ
 LU7vf8di0b5vLotF8+L1bBbnz29gt5jyZzmTxabH11gtLu+aw2Zxufkio8WM8/uYLBYta2W2
 WHvkLrtFU4uxRVvnMlaLzeva2S1+HjrP5CDosfj7PWaPDY9Ws3rsnHWX3WPTqk42jzvX9rB5
 7J+7ht1j85J6j5aT+1k8+rasYvT4vEkugCtKz6Yov7QkVSEjv7jEVina0MJIz9DSQs/IxFLP
 0Ng81srIVEnfziYlNSezLLVI3y5BL+P2770sBa1CFS/e32BuYNzG18XIySEhYCKx9ewXti5G
 Lg4hgaWMEjNedjFCJGQkTk5rYIWwhSX+XOuCKvrEKHHg5VywIjYBQ4mutxAJEYENjBJn3j9h
 AXGYBZpYJKbOeswEUiUsECLx+sQUMJtFQFXi0ZrlYDavgK3ElHNz2CFWyEus3nCAeQIjzwJG
 hlWMIqmlxbnpucWGesWJucWleel6yfm5mxiBsbHt2M/NOxgvbQw+xCjAwajEw7tg+/tYIdbE
 suLK3EOMEhzMSiK8x9vexQrxpiRWVqUW5ccXleakFh9iNAVaPpFZSjQ5Hxi3eSXxhqaG5haW
 hubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGBm9/+xjvno9rd730F+/GbZr7sxs
 /njfI5fXrliqhiXE4UZ2X9LnA58WcJ/l719yaOd7k6b9V7vnCPB6p20ptEizOPn/mdrve7p1
 xcIfHcxK90oFHi8KYw/MWW/yTfB3Zdhx2ZWnRI8U5Z4L7+L7tPdQUeyMLz7Pbk9gUnTkNuXs
 MK4N5i5UVWIpzkg01GIuKk4EAC7tAgmjAgAA
X-CMS-MailID: 20191211145104eucas1p1ce04a26eebcd4c22d72f204e7ae0aa5a
X-Msg-Generator: CA
X-RootMTR: 20191211145104eucas1p1ce04a26eebcd4c22d72f204e7ae0aa5a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191211145104eucas1p1ce04a26eebcd4c22d72f204e7ae0aa5a
References: <CGME20191211145104eucas1p1ce04a26eebcd4c22d72f204e7ae0aa5a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_065107_573214_1402E412 
X-CRM114-Status: GOOD (  16.42  )
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
v2 resend:
 - resend reason: missed some important people on CC:

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
