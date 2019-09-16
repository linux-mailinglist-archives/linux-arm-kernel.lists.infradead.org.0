Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD009B37CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Uwia/yw24HVVWeZJqwQh2p113zGUAfv4JV20zQ4ZEp8=; b=ot9UMpqNA2Pt+xao7rcp3oQnWy
	G9zzy5sFgpJZuUuEe6jY1+n+WIV1O34nSkGeSu7u7aBBW2uVCJmBFHQS7RdxYXvFQg77QsKMJ1wCT
	EJSe3GJ34Ckbkqg5krGGJi/18XPm+kGUUO3fp4GdGLNpyUaW6BRt4rfUhFDK/mGe0yuYykpAENsAf
	Yyrf/c0VdNGXNVQJJ7aHEffFDe51E6HFGFGDXiO4Nbi/+ZXIG0HAYRom1AehQ03R0k+Z8kXgO6zZk
	bPGhbWdq9QfLguFkCk5H4cPLPpbql4axoEFbqQUZNx/pg/O1J6fybKbIoLaacdiAkdRR9as8eupTk
	XEqGt6Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nvW-00040q-S2; Mon, 16 Sep 2019 10:08:10 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nuk-0003ZB-Ot
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:07:24 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190916100719euoutp027951c498503c98c99dcc62bd16cfbd02~E40Exknq11439714397euoutp02b
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 10:07:19 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190916100719euoutp027951c498503c98c99dcc62bd16cfbd02~E40Exknq11439714397euoutp02b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568628439;
 bh=ZKaiWSmqXLW7DVvyiRQxVpgxuqi4JmNHQmIPrM7zpG4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RaQjexg304X+1nxmgwp7F8+nrAVq1g7DNko4kCtIGakV+SQJcQklrrFPA1O6c4/je
 Jz90fbSwgZldWFI7Vlsmg+Wy4+4GwwACxjN0uoj3n6vYhRVjVNEjC9xSEtQOy60PX8
 oGWecPN+vY7Lk3aCg4q28lbbjzvw8uXVmWDYdun4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190916100718eucas1p1aad84200fd91ed069b4d28e79b8bca55~E40EEeD850720607206eucas1p1S;
 Mon, 16 Sep 2019 10:07:18 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 9A.DC.04309.6DE5F7D5; Mon, 16
 Sep 2019 11:07:18 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190916100717eucas1p1b8d24c74c4d0bb385aa3455cf98c76bd~E40DPjyUN0447104471eucas1p1o;
 Mon, 16 Sep 2019 10:07:17 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190916100717eusmtrp2a2341e524e06682a4f45e7b04bd5b885~E40DBeMRs2883028830eusmtrp20;
 Mon, 16 Sep 2019 10:07:17 +0000 (GMT)
X-AuditID: cbfec7f4-f2e849c0000010d5-23-5d7f5ed6b7a6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9C.48.04117.5DE5F7D5; Mon, 16
 Sep 2019 11:07:17 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190916100716eusmtip27dbb5ac2a4a788a86d3748e0b88fcf0d~E40CWSJIl3249232492eusmtip2C;
 Mon, 16 Sep 2019 10:07:16 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/3] memory: Exynos5422: minor fixes in DMC
