Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FDA6203C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 16:13:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dZ5H+ITs7rOBMdloQvAqmz0Wb9HvSWP7cTfKvjy5/yw=; b=XORjF/F3nXCKT2
	F3iHFJwyhxJLCPpWQH/ZYcvVdg5DkXBWaIrqsQGMEkwJWEFQ12lsoy9r0sda/mU3Ymllo/DFrMnWS
	pVtytTEBkJVc0Xd+l8U+o6ZXLWJBB7WhqQnL9eJLb7Gk3HM2oSWsb6PV4xueI/aeXHlhhY5PhIrLk
	5Egkp3nLOPw4opspbT/1FRUP3kJPrturutCMDa4OGzChovevJ51VNdCA9nUpOFTAJaTnJ0nTxpx5y
	l4Ja6+h2t3vNFK9ax4Qzi7HOusXcuU2iRNtDg6Vwl9gCNIhCiQt1AjLoP8BL6rFnYbn1D5O0N9gfD
	9N1VS91k32pyKOGEqpZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkUOQ-00025n-1f; Mon, 08 Jul 2019 14:13:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkUNB-0001HR-8T
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 14:12:09 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190708141202euoutp01175348c48d2355e60121c73ed7560cd3~vc-wHfeim2340623406euoutp01Z
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  8 Jul 2019 14:12:02 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190708141202euoutp01175348c48d2355e60121c73ed7560cd3~vc-wHfeim2340623406euoutp01Z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1562595122;
 bh=/EySHjqikE05n+DoJtjgElVai9fi68YczJe5t2PRhsY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vVKZKZ+C15iJO1rsyeVmmaVpB+FRjgG4Z8b7bG9wXMRc8hibuqqnrwYN22pj1Q25Z
 XpPM6RBPdIDK6ZfjsCYZsoW4w5c5+sG3rC0/L8zsM1TzYEuw8++g43kbAE3zAgFuNd
 mvTUtTnBv2O+ZRnSyebfju+ub8gFYvx8e0YxJUF4=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190708141201eucas1p27d600dfa70252b559c780f0625a58cf7~vc-vRQmnb1241812418eucas1p2k;
 Mon,  8 Jul 2019 14:12:01 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 24.F5.04325.03F432D5; Mon,  8
 Jul 2019 15:12:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31~vc-uePeRF0589605896eucas1p1f;
 Mon,  8 Jul 2019 14:12:00 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190708141200eusmtrp1952117551fb18e2b8626923e9f56016e~vc-uQJSI60162501625eusmtrp1o;
 Mon,  8 Jul 2019 14:12:00 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-bb-5d234f30f3ac
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 17.8B.04146.F2F432D5; Mon,  8
 Jul 2019 15:11:59 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190708141159eusmtip2da35d069f345e12749983ea8ecb92f97~vc-tXSb8i0485304853eusmtip2N;
 Mon,  8 Jul 2019 14:11:59 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH 2/3] devfreq: exynos-bus: convert to use dev_pm_opp_set_rate()
