Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FBA6E7C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 17:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tJ8hjnDur/nUiDDaVQdpfDlnXSTuSqD9IcyRV1zp1UY=; b=GDUjM5V2Buqhw8
	ndEvhpCl1GG/ZFNT9H5FBaJDrBhP3UFRh12FmrbFjrGmNE5ocFmd/7VYNpYDO1eDd13tE/eVl4KPq
	ZiiClGXGfMhA1W4LEJXQ44QxKG21weVXy2FvgIa8NQoWuijOnIbUj6bhsqWYyQ6vTLqVOlNEqaBbc
	x80HY1PSev2TIFDNw4LDzXrXLGCl6DChhRedL9F2YGsni/FQW9PhfDrEWj8G/QSYnYmt1jQj0z1ER
	w3OkN5eaRQEDyJqtaBXsxAXJhYn7f1OfQMl8RnGV65RP1x6oBXIZVfzKq6pgZMJuyTwHKsNc9z7kU
	ihFNLimC1R6NnZE/5nuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUT3-000316-2F; Fri, 19 Jul 2019 15:06:41 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUSO-0002gP-4a
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 15:06:02 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190719150555euoutp02f1d4622dbdf96d3c01fc34358c157bab~y108TXVYC1348913489euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 15:05:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190719150555euoutp02f1d4622dbdf96d3c01fc34358c157bab~y108TXVYC1348913489euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563548755;
 bh=a1WebjF2OCLaB+DQY5uyD0tPKoaanwf9vnr7gRJblR0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=goeb8seWqSnnhARcvPSacU2hwbVYQqLpmeqhPWT/0ST96OLA9oS94kJfvwSKVnxMQ
 nwlfcxJSTUl4bYlqzrbzgAWXFky94SwGgOh8QUhPbhRCrf/N7WktO7azAZDm+lMTHM
 DhlF/d/pN6PIl6ahfny4ebpdJe2/a6vIcDcEj4SM=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190719150554eucas1p1693f01d005c30f29c8ef1a3d774d6b3c~y10717Hgp0634306343eucas1p17;
 Fri, 19 Jul 2019 15:05:54 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D0.19.04377.25CD13D5; Fri, 19
 Jul 2019 16:05:54 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190719150553eucas1p1665462f3fc0e06fc9c082e258be3a851~y1066L7oI3265032650eucas1p1T;
 Fri, 19 Jul 2019 15:05:53 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190719150553eusmtrp2288792d67239db11e8a0629d1f8087f4~y106pXSji3123131231eusmtrp2L;
 Fri, 19 Jul 2019 15:05:53 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-73-5d31dc52c077
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id FF.8F.04146.15CD13D5; Fri, 19
 Jul 2019 16:05:53 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190719150552eusmtip100d326709c0801bfea6ad15e33e67358~y1057cU3u2866928669eusmtip1B;
 Fri, 19 Jul 2019 15:05:52 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v3 1/5] devfreq: exynos-bus: correct clock enable sequence
Date: Fri, 19 Jul 2019 17:05:31 +0200
Message-Id: <20190719150535.15501-2-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrAKsWRmVeSWpSXmKPExsWy7djP87pBdwxjDc5PlbDYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlbG99zprwVeFitbHa5gaGFdKdTFyckgI
 mEj0TFvF1MXIxSEksIJRom3iSijnC6PEif9/GCGcz4wSJ7vPMMO0XFv7hQ0isZxR4u/zqaxw
 LQ+3vmcEqWITUJXYMuMlO4gtIqAsMfnedGaQImaBnywSGy5vBEsIC3hJLHl5iAXEZgFq2Phq
 GlicV8BF4sOxRlaIdfISnTt2g9VwCrhKfDn4HqpGUOLkzCdgcWagmuats8EWSAi8ZZfo3P8D
 6lYXiRcX50ENEpZ4dXwLO4QtI/F/53wmCLtc4unCPnaI5hZGiQftH1kgEtYSh49fBGrmANqg
 KbF+lz5E2FGi9eBydpCwhACfxI23ghA38ElM2gbyJEiYV6KjTQiiWldi3v8zUBdIS3T9Xwdl
 e0icvLeTeQKj4iwk38xC8s0shL0LGJlXMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBKa7
 0/+Of9nBuOtP0iFGAQ5GJR7eD7cMY4VYE8uKK3MPMUpwMCuJ8N5+qR8rxJuSWFmVWpQfX1Sa
 k1p8iFGag0VJnLea4UG0kEB6YklqdmpqQWoRTJaJg1OqgXG1ic6fPRyObs8+78q4V8rzMLor
 e9oawdMc2nrhh7t0g+00VVS0jNV4TMRNowwfmc7w2jtBofDxfK+FBz/Krq+ya/utUrsj8e2N
 JhfDnMCSyZxNASEPBR4lKknt3uk14+U17TsXdiwIb61ickpYKhxef42Lw8t07pLJbPZdiyft
 CuHfcLP5rxJLcUaioRZzUXEiAM7j4TlzAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrHIsWRmVeSWpSXmKPExsVy+t/xu7qBdwxjDV43yVhsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQy9jee5214KtCRevjNUwNjCuluhg5OSQETCSurf3C1sXIxSEksJRR4lh/
 DzNEQlqi8fRqJghbWOLPtS6ook+MEv9eQBSxCahKbJnxkh3EFhFQlph8bzozSBGzQCerxIon
 R9hAEsICXhJLXh5iAbFZgBo2vpoG1sAr4CLx4VgjK8QGeYnOHbvBajgFXCW+HHwPViMEVLNj
 5TxmiHpBiZMzn4DVMAPVN2+dzTyBUWAWktQsJKkFjEyrGEVSS4tz03OLDfWKE3OLS/PS9ZLz
 czcxAuNy27Gfm3cwXtoYfIhRgINRiYf3wy3DWCHWxLLiytxDjBIczEoivLdf6scK8aYkVlal
 FuXHF5XmpBYfYjQFemIis5Rocj4wZeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJzU5N
 LUgtgulj4uCUamCsmuLtNqsvcdWbt9YHfrKs+XrWtOp/4OMPkgtndk/zs/jaeP/qtvZDbzKN
 79he2ZI1i/mU0sQap+vnP5478njORespdg/jWefO1TuTcSr+2MaPpcJObzauT3JvvpP9+Lyx
 b1L2x7p9FzqtsjIlL5pZWpolXfOpNN579UWf0dzfel4Ccd8Ox3s2KrEUZyQaajEXFScCACJB
 st7hAgAA
