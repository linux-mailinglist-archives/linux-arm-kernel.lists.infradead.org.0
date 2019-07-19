Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8884F6E7B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 17:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lgLaBRtfIM3kmt9T/SHrJSKAHX/zLCjxoNlxkz1Ng9w=; b=IFhdxbhWFRPULW
	vAruqmlJ1JLZctMzR2RPf9crx04RihOq8dEmutSeY3mCrOlfuBS8mU1jIoFokp1Fez54889wjs9Fx
	xBXKFDQVWs/mn/Z+nvZFHQ7S15Uoxt0gwTRa+PONz5QB9V3/7FQu7Pc6PT4Obkqtb9crhQQaPrnFd
	0FHl0pb1Uo5Ae+OzsmcrRDkHc8OKqBWqC9SF+9JSHT5xCJyzry4JpVOkRrddMXyIIhnex51j4ej0T
	igcjKpU1Y7ZvvOYHwzQSTvoYFiAUR8hjEPNimFzV1VI2zT69jbAsBEXzlzFTmTowkPsfzi3i3w3mT
	PWw55bEkzM4yVHp851hA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUSd-0002nQ-UD; Fri, 19 Jul 2019 15:06:16 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUSO-0002gd-4f
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 15:06:01 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190719150556euoutp02661ec4e0c767e1204cac27d64e6da189~y109LOh-r1346313463euoutp02M
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 15:05:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190719150556euoutp02661ec4e0c767e1204cac27d64e6da189~y109LOh-r1346313463euoutp02M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563548756;
 bh=fyMjmMfn0l5YKJT+fwoM+wRhNOzWEgN0K8LCOsydPBQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CCOdOpkUS61qeGPaOY8eAP6q2D3FrZS0SFz9+ufhnogEbEPEUgr1Sv7Yd2RiVBGwJ
 Jp2ajg4PM98iKIUaMOrid1vRGzWcsU5oetQl+dvJgpK221wIcRF/k8Wi9nBkjD130u
 gSgXNin0ECWCFEOWb8DjbIZu7t+IdnV5ur29pHYM=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190719150555eucas1p28cbfa8368a5be7629cb64230ecbd5e8c~y108ZNCQW2516125161eucas1p2G;
 Fri, 19 Jul 2019 15:05:55 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 35.48.04298.25CD13D5; Fri, 19
 Jul 2019 16:05:55 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190719150554eucas1p2f4c9e4d2767ab740d419c42d4aeed6d5~y107nNPr10285302853eucas1p2P;
 Fri, 19 Jul 2019 15:05:54 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190719150554eusmtrp214c1713e1d8f608c07de267448907369~y107ZEnlG3123131231eusmtrp2N;
 Fri, 19 Jul 2019 15:05:54 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-2d-5d31dc52f6d3
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 41.9F.04146.25CD13D5; Fri, 19
 Jul 2019 16:05:54 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190719150553eusmtip122f37ac3414ae02ecf0d215111cbebb2~y106pNxfz2871228712eusmtip15;
 Fri, 19 Jul 2019 15:05:53 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v3 2/5] opp: core: add regulators enable and disable
