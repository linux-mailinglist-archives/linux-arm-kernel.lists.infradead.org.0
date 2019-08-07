Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB5784D91
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:39:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/joP4xxnjX8X5mwxNXnhxpSfuJVbuk3NdcdhgaE4KM=; b=Ko/XE5Z6TQdeZW
	HqI2lhFv6XZd8MIASNMjByob4XLXnQfa89+CmE4MXJbFtdc3a0jbRmsKRmytRoU327ahjLyew5WHi
	nRBVoam6PJpHLJSH8L+M4942q3v11jzhwhxm7U27hPYALeu5BQ9XnAbO7ngFliIe10kdRlmsLTfoQ
	9vNmWeObN4fos7ljG+jsms66lML4ugUX1VYwNBYWkAvQ7vG4mUjWzufHAejqhwHpiwgW1qwRIkogp
	i4UG5MzxnzwrWnM5loAq8DZ5wN2muCwVDYEiX47ZPLI6rdH2BURm0N/44NNO6FG4EwLTXOagqR9uY
	AnJKgJaF2l520JZzJRzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvM9r-0002D4-Og; Wed, 07 Aug 2019 13:39:15 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM9e-0002BD-9j
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:39:03 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190807133858euoutp026ad6644f9bb8fdb7072d0c4466df8f03~4p5c2FvkD1791117911euoutp02_
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  7 Aug 2019 13:38:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190807133858euoutp026ad6644f9bb8fdb7072d0c4466df8f03~4p5c2FvkD1791117911euoutp02_
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565185138;
 bh=CjwZyowP2SyGv4qfE/HxF+yoeTjTHLNxjLACzBKukg4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AqZTuv1CcWRC8/YCOLDcc/C+XeqiIdIZ9/Ubs1H+88Wji6XYvFjQUexJoiZVkeaQv
 1iRdPPzeUjtQauWnJEKIx8ZxZlggS6Bw/SNKAT9n0K++6mOQIVKGt5SK4Y8rH9vsf2
 cxCIhIAhpIs7RzkDWYdEUa6V4zqJFDYb2Ua7nm8c=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190807133857eucas1p21a53d364906d342b94849ed7fa78e5eb~4p5cLVJC11098810988eucas1p2J;
 Wed,  7 Aug 2019 13:38:57 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 7E.19.04309.174DA4D5; Wed,  7
 Aug 2019 14:38:57 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190807133856eucas1p2a893cd24096b089307e4216a1033a742~4p5bT0yde1099710997eucas1p2q;
 Wed,  7 Aug 2019 13:38:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190807133856eusmtrp2f02b70f236ecc6e971a43f8c3fc3e8d6~4p5bFhwWl0146501465eusmtrp2E;
 Wed,  7 Aug 2019 13:38:56 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-a8-5d4ad471ec33
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id DB.0F.04117.074DA4D5; Wed,  7
 Aug 2019 14:38:56 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190807133855eusmtip2f1ea21a25bffbbee728eb421bb70d871~4p5aYMd4m1919719197eusmtip2c;
 Wed,  7 Aug 2019 13:38:55 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v5 1/4] devfreq: exynos-bus: correct clock enable sequence
