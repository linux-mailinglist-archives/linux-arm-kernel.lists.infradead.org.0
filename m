Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B9F62036
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCN8NgDBQZigz/wwUBqkS838zyDdIkqLph6epASHBok=; b=AhVC1acnsSrRIN
	hkLVK4wpJiWMvlfph2J+glQvmZ2qGO6rIlVgH8FTWBmrwH0lB7jhQ7ndThPv7/sAHzyJ9ZLR9P3rM
	uV2Jx5Avy3AwE+cWXtCEAFibh3Faa6f+FUROEHU2yhxKgA+QPFAF+LYJ8+iAfUfuuMZlE1R6+0tmc
	HsH6oJGWmROaR1AwcxguygeYDzfzDAtu93aO34VmBVKI+vZIrv9+PM1VU71iXmxKgCzexbukA0GT5
	HcVmf4XjAzqELbaTcWcX4DnHl97wPIZMVdnz4EmqjoQPbbG7wVz3eK5VCizphgF0FWkvQDY1Vf7s4
	ag7iLGD8VJp+/dhVq5pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUNr-0001dJ-0k; Mon, 08 Jul 2019 14:12:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUNB-0001H0-CA
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:12:08 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190708141200euoutp0267c2c81d81c4fe442e75b8b473dd0d2e~vc-vF6JJ_2896728967euoutp02C
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  8 Jul 2019 14:12:00 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190708141200euoutp0267c2c81d81c4fe442e75b8b473dd0d2e~vc-vF6JJ_2896728967euoutp02C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562595120;
 bh=os/t6E50bR1XYLSweFwdc4MuERNk7+i5wjswJXfr9q4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=g6rvMLBAIG02GP0iXIZySEJ9Rna6j7fdGVt9fPIndh++TDnmZQ1e8xyZG3sgeBfn8
 KXXDYagacqMS368ZaR0/pxs0khgHWjwZfpxOw37if1Phl//Z2d+iSTWfoxDY7Q7zvX
 h/HdbhZkxjEdXdR8wW7QaIXCiFcVHOApqB9KFcAA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190708141200eucas1p25a0b91036cfceef1fd330224c2ac57cb~vc-uVUUTk1502515025eucas1p2T;
 Mon,  8 Jul 2019 14:12:00 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 92.A2.04377.F2F432D5; Mon,  8
 Jul 2019 15:11:59 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190708141159eucas1p1751506975ff96a436e14940916623722~vc-tbV9W_0589605896eucas1p1e;
 Mon,  8 Jul 2019 14:11:59 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190708141159eusmtrp2be6df2275f74fc9e54f0afa1b7e06dcb~vc-tal0f51954319543eusmtrp2Q;
 Mon,  8 Jul 2019 14:11:59 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-4d-5d234f2fea98
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E6.D4.04140.E2F432D5; Mon,  8
 Jul 2019 15:11:59 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190708141158eusmtip2f27b39034436cb773a2fd293718d5259~vc-sprwv20438404384eusmtip2d;
 Mon,  8 Jul 2019 14:11:58 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH 1/3] opp: core: add regulators enable and disable
