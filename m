Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A4A84DB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSxW4xwasv9uvYYL4f1Zs3bCgTyPnm6bHiHfMjflao0=; b=NUhwqIYSi8iVaq
	mrU3yldAOqkxJnJXLKKVQ0Lmr9SPE2F9bk+V+95R0VKBkmiHS1K+nVahOpYi5jTdTm5DV7sK3tNRu
	5zrPzc3of6elVexLLSuK3LVnmM6RL5aDM5uV7t24OTv5VMz8hqvwJ2lxaDZPwaUcc38ORCKh1yGfq
	sMnXz6IJ5cyRowl60E+2uPVrMtD+n3+CrCKPDhIX2a0ysOBE/ZB9+qU0J4x/5LBX5Ga3pAODEz0d9
	qwkToCQEzXoUXIgMNPZnOXNsCmWKi7/bd54E2/+Bozjb2azCu9aat7gmkk0KGJNgKR3c46hWYaTHQ
	a/RlAiR1kXU4azsE/RbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvMAp-0002xT-6e; Wed, 07 Aug 2019 13:40:15 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvM9e-0002BE-Br
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:39:05 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190807133858euoutp027d54412fdd4e9f693f5aa0c88460e43b~4p5dSAmdr1903619036euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  7 Aug 2019 13:38:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190807133858euoutp027d54412fdd4e9f693f5aa0c88460e43b~4p5dSAmdr1903619036euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565185138;
 bh=XRXksgu/LaLwnvwetsyYittcR7UmSPEPMoKHOtx1YrE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cgfquiIHNE+Ot5aZIHZJYAq71FKnU31mfqCXO3jvvtOF7F2f8LG8tmksJGsXow9ca
 z4kPRd4CFIrlPVaGgnMudcL3ECf88ZzyKOB3mMd0v/IZeXMdFbbSrPZFZUqx20Loqa
 p/Laaa2W4tHsY2C7jVd7q58Mxo9/MDj295nfYCEo=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190807133858eucas1p2cea2b6a78faecb9fe5bd4b6aaa75280f~4p5c0qbV20902209022eucas1p2O;
 Wed,  7 Aug 2019 13:38:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id BB.F6.04374.274DA4D5; Wed,  7
 Aug 2019 14:38:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190807133857eucas1p23d2618db67434fa1301585cab059fa5b~4p5cFl5IB1100111001eucas1p2O;
 Wed,  7 Aug 2019 13:38:57 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190807133857eusmtrp1e6d4301f200f039b108cad84b6243dfd~4p5b3K2zO3034030340eusmtrp1z;
 Wed,  7 Aug 2019 13:38:57 +0000 (GMT)
X-AuditID: cbfec7f5-4ddff70000001116-09-5d4ad472aed1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 08.AE.04166.174DA4D5; Wed,  7
 Aug 2019 14:38:57 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190807133856eusmtip2ba85f8723f61a976760e5ccc85f557df~4p5bFmqza1973019730eusmtip2X;
 Wed,  7 Aug 2019 13:38:56 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v5 2/4] devfreq: exynos-bus: convert to use
 dev_pm_opp_set_rate()
