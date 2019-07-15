Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE7268A1D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:59:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FdO2Oqj1gAWSbE2IGAVioomig7YFs4mxCOEApRKs1Q0=; b=h1RICu1sg+mw+/rka5ZIT1LOJV
	3XV6glLN/A0tYSrA0lT/EG/wOzg7Lan7c7PS4VVzq7/BmlYngql3SwWGrBSIj+sedPETifNTUog5s
	e0yppKlRRNxEftWIXKM0u5tFAGYIjHCs41Kng5xcFFZ25OsBvy+Il/PxU1sWUas9jLv0HsMYqmpZx
	kRkkWGQ3RXuRKy9Bud3EGDQr6DmzlVg5PfI/T7KvDvGvdl5acf0N6H0ju9so7uJV7VOjWXV9FHCP4
	pbupEMVFLSpMrEdB+PXt29tkOXTexkoFNAXWcxl7uQJ/qwkqBWoKCwi6Txutx4pEhra14WBAgBB1D
	8CG4doDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Zy-00027q-33; Mon, 15 Jul 2019 12:59:42 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lu-0004Uz-Tg
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:14 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124507euoutp0231d63b747f4ea11aa6b9051645887dfb~xlU3ZENz90763707637euoutp02E
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124507euoutp0231d63b747f4ea11aa6b9051645887dfb~xlU3ZENz90763707637euoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194707;
 bh=j5TaKzjwXWO0slJIy85XDb0TdS8H6AlFvyUZNbcpDis=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Ia7CT42t/ZH6q0QPHbB9Cii6f6y2cvd71iUU5238LIwEHMghCyutJJvjMU5uhdgqO
 tMFX+UKbYOG+4zXtof6uIeJ3aLiVNQZ74ucygLJHiufJC/iMGhV2DlvtixSqwAce4B
 kCWXRj+wFb1U9dc35btR91sjCfj9nxr5t27uprC0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124506eucas1p1ecb230a4d7648efbb4292c1604c873f9~xlU2fFbc43056930569eucas1p1r;
 Mon, 15 Jul 2019 12:45:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 56.35.04298.1557C2D5; Mon, 15
 Jul 2019 13:45:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124505eucas1p14e68a537cb53cda2cfd832e59425cd25~xlU1silrT0571105711eucas1p1R;
 Mon, 15 Jul 2019 12:45:05 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124505eusmtrp1707efe250da92fa1641bdffe8b2f4481~xlU1qxVLr0488104881eusmtrp1O;
 Mon, 15 Jul 2019 12:45:05 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-ec-5d2c75513367
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DD.17.04140.1557C2D5; Mon, 15
 Jul 2019 13:45:05 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124504eusmtip217a627d4fe60fb1b3302a6b57e00d008~xlU0rtPq21173411734eusmtip2y;
 Mon, 15 Jul 2019 12:45:04 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 38/50] ARM: dts: exynos: change parent and rate of
 bus_fsys2 in Exynos5422
Date: Mon, 15 Jul 2019 14:44:05 +0200
Message-Id: <20190715124417.4787-39-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHKsWRmVeSWpSXmKPExsWy7djPc7pBpTqxBls3MFrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6Ms+deMxc0clRMW7qHpYHxAVsXIyeH
 hICJxNuVW5m7GLk4hARWMErcuXqVCcL5wiix98dFqMxnRonXBy8zw7Q0bL4JVbWcUWLjlFfs
 cC1bP68FquLgYBPQk9ixqhCkQURgCaPEkZ9JIDXMAjeZJPY82ckKkhAWiJf4/OEsE4jNIqAq
 sft0NwuIzStgL9G2ewI7xDZ5idUbDoBt5gSK/5x2gQ1kkITAOXaJzvnroU5ykZh0YDIThC0s
 8er4FqhmGYnTk3tYIOxiiYbehYwQdo3E4/65UDXWEoePX2QFOZpZQFNi/S59iLCjxPquGWBh
 CQE+iRtvBUHCzEDmpG3TmSHCvBIdbUIQ1RoSW3ouQB0gJrF8zTSo4R4SS/69hgbPJEaJbZ1z
 WScwys9CWLaAkXEVo3hqaXFuemqxYV5quV5xYm5xaV66XnJ+7iZGYKo6/e/4px2MXy8lHWIU
 4GBU4uF1SNGOFWJNLCuuzD3EKMHBrCTCa/sVKMSbklhZlVqUH19UmpNafIhRmoNFSZy3muFB
 tJBAemJJanZqakFqEUyWiYNTqoHRxVq7JrT9TDf7vxS76bN3b6twzHx78OTNEouItRrz5Z45
 FlT+nheV3Vf42eFBkOHXl+UHsnxawuZbtYWceP06ZuvSgv71fkvyZv297pUpd+yBX4HyPeGT
 MRY7PL/9ZGqN3MMXePk558Fs67Itybm2MYKtsh9aMsI9RF34rdj6P/gq6SZNDFBiKc5INNRi
 LipOBAAgtkkqUQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7qBpTqxBh2/RCxurTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamS
 vp1NSmpOZllqkb5dgl7G2XOvmQsaOSqmLd3D0sD4gK2LkZNDQsBEomHzTSYQW0hgKaPEl3Ma
 EHExiUn7trND2MISf651AdVzAdV8YpT4tvI0UIKDg01AT2LHqkKQGhGBFYwSk094g9QwC7xm
 kjhy9B0rSEJYIFbi4IIfYMtYBFQldp/uZgGxeQXsJdp2T4BaIC+xesMBZhCbEyj+c9oFNoiD
 7CQWH/3JNIGRbwEjwypGkdTS4tz03GIjveLE3OLSvHS95PzcTYzAyNl27OeWHYxd74IPMQpw
 MCrx8DqkaMcKsSaWFVfmHmKU4GBWEuG1/QoU4k1JrKxKLcqPLyrNSS0+xGgKdNREZinR5Hxg
 VOeVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5NLUgtgulj4uCUamAM8ir2cImTDa+z
 aKm02z9RL+dS6vKd320ZFQ5UO16zFU1/eshsvwCzyzwXnslPTROuWd6bX6r/NOsXy2ShhJrG
 F/WrlTnzNlWtuSXUG2/64ePZla/nTZj3bMduFwOJbCdlu7qwF+pqX2L/CwUevqU4aRbvQR8D
 +zqjW1bb6yYWOwuvOynR81KJpTgj0VCLuag4EQBKudLKsgIAAA==
X-CMS-MailID: 20190715124505eucas1p14e68a537cb53cda2cfd832e59425cd25
X-Msg-Generator: CA
X-RootMTR: 20190715124505eucas1p14e68a537cb53cda2cfd832e59425cd25
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124505eucas1p14e68a537cb53cda2cfd832e59425cd25
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124505eucas1p14e68a537cb53cda2cfd832e59425cd25@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054511_354298_E404EE6F 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, cw00.choi@samsung.com, b.zolnierkie@samsung.com,
 sboyd@kernel.org, mturquette@baylibre.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The FSYS2 bus OPP table has been aligned to the new parent rate.  The OPP
table is also shared with bus_fsys. This patch sets the proper parent and
picks the init frequency before the devfreq governor starts working. It
sets also parent rate (DPLL to 1200MHz).

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 6a82dd175b8a..0e71ba64a4fe 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -82,6 +82,11 @@
 
 &bus_fsys2 {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK200_FSYS2>,
+			  <&clock CLK_DOUT_ACLK200_FSYS2>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>;
+	assigned-clock-rates = <0>, <240000000>,<1200000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