Date: Mon,  8 Jul 2019 16:11:39 +0200
Message-Id: <20190708141140.24379-3-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa1BMYRj2nXuNbU4nl7eL20ZGyCo/vpliNBhnJrc//mQaNp1JdGFXEhNJ
 F4q2iRkJK9ealGpL7YQdalm3SsxUM0gsgxSyTJfJZrdT9O95n8v3vO/Mx5HCW9qLi4nfK2ni
 1bFKxpWqfTjYvFi10TdC9f5OEK4qqKBx+69PNL5obqZxrmkEYZ31K4lbWipZ3JTWw2KDtY3G
 L+vPM9h20oxwQYuJwOXmNyy+1t5K4FdHShjcM9BE4Iy7Zhbb26ooXN31kFkpiGX6MiQaSo8z
 YvXVw+L9b3cIMbemFImWjjpCtBlmbmLDXUOipNiYfZJmyYptrjvymlS7r4ftr9efZVLRYHA2
 cuGAXwbdWeeJbOTKCXwJghePHiB5+IVAp8+g5cGGoOjCMDMeabz/nJWFYgTlz87R/yI3iq20
 08Xw86Cm4AvrxFN4XzjVeYZ0mkh+kILKl1Wjgge/CazGK6PPUo5AZ52RdGIFvxr+dGXRct0s
 OG68TTmxC78GzFY9kj3u8Pjsh1GedHiO3jo3WgB8Hwv5p9+NhVdDYZaOlLEHdFtqWBn7wNNT
 JygZJ8HHS7msHE5H0JXVNyYEQ6Ol1fEQ52hYABX1S2Q6FCrS7lFOGng36Oh1l3dwg/xa55FO
 WgHHMgXZvRj0I8/GtvGG7JGbY1gEU1szk4fmFE64pnDCNYX/e4sQWYqmS4nauGhJGxQvJQVo
 1XHaxPjogO0JcQbk+HZP7ZbfRmQajmxAPIeUkxWwSBkh0Op92uS4BgQcqZyiMK31jRAUUerk
 A5ImYasmMVbSNiBvjlJOVxyc1LVF4KPVe6VdkrRb0oyrBOfilYpmWwLsj8zfjet/5oQT/XZv
 QZci9ZPXZhkDB/yS9pTH2Kz5r4a8DjV13lqk8jdvCAs3hf5onB9pC/Tszfvdvq41Cveki8RQ
 hp+Hf/22yNcqz8CFc7tDclY1Zj5Zf3K534zLCVM/N0+rq7iw2dAb7RaxMwZ0LO5I8RHEsOpa
 ewGrpLQ71Ev9SY1W/RcYGyDOcgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xe7r6/sqxBt+WmltsnLGe1eL6l+es
 FvOPnGO16Nv3n9Gi//FrZovz5zewW5xtesNusenxNVaLy7vmsFl87j3CaDHj/D4mi7VH7rJb
 LL1+kcniduMKNos3P84yWbTuPcJu8e/aRhaLzQ+OsTkIeayZt4bRY9OqTjaPzUvqPQ6+28Pk
 0bdlFaPH8RvbmTw+b5ILYI/SsynKLy1JVcjILy6xVYo2tDDSM7S00DMysdQzNDaPtTIyVdK3
 s0lJzcksSy3St0vQy5hw1qBgmXfFrnkz2RoYf1p3MXJySAiYSBw+eIG9i5GLQ0hgKaPE/ubt
 rBAJaYnG06uZIGxhiT/Xutggij4xSrT3vGUGSbAJqEpsmfGSHcQWEVCWmHxvOjNIEbNAJ6vE
 iidH2EASwgJ+EouafoIVsQA13Nu+A6yZV8BF4u+Ddqht8hKdO3azgNicAq4SRx7PYwSxhYBq
 1l2ewgRRLyhxcuYTsBpmoPrmrbOZJzAKzEKSmoUktYCRaRWjSGppcW56brGhXnFibnFpXrpe
 cn7uJkZgVG479nPzDsZLG4MPMQpwMCrx8HLIKcUKsSaWFVfmHmKU4GBWEuHd564cK8SbklhZ
 lVqUH19UmpNafIjRFOiJicxSosn5wISRVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7
 NbUgtQimj4mDU6qBMaLdIPjcUVNZgUsnFl+78OKTNzOL390fcaviHpeEq21n4/zl+Fm/30LS
 L2OO/UO1pQnPPy4+75a745zQPLnjUtcflhyYmFtyVaBAaLLP0lW7D09YUfYmLefBr1+7D/S4
 /tt7bO6CRKs3F7a/krj2N29bS0Km7qLgfnuNNTc+zFGdH/5gK8d9nQNKLMUZiYZazEXFiQAS
 qmW64AIAAA==
X-CMS-MailID: 20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31
X-Msg-Generator: CA
X-RootMTR: 20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141200eucas1p144ca3b2a5b4019aaa5773d23c0236f31@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_071205_752852_AA31A641 
X-CRM114-Status: GOOD (  25.73  )
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