Date: Wed,  7 Aug 2019 15:38:36 +0200
Message-Id: <20190807133838.14678-3-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTYRz1u2+txfVq+fXWRX8UaEkRXyRamXQzCulBoEitumjkluz6yIrS
 zKbSTHraDLWyXGam8zF7ONSGq8zHSpw9NGGFlBqZEzIq23bt8d/5nd853/kd+BicGyDnMAdU
 SYJapUiQU15EfetER6C6OzJ2uf0iiaoL7pHI5hgkUbG5g0R5pkmAztqHcNTZWUWj9pPDNDLY
 e0j08sFVCo1pzQAVdJowdNfcR6ObNiuG3mToKTT8rR1DWY1mGv3qqSZQzUArtZbjK4oqAG8o
 z6H4mtITfPPnRxifV1sOeEuvEePHDAui6GivkP1CwoEUQb0sdI9XfFdBI5Z4efVhTU4hSAet
 QbnAk4HsSmjvNoBc4MVwrB7Akq4XhDQ4ANQ0deDSMAagtniQ+GOpLKqipEUZgGXvvtN/LV9G
 b1MuFcUuhrUFH2kX9mUXwfP9l91P4ewEAateVrsXPux2WHIu020gnIanN7IwF5axG2B2jQmX
 4hbCnIaH7mhPNgKON+YDSeMNn1557+ZxpyazrtAdANkRGpoHn5CSeQM0tv0EEvaBnyy1tITn
 wbbzZ6b6pMIP1/JoyXwKwAHN6NRiDXxssTofYpwJS+C9B8skeh0s/l4KXDRkZ8DeEW/phhnw
 XL2rpIuWwezTnKQOhEWTz6eumQtzJyunMA9v6bLIfBCg+6+N7r82un+5JQAvB35CsqiME8QV
 KiE1SFQoxWRVXNC+Q0oDcP67tl+W8QZg+rG3BbAMkE+XeXRFxnKkIkVMU7YAyOByX1l/yqZY
 TrZfkXZEUB/arU5OEMQWMJch5H6yox4DMRwbp0gSDgpCoqD+s8UYzznpIJKKn7Z8Zt2nmMrw
 Y/Um360ZmD4mOEr35Yw22+fCJcdwIreueXZYnK17fXSfDU/Taneavi54HOJ9X2dtCN8YNWS7
 Xpja77Gt70rgs4w9m3dErDox3+j/cHFgvt7o/+qgzfr29QRhdJSPjjSF1wWoi6LvRFhYeq/m
 eKZj16wtoa1hckKMVwQvxdWi4jc6VMEZcwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xe7qFV7xiDR6c5rPYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl3Fhxl6mgumWFe2dsxkbGI/pdTFyckgImEism7eBrYuRi0NIYCmjxMSJ
 dxghEtISjadXM0HYwhJ/rnWxgdhCAp8YJaY/UAWx2QRUJbbMeMkOYosIKEtMvjedGWQQs0An
 q8SKJ0fAGoQFAiWmXtzDAmKzADWcXNwKNpRXwEWiY/M+ZogF8hKdO3aD1XAKuEp83TuBEWKZ
 i8Sigxuh6gUlTs58AlbDDFTfvHU28wRGgVlIUrOQpBYwMq1iFEktLc5Nzy021CtOzC0uzUvX
 S87P3cQIjMptx35u3sF4aWPwIUYBDkYlHl6GC16xQqyJZcWVuYcYJTiYlUR475V5xgrxpiRW
 VqUW5ccXleakFh9iNAV6YiKzlGhyPjBh5JXEG5oamltYGpobmxubWSiJ83YIHIwREkhPLEnN
 Tk0tSC2C6WPi4JRqYGz/2bT/AjOD9bvXkbxR2y2ET4YzRxZqMpXFl51qP9m6y1BAUKh2OavC
 2ndrP4nV+y9bv8TxfV7mWaaJRlwmUyXfHeo6sraHobfkKwcH46SARcKfz+z87jdvEjubzz/7
 BserG/3Oeu///c5XSOSGhP9dnoDYlavYQubkXOu3WdW5qtPtZJhHgxJLcUaioRZzUXEiAKHl
 LY3gAgAA
X-CMS-MailID: 20190807133857eucas1p23d2618db67434fa1301585cab059fa5b
X-Msg-Generator: CA
X-RootMTR: 20190807133857eucas1p23d2618db67434fa1301585cab059fa5b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190807133857eucas1p23d2618db67434fa1301585cab059fa5b
References: <20190807133838.14678-1-k.konieczny@partner.samsung.com>
 <CGME20190807133857eucas1p23d2618db67434fa1301585cab059fa5b@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_063902_543099_E5B1C83A 
