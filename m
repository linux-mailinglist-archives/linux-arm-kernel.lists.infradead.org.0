Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3A9CFB9A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 15:50:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=qjBiZlCm+WBC8QLUYh5xQQkURucLAeybaIdej1bO0+c=; b=GViAlESfdn8Xcx
	CyP7MA1+XDIjfMOEeXfCcTWuprOc9GWWArUVO0LSH+vO70xwCmYZNJuVWX6mwce66bvIoxd3HayOY
	4vV+rVzwOppOjLusEp9n0JAZ5v5at6bgbxPuvwuFhSzHnLHhuUgFKGTJBY5cdfdKVSyIOBfexcEZB
	KZ4HVliXamsKPtkf/iSzVlmK8+mzvqCRG/4CThJUufZ5WV78R2GeaLDTHwoPePgaJFHOsBNOcLpTK
	9QobruqGKyjHpEWETDZtyTpdjVrz4TtFkRZGwDMMdkOIjzk8HamLx0PYHfmzn4aAXOw1nlWm0LamM
	Cbs+nRTM3vuxcS0Hrv0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHpsT-0003Oz-3N; Tue, 08 Oct 2019 13:50:13 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHpsG-0002w8-KC
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 13:50:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191008134951euoutp010364951d0337d71d144e25dcb1263fd6~LsCp8Oeir1313813138euoutp01O
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  8 Oct 2019 13:49:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191008134951euoutp010364951d0337d71d144e25dcb1263fd6~LsCp8Oeir1313813138euoutp01O
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570542591;
 bh=L6jrGOKBnyfCH0sLXoEEAMCWGWvKLLesnLO7aFiGlP0=;
 h=From:To:Cc:Subject:Date:References:From;
 b=PTBVEb+xkHqR5ME9pH119lRq/Ei202LrebfL8/M76gAWQ/IYq4Y+MNI8ym9LszFwq
 aHDloHS9AVRT8A9MXNesyCC/nw7CnDRXhH3Ya7mqA+k28xeUz48TKgbaLfOpXmHqtp
 Mzn5cz7qgN1W65EBkZf/n003Wy4k137YW42YBJ6U=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191008134951eucas1p2e647b9672cc01a735fe27b502c9d3f03~LsCpqTaP71989419894eucas1p2o;
 Tue,  8 Oct 2019 13:49:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id B1.86.04374.FF39C9D5; Tue,  8
 Oct 2019 14:49:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b~LsCpSvYXp2879228792eucas1p1W;
 Tue,  8 Oct 2019 13:49:50 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191008134950eusmtrp1f4a5410a8e962016417ab111bb505d5c~LsCpSBZgO0486604866eusmtrp1B;
 Tue,  8 Oct 2019 13:49:50 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-84-5d9c93ff4962
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 91.7C.04166.EF39C9D5; Tue,  8
 Oct 2019 14:49:50 +0100 (BST)
Received: from AMDC3218.digital.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191008134950eusmtip296671187e8381e8e1458f31035479996~LsCov6rwO0868008680eusmtip2B;
 Tue,  8 Oct 2019 13:49:50 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH] devfreq: exynos-bus: workaround dev_pm_opp_set_rate()
 errors on Exynos5422/5800 SoCs
