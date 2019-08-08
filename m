Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4FFF85DC6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 11:03:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/joP4xxnjX8X5mwxNXnhxpSfuJVbuk3NdcdhgaE4KM=; b=k2Hn8eMEacSIyQ
	Zm+8JYc/gfgYH0A7s01WVyhaW+1Ooub+8qmrMyuIUVynFMmYXQUOrpYTLKiBDMaDvTl6VSKsh02Ra
	wjLiTNcezVXuBuC4J9GKa078dwDyRYdtqGMf0xtvPMofAsdtmkerXqxrEUkuhkgQFjoiV6CNxMHqA
	v1GdcheDvXE+tMOYoK/J9t0B1E5dXVEH6fAT0ag45O6qlSffnC7UzPGiyjQKnaPsdjcPoh9Vbwk/I
	CdObPUWypgpXZaUe4XfG6oN9x5fah72E2vIe9ZRR+YE8Lwb/gfyzI9wQQK4zMQ23zA91Y9oAuXaqe
	BGH7dSU4ftvc9o1thMBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveKZ-0008Fv-Hr; Thu, 08 Aug 2019 09:03:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveJw-00081L-Vj
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 09:02:54 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190808090251euoutp0183c1e9cba7dc3e77b2fcd89d4718a720~45xqKtsky1828418284euoutp01z
 for <linux-arm-kernel@lists.infradead.org>;
 Thu,  8 Aug 2019 09:02:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190808090251euoutp0183c1e9cba7dc3e77b2fcd89d4718a720~45xqKtsky1828418284euoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1565254971;
 bh=CjwZyowP2SyGv4qfE/HxF+yoeTjTHLNxjLACzBKukg4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Zmsoex1UjMitkOqDjG6EW3Gy3OrSaq+CmUNaHx+4mJtCC+difyNYtxNcNOAG+8uKe
 VVLDMXrQ4/NE2ZA1KAqaqwCj+cRzy+9+xgi8qpGRZE/rZcnn+rUGxJweue1nkxNMpP
 KLsNNFFTF8caxfNCogGS2vxljC0v/qkA9OFqvsm4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190808090251eucas1p29a89f09b4b801d0f12440abe61a3bac1~45xprlj-22736227362eucas1p2z;
 Thu,  8 Aug 2019 09:02:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 0F.80.04309.A35EB4D5; Thu,  8
 Aug 2019 10:02:50 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190808090250eucas1p11b4cc8ada0e3442dcde604a5d4ef89e4~45xo8k7b62989729897eucas1p1Y;
 Thu,  8 Aug 2019 09:02:50 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190808090250eusmtrp27146683cb000ae18d7f174442db3eef0~45xouLLQf0888908889eusmtrp2_;
 Thu,  8 Aug 2019 09:02:50 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-3a-5d4be53a1252
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id CB.A0.04166.A35EB4D5; Thu,  8
 Aug 2019 10:02:50 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190808090249eusmtip2ef79c140673246e85823e3734431f326~45xn9l0He3176031760eusmtip2X;
 Thu,  8 Aug 2019 09:02:49 +0000 (GMT)
From: Kamil Konieczny <k.konieczny@partner.samsung.com>
To: k.konieczny@partner.samsung.com
Subject: [RESEND PATCH v5 1/4] devfreq: exynos-bus: correct clock enable
 sequence
Date: Thu,  8 Aug 2019 11:02:31 +0200
Message-Id: <20190808090234.12577-2-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808090234.12577-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHKsWRmVeSWpSXmKPExsWy7djP87pWT71jDTZNM7XYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlbFn+wyWgtuiFbN2hDQwnhfsYuTkkBAw
 kVhw4DB7FyMXh5DACkaJ7ad+MEI4XxglVv88xghSJSTwGSiz0A+m4+mlB0wQRcsZJd7dm8oK
 1zFj1SkmkCo2AXOJR9vPgNkiAsoSk+9NZwYpYhb4ySKx4fJGdpCEsECwxJI7p8BsFgFViX2f
 J7GC2LwCLhKXV3xnhlgnL9G5YzcLiM0p4CqxdtVJFogaQYmTM5+A2cxANc1bZ4MtkBD4yC7R
 v34KE0Szi8Tvng9QtrDEq+Nb2CFsGYn/O+dDxcslni7sY4dobmGUeND+kQUiYS1x+PhFoIs4
 gDZoSqzfpQ8RdpS4+uEvM0hYQoBP4sZbQYgb+CQmbZsOFeaV6GgTgqjWlZj3/wwrhC0t0fV/
 HZTtIfHo8FKmCYyKs5B8MwvJN7MQ9i5gZF7FKJ5aWpybnlpslJdarlecmFtcmpeul5yfu4kR
 mOpO/zv+ZQfjrj9JhxgFOBiVeHgLTnjHCrEmlhVX5h5ilOBgVhLhvVfmGSvEm5JYWZValB9f
 VJqTWnyIUZqDRUmct5rhQbSQQHpiSWp2ampBahFMlomDU6qBMXXdrJ4mkZ2M61eyS4tsLub9
 6H50d21mebztghWmJy2tX95cFxQ4b+I5HcnnbRr2i3td3uVOi9QuWNiV7udWXCTNt9jyh99+
 71qtLFPHlsl2n61ZFkxkuVAp5DdhxpKjbMefmc2ITGdeVJf7wuFgIDen7bt9ywR/mAjoM06P
 PxNst/LBpCw9JZbijERDLeai4kQAzBS9UHEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDIsWRmVeSWpSXmKPExsVy+t/xe7pWT71jDfauYrHYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7Fn+wyWgtuiFbN2hDQwnhfsYuTkkBAwkXh66QFTFyMXh5DAUkaJ5zfb
 mSES0hKNp1czQdjCEn+udbFBFH1ilFi5cxUbSIJNwFzi0fYzYEUiAsoSk+9NZwYpYhboZJVY
 8eQIUBEHh7BAoMTs75EgNSwCqhL7Pk9iBbF5BVwkLq/4DrVMXqJzx24WEJtTwFVi7aqTYLYQ
 UM3G99eh6gUlTs58AhZnBqpv3jqbeQKjwCwkqVlIUgsYmVYxiqSWFuem5xYb6hUn5haX5qXr
 JefnbmIExuS2Yz8372C8tDH4EKMAB6MSD2/BCe9YIdbEsuLK3EOMEhzMSiK898o8Y4V4UxIr
 q1KL8uOLSnNSiw8xmgI9MZFZSjQ5H5gu8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRm
 p6YWpBbB9DFxcEo1ME57I6tbe26CwbPVfL9Fbi06IfumL77MyW9j7OXJk/mqnZOu8Z4sZ96U
 fXnqYalfjtuPOcbv+Tr17Ef/d7dyWM497zGafWihn9mmC8xH2LTVpVqKuOIdI3/e3nxx8tqf
 3cuXP5Vr3a5Skbt7l6nfeefjcxS3Jiw6YlHEEz15a65XVEzDddPAxtNKLMUZiYZazEXFiQBT
 U7W33wIAAA==
X-CMS-MailID: 20190808090250eucas1p11b4cc8ada0e3442dcde604a5d4ef89e4
X-Msg-Generator: CA
X-RootMTR: 20190808090250eucas1p11b4cc8ada0e3442dcde604a5d4ef89e4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190808090250eucas1p11b4cc8ada0e3442dcde604a5d4ef89e4
References: <20190808090234.12577-1-k.konieczny@partner.samsung.com>
 <CGME20190808090250eucas1p11b4cc8ada0e3442dcde604a5d4ef89e4@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_020253_167034_7E16A21E 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