X-CRM114-Status: GOOD (  25.36  )
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

Reuse opp core code for setting bus clock and voltage. As a side
effect this allow usage of coupled regulators feature (required
for boards using Exynos5422/5800 SoCs) because dev_pm_opp_set_rate()
uses regulator_set_voltage_triplet() for setting regulator voltage
while the old code used regulator_set_voltage_tol() with fixed
tolerance. This patch also removes no longer needed parsing of DT
property "exynos,voltage-tolerance" (no Exynos devfreq DT node uses
it). After applying changes both functions exynos_bus_passive_target()
and exynos_bus_target() have the same code, so remove
exynos_bus_passive_target(). In exynos_bus_probe() replace it with
exynos_bus_target.

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
Changes:
v5:
- squashed last patch into this one, as suggested by Chanwoo Choi
v4:
- remove unrelated changes, add newline before comment

---
 drivers/devfreq/exynos-bus.c | 130 +++++++----------------------------
 1 file changed, 24 insertions(+), 106 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index f34fa26f00d0..2aeb6cc07960 100644
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
 
@@ -93,62 +91,29 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
 }
 
 /*
- * Must necessary function for devfreq simple-ondemand governor
+ * devfreq function for both simple-ondemand and passive governor
  */
 static int exynos_bus_target(struct device *dev, unsigned long *freq, u32 flags)
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
@@ -196,54 +161,10 @@ static void exynos_bus_exit(struct device *dev)
 
 	dev_pm_opp_of_remove_table(dev);
 	clk_disable_unprepare(bus->clk);
-	if (bus->regulator)
-		regulator_disable(bus->regulator);
-}
-
-/*
- * Must necessary function for devfreq passive governor
- */
-static int exynos_bus_passive_target(struct device *dev, unsigned long *freq,
-					u32 flags)
-{
-	struct exynos_bus *bus = dev_get_drvdata(dev);
-	struct dev_pm_opp *new_opp;
-	unsigned long old_freq, new_freq;
-	int ret = 0;
-
-	/* Get new opp-bus instance according to new bus clock */
-	new_opp = devfreq_recommended_opp(dev, freq, flags);
-	if (IS_ERR(new_opp)) {
-		dev_err(dev, "failed to get recommended opp instance\n");
-		return PTR_ERR(new_opp);
-	}
-
-	new_freq = dev_pm_opp_get_freq(new_opp);
-	dev_pm_opp_put(new_opp);
-
-	old_freq = bus->curr_freq;
-
-	if (old_freq == new_freq)
-		return 0;
-
-	/* Change the frequency according to new OPP level */
-	mutex_lock(&bus->lock);
-
-	ret = clk_set_rate(bus->clk, new_freq);
-	if (ret < 0) {
-		dev_err(dev, "failed to set the clock of bus\n");
-		goto out;
+	if (bus->opp_table) {
+		dev_pm_opp_put_regulators(bus->opp_table);
+		bus->opp_table = NULL;
 	}
-
-	*freq = new_freq;
-	bus->curr_freq = new_freq;
-
-	dev_dbg(dev, "Set the frequency of bus (%luHz -> %luHz, %luHz)\n",
-			old_freq, new_freq, clk_get_rate(bus->clk));
-out:
-	mutex_unlock(&bus->lock);
-
-	return ret;
 }
 
 static void exynos_bus_passive_exit(struct device *dev)
@@ -258,21 +179,19 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
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
@@ -313,14 +232,11 @@ static int exynos_bus_parent_parse_of(struct device_node *np,
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
@@ -471,7 +387,7 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	goto out;
 passive:
 	/* Initialize the struct profile and governor data for passive device */
-	profile->target = exynos_bus_passive_target;
+	profile->target = exynos_bus_target;
 	profile->exit = exynos_bus_passive_exit;
 
 	/* Get the instance of parent devfreq device */
@@ -511,8 +427,10 @@ static int exynos_bus_probe(struct platform_device *pdev)
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