X-CMS-MailID: 20190719150553eucas1p1665462f3fc0e06fc9c082e258be3a851
X-Msg-Generator: CA
X-RootMTR: 20190719150553eucas1p1665462f3fc0e06fc9c082e258be3a851
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190719150553eucas1p1665462f3fc0e06fc9c082e258be3a851
References: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
 <CGME20190719150553eucas1p1665462f3fc0e06fc9c082e258be3a851@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_080600_366376_5FFD2553 
X-CRM114-Status: GOOD (  22.16  )
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

Regulators should be enabled before clocks to avoid h/w hang. This
require change in exynos_bus_probe() to move exynos_bus_parse_of()
after exynos_bus_parent_parse_of() and change in enabling sequence
of regulator and clock in exynos_bus_parse_of(). Similar change is
needed in exynos_bus_exit() where clock should be disabled first.

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
This patch is new to this series.

---
 drivers/devfreq/exynos-bus.c | 58 ++++++++++++++++++++----------------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 486cc5b422f1..f391044aa39d 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -194,11 +194,11 @@ static void exynos_bus_exit(struct device *dev)
 	if (ret < 0)
 		dev_warn(dev, "failed to disable the devfreq-event devices\n");
 
+	clk_disable_unprepare(bus->clk);
 	if (bus->regulator)
 		regulator_disable(bus->regulator);
 
 	dev_pm_opp_of_remove_table(dev);
-	clk_disable_unprepare(bus->clk);
 }
 
 /*
@@ -326,8 +326,7 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	return ret;
 }
 
-static int exynos_bus_parse_of(struct device_node *np,
-			      struct exynos_bus *bus)
+static int exynos_bus_parse_of(struct exynos_bus *bus)
 {
 	struct device *dev = bus->dev;
 	struct dev_pm_opp *opp;
@@ -341,36 +340,35 @@ static int exynos_bus_parse_of(struct device_node *np,
 		return PTR_ERR(bus->clk);
 	}
 
-	ret = clk_prepare_enable(bus->clk);
+	/* Get the freq and voltage from OPP table to scale the bus freq */
+	ret = dev_pm_opp_of_add_table(dev);
 	if (ret < 0) {
-		dev_err(dev, "failed to get enable clock\n");
+		dev_err(dev, "failed to get OPP table\n");
 		return ret;
 	}
 
-	/* Get the freq and voltage from OPP table to scale the bus freq */
-	ret = dev_pm_opp_of_add_table(dev);
+	ret = clk_prepare_enable(bus->clk);
 	if (ret < 0) {
-		dev_err(dev, "failed to get OPP table\n");
+		dev_err(dev, "failed to enable clock\n");
 		goto err_clk;
 	}
-
 	rate = clk_get_rate(bus->clk);
 
 	opp = devfreq_recommended_opp(dev, &rate, 0);
 	if (IS_ERR(opp)) {
 		dev_err(dev, "failed to find dev_pm_opp\n");
 		ret = PTR_ERR(opp);
-		goto err_opp;
+		goto err;
 	}
 	bus->curr_freq = dev_pm_opp_get_freq(opp);
 	dev_pm_opp_put(opp);
 
 	return 0;
 
-err_opp:
-	dev_pm_opp_of_remove_table(dev);
-err_clk:
+err:
 	clk_disable_unprepare(bus->clk);
+err_clk:
+	dev_pm_opp_of_remove_table(dev);
 
 	return ret;
 }
@@ -386,6 +384,7 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	struct exynos_bus *bus;
 	int ret, max_state;
 	unsigned long min_freq, max_freq;
+	bool passive = false;
 
 	if (!np) {
 		dev_err(dev, "failed to find devicetree node\n");
@@ -399,27 +398,31 @@ static int exynos_bus_probe(struct platform_device *pdev)
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
 
-	if (ret < 0)
-		goto err;
+	/* Parse the device-tree to get the resource information */
+	ret = exynos_bus_parse_of(bus);
+	if (ret < 0) {
+		if (!passive)
+			regulator_disable(bus->regulator);
+
+		return ret;
+	}
+
+	if (passive)
+		goto passive;
 
 	/* Initialize the struct profile and governor data for parent device */
 	profile->polling_ms = 50;
@@ -508,8 +511,11 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	return 0;
 
 err:
-	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
+	if (!passive)
+		regulator_disable(bus->regulator);
+
+	dev_pm_opp_of_remove_table(dev);
 
 	return ret;
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