Reuse opp core code for setting bus clock and voltage. As a side
effect this allow useage of coupled regulators feature (required
for boards using Exynos5422/5800 SoCs) because dev_pm_opp_set_rate()
uses regulator_set_voltage_triplet() for setting regulator voltage
while the old code used regulator_set_voltage_tol() with fixed
tolerance. This patch also removes no longer needed parsing of DT
property "exynos,voltage-tolerance" (no Exynos devfreq DT node uses
it).

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
 drivers/devfreq/exynos-bus.c | 172 ++++++++++++++---------------------
 1 file changed, 66 insertions(+), 106 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index 486cc5b422f1..7fc4f76bd848 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -25,7 +25,6 @@
 #include <linux/slab.h>
 
 #define DEFAULT_SATURATION_RATIO	40
-#define DEFAULT_VOLTAGE_TOLERANCE	2
 
 struct exynos_bus {
 	struct device *dev;
@@ -37,9 +36,9 @@ struct exynos_bus {
 
 	unsigned long curr_freq;
 
-	struct regulator *regulator;
+	struct opp_table *opp_table;
+
 	struct clk *clk;
-	unsigned int voltage_tolerance;
 	unsigned int ratio;
 };
 
@@ -99,56 +98,25 @@ static int exynos_bus_target(struct device *dev, unsigned long *freq, u32 flags)
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
 	struct dev_pm_opp *new_opp;
-	unsigned long old_freq, new_freq, new_volt, tol;
 	int ret = 0;
-
-	/* Get new opp-bus instance according to new bus clock */
+	/*
+	 * New frequency for bus may not be exactly matched to opp, adjust
+	 * *freq to correct value.
+	 */
 	new_opp = devfreq_recommended_opp(dev, freq, flags);
 	if (IS_ERR(new_opp)) {
 		dev_err(dev, "failed to get recommended opp instance\n");
 		return PTR_ERR(new_opp);
 	}
 
-	new_freq = dev_pm_opp_get_freq(new_opp);
-	new_volt = dev_pm_opp_get_voltage(new_opp);
 	dev_pm_opp_put(new_opp);
 
-	old_freq = bus->curr_freq;
-
-	if (old_freq == new_freq)
-		return 0;
-	tol = new_volt * bus->voltage_tolerance / 100;
-
 	/* Change voltage and frequency according to new OPP level */
 	mutex_lock(&bus->lock);
+	ret = dev_pm_opp_set_rate(dev, *freq);
+	if (!ret)
+		bus->curr_freq = *freq;
 
-	if (old_freq < new_freq) {
-		ret = regulator_set_voltage_tol(bus->regulator, new_volt, tol);
-		if (ret < 0) {
-			dev_err(bus->dev, "failed to set voltage\n");
-			goto out;
-		}
-	}
-
-	ret = clk_set_rate(bus->clk, new_freq);
-	if (ret < 0) {
-		dev_err(dev, "failed to change clock of bus\n");
-		clk_set_rate(bus->clk, old_freq);
-		goto out;
-	}
-
-	if (old_freq > new_freq) {
-		ret = regulator_set_voltage_tol(bus->regulator, new_volt, tol);
-		if (ret < 0) {
-			dev_err(bus->dev, "failed to set voltage\n");
-			goto out;
-		}
-	}
-	bus->curr_freq = new_freq;
-
-	dev_dbg(dev, "Set the frequency of bus (%luHz -> %luHz, %luHz)\n",
-			old_freq, new_freq, clk_get_rate(bus->clk));
-out:
 	mutex_unlock(&bus->lock);
 
 	return ret;
@@ -194,10 +162,11 @@ static void exynos_bus_exit(struct device *dev)
 	if (ret < 0)
 		dev_warn(dev, "failed to disable the devfreq-event devices\n");
 
-	if (bus->regulator)
-		regulator_disable(bus->regulator);
+	if (bus->opp_table)
+		dev_pm_opp_put_regulators(bus->opp_table);
 
 	dev_pm_opp_of_remove_table(dev);
+
 	clk_disable_unprepare(bus->clk);
 }
 
