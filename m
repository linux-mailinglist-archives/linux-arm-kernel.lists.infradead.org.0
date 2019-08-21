Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 543A197E10
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 17:06:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=OWTsA1cfVh/sup+UUnTzY63i6Ei3/Hw5ddmTXYfXHWg=; b=Fn
	VEfdnDrEYa6gqQ0gVusNB44FGb8en/tLdjDoY4TbBI2wU88LyRPs8NNsdMa3y9uDYNehQ9zDh6xNA
	sijW4yUh09/1Em2mPWGWS/Ur0fnBREAypRqRe2HkpQ5ksd0UMH3y8yGAiazgRjMrU7YA7e0DAGnuW
	yZsSNJ3AaexPbn7eCYKFcrtXmzqaeXwcpsKzXzyHLZOULbxAXwiaXkdzv3JVR7wVwlqPQkmRX1WTb
	MCAbCY/SEoiSZjEjEG2UNh8zMBEo57506xAfxLG4dChAKdbn0vs89bZbM+YBEM9UWdcuOCDErCSCt
	dQTV9Dqgz0/7pTxibE7SObpHgq4cDulA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0SBY-0001he-NE; Wed, 21 Aug 2019 15:06:04 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0SBP-0001gc-Qj
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 15:05:57 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190821150549euoutp02b885dd8d9895112e85ace31a7363e5d1~8_HSBQGVP2311823118euoutp02I
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 15:05:49 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190821150549euoutp02b885dd8d9895112e85ace31a7363e5d1~8_HSBQGVP2311823118euoutp02I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566399949;
 bh=TapZ50bINgSULFfnU/4MVBjZqPhc/IXiiaEUktjqsEE=;
 h=From:To:Cc:Subject:Date:References:From;
 b=ufFd0bhwAz8ob5XrL1qeAXe4tayQuapLAfw19Pc4SO40R2/Z+y0fesKNGp8kmebB2
 24KgnEvBCG2VUi34IZwTAfXxET/Gp5dstEr5mmWhdNrwsuHKoZYFGbyMIGXCp43jtB
 4fZtezbm/9svdGTE9OGqxve7MyedFpsOqzjQ5U9c=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190821150549eucas1p1a472ee908256a42b5d07673d4f48f5dc~8_HRcbJOw1287612876eucas1p1c;
 Wed, 21 Aug 2019 15:05:49 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 55.0D.04469.CCD5D5D5; Wed, 21
 Aug 2019 16:05:48 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190821150548eucas1p15139f733b00e3a1a107efe39f6712fe9~8_HQyGgsO2357223572eucas1p1w;
 Wed, 21 Aug 2019 15:05:48 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190821150548eusmtrp29d9a9fd5759502b1257cb1e2dbb025d8~8_HQj_TcL3237532375eusmtrp2x;
 Wed, 21 Aug 2019 15:05:48 +0000 (GMT)
X-AuditID: cbfec7f2-569ff70000001175-d5-5d5d5dcc9c23
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 17.48.04166.CCD5D5D5; Wed, 21
 Aug 2019 16:05:48 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190821150547eusmtip2964ecbfa743a4ea2c7438188a225e546~8_HQB7Cx52516525165eusmtip2a;
 Wed, 21 Aug 2019 15:05:47 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org
