Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C17751A4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:45:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSoUdi0p+6gDPM6dkbHkttGfupeu9xoVAh/Bu2P/rjc=; b=lgWcKIJK3oceAw
	76x/VAvOSzcj3ch/gHtv8qIaUb/QDeygF1AgDkddLI7j+AubkifJ/NXMM4GSljtPyYA680N9gIiy1
	DrlF33tihoWqp775vZ2qwYQw+Lt3NkS/VKwrUd35gBq2kAzE8u/bi8tF5+LuQJCNYpg+Re8x5Wk1y
	tyUwJN0bes0SuosIAYb+ebhxSA54ojZxjuMJSgDf6hlqZykttk/YCV484ZDcXmPeO/yZdTMOlinuA
	+bo7bdGmUHjs6S8LNgezjvHml3e5JlUWN5eK+eyo9QagMZY7c2z4d3wGf9OWLEH20ag+LE0Cfle6y
	JRKu9rjPKOy0y/hnRz8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqezt-000667-Gw; Thu, 25 Jul 2019 14:45:33 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqexv-0003hW-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:43:33 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190725144327euoutp010a052e2c40eb506b0dfe947ecc156c41~0rZCRTNSQ2930229302euoutp01z
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 14:43:27 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190725144327euoutp010a052e2c40eb506b0dfe947ecc156c41~0rZCRTNSQ2930229302euoutp01z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564065807;
 bh=AawwEP56U+vYoQivP5dWZ0mbAArK+m1U0+xIgjdYc/c=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FrnjrNqKMT0MVsu6iwx2gYx1UG8l/sEaWxnIviAjIF7UM2nROd7VMugUcNjRtecNw
 Nuy1gcQDyPVMM8/7a3i20YqQGConC4vlE/+h3VDfUCQT3/vo8cL0Pcf+GmhYaG3+6J
 rGTWzJwhr0Jj/C8QBieDXc/1x6tysLI1L3qYTrmU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190725144326eucas1p201dfa63ff1d2649b8728aa007337f8ad~0rZBbr-nD1638016380eucas1p2Z;
 Thu, 25 Jul 2019 14:43:26 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 40.51.04325.D00C93D5; Thu, 25
 Jul 2019 15:43:25 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff~0rZAewaCl0145701457eucas1p1D;
 Thu, 25 Jul 2019 14:43:25 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190725144324eusmtrp109079162b86d53b8d95e222c3caf0023~0rZAQewzX0724307243eusmtrp1_;
 Thu, 25 Jul 2019 14:43:24 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-66-5d39c00d8d86
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 6A.56.04140.C00C93D5; Thu, 25
 Jul 2019 15:43:24 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190725144324eusmtip1c1767b422b17e551cd7850ba8e98f062~0rY-gYVCH0174901749eusmtip1g;
 Thu, 25 Jul 2019 14:43:24 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v4 1/5] devfreq: exynos-bus: correct clock enable sequence
Date: Thu, 25 Jul 2019 16:42:56 +0200
Message-Id: <20190725144300.25014-2-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHKsWRmVeSWpSXmKPExsWy7djPc7q8ByxjDU4vMrXYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlbHxxXa2ggmiFXsPLWJsYJwg2MXIySEh
 YCKxfMlTli5GLg4hgRWMEq/6T7NDOF8YJebuvAaV+cwo8XD2ayaYltetp5hBbCGB5YwSd17k
 wXUs3XeOHSTBJqAqsWXGSzBbREBZYvK96cwgRcwCP1kkNlzeCJYQFvCSaDy+A2gFBwcLUMOG
 Oa4gYV4BF4mdS54yQyyTl+jcsZsFxOYUcJX427iWEaJGUOLkzCdgcWagmuats8HmSwh8ZJf4
 tesWI0Szi8Sjn2dZIGxhiVfHt7BD2DISpyf3QMXLJZ4u7GOHaG5hlHjQ/hEqYS1x+PhFVpDj
 mAU0Jdbv0ocIO0qcOHEELCwhwCdx460gxA18EpO2gfwIEuaV6GgTgqjWlZj3/wwrhC0t0fV/
 HZTtIXG++xLLBEbFWUi+mYXkm1kIexcwMq9iFE8tLc5NTy02zkst1ytOzC0uzUvXS87P3cQI
 THWn/x3/uoNx35+kQ4wCHIxKPLwaqyxjhVgTy4orcw8xSnAwK4nwbt0BFOJNSaysSi3Kjy8q
 zUktPsQozcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp1cC4TsE+UlU8r2jec/bt/qpVE29d
 qn82L9fmbdrW9KYO6w/22+5NaJsc49i7u/GedpLOjENX4lV/1/C9mRyTc+iqyKpy6YsfBCJu
 Hppk/65e7d3UjX3Jpr83/Nm63fHJ9ua5xSqqO/bNKWLa7LGJydtEOmSCQ8LRbJ6wXG0j9bPX
 NsposbwyLjmpxFKckWioxVxUnAgAjJMpYnEDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xu7o8ByxjDY5eNbDYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7HxxXa2ggmiFXsPLWJsYJwg2MXIySEhYCLxuvUUcxcjF4eQwFJGiX8z
 e9kgEtISjadXM0HYwhJ/rnWxQRR9YpRYO+UBI0iCTUBVYsuMl+wgtoiAssTke9PBJjELdLJK
 rHhyBGySsICXROPxHSxdjBwcLEANG+a4goR5BVwkdi55ygyxQF6ic8duFhCbU8BV4m/jWrD5
 QkA1jf3HGCHqBSVOznwCVsMMVN+8dTbzBEaBWUhSs5CkFjAyrWIUSS0tzk3PLTbSK07MLS7N
 S9dLzs/dxAiMym3Hfm7Zwdj1LvgQowAHoxIP74XllrFCrIllxZW5hxglOJiVRHi37gAK8aYk
 VlalFuXHF5XmpBYfYjQF+mEis5Rocj4wYeSVxBuaGppbWBqaG5sbm1koifN2CByMERJITyxJ
 zU5NLUgtgulj4uCUamC8PiHy4Od7+d/TC6dXaDfUcM85uenf/9iPXn9Z10zaFzWtpzhE+Ef3
 7FqVnVeKT/6cs/Cg3sZfa4KKeTUWpp6uYW/WqP9w9OFdGZttJhtXyCiX/dDQOR5nxSEXvCiy
 o3JG15srilOaVrfdmO1hlnRwy9n9unPSGz8wligenzAlWdEgtVfexniDEktxRqKhFnNRcSIA
 McT9bOACAAA=
X-CMS-MailID: 20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff
X-Msg-Generator: CA
X-RootMTR: 20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff
References: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
 <CGME20190725144325eucas1p1463ecde90f9c93cb73d3c54c7cf3f1ff@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074331_355684_15004998 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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
after exynos_bus_parent_parse_of() and change in error handling.
Similar change is needed in exynos_bus_exit() where clock should be
disabled before regulators.

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
Changes:
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