Date: Mon,  8 Jul 2019 16:11:38 +0200
Message-Id: <20190708141140.24379-2-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeyyVcRjH+72X877UsddheRa6HOsPmk5abb+tVIp1tta6/1MTb7yhnMPO
 QdQKXYiNLhROjTRGKNeQyvXEGpFsSNNOncq6GaOhyem8563Vf5/n+zzf3/N8tx9LKkbpZWyE
 NkbQaflIpcyequ+c6/VW7fEIXFfe5o2rcytpPDQ9RuMCYy+NM5stCF8xfyVxX18Vg1+c/8bg
 GvMgjQeabsvwVIYR4dy+ZgLfN44yuHion8Bvkktl+NvsCwJfempk8MJgNYVrTZ2ybQp1RX4F
 UteUpcnUtUWJ6rbxJ4Q6s64MqbuGGwj1VM3yvcxh+82hQmREnKBTbQm2D39f8oyIHlwcf2My
 W5aE3tmlIzsWuA3QkzGJ0pE9q+BKEYzOfiKkYhpBQYWBkoopBN/7J2R/LfUZI0hkBVeC4O0v
 XmKrozJFLrKMWw11uZ8ZkZ05D8h6m0OKD5HcHAVVA9W2hhPnB1lJT2mRKathNO+alVlWzvlD
 +dXt0q4VkNb4mBLZjgsAoznftlfOOcLzvA82nbTOXHh4y/Y+cD8YeD07Q0pmf2gZavxztBN8
 6apjJHYDy6MCQuJT8LEwk5HMFxGYUicpqbEJOrr6bQeRnCdUNqkk2Q/MaR2EKAPnAMPfHaUb
 HOB6vZhRlOVwOUUhTXtDvqWHltgV0i0P/rAacqzJr6JVhv/SGP5LY/i39w4iy5CLEKvXhAn6
 9Vrh1Fo9r9HHasPWhkRpapD103UvdE03oqb5Y+2IY5FyiZxdrgxU0HycPkHTjoAllc7y5p0e
 gQp5KJ9wWtBFBeliIwV9O3JlKaWL/Mwi0xEFF8bHCCcFIVrQ/e0SrN2yJBTZqCo99N5PdffV
 0nLH4pDE7KCgka1F+9PvPz5bW3LUtG/3idLEO72p5+d3z3nNlS0YfCHHrB2AgI9an9bgQneL
 b86al+EtRR2qiZ/m7uID8VX33AJGLpncAgvjSvIT2maWjvvSTis1PzRbyeTWsZ3R7qG7DiZu
 9GQbzDtuHj/HeyopfTjv40Xq9PxvirXbMnADAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xe7r6/sqxBvv2MVpsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQy3i0/ChTwTXuiqkfp7A1MD7k7GLk5JAQMJHY1nuLsYuRi0NIYCmjRMv6
 V8wQCWmJxtOrmSBsYYk/17rYIIo+MUqc/72EBSTBJqAqsWXGS3YQW0RAWWLyvenMIEXMAp2s
 EiueHGEDSQgLOEpMbtjLCmKzADXcnTkRyObg4BVwkVg9wQligbxE547dYDM5BVwljjyexwhi
 CwGVrLs8BewIXgFBiZMzn4DVMAPVN2+dzTyBUWAWktQsJKkFjEyrGEVSS4tz03OLjfSKE3OL
 S/PS9ZLzczcxAqNy27GfW3Ywdr0LPsQowMGoxMPLIacUK8SaWFZcmXuIUYKDWUmEd5+7cqwQ
 b0piZVVqUX58UWlOavEhRlOgHyYyS4km5wMTRl5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0
 xJLU7NTUgtQimD4mDk6pBsaqG6o+aov5H/eGOu2PPPffwPa3hV7shh+vqiy+R/ysfeEX/Clg
 T2EBl3r0nG1HuXb//PLvcfULO/7lO/5nNjz+PDNS2GNffJytUzD79hdsJU5zP+42FNsfa+Xw
 vPTImr8H+bwfvz3Y47w84sZ8FdPyAz9d7Case79XttfC7rfsBMGdzWIba+qVWIozEg21mIuK
 EwGIHphj4AIAAA==
X-CMS-MailID: 20190708141159eucas1p1751506975ff96a436e14940916623722
X-Msg-Generator: CA
X-RootMTR: 20190708141159eucas1p1751506975ff96a436e14940916623722
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190708141159eucas1p1751506975ff96a436e14940916623722
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141159eucas1p1751506975ff96a436e14940916623722@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_071205_696396_BC4C55CF 
X-CRM114-Status: GOOD (  16.65  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Kamil Konieczny <k.konieczny@partner.samsung.com>

Add enable regulators to dev_pm_opp_set_regulators() and disable
regulators to dev_pm_opp_put_regulators(). This prepares for
converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
 drivers/opp/core.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/opp/core.c b/drivers/opp/core.c
index 0e7703fe733f..947cac452854 100644
--- a/drivers/opp/core.c
+++ b/drivers/opp/core.c
@@ -1580,8 +1580,19 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
 	if (ret)
 		goto free_regulators;
 
+	for (i = 0; i < opp_table->regulator_count; i++) {
+		ret = regulator_enable(opp_table->regulators[i]);
+		if (ret < 0)
+			goto disable;
+	}
+
 	return opp_table;
 
+disable:
+	while (i != 0)
+		regulator_disable(opp_table->regulators[--i]);
+
+	i = opp_table->regulator_count;
 free_regulators:
 	while (i != 0)
 		regulator_put(opp_table->regulators[--i]);
@@ -1609,6 +1620,8 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
 
 	/* Make sure there are no concurrent readers while updating opp_table */
 	WARN_ON(!list_empty(&opp_table->opp_list));
+	for (i = opp_table->regulator_count - 1; i >= 0; i--)
+		regulator_disable(opp_table->regulators[i]);
 
 	for (i = opp_table->regulator_count - 1; i >= 0; i--)
 		regulator_put(opp_table->regulators[i]);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
