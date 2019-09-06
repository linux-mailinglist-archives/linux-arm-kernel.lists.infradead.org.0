Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96887AB59F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 12:14:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MUyU+sHQfKeSNng4meoQX32mCgd9fF2CaeQqnFAEpNg=; b=nN4C3NUql4Cqy230MPoE4QX4fD
	CMZ6KB9bBTbnWSGJO5xA/7vHDBWQbCVh7AUgBMpQ1XhMuQ83iVIez8ElUhEnPTuYrw29b9qBWR94A
	ECjFL3YW/5pctXB6C1jRCya2DW8mqxhc7RhZ1WrVgKZTfNhSFEoSaSDdE0PUBhgcBlDv+kmJTmUaN
	Tz8girgHllZBRafZMh7LIDLFwxf0FUo9aadNTD9lENRq3lt25VzB/XEh3KBCbSIlwgO96WkP2bTZh
	F0yG6w24yRJSTOm2ZlNjgOg77GTfhrTdrXH1yFIRNrRO4U0a67XvxZs+Jmd2GAjUmoADBF+30U1cz
	hhnW0eLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BGO-00067i-K9; Fri, 06 Sep 2019 10:14:44 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BFr-0005t9-L1
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 10:14:14 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190906101407euoutp013df5644a1d146a6d70973804a8282e67~B0dKFp55v0918309183euoutp01b
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  6 Sep 2019 10:14:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190906101407euoutp013df5644a1d146a6d70973804a8282e67~B0dKFp55v0918309183euoutp01b
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1567764847;
 bh=WuzwCUYV2cdfl7qLbkBAHqDKsnTlIX0yAhB2QMQqk30=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A63medX+1JY83V1tg7q6yFeeXbxIlZKFMsLu9c/5GHwI+hJbNYkMrPfisXmXdXgMO
 k1uP6jOsvoydbvHJu0YwzIqujjcd9IDja1mfMLINtiFIU/JB+bBn77n1i+ydqbVCuq
 AxyAFez+HHxhWnLlNbE1vYkA0RpUTO0HWwsoJfWI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190906101406eucas1p2dab289502ae4d19bca00c58b64cbb50a~B0dJP-wP_1006510065eucas1p2u;
 Fri,  6 Sep 2019 10:14:06 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 63.C7.04469.E61327D5; Fri,  6
 Sep 2019 11:14:06 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486~B0dIkS26A1006510065eucas1p2r;
 Fri,  6 Sep 2019 10:14:05 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190906101405eusmtrp1c640308e8ab83c4ae2f8dfd9cdeeaae3~B0dIQh6Mn1272412724eusmtrp1a;
 Fri,  6 Sep 2019 10:14:05 +0000 (GMT)
X-AuditID: cbfec7f2-994db9c000001175-e4-5d72316e83a3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2A.9E.04166.D61327D5; Fri,  6
 Sep 2019 11:14:05 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190906101404eusmtip1d71620cc9f795288ce2881dd16b7cf9e~B0dHYdujW3027130271eusmtip1a;
 Fri,  6 Sep 2019 10:14:04 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3]  memory: Exynos5422: minor fixes in DMC