@@ -209,39 +178,26 @@ static int exynos_bus_passive_target(struct device *dev, unsigned long *freq,
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
 	struct dev_pm_opp *new_opp;
-	unsigned long old_freq, new_freq;
-	int ret = 0;
+	int ret;
 
-	/* Get new opp-bus instance according to new bus clock */
+	/*
+	 * New frequency for bus may not be exactly matched to opp, adjust
+	 * *freq to correct value.
+	 */
 	new_opp = devfreq_recommended_opp(dev, freq, flags);
 	if (IS_ERR(new_opp)) {
 		dev_err(dev, "failed to get recommended opp instance\n");
 		return PTR_ERR(new_opp);
 	}
 
-	new_freq = dev_pm_opp_get_freq(new_opp);
 	dev_pm_opp_put(new_opp);
 
-	old_freq = bus->curr_freq;
-
-	if (old_freq == new_freq)
-		return 0;
-
 	/* Change the frequency according to new OPP level */
 	mutex_lock(&bus->lock);
+	ret = dev_pm_opp_set_rate(dev, *freq);
+	if (!ret)
+		bus->curr_freq = *freq;
 
-	ret = clk_set_rate(bus->clk, new_freq);
-	if (ret < 0) {
-		dev_err(dev, "failed to set the clock of bus\n");
-		goto out;
-	}
-
-	*freq = new_freq;
-	bus->curr_freq = new_freq;
-
-	dev_dbg(dev, "Set the frequency of bus (%luHz -> %luHz, %luHz)\n",
-			old_freq, new_freq, clk_get_rate(bus->clk));
-out:
 	mutex_unlock(&bus->lock);
 
 	return ret;
@@ -259,20 +215,7 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 					struct exynos_bus *bus)
 {
 	struct device *dev = bus->dev;
-	int i, ret, count, size;
-
-	/* Get the regulator to provide each bus with the power */
-	bus->regulator = devm_regulator_get(dev, "vdd");
-	if (IS_ERR(bus->regulator)) {
-		dev_err(dev, "failed to get VDD regulator\n");
-		return PTR_ERR(bus->regulator);
-	}
-
-	ret = regulator_enable(bus->regulator);
-	if (ret < 0) {
-		dev_err(dev, "failed to enable VDD regulator\n");
-		return ret;
-	}
+	int i, count, size;
 
 	/*
 	 * Get the devfreq-event devices to get the current utilization of
@@ -281,24 +224,20 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	count = devfreq_event_get_edev_count(dev);
 	if (count < 0) {
 		dev_err(dev, "failed to get the count of devfreq-event dev\n");
-		ret = count;
-		goto err_regulator;
+		return count;
 	}
+
 	bus->edev_count = count;
 
 	size = sizeof(*bus->edev) * count;
 	bus->edev = devm_kzalloc(dev, size, GFP_KERNEL);
-	if (!bus->edev) {
-		ret = -ENOMEM;
-		goto err_regulator;
-	}
+	if (!bus->edev)
+		return -ENOMEM;
 
 	for (i = 0; i < count; i++) {
 		bus->edev[i] = devfreq_event_get_edev_by_phandle(dev, i);
-		if (IS_ERR(bus->edev[i])) {
-			ret = -EPROBE_DEFER;
-			goto err_regulator;
-		}
+		if (IS_ERR(bus->edev[i]))
+			return -EPROBE_DEFER;
 	}
 
 	/*
@@ -314,22 +253,15 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	if (of_property_read_u32(np, "exynos,saturation-ratio", &bus->ratio))
 		bus->ratio = DEFAULT_SATURATION_RATIO;
 
-	if (of_property_read_u32(np, "exynos,voltage-tolerance",
-					&bus->voltage_tolerance))
-		bus->voltage_tolerance = DEFAULT_VOLTAGE_TOLERANCE;
-
 	return 0;
-
-err_regulator:
-	regulator_disable(bus->regulator);
-
-	return ret;
 }
 
 static int exynos_bus_parse_of(struct device_node *np,
-			      struct exynos_bus *bus)
+			      struct exynos_bus *bus, bool passive)
 {
 	struct device *dev = bus->dev;
+	struct opp_table *opp_table;
+	const char *vdd = "vdd";
 	struct dev_pm_opp *opp;
 	unsigned long rate;
 	int ret;
@@ -347,11 +279,22 @@ static int exynos_bus_parse_of(struct device_node *np,
 		return ret;
 	}
 
+	if (!passive) {
+		opp_table = dev_pm_opp_set_regulators(dev, &vdd, 1);
+		if (IS_ERR(opp_table)) {
+			ret = PTR_ERR(opp_table);
+			dev_err(dev, "failed to set regulators %d\n", ret);
+			goto err_clk;
+		}
+
+		bus->opp_table = opp_table;
+	}
+
 	/* Get the freq and voltage from OPP table to scale the bus freq */
 	ret = dev_pm_opp_of_add_table(dev);
 	if (ret < 0) {
 		dev_err(dev, "failed to get OPP table\n");
-		goto err_clk;
+		goto err_regulator;
 	}
 
 	rate = clk_get_rate(bus->clk);
@@ -362,6 +305,7 @@ static int exynos_bus_parse_of(struct device_node *np,
 		ret = PTR_ERR(opp);
 		goto err_opp;
 	}
+
 	bus->curr_freq = dev_pm_opp_get_freq(opp);
 	dev_pm_opp_put(opp);
 
@@ -369,6 +313,13 @@ static int exynos_bus_parse_of(struct device_node *np,
 
 err_opp:
 	dev_pm_opp_of_remove_table(dev);
+
+err_regulator:
+	if (bus->opp_table) {
+		dev_pm_opp_put_regulators(bus->opp_table);
+		bus->opp_table = NULL;
+	}
+
 err_clk:
 	clk_disable_unprepare(bus->clk);
 
@@ -386,6 +337,7 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	struct exynos_bus *bus;
 	int ret, max_state;
 	unsigned long min_freq, max_freq;
+	bool passive = false;
 
 	if (!np) {
 		dev_err(dev, "failed to find devicetree node\n");
@@ -395,12 +347,18 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	bus = devm_kzalloc(&pdev->dev, sizeof(*bus), GFP_KERNEL);
 	if (!bus)
 		return -ENOMEM;
+
 	mutex_init(&bus->lock);
 	bus->dev = &pdev->dev;
 	platform_set_drvdata(pdev, bus);
+	node = of_parse_phandle(dev->of_node, "devfreq", 0);
+	if (node) {
+		of_node_put(node);
+		passive = true;
+	}
 
 	/* Parse the device-tree to get the resource information */
-	ret = exynos_bus_parse_of(np, bus);
+	ret = exynos_bus_parse_of(np, bus, passive);
 	if (ret < 0)
 		return ret;
 
@@ -410,13 +368,10 @@ static int exynos_bus_probe(struct platform_device *pdev)
 		goto err;
 	}
 
-	node = of_parse_phandle(dev->of_node, "devfreq", 0);
-	if (node) {
-		of_node_put(node);
+	if (passive)
 		goto passive;
-	} else {
-		ret = exynos_bus_parent_parse_of(np, bus);
-	}
+
+	ret = exynos_bus_parent_parse_of(np, bus);
 
 	if (ret < 0)
 		goto err;
@@ -509,6 +464,11 @@ static int exynos_bus_probe(struct platform_device *pdev)
 
 err:
 	dev_pm_opp_of_remove_table(dev);
+	if (bus->opp_table) {
+		dev_pm_opp_put_regulators(bus->opp_table);
+		bus->opp_table = NULL;
+	}
+
 	clk_disable_unprepare(bus->clk);
 
 	return ret;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
