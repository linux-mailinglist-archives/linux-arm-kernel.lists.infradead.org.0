Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A877EB7647
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YJpCFjeGSAJOzyTp1P6eHO938YXcqztitMt+ZnIPYx4=; b=oTwx5CEI28w8+Ws0tW3PC4xAU1
	ABk2cJub97N2/Vzw5XZgB1qbTQsh/hzhVOnQWfIikwHMnD1EIsTlIcg6URVmOJboT7Atqcovr4EIJ
	PSQRKm08qB7VaypyXHH5xqqm73vKlsbIFWY5SidCLpsAwLiT/4HxQr5uUWNKryQ5jH3P4Dlv2SR+D
	2iZWkPyjW2ohzs37VhC8PsgOnEXoGynUB7pl51+FDZnWaxDghAT6d3bvcrMgzNH0qT1GfIyq5ZK9Z
	I+MXyYHGhrvJRNU7RxssPheWZgJgaFl/7Lwgeo1AYRTciXD6iPpTqnCuC8AvNpejchSqMv9+2OF01
	wjkdrMmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAsj4-0001oH-Ue; Thu, 19 Sep 2019 09:27:47 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsiH-0001B1-9K
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 09:27:00 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190919092654euoutp0168c749fd00f3ff1475c6bf42de83b114~FzMo-1pOJ2471124711euoutp01J
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 09:26:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190919092654euoutp0168c749fd00f3ff1475c6bf42de83b114~FzMo-1pOJ2471124711euoutp01J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568885214;
 bh=QKl6bKsImeYe2y5vJhT/E+HB0W0bBjwvflM/iNImEIQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cZyqvcWvTHECWrEjsIUc7kjYlT0T20FSh76D2ZQhaPkO3WmABrZQzHRwEaoBxykBh
 sce1gerMnTYrUmLo3Y2ZULjslEXfPBKGcsfaPpCpgv/czQffm2tT5Nq12Oz5h+efKE
 BOIN8nFo8ssToDOcV3td+GOZekD62DvukT/7sZ4U=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190919092653eucas1p238340b5058f0eb78d7af190f878d6ffd~FzMohGwLT1191911919eucas1p2Y;
 Thu, 19 Sep 2019 09:26:53 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 74.0D.04374.DD9438D5; Thu, 19
 Sep 2019 10:26:53 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190919092652eucas1p12dbf9ba9d60a0c89cb7de05ab61893be~FzMnr75wQ1758317583eucas1p1c;
 Thu, 19 Sep 2019 09:26:52 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190919092652eusmtrp17ee39a34b9eab5365ad120704dfbd2bd~FzMndLl0K1357513575eusmtrp1S;
 Thu, 19 Sep 2019 09:26:52 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-7a-5d8349ddbbe9
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A6.25.04166.CD9438D5; Thu, 19
 Sep 2019 10:26:52 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190919092651eusmtip1a26dd7cd24e24a0bd26abf96cb3c8ebe~FzMmsm_Pp1700417004eusmtip1C;
 Thu, 19 Sep 2019 09:26:51 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] memory: samsung: exynos5422-dmc: Fix kfree() of
 devm-allocated memory and missing static