Date: Fri,  6 Sep 2019 12:13:42 +0200
Message-Id: <20190906101344.3535-2-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190906101344.3535-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRj229nZOY5mxyn5oiNjEZSgZkR8kJmRwf5U0g8rQ2rpybxN3fHS
 labZTdPZIjOzi3TRprI5dai0Sp3NCpsWalpmKmSaKXijoiLnmfXveZ73eb734eWjCWkt6U3H
 qdJYtUqZKBeJhebnP+z+qiB11PrmqeW4pthA4t7ZURLfsb4msXbkK4HtdiOFO7InKNyvkWHT
 SA+J3zaVivBMvhXhYvsTAa62DlD4QW+XAL/PqhDhcxYrhVsnLpB4vn0Yhborqm5XIUVjyQCl
 MOkviRS1988omicfCxQFdXqkmDGtDKcixcExbGJcBqsODDkkPjpZ8hSlzFPHCrM3aFC/KBe5
 0sBshLzOUioXiWkpU4Hgxth3IU9mEfzWF4h4MoPAZLQIlyJll0adg3IEmiu1gn+RvvryBULT
 IiYAGvSpjoAncw/BfGukAxOMWQD5czIH9mCCwWCqXuwhZNbA2GzjIpYwITD6sw7xy3yh0viM
 cGBXZivoDNcW6wHTQkFp95yAN4VBt83iDHjAuK2O4rEMXl297GzNgSa/zOk5BSPaW07PZmi1
 dZGOzgSzDgxNgby8DUqGvlMOGRg3ePfNna/vBjrzdYKXJXDxvJR3r4W6y53OMiugvKrI+bgC
 pjVZBH8dHQK7pYksRL4l/5fdRUiPvNh0LimW5YJUbGYAp0zi0lWxAdHJSSa08JVe/bFNN6C5
 N4dbEEMj+TIJM5sSJSWVGdzxpBYENCH3lBhqFiRJjPL4CVadfFCdnshyLciHFsq9JCddPh2Q
 MrHKNDaBZVNY9dJUQLt6a5BlOjft9NzJ8cCEs7LB6D0Roaf7I7Q+w7lDsgj5keJViT47U/Cj
 l0Vx+z8Ock1j2g5x6kCl2djdVpmz62ann9vni5kz2/O+vKD7Vv+q39tmn0irmWx2GYn03/Jw
 y6ae9qkz7rqXYTut8bHxuz8ovVy9pzvP7tCF29Yb4ISW9MnZVykXckeVQX6EmlP+BWlBwcJG
 AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7q5hkWxBkveilhsnLGe1eL6l+es
 FvOPnGO16H/8mtni/PkN7BZnm96wW9xqkLHY9Pgaq8XlXXPYLD73HmG0mHF+H5PF2iN32S2W
 Xr/IZHG7cQWbReveI+wWh9+0s1p8O/GI0UHQY828NYweO2fdZffYtKqTzWPzknqPg+/2MHn0
 bVnF6PF5k1wAe5SeTVF+aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZ
 apG+XYJexrtZ+xkLvrFXTGgyamC8xdbFyMkhIWAisbDzOZDNxSEksJRRovVjE1RCTGLSvu3s
 ELawxJ9rXVBFnxglbszsBHI4ONgE9CR2rCoEiYsILGeUOLbqLTOIwyxwhEmif9c8VpBuYQEb
 ifWb1oJNZRFQlXj5ZSeYzStgJ/H81xZGiA3yEqs3HGAGsTkF7CUmrZ/KAmILAdXsmtLJMoGR
 bwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzASNl27OfmHYyXNgYfYhTgYFTi4RX4UhAr
 xJpYVlyZe4hRgoNZSYR3/UagEG9KYmVValF+fFFpTmrxIUZToKMmMkuJJucDozivJN7Q1NDc
 wtLQ3Njc2MxCSZy3Q+BgjJBAemJJanZqakFqEUwfEwenVANjUxqPbcb1uFe5h15mNOlzFa8P
 Trm+c0mv0NmlPr8Pqk8N1vLt0XRTvj6nL9REZ5L9pf6YbMusYJ+9/4Nv/Gmb3ZGZWVEp/YE5
 NOPtqh88Jjf5JF9HiIQtfmN2cNW39q9xPZNXBqeEnj7CYbLsgOql4JLmww9bftxYODsvdPtO
 0YWsalsu1W9UYinOSDTUYi4qTgQAk7C8yaoCAAA=
X-CMS-MailID: 20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486
X-Msg-Generator: CA
X-RootMTR: 20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486
References: <20190906101344.3535-1-l.luba@partner.samsung.com>
 <CGME20190906101405eucas1p2e3da7b461810a3a520e76c636a06e486@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031411_821675_3AE0CE91 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Small fixes captured by static analyzes.

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