Date: Mon, 16 Sep 2019 12:07:02 +0200
Message-Id: <20190916100704.26692-2-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916100704.26692-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSf0yMYRz33Pu+9753vHk7qe9oNReGEZm1Z1iyMTf+0IzZIhy9/Zju4t4u
 JdOhX24qw1Dzo5J1u7tGJ5WTpC6h1SEq/ZrV5FcYFTEurjf893k+z+fXnj0MobBRM5hYbQKv
 06rjlFI5WXH/e8uith2pEUsahjxx2flrFG4ffk3hy44WCuf2vyew03mdxs1HB2ncafDFtv42
 CrfaL0jxULYD4fPOGgkudfTQ+Gr7EwnuOmKS4vQ7DhrXD2ZS+OuDPhTqqbJesiLVrfweWmUz
 H5eqbhSnqu59rJaocsrNSDVk8wujw+UrI/m42ERetzhklzzGMtBL7iucnNR1ep0BtcqMSMYA
 twy6LUbKiOSMgjMhuNpRisTDMIJjRS7CrVJwQwjeHPX96/hirCVFUQmCXJNL8s9xpq9TakQM
 I+UCocq8323w4q4g+Fof7sYEVyGB7JHxoGlcCPzMqqLcmOTmwLeOJtKNWW4VuOwvkVjmD5br
 teMjZFwojJoaCHcXcPdpyOrsJ0XRGrjZbaVEPA3eNZbTIvaFsVuXJSIWwJBdOBF6CPpzL05o
 VkB94xPKvZng5sM1+2KRXg05rlKJmwbOAzo+eIrzPeBUxTlCpFnIylCI6nlQfuLxRJE3lFjP
 ToSroODtgFR8ndMIHr9x0ieRf/7/sgKEzMiH1wuaaF5YquUPBApqjaDXRgfuidfY0J+f1ORq
 HK5C9p+76xDHIOUU1pB+OEJBqROFZE0dAoZQerFbs1IiFGykOvkgr4vfqdPH8UIdmsmQSh82
 ZdLLbQouWp3A7+X5fbzu762Ekc0woOAXdGmZc8OcQcf2zX6xxd5y9pFH1NrPaRk+ARXV2ldd
 LZqVO09k1kRpf/l2P92quzs99+Gmmv3+RY6BvCqnz0hrclp35dr36cmzmr3CZuc9X3hj6vrW
 T6i4fSNrGSOf/Zi1tzl++mhwr76pUhYQENTFLM9jk6imLZVzmbCC2wNlDiUpxKiDFhA6Qf0b
 p5Dlm0UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGIsWRmVeSWpSXmKPExsVy+t/xe7pX4+pjDV5Nk7XYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy
 1CJ9uwS9jNXP7rEULOSuuD3ZvYHxMmcXIyeHhICJxKeuAywgtpDAUkaJVSciIOJiEpP2bWeH
 sIUl/lzrYuti5AKq+cQoMefjD6AGDg42AT2JHasKQeIiAssZJY6tessM4jALHGGS6N81jxWk
 W1jATuJPxw4wm0VAVeL7jdNg23gF7CX+7XrACLFBXmL1hgPMIDangIPEjxVHmSEuspeYcv0H
 4wRGvgWMDKsYRVJLi3PTc4uN9IoTc4tL89L1kvNzNzEC42TbsZ9bdjB2vQs+xCjAwajEw9vQ
 WhcrxJpYVlyZe4hRgoNZSYQ3vKM6Vog3JbGyKrUoP76oNCe1+BCjKdBRE5mlRJPzgTGcVxJv
 aGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qB8dqa1vbfStMuOJp8OFBc
 0CQiwMCvF6jcf7aruDrbTWjl1zuul/7qbrz+7ubnFzlfz6TFTM/Yu2jbP5MPZflqjTdTe5pF
 ptVbJucF7V/xlSesWDNINfzBHL/5wo3nHBdtnTzpN5vBkdjJS1MKXi2qnKGpXbK65vQEt+dW
 nx5f2LSjVbNA70pJhBJLcUaioRZzUXEiADMC3mSpAgAA
X-CMS-MailID: 20190916100717eucas1p1b8d24c74c4d0bb385aa3455cf98c76bd
X-Msg-Generator: CA
X-RootMTR: 20190916100717eucas1p1b8d24c74c4d0bb385aa3455cf98c76bd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190916100717eucas1p1b8d24c74c4d0bb385aa3455cf98c76bd
References: <20190916100704.26692-1-l.luba@partner.samsung.com>
 <CGME20190916100717eucas1p1b8d24c74c4d0bb385aa3455cf98c76bd@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_030722_942288_626D3846 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, b.zolnierkie@samsung.com,
 krzk@kernel.org, Lukasz Luba <l.luba@partner.samsung.com>,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 kgene@kernel.org, s.nawrocki@samsung.com, myungjoo.ham@samsung.com,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Small fixes for issues captured by static analyzes:
used kfree() insead of devm_kfree() and missing 'static' in the private
function.
Checks which show the issues:
- drivers/memory/samsung/exynos5422-dmc.c:272 exynos5_init_freq_table()
warn: passing devm_ allocated variable to kfree. 'dmc->opp'
- drivers/memory/samsung/exynos5422-dmc.c:736:1: warning: symbol
'exynos5_dmc_align_init_freq' was not declared.

Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/memory/samsung/exynos5422-dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index 8c2ec29a7d57..a809fa997c03 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -269,7 +269,7 @@ static int exynos5_init_freq_table(struct exynos5_dmc *dmc,
 	return 0;
 
 err_free_tables:
-	kfree(dmc->opp);
+	devm_kfree(dmc->dev, dmc->opp);
 err_opp:
 	dev_pm_opp_of_remove_table(dmc->dev);
 
@@ -732,7 +732,7 @@ static struct devfreq_dev_profile exynos5_dmc_df_profile = {
  * statistics engine which supports only registered values. Thus, some alignment
  * must be made.
  */
-unsigned long
+static unsigned long
 exynos5_dmc_align_init_freq(struct exynos5_dmc *dmc,
 			    unsigned long bootloader_init_freq)
 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
