Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6FF68A18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:58:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9UDG+tCJfIcGTZJehmKioU63j6S3IQRKeYadMEqklDQ=; b=UIwxgwFnihWr6Z/x4B3qZcjWhH
	0TIuk4qlkC5GQvIOLY+NmCk8IpskL6+YjT788t7d8VmJ/e7/wgUrU6HvBn0iYXrbd7En7cqE9cyei
	FELLAC0kD0IxA/53kxqQJldje9WL+Gs+A69+ZD1EcL0iiNLwmDx2VXDFalQQaSzH7xMrVb8uC1P6x
	eNnMLjjQhDkyxixjzWe/N4LNRkTuVg3cw1d9CR/8XS9kWgpwQfOgntZeRd85v4WpW1opd4ocxG72J
	Zkv2B26YLnGjOKkmiJDe0ESosTqOgkH5owoocpWACNvtUU8St01aSWh7gB1SyjVpmoyUg6v7yAdcy
	BI0Kxblw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0YT-0000ud-D3; Mon, 15 Jul 2019 12:58:09 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lq-0004Dz-RV
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:10 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124504euoutp01b4ab6b52ab4029ab3bf525c438fc95f2~xlU0aqTR61961119611euoutp01s
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124504euoutp01b4ab6b52ab4029ab3bf525c438fc95f2~xlU0aqTR61961119611euoutp01s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194704;
 bh=p4qyGCRC9XXm9VFzmGgechQEw2giiytvt4FcZQzQVAQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gjtsFfN1RvXuru5lXlxXkZPOxECT08+bWOhLAJjfGIIOkpsouzAdv5xBuByJ2kmTh
 jHGi0TSQ70lmCGJ7BIqRQVONsayDdtWBxKJvMpt1QNoWloas0Bti4lMHS7a5rtDd36
 2x8MHoRZAWyOq5bAQVJUPxg/M5B7CeWWKE2XOtYI=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124503eucas1p22011b9f08900e383e756f60f956546d1~xlUzis5Fc1386513865eucas1p2d;
 Mon, 15 Jul 2019 12:45:03 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C6.C0.04325.E457C2D5; Mon, 15
 Jul 2019 13:45:02 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124502eucas1p20a35f8c0f426878e50583fa3402de988~xlUylg3hL2439624396eucas1p2j;
 Mon, 15 Jul 2019 12:45:02 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124501eusmtrp126b9a2a8c516b3fd9d5584a0468e16f0~xlUyXZUou0488104881eusmtrp19;
 Mon, 15 Jul 2019 12:45:01 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-fd-5d2c754e0f03
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 4C.50.04146.D457C2D5; Mon, 15
 Jul 2019 13:45:01 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124500eusmtip2265d3553c7d052165984db886d68cfc7~xlUxgytJP1101111011eusmtip2T;
 Mon, 15 Jul 2019 12:45:00 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 34/50] ARM: dts: exynos: set parent clocks to PWM in
 Exynos5420
Date: Mon, 15 Jul 2019 14:44:01 +0200
Message-Id: <20190715124417.4787-35-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHfXd2tuNwcpySL+YFFoqVqZHBC+UlSlhE5QdJKMRmHlTyurOZ
 VtIqNBszzUJF0jJNZXnfEJvOckoDZ84b6kyzMlO8JKaCYkibO9a3//N7nv/7XHgJTKDD3YjE
 FCklSREnCTk8dtvH7YFjl2R+0YH9q0FosnEARy2lTTga35jH0cteS1gwu4Qhk6mZiz49WOai
 Sbk7ap0dw9Ga8guORrQvOKjU1MVCDb3TXPRmfIiFhvrC0ef7dRyUo+vlop7lRzjaHWthhzmL
 6ivqgWh1IocralU95ojU1fdE3b86WaInGhUQrbd6RnCv8k7HUUmJGZQkIOQ6L8GQ181Ja8Qz
 Sxu85KCTrQD2BCSDYOFOOUcBeISArANwe3qLCTYAXOt+zrIF6wDqdN/AvmVF/5BJ1AI4t7AF
 /llMOzO4AhAEh/SH7ap0q8GFrAawdzvWWoORZhbs/PEOtyacyUi4mK9mWTWb9IbvR2s4Vs0n
 Q2Fb+QrX1s0Lvm3+gFm1vYVvFw/uzQfJYS7syxtltjgHNUuFjHaGiwYNY3aHxmdKhtNQnl/J
 rHAXzhaUMzWnYI9haG9ojDwMm7QBNnwGjqwr9jAkHeHEipMVYxZZ1FaC2TAf5uUKbNW+UKMc
 ZNn0AVhbX8w8LoJbu0bmokUAmr8vsAuBV9n/Zq8AUAFXSkYnx1P0iRTqlj8tTqZlKfH+N1KT
 W4HlUxl3DZvtoOtPrB6QBBA68MPijkYLcHEGnZWsB5DAhC784E0L4seJs25TktQYiSyJovXg
 IMEWuvLv2H29JiDjxVLqJkWlUZL9LIuwd5MDxyvKbFlI+axf3wDpnQarmtRVHWrz+RlNVGko
 tnPS6UJlZoWTvvCia9lUdX5njPT3vLxJ4t6n6xgyZke5eeTaNRo7gi9jmf0Oh8L81D68EsOU
 xHMifd43bFiZEF6ZtJNYo9W3P30dMVd9NrLB+DNwXRWulZodIn1STX4Bkx5CNp0gPn4Ek9Di
 v2EE9l5QAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7q+pTqxBgfu6VncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M4x0H2QrWsVbMWCvfwLiHpYuRk0NCwETi7aFmpi5GLg4hgaWMEsdW
 nIVKiElM2redHcIWlvhzrYsNougTo8Tdm3cYuxg5ONgE9CR2rCoEqRERWMEoMfmEN0gNs8Br
 JokjR9+xgiSEBYIkJh7pYAKxWQRUJfZfWcYGYvMK2Etsm/sWaoG8xOoNB5hBbE6g+M9pF8Bq
 hATsJBYf/ck0gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMDI2Xbs5+YdjJc2Bh9i
 FOBgVOLhdUjRjhViTSwrrsw9xCjBwawkwmv7FSjEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ
 +cCoziuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwKiXdWnGQh9t
 LrkExmNfb26R1fN8xN5478NGiVVL+k7dz/5vt+V8eEXUvUspS79oC9klLPy56uILl/acWxM+
 e15yEVF6VvhTbes7HleFHH57o7UnzOpMVtmXx6udVK9arujOfU5xSdLUEudnlp9TD3rM3Db3
 0HF/7XcB8xb7psXvq1a6/dSicbsSS3FGoqEWc1FxIgA8xyiLsgIAAA==
X-CMS-MailID: 20190715124502eucas1p20a35f8c0f426878e50583fa3402de988
X-Msg-Generator: CA
X-RootMTR: 20190715124502eucas1p20a35f8c0f426878e50583fa3402de988
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124502eucas1p20a35f8c0f426878e50583fa3402de988
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124502eucas1p20a35f8c0f426878e50583fa3402de988@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054507_390615_346420C3 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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

Change the parent of PWM clock to the CPLL which has 666MHz.
The PWM's divider uses /10 rate so it would set 66.6MHz.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 79f635043247..a361dd5a6036 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1473,6 +1473,8 @@
 
 &pwm {
 	clocks = <&clock CLK_PWM>;
+	assigned-clocks = <&clock CLK_MOUT_PWM>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_CPLL>;
 	clock-names = "timers";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
