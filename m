Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C8A751A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJPq5s1Z7SG1NdSK5f9jWzmaanX2U6pErUOBECOD8BM=; b=HtcOsxklHEJyJQ
	pT0ZKXq44qhwA5TE0yU+lkg9L5o8MAsR/JGo2nKhEDPGmYZwem01C227Tbs7W4HdaHKtqXhV61QdV
	0IAj8X/soiTJY9UPVTKI1q2k+pFytOHbU8yc5BR/5Y6FrW92+QTEEDUlI4SMngW/8HR6F0/jPoaeL
	qBiMt/lUMXOihSQ8fOnrvUL/cswaz+hbDvXGgbwsHi/BJVkTZRz/RW4c3wbItYF5ZL9JV3998yku5
	kokaMHxp5xuHtarYfUfMOHjqWP7Z12jFyzi8nvl5mmqY+2WZKud6NPuX34PncY9kthwhoeDWZv7K5
	IxkLrTmaChHoloXz5AIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqez5-0004SN-8s; Thu, 25 Jul 2019 14:44:43 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqexu-0003hn-NJ
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:43:33 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190725144327euoutp0206a6313b8415f4d5bb30f697ce9e8678~0rZClpG2g1162511625euoutp02e
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 14:43:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190725144327euoutp0206a6313b8415f4d5bb30f697ce9e8678~0rZClpG2g1162511625euoutp02e
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564065807;
 bh=UyI1wQ20jgXxJKqp5TkkQjurNLXPwK0/yJfHRL2NaWQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c6+O3NQBC4Ns3Zzy/47I6P2MW2aTdQS+pNiWQitTU42czt/ljOhTnybL+iMahx3Lw
 vEuKMsZxj/15H0fOX74Euk8xo7HU+4gnvyOLMuXkDbRVcGB5hcMOVVl7uBXVABoeOs
 NM3x23fj6CdbocUu9/KUxU78DHb07Zm220D3eXdQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190725144326eucas1p14f80b2ad8cd63ad739d5171090ac0896~0rZCCDwNT1363913639eucas1p1j;
 Thu, 25 Jul 2019 14:43:26 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id CF.38.04298.E00C93D5; Thu, 25
 Jul 2019 15:43:26 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190725144325eucas1p204f9ffe8988a3604fdf21f77d242c7b8~0rZBLUxw71530115301eucas1p2o;
 Thu, 25 Jul 2019 14:43:25 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190725144325eusmtrp11e79d58e292db99dbf0c8c1eed063582~0rZA9ETcK0724307243eusmtrp1A;
 Thu, 25 Jul 2019 14:43:25 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-d6-5d39c00efc85
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 2E.2E.04146.D00C93D5; Thu, 25
 Jul 2019 15:43:25 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190725144324eusmtip12c99b1a847eb7d9406e4cc76ba4d2538~0rZAOPIad3128231282eusmtip1j;
 Thu, 25 Jul 2019 14:43:24 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v4 2/5] devfreq: exynos-bus: convert to use
 dev_pm_opp_set_rate()