Date: Thu, 19 Sep 2019 11:26:40 +0200
Message-Id: <20190919092641.4407-2-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190919092641.4407-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSa0hTYRjHfc/Z2TmuJqcV+pRmsSi70DJq8JZdDApOEdSHPhVS0x105abu
 pJkFTaOLZhmTUsS0sDJtoS1R05TS1WqrpkRaXlIUE/JSoZmhSTueSd9+/C/P8/DyMqSqnlrC
 GEwnebNJF6+WK2TVr/68X9+993xUeO73YPw4v4LC7eODFB6ayZPhYsd7Cuf0D5HY46mk8buM
 YRp3WEKwvb+Nwh/qCuV47KoD4XxPI4EfObppfK+9lcCd6Q/k+EKDg8bNw5coPPG6D0WqOFuR
 DXFPC7ppzl6eKeee3D3H/RzokHEvRp8R3LWqcsSN2UMPMocV2/R8vCGFN2/YcUwRZ3FN0ol3
 AlLTs7qQBU3Oy0L+DLCboaNolBRZxT5A0GpPkXgcgdtJZCGFl8cQ1NecJ+cK6Z+75JJRiuCb
 QzQUUuNK3y+vwzByVgO15UliYRFbgmCi+bDIJNtCgLtsqcgLWTNMFk/PDpWxK6Gsvni2qmR3
 wGiLQdq1DB5WPp+N+LM7wWadosVVwLbRkOseJqTQbnANjcslXgjfnFW0xCHgzs2WSSyA5eod
 JPFZ6M+55ctEQLOzlRL3kuwaqKjbIMm7YLCmnhRlYAPg08gC6foAsFbn+WQlXL6oktKroSq7
 xXdMIJTabvqGczCR1+h7QiuChu+l9HW0rOD/stsIlaMgPlkwxvLCJhN/SiPojEKyKVYTk2C0
 I++Xcs84f9WixunoJsQySD1fORmWEaWidCnCaWMTAoZUL1IWar2SUq87ncabE46ak+N5oQkF
 MzJ1kPKMX+8RFRurO8mf4PlE3jznEoz/EgsiXhbpb/+tUA2kRkdXamvCBvnnkH9usXbfFGKD
 rPtdOWlfmzryolKPhkccCtt40RGU9uVG+O+3mV+3K/+A0dPzcY/G1DNS9iN0XUNnb9vIqrqS
 35csB4qZa0pN3M0E/b4XrmousGdrDO9CSQPa5bLIh8dXZN4v2b7Fb9rP8CafUMuEON3GtaRZ
 0P0DCB5c/04DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrIIsWRmVeSWpSXmKPExsVy+t/xu7p3PJtjDdaskbfYOGM9q8X1L89Z
 LV7/m85iMf/IOVaL/sevmS3On9/AbnG26Q27xa0GGYtNj6+xWlzeNYfN4nPvEUaLGef3MVms
 PXKX3WLp9YtMFrcbV7BZtO49wm5x+E07q8W3E48YHYQ81sxbw+ixc9Zddo9NqzrZPDYvqff4
 +PQWi8fBd3uYPPq2rGL0+LxJLoAjSs+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbK
 yFRJ384mJTUnsyy1SN8uQS+j4dQP9oKFfBWNXXcYGxh/cHcxcnJICJhINN68w9bFyMUhJLCU
 UWLKj73sEAkxiUn7tkPZwhJ/rnVBFX1ilJi4ZBZjFyMHB5uAnsSOVYUgcRGB5YwSx1a9ZQZx
 mAUeMElcnHuMEaRbWKBAYkLHTGYQm0VAVWLl7vlsIM28AnYS7y5kQiyQl1i94QBYCaeAvcSa
 Sb/BFgsBlSzvPso2gZFvASPDKkaR1NLi3PTcYkO94sTc4tK8dL3k/NxNjMDo2Xbs5+YdjJc2
 Bh9iFOBgVOLh/aHeFCvEmlhWXJl7iFGCg1lJhHeOKVCINyWxsiq1KD++qDQntfgQoynQTROZ
 pUST84GRnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgbFdd+E/
 W3Z/4wvbQ113nuTdlLDXJnzmcdmbN7I5dtzr+3pPuPWJ1NbDv5yrLsc1sEo9sJtbbj35bF1i
 9tnPrMkbPG4vvTep9Y/sac0n8+fsv/OyJUfAf8OGjWsn5LZkSxdu7Wj6e//Dw4OGlee4WtW9
 8jI4ThV51u+bHrfZPlpBqWPPgxw3hadKLMUZiYZazEXFiQCf50J1tAIAAA==
X-CMS-MailID: 20190919092652eucas1p12dbf9ba9d60a0c89cb7de05ab61893be
X-Msg-Generator: CA
X-RootMTR: 20190919092652eucas1p12dbf9ba9d60a0c89cb7de05ab61893be
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190919092652eucas1p12dbf9ba9d60a0c89cb7de05ab61893be
References: <20190919092641.4407-1-l.luba@partner.samsung.com>
 <CGME20190919092652eucas1p12dbf9ba9d60a0c89cb7de05ab61893be@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_022657_538653_CD6FE315 
X-CRM114-Status: GOOD (  12.73  )
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, b.zolnierkie@samsung.com,
 krzk@kernel.org, Lukasz Luba <l.luba@partner.samsung.com>,
 cw00.choi@samsung.com, kyungmin.park@samsung.com, robh+dt@kernel.org,
 kgene@kernel.org, s.nawrocki@samsung.com, myungjoo.ham@samsung.com,
 dan.carpenter@oracle.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix issues captured by static checkers: used kfree() and missing 'static'
in the private function.

Fixes Smatch warning:
    drivers/memory/samsung/exynos5422-dmc.c:272
        exynos5_init_freq_table() warn: passing devm_ allocated variable to kfree. 'dmc->opp'

Fixes Sparse warning:
    drivers/memory/samsung/exynos5422-dmc.c:736:1:
        warning: symbol 'exynos5_dmc_align_init_freq' was not declared.

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Reported-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/memory/samsung/exynos5422-dmc.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
index 8c2ec29a7d57..1b54fc8c912e 100644
--- a/drivers/memory/samsung/exynos5422-dmc.c
+++ b/drivers/memory/samsung/exynos5422-dmc.c
@@ -258,7 +258,7 @@ static int exynos5_init_freq_table(struct exynos5_dmc *dmc,
 
 		opp = dev_pm_opp_find_freq_floor(dmc->dev, &freq);
 		if (IS_ERR(opp))
-			goto err_free_tables;
+			goto err_opp;
 
 		dmc->opp[idx - i].freq_hz = freq;
 		dmc->opp[idx - i].volt_uv = dev_pm_opp_get_voltage(opp);
@@ -268,8 +268,6 @@ static int exynos5_init_freq_table(struct exynos5_dmc *dmc,
 
 	return 0;
 
-err_free_tables:
-	kfree(dmc->opp);
 err_opp:
 	dev_pm_opp_of_remove_table(dmc->dev);
 
@@ -732,7 +730,7 @@ static struct devfreq_dev_profile exynos5_dmc_df_profile = {
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