Subject: [PATCH] soc: samsung: chipid: Remove the regmap lookup error log
Date: Wed, 21 Aug 2019 17:05:39 +0200
Message-Id: <20190821150539.31207-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrFIsWRmVeSWpSXmKPExsWy7djP87pnYmNjDV41GlpsnLGe1aJl1iIW
 i/7Hr5ktzp/fwG6x6fE1VovLu+awWcw4v4/JYu2Ru+wWi7Z+Ybc4/Kad1YHLY9OqTjaPzUvq
 PXqb37F59G1ZxejxeZNcAGsUl01Kak5mWWqRvl0CV8b6y4eZCuZwVZx/vJmtgfEuRxcjJ4eE
 gInE1K+z2LsYuTiEBFYwSkzZOoEZJCEk8IVRYvVzdwj7M6NE3w4fmIYr+xeyQ8SXM0osfVsB
 0QxU3/h5PytIgk3AUKL3aB8jiC0iICxxb+lysAZmgUlMEjv61LsYOTiEBTwl2icGgoRZBFQl
 bn87wgRi8wpYS/Q8m88KsUteYvWGA8wg8yUE3rNJTOqCWCwh4CLR/72BGcIWlnh1fAtUXEbi
 /875TBANzYwSPbtvs0M4Exgl7h9fwAhRZS1x+PhFVpArmAU0Jdbv0ocIO0rMuf+AESQsIcAn
 ceOtIMTNfBKTtk1nhgjzSnS0CUFUq0j8XjWdCcKWkuh+8p8FwvaQmDf9OxMkfGIlTj1YxD6B
 UW4Wwq4FjIyrGMVTS4tz01OLDfNSy/WKE3OLS/PS9ZLzczcxAlPE6X/HP+1g/Hop6RCjAAej
 Eg/vBN3YWCHWxLLiytxDjBIczEoivBVzomKFeFMSK6tSi/Lji0pzUosPMUpzsCiJ81YzPIgW
 EkhPLEnNTk0tSC2CyTJxcEo1MGYeLQtUK3ufblfMKH50uf4zrZnLSmOfKG4Ka+Zcd7amK6bW
 4Bjrgf+rtmZKT1dKa+RKsWoT1ajfn5JcuMLFk/9Yb3ez0oEF+8+widopqqxn8cjRivvdkxvY
 lFAYtqHY8Iz+Xoc7N/jrpR59Dfb8L3Rx02PeVq6JTB7nOi8bXGDv8Ap2XGKmxFKckWioxVxU
 nAgAt6K0Dw0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrELMWRmVeSWpSXmKPExsVy+t/xe7pnYmNjDV4dYrHYOGM9q0XLrEUs
 Fv2PXzNbnD+/gd1i0+NrrBaXd81hs5hxfh+Txdojd9ktFm39wm5x+E07qwOXx6ZVnWwem5fU
 e/Q2v2Pz6NuyitHj8ya5ANYoPZui/NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9
 O5uU1JzMstQifbsEvYz1lw8zFczhqjj/eDNbA+Ndji5GTg4JAROJK/sXsncxcnEICSxllOh7
 PYexi5EDKCElMb9FCaJGWOLPtS42iJpPjBK75+1nAUmwCRhK9B7tYwSxRYCK7i1dDjaIWWAO
 k8TDnklgg4QFPCXaJwaC1LAIqErc/naECcTmFbCW6Hk2nxVigbzE6g0HmCcw8ixgZFjFKJJa
 WpybnltsqFecmFtcmpeul5yfu4kRGJ7bjv3cvIPx0sbgQ4wCHIxKPLwTdGNjhVgTy4orcw8x
 SnAwK4nwVsyJihXiTUmsrEotyo8vKs1JLT7EaAq0fCKzlGhyPjB28kriDU0NzS0sDc2NzY3N
 LJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MAa+rZUxevqi8rGg57aV39WqC59N7XZ/fuyK
 dFnl+fONh6RmmITOVAr94qI787+U8Mqf9+3Cd6bcYliyVXXRC85zdbylN94fW7x0dexjn8wv
 W05Xd8n4T18a41F+w/Tp8jz2dwWi675FhSxT98mYesqNYdUSt5aKs1YXjjtlhS6UOZ35I4/l
 1jQlluKMREMt5qLiRACGWA8AZQIAAA==
X-CMS-MailID: 20190821150548eucas1p15139f733b00e3a1a107efe39f6712fe9
X-Msg-Generator: CA
X-RootMTR: 20190821150548eucas1p15139f733b00e3a1a107efe39f6712fe9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190821150548eucas1p15139f733b00e3a1a107efe39f6712fe9
References: <CGME20190821150548eucas1p15139f733b00e3a1a107efe39f6712fe9@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_080556_025797_7412F08D 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-samsung-soc@vger.kernel.org, b.zolnierkie@samsung.com,
 pankaj.dubey@samsung.com, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 kgene@kernel.org, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit 40d8aff614f7 ("soc: samsung: chipid: Convert exynos-chipid
driver to use the regmap API") of_find_compatible_node() call was
substituted with syscon_regmap_lookup_by_compatible() but also an error
log was added for case where lookup fails. On multiplatform the lookup
will always fail on any non-samsung device so the log is incorrect.
Remove the error log and just return an error code from
syscon_regmap_lookup_by_compatible() which internally calls
of_find_compatible_node().

Reported-by: Jon Hunter <jonathanh@nvidia.com>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 drivers/soc/samsung/exynos-chipid.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/soc/samsung/exynos-chipid.c b/drivers/soc/samsung/exynos-chipid.c
index 75b6b880d9ef..c55a47cfe617 100644
--- a/drivers/soc/samsung/exynos-chipid.c
+++ b/drivers/soc/samsung/exynos-chipid.c
@@ -56,10 +56,8 @@ int __init exynos_chipid_early_init(void)
 	int ret;
 
 	regmap = syscon_regmap_lookup_by_compatible("samsung,exynos4210-chipid");
-	if (IS_ERR(regmap)) {
-		pr_err("Failed to get CHIPID regmap\n");
+	if (IS_ERR(regmap))
 		return PTR_ERR(regmap);
-	}
 
 	ret = regmap_read(regmap, EXYNOS_CHIPID_REG_PRO_ID, &product_id);
 	if (ret < 0)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