Date: Thu, 25 Jul 2019 16:42:57 +0200
Message-Id: <20190725144300.25014-3-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA02Sa0hTYRjHe3fOzjmKk9M0fHBStCgy8BYGrxSWdFtFIBVFWdTSg5Y6ZVNr
 RaVl2axm5QcvybqaIt62pqmpNRtJmS4vaRHlQEuraTUXFaW27djl2+/8L/zfBw5DiAeF/swB
 RRqnVMiTpJQnWf/ohyXI+0HEntCxagnWF9YI8YBjRIivmruEWNs6jXDe0EcCWyy1NO48aaOx
 YahfiHubSig8ccGMcKGlVYCrzK9pXDrQLcCvssopbPveKcCnW8w0nurXk/iO9RG1Siyr1FUi
 maFCQ8nu3DohM403C2RaYwWStb+4K5BNGOZG07s8V8RxSQcyOGVI5D7PhC7DfSq1Y+nh531n
 iEzkWJyLPBhgw+GGXSdwsZgtR3C1LTAXeTrZgeCiRUfxHxMIPo1kk38aXd9PkrxRhsAypBf8
 rTSNNhGuFMUuBGPhe9rFvuwCyH9TQLhCBPuDhNpevdvwYbfCkPYncjHpLJjybrtZxK4Be0cm
 xc/NA03DPfe0B7sWJrOqZjKz4XHRsFsnnJlTdVfcA8CO0dD4qRHx5TVQlPeS4NkHPrQbaZ4D
 oCP//Mw9h+DtdS3Nl7MRWHO+zBjL4WF7tzAXMc6FQKhpCuHlKLAP2mmXDKw3vBibzb/BGy7X
 u450ySI4e0bMp4NAN/1UyLMEcqerZ1gGk7YW+iKaX/zfNcX/XVP8b/caIiqQH5euSo7nVGEK
 7lCwSp6sSlfEB8emJBuQ87frmGq3N6CvPfvbEMsgqZfoWVnEHrFQnqFSJ7chYAipr6iuwSmJ
 4uTqI5wyZa8yPYlTtSEJQ0r9REdnWWPEbLw8jUvkuFRO+ccVMB7+mSjRq2SLfnvZZ5t0SwLs
 WDmorzYF9cc2nm9UaNTLc578MpWULuphW4cnYozb1I4ofW3BVGdf7KlNo+ObHWniLhuySy71
 WpsPhn9713wscfU6y+nxtEj725vm+Zq+7mzbBuv6c7dXTkZ9fT9YuiI6o2WOOGdZSdTxncEm
 LsC4MSt0t5RUJcjDlhBKlfw3x4AvX3IDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xu7q8ByxjDSYeVrLYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl3Fu0362gtNGFVevtDE3MH7R6GLk5JAQMJE496OJBcQWEljKKLHvkz5E
 XFqi8fRqJghbWOLPtS62LkYuoJpPjBLvVpxgA0mwCahKbJnxkh3EFhFQlph8bzozSBGzQCer
 xIonR8CKhAUCJf7cnsAKYrMANRzsX8YIYvMKuEh8Ot3ABrFBXqJzx26wKzgFXCX+Nq5lhLjI
 RaKx/xhUvaDEyZlPwGqYgeqbt85mnsAoMAtJahaS1AJGplWMIqmlxbnpucWGesWJucWleel6
 yfm5mxiBUbnt2M/NOxgvbQw+xCjAwajEw3thuWWsEGtiWXFl7iFGCQ5mJRHerTuAQrwpiZVV
 qUX58UWlOanFhxhNgZ6YyCwlmpwPTBh5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNT
 UwtSi2D6mDg4pRoYJ7Yzhzy050y26b/ZHv3IUqq2WOJ14Ja1fVM2bOowCJ6mys19Yu/7ypuz
 /zWqTK/I3mi6R2XtBd53X6PEw+zEmsS2zFyy2n1XTNXP01+vaM6JDEsqLIm4+Pr1xj6lRSmz
 svyZuGXW5Fad72jUD1xbnfi0ZrLcukKtex/VGHgaGzc7LuX8Eh2nxFKckWioxVxUnAgA3LTP
 +uACAAA=
X-CMS-MailID: 20190725144325eucas1p204f9ffe8988a3604fdf21f77d242c7b8
X-Msg-Generator: CA
X-RootMTR: 20190725144325eucas1p204f9ffe8988a3604fdf21f77d242c7b8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190725144325eucas1p204f9ffe8988a3604fdf21f77d242c7b8
References: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
 <CGME20190725144325eucas1p204f9ffe8988a3604fdf21f77d242c7b8@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074330_904860_5D2F2608 
X-CRM114-Status: GOOD (  24.85  )
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