Date: Wed,  7 Aug 2019 15:38:35 +0200
Message-Id: <20190807133838.14678-2-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHKsWRmVeSWpSXmKPExsWy7djP87qFV7xiDTZtErXYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlbFn+wyWgtuiFbN2hDQwnhfsYuTkkBAw
 kfh4ZylrFyMXh5DACkaJLw8XskE4XxglVszfwgLhfGaU+HrpPStMy/lpT5khEssZJV533mCF
 a7l5cjsbSBWbgKrElhkv2UFsEQFlicn3poN1MAv8ZJHYcHkjWEJYwEuiafI3MJsFqOHh5rdg
 Nq+Ai8ShWaeYIdbJS3Tu2M0CYnMKuEp83TuBEaJGUOLkzCdgcWagmuats8EWSAi8ZZc4dv40
 O0Szi8TCtm5GCFtY4tXxLVBxGYn/O+czQdjlEk8X9rFDNLcwSjxo/8gCkbCWOHz8ItBvHEAb
 NCXW79IHMSUEHCUerY2DMPkkbrwVhDiBT2LSNpAfQcK8Eh1tQhAzdCXm/T8DDThpia7/66Bs
 D4mnj06xTmBUnIXkmVlInpmFsHYBI/MqRvHU0uLc9NRio7zUcr3ixNzi0rx0veT83E2MwFR3
 +t/xLzsYd/1JOsQowMGoxMPLcMErVog1say4MvcQowQHs5II770yz1gh3pTEyqrUovz4otKc
 1OJDjNIcLErivNUMD6KFBNITS1KzU1MLUotgskwcnFINjKH7637t70jI65Z88SmJhzfLxLtE
 NNdI6BlDT3RbhemVvT8XO4f+fBglJREtKuDqccbqSkiH5/dXpft3bRKqD3O4/3/iG869i+/2
 F2beW9bKktEVWOqY991dM4Wb495C53Oz1riG7NW4K9g9c80r46SG0l7XqTGccr82KdxSmZEu
 xhuZfTZZiaU4I9FQi7moOBEAdXTNnnEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xe7oFV7xiDTr2yFpsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQy9izfQZLwW3Rilk7QhoYzwt2MXJySAiYSJyf9pS5i5GLQ0hgKaPEj6ZT
 jBAJaYnG06uZIGxhiT/Xutggij4xSty8dR6siE1AVWLLjJfsILaIgLLE5HvTwSYxC3SySqx4
 coQNJCEs4CXRNPkbWBELUMPDzW/BbF4BF4lDs04xQ2yQl+jcsZsFxOYUcJX4uncC2AIhoJpF
 BzcyQdQLSpyc+QSshhmovnnrbOYJjAKzkKRmIUktYGRaxSiSWlqcm55bbKRXnJhbXJqXrpec
 n7uJERiV24793LKDsetd8CFGAQ5GJR5ehgtesUKsiWXFlbmHGCU4mJVEeO+VecYK8aYkVlal
 FuXHF5XmpBYfYjQFemIis5Rocj4wYeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5N
 LUgtgulj4uCUamC0EazqmvLl+4JuGYEL3P/D3vc9Wfrpkj9TtFhQB69ml3LsItE9/PMZJRV5
 zyR5VwTNOmny636Xjeed1N9rLpRILrU7JXn119dDaTYLoitKGRwrdvo+0/WYv+63h2jffYuo
 2BOTj94XemCc1VPuHHe9x1vCfcm5t8cz+wIVNcX2FNtk69f+uavEUpyRaKjFXFScCADdVKh0
 4AIAAA==
X-CMS-MailID: 20190807133856eucas1p2a893cd24096b089307e4216a1033a742
X-Msg-Generator: CA
X-RootMTR: 20190807133856eucas1p2a893cd24096b089307e4216a1033a742
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190807133856eucas1p2a893cd24096b089307e4216a1033a742
References: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
 <CGME20190807133856eucas1p2a893cd24096b089307e4216a1033a742@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063902_478449_56DFC157 
X-CRM114-Status: GOOD (  20.38  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

Regulators should be enabled before clocks to avoid h/w hang. This
require change in exynos_bus_probe() to move exynos_bus_parse_of()
after exynos_bus_parent_parse_of() and change in error handling.
Similar change is needed in exynos_bus_exit() where clock should be
disabled before regulators.

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
---
Changes:
v5:
- added Acked-by tag
v4:
- move regulator disable after clock disable
- remove unrelated changes
- add disabling regulators in error path in exynos_bus_probe()

---
 drivers/devfreq/exynos-bus.c | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 486cc5b422f1..f34fa26f00d0 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -194,11 +194,10 @@ static void exynos_bus_exit(struct device *dev)
 	if (ret < 0)
 		dev_warn(dev, "failed to disable the devfreq-event devices\n");
 
-	if (bus->regulator)
-		regulator_disable(bus->regulator);
-
 	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
+	if (bus->regulator)
+		regulator_disable(bus->regulator);
 }
 
 /*
@@ -386,6 +385,7 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	struct exynos_bus *bus;
 	int ret, max_state;
 	unsigned long min_freq, max_freq;
+	bool passive = false;
 
 	if (!np) {
 		dev_err(dev, "failed to find devicetree node\n");
@@ -399,27 +399,27 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	bus->dev = &pdev->dev;
 	platform_set_drvdata(pdev, bus);
 
-	/* Parse the device-tree to get the resource information */
-	ret = exynos_bus_parse_of(np, bus);
-	if (ret < 0)
-		return ret;
-
 	profile = devm_kzalloc(dev, sizeof(*profile), GFP_KERNEL);
-	if (!profile) {
-		ret = -ENOMEM;
-		goto err;
-	}
+	if (!profile)
+		return -ENOMEM;
 
 	node = of_parse_phandle(dev->of_node, "devfreq", 0);
 	if (node) {
 		of_node_put(node);
-		goto passive;
+		passive = true;
 	} else {
 		ret = exynos_bus_parent_parse_of(np, bus);
+		if (ret < 0)
+			return ret;
 	}
 
+	/* Parse the device-tree to get the resource information */
+	ret = exynos_bus_parse_of(np, bus);
 	if (ret < 0)
-		goto err;
+		goto err_reg;
+
+	if (passive)
+		goto passive;
 
 	/* Initialize the struct profile and governor data for parent device */
 	profile->polling_ms = 50;
@@ -510,6 +510,9 @@ static int exynos_bus_probe(struct platform_device *pdev)
 err:
 	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
+err_reg:
+	if (!passive)
+		regulator_disable(bus->regulator);
 
 	return ret;
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