Date: Tue,  8 Oct 2019 15:49:23 +0200
Message-Id: <20191008134923.30123-1-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrGKsWRmVeSWpSXmKPExsWy7djP87r/J8+JNdj/m99i44z1rBbXvzxn
 tejb95/Rov/xa2aL8+c3sFucbXrDbrHp8TVWi8u75rBZfO49wmgx4/w+Jou1R+6yW9xuXMHm
 wOOxaVUnm8fmJfUeB9/tYfLo27KK0ePzJrkA1igum5TUnMyy1CJ9uwSujFcHPjIXbBeqmDX1
 IlMD40L+LkZODgkBE4kTK9YydzFycQgJrGCUmD77HBuE84VRYsbv/awQzmdGiedL77PAtDSt
 3w6VWM4o8WXCa1a4lnv7JrKBVLEJqEpsmfGSHcQWEVCWmHxvOtgSZoENzBLdiw8zgiSEBdIl
 3rzsYgKxWYAaVrxZwwxi8wq4SNxevg6omQNonbzE4UNZEGFBiZMzn4BdwQwUbt46G2ymhMB0
 dokfpx6yQtS7SExvN4a4VFji1fEt7BC2jMTpyT1QH5RLPF3Yxw7R28Io8aD9I1TCWuLw8Ytg
 c5gFNCXW79KHCDtKvL1/mRFiPJ/EjbeCECfwSUzaBvIWSJhXoqNNCKJaVeL5qR4mCFtaouv/
 OlYI20NiTe8qsGuEBGIl1j3qZJ/AqDALyWOzkDw2C+GGBYzMqxjFU0uLc9NTi43zUsv1ihNz
 i0vz0vWS83M3MQJT0+l/x7/uYNz3J+kQowAHoxIPr0PVnFgh1sSy4srcQ4wSHMxKIrxyS2fE
 CvGmJFZWpRblxxeV5qQWH2KU5mBREuetZngQLSSQnliSmp2aWpBaBJNl4uCUamBsvDa7utWM
 j9NV7tOqwx+CNU6vV90r+fvwlZjjynt5WLWs+UqkWSx/pi3mVS7udUisMN4+JfSG/J47C9dK
 fHnntEI199Gl6701O2dwtgfM5j2lrVLA7yimu/WHa5D45VXRUy56zP185ytDlOhhQQ0G950n
 hVr13tx8eN8+sreGJeva+gbNCxOVWIozEg21mIuKEwFek+OtSQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplkeLIzCtJLcpLzFFi42I5/e/4Pd1/k+fEGmz7YWSxccZ6VovrX56z
 WvTt+89o0f/4NbPF+fMb2C3ONr1ht9j0+BqrxeVdc9gsPvceYbSYcX4fk8XaI3fZLW43rmBz
 4PHYtKqTzWPzknqPg+/2MHn0bVnF6PF5k1wAa5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJ
 pZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexqsDH5kLtgtVzJp6kamBcSF/FyMnh4SAiUTT+u2s
 XYxcHEICSxkldh8+wwKRkJZoPL2aCcIWlvhzrYsNougTo8Tf639YQRJsAqoSW2a8ZAexRQSU
 JSbfm84MUsQssItZ4uny32AJYYFUiannjzOD2CxADSverAGzeQVcJG4vXwdUwwG0QV7i8KEs
 iLCgxMmZT8COYAYKN2+dzTyBkW8WktQsJKkFjEyrGEVSS4tz03OLDfWKE3OLS/PS9ZLzczcx
 AqNi27Gfm3cwXtoYfIhRgINRiYfXoWpOrBBrYllxZe4hRgkOZiURXrmlM2KFeFMSK6tSi/Lj
 i0pzUosPMZoC3TqRWUo0OR8YsXkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KL
 YPqYODilGhi1Ntx7bmh8t1464eSdXi4XGcV1m33MY2NFQlsMNs9M55aabaDsmNrGWebgu3Mm
 j7yOya3761/elZc39/2qFZc5yYeL5b748sfyF6cc9FKw3f3sCfNefrn6kt+pitFW+1ueVebn
 nP7rz6Fm4707sMrp0kKWwPMntE6tT1P9cK1GLUPnj8SVbiWW4oxEQy3mouJEAGOxeLKgAgAA
X-CMS-MailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
X-Msg-Generator: CA
X-RootMTR: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b
References: <CGME20191008134950eucas1p15cfef5800efc10d5b18ec5eb37dde60b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_065000_798082_BA9EF899 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit 4294a779bd8d ("PM / devfreq: exynos-bus: Convert to use
dev_pm_opp_set_rate()") introduced errors:
exynos-bus: new bus device registered: soc:bus_wcore ( 84000 KHz ~ 400000 KHz)
exynos-bus: new bus device registered: soc:bus_noc ( 67000 KHz ~ 100000 KHz)
exynos-bus: new bus device registered: soc:bus_fsys_apb (100000 KHz ~ 200000 KHz)
...
exynos-bus soc:bus_wcore: dev_pm_opp_set_rate: failed to find current OPP for freq 532000000 (-34)
exynos-bus soc:bus_noc: dev_pm_opp_set_rate: failed to find current OPP for freq 111000000 (-34)
exynos-bus soc:bus_fsys_apb: dev_pm_opp_set_rate: failed to find current OPP for freq 222000000 (-34)

They are caused by incorrect PLL assigned to clock source, which results
in clock rate outside of OPP range. Add workaround for this in
exynos_bus_parse_of() by adjusting clock rate to those present in OPP.

Fixes: 4294a779bd8d ("PM / devfreq: exynos-bus: Convert to use dev_pm_opp_set_rate()")
Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
 drivers/devfreq/exynos-bus.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index c832673273a2..37bd34d5625b 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -243,7 +243,7 @@ static int exynos_bus_parse_of(struct device_node *np,
 {
 	struct device *dev = bus->dev;
 	struct dev_pm_opp *opp;
-	unsigned long rate;
+	unsigned long rate, opp_rate;
 	int ret;
 
 	/* Get the clock to provide each bus with source clock */
@@ -267,13 +267,21 @@ static int exynos_bus_parse_of(struct device_node *np,
 	}
 
 	rate = clk_get_rate(bus->clk);
-
-	opp = devfreq_recommended_opp(dev, &rate, 0);
+	opp_rate = rate;
+	opp = devfreq_recommended_opp(dev, &opp_rate, 0);
 	if (IS_ERR(opp)) {
 		dev_err(dev, "failed to find dev_pm_opp\n");
 		ret = PTR_ERR(opp);
 		goto err_opp;
 	}
+	/*
+	 * FIXME: U-boot leaves clock source at incorrect PLL, this results
+	 * in clock rate outside defined OPP rate. Work around this bug by
+	 * setting clock rate to recommended one.
+	 */
+	if (rate > opp_rate)
+		clk_set_rate(bus->clk, opp_rate);
+
 	bus->curr_freq = dev_pm_opp_get_freq(opp);
 	dev_pm_opp_put(opp);
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