Reuse opp core code for setting bus clock and voltage. As a side
effect this allow usage of coupled regulators feature (required
for boards using Exynos5422/5800 SoCs) because dev_pm_opp_set_rate()
uses regulator_set_voltage_triplet() for setting regulator voltage
while the old code used regulator_set_voltage_tol() with fixed
tolerance. This patch also removes no longer needed parsing of DT
property "exynos,voltage-tolerance" (no Exynos devfreq DT node uses
it).

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
Changes:
v4:
- remove unrelated changes, add newline before comment

---
 drivers/devfreq/exynos-bus.c | 108 +++++++++--------------------------
 1 file changed, 28 insertions(+), 80 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index f34fa26f00d0..ebb8f46312b6 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -25,7 +25,6 @@
 #include <linux/slab.h>
 
 #define DEFAULT_SATURATION_RATIO	40
-#define DEFAULT_VOLTAGE_TOLERANCE	2
 
 struct exynos_bus {
 	struct device *dev;
@@ -37,9 +36,8 @@ struct exynos_bus {
 
 	unsigned long curr_freq;
 
-	struct regulator *regulator;
+	struct opp_table *opp_table;
 	struct clk *clk;
-	unsigned int voltage_tolerance;
 	unsigned int ratio;
 };
 
@@ -99,56 +97,23 @@ static int exynos_bus_target(struct device *dev, unsigned long *freq, u32 flags)
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
 	struct dev_pm_opp *new_opp;
-	unsigned long old_freq, new_freq, new_volt, tol;
 	int ret = 0;
 
-	/* Get new opp-bus instance according to new bus clock */
+	/* Get correct frequency for bus. */
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
@@ -196,8 +161,10 @@ static void exynos_bus_exit(struct device *dev)
 
 	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
-	if (bus->regulator)
-		regulator_disable(bus->regulator);
+	if (bus->opp_table) {
+		dev_pm_opp_put_regulators(bus->opp_table);
+		bus->opp_table = NULL;
+	}
 }
 
 /*
@@ -208,39 +175,23 @@ static int exynos_bus_passive_target(struct device *dev, unsigned long *freq,
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
 	struct dev_pm_opp *new_opp;
-	unsigned long old_freq, new_freq;
-	int ret = 0;
+	int ret;
 
-	/* Get new opp-bus instance according to new bus clock */
+	/* Get correct frequency for bus. */
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
@@ -258,21 +209,19 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 					struct exynos_bus *bus)
 {
 	struct device *dev = bus->dev;
+	struct opp_table *opp_table;
+	const char *vdd = "vdd";
 	int i, ret, count, size;
 
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
+	opp_table = dev_pm_opp_set_regulators(dev, &vdd, 1);
+	if (IS_ERR(opp_table)) {
+		ret = PTR_ERR(opp_table);
+		dev_err(dev, "failed to set regulators %d\n", ret);
 		return ret;
 	}
 
+	bus->opp_table = opp_table;
+
 	/*
 	 * Get the devfreq-event devices to get the current utilization of
 	 * buses. This raw data will be used in devfreq ondemand governor.
@@ -313,14 +262,11 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
 	if (of_property_read_u32(np, "exynos,saturation-ratio", &bus->ratio))
 		bus->ratio = DEFAULT_SATURATION_RATIO;
 
-	if (of_property_read_u32(np, "exynos,voltage-tolerance",
-					&bus->voltage_tolerance))
-		bus->voltage_tolerance = DEFAULT_VOLTAGE_TOLERANCE;
-
 	return 0;
 
 err_regulator:
-	regulator_disable(bus->regulator);
+	dev_pm_opp_put_regulators(bus->opp_table);
+	bus->opp_table = NULL;
 
 	return ret;
 }
@@ -511,8 +457,10 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
 err_reg:
-	if (!passive)
-		regulator_disable(bus->regulator);
+	if (!passive) {
+		dev_pm_opp_put_regulators(bus->opp_table);
+		bus->opp_table = NULL;
+	}
 
 	return ret;
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