Date: Fri, 19 Jul 2019 17:05:32 +0200
Message-Id: <20190719150535.15501-3-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHKsWRmVeSWpSXmKPExsWy7djP87rBdwxjDc79ZbTYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlbF/xwr2gjV8FXeObmNtYHzD3cXIySEh
 YCKx+etnpi5GLg4hgRWMEstWfGKGcL4wSsyYdI4dwvnMKHG/9TMrTMu+t7OhqpYzSjy6vhuh
 ZfmOC+wgVWwCqhJbZrwEs0UElCUm35sOVsQs8JNFYsPljWAJYQEXiRVdq5lBbBaghu4pnYwg
 Ni9QfOqpeWwQ6+QlOnfsZgGxOQVcJb4cfM8OUSMocXLmE7A4M1BN89bZzBD1b9klPv5O62Lk
 ALJdJF5OqIQIC0u8Or6FHcKWkfi/cz4ThF0u8XRhH9ibEgItjBIP2j+yQCSsJQ4fv8gKModZ
 QFNi/S59iLCjxNufrcwQ4/kkbrwVhLiAT2LStulQYV6JjjYhiGpdiXn/z0DDTVqi6/86KNtD
 4tuRo4wTGBVnIfllFpJfZiHsXcDIvIpRPLW0ODc9tdgwL7Vcrzgxt7g0L10vOT93EyMw1Z3+
 d/zTDsavl5IOMQpwMCrx8H64ZRgrxJpYVlyZe4hRgoNZSYT39kv9WCHelMTKqtSi/Pii0pzU
 4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2M2Ud9Ww9d3iz9WyiO7+7Kr7E985Ru
 SgXoyS74E+KXvFWQbeaXN9lapW1f3umq7JI0fs1zc79t3+NWHkezq0xn5kZULApPuKwo5pCc
 Wby3hn2dVsdlHkffS6aXohn43lcsPa69Mag57p7mmkSvmc4V9R6HXp4VdLCy/OoV/8E67qiz
 hLC7t74SS3FGoqEWc1FxIgDBTZlwcQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHIsWRmVeSWpSXmKPExsVy+t/xu7pBdwxjDa7f47XYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7F/xwr2gjV8FXeObmNtYHzD3cXIySEhYCKx7+1s5i5GLg4hgaWMEo+e
 b2GDSEhLNJ5ezQRhC0v8udbFBlH0iVFiyeJPYEVsAqoSW2a8ZAexRQSUJSbfmw42iVmgk1Vi
 xZMjYEXCAi4SK7pWM4PYLEAN3VM6GUFsXqD41FPzoLbJS3Tu2M0CYnMKuEp8OfgebKgQUM2O
 lfOYIeoFJU7OfAJWwwxU37x1NvMERoFZSFKzkKQWMDKtYhRJLS3OTc8tNtQrTswtLs1L10vO
 z93ECIzLbcd+bt7BeGlj8CFGAQ5GJR7eD7cMY4VYE8uKK3MPMUpwMCuJ8N5+qR8rxJuSWFmV
 WpQfX1Sak1p8iNEU6ImJzFKiyfnAlJFXEm9oamhuYWlobmxubGahJM7bIXAwRkggPbEkNTs1
 tSC1CKaPiYNTqoEx5sqHwhfXXr2Um+mavkxx+yomVm3L1HUZglWWPeaHLttsOVxRHColtpLX
 /8dvBy9FrzV/Enh3N1668/3Wi5OnnD5xr33WdeLmWl3Jk+nJT3T2P2p6tExPXXc2Q2zyuhz3
 c4FxloFvF1s95zwrb//qsmWO5N2VfR53auf7e2et/L/u9/OFE5P6lViKMxINtZiLihMBRCT9
 VuECAAA=
X-CMS-MailID: 20190719150554eucas1p2f4c9e4d2767ab740d419c42d4aeed6d5
X-Msg-Generator: CA
X-RootMTR: 20190719150554eucas1p2f4c9e4d2767ab740d419c42d4aeed6d5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190719150554eucas1p2f4c9e4d2767ab740d419c42d4aeed6d5
References: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
 <CGME20190719150554eucas1p2f4c9e4d2767ab740d419c42d4aeed6d5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_080600_374899_62C0CFAB 
X-CRM114-Status: GOOD (  19.14  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add enable regulators to dev_pm_opp_set_regulators() and disable
regulators to dev_pm_opp_put_regulators(). Even if bootloader
leaves regulators enabled, they should be enabled in kernel in
order to increase the reference count.

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
Changes in v3:
- corrected error path in enable
- improved commit message
Changes in v2:
- move regulator enable and disable into loop
---
 drivers/opp/core.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 0e7703fe733f..a8a480cdabab 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -1570,6 +1570,12 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
 			goto free_regulators;
 		}
 
+		ret = regulator_enable(reg);
+		if (ret < 0) {
+			regulator_put(reg);
+			goto free_regulators;
+		}
+
 		opp_table->regulators[i] = reg;
 	}
 
@@ -1583,8 +1589,10 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
 	return opp_table;
 
 free_regulators:
-	while (i != 0)
-		regulator_put(opp_table->regulators[--i]);
+	while (i--) {
+		regulator_disable(opp_table->regulators[i]);
+		regulator_put(opp_table->regulators[i]);
+	}
 
 	kfree(opp_table->regulators);
 	opp_table->regulators = NULL;
@@ -1610,8 +1618,10 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
 	/* Make sure there are no concurrent readers while updating opp_table */
 	WARN_ON(!list_empty(&opp_table->opp_list));
 
-	for (i = opp_table->regulator_count - 1; i >= 0; i--)
+	for (i = opp_table->regulator_count - 1; i >= 0; i--) {
+		regulator_disable(opp_table->regulators[i]);
 		regulator_put(opp_table->regulators[i]);
+	}
 
 	_free_set_opp_data(opp_table);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
