Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C15B5751A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 16:45:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+IIu0NdsoABZmQKn47GFLYzAzvE2CM93DvF26Wz+Vc=; b=Oq7dU6XeX98IRb
	LRrtcO9cpjFzrQgT4MxbO8R3pASXSfYD0UZLVU1VsT7NQCXQ5ZMzSoamUkeJDkFoVfns9cM1U6xch
	CISJ7HiaCW4b458rplYGcGKE49+v1BLIb5edAv/tdkc7CPGZruEc6AOooq2Kb5dc5Kjv/uGnBoJA1
	ez2fTrVNivkN2eZcU0QvWMWg5hHVR/+Lwb3Dvz3LxO71YkztAXpAfM7pGlWLVhRpmhSeVMoxproM7
	ll4lrCw80xCnrCflnU4yrVByr/LJLhk0V+xlAcuRs8oRonBpSM2hK2u6T7wCAz3S4ezrqb0mjb+np
	7n8cfIqnvyfqLAwADKUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqezX-0004jC-6U; Thu, 25 Jul 2019 14:45:11 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqexv-0003hr-5S
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 14:43:33 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190725144329euoutp013b9ddcb12a76340fb0f08c0e1dd5c4b8~0rZE6YwcT2885828858euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 14:43:29 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190725144329euoutp013b9ddcb12a76340fb0f08c0e1dd5c4b8~0rZE6YwcT2885828858euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1564065809;
 bh=Ez/2lzRMCN6NYZ3shai8lT9fBiOe6bECqNjf1prjnCA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sTEG5QgvwTIn1g0GOSty/TacUPIcbv3PObP1o+vt6wn93gOiZbY+5MuHIOry8CtSm
 DDaMQ2eOfg+45eA2wISzUo3sPVWIN4pVThtuNOCkjZXoQERvb7KKAB7e0gM/yLpvQy
 96Aco2O1r3epLY5i14uy4EB0jXpBtLiLWEaKCqHg=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190725144329eucas1p163aba4ebd10cc83e128eed6d203b7179~0rZEJYqdz1363913639eucas1p1n;
 Thu, 25 Jul 2019 14:43:29 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DF.CA.04377.010C93D5; Thu, 25
 Jul 2019 15:43:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190725144328eucas1p1e16c826c18c79af8f9c7283a896266a6~0rZDanIGf0147401474eucas1p1F;
 Thu, 25 Jul 2019 14:43:28 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190725144328eusmtrp1a5fc98181a4d56eaceea38f4e1307752~0rZDMah3m0724307243eusmtrp1I;
 Thu, 25 Jul 2019 14:43:28 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-9c-5d39c010631d
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 32.3E.04146.F00C93D5; Thu, 25
 Jul 2019 15:43:27 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190725144327eusmtip121f6b8fce50ae8e3f4098bf36862baac~0rZCZ9l5S0146301463eusmtip1n;
 Thu, 25 Jul 2019 14:43:27 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v4 5/5] devfreq: exynos-bus: remove exynos_bus_passive_target()
Date: Thu, 25 Jul 2019 16:43:00 +0200
Message-Id: <20190725144300.25014-6-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrDKsWRmVeSWpSXmKPExsWy7djPc7oCByxjDR591LHYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB7FZZOSmpNZllqkb5fAlTF9nn/Bd8GKq2fKGhg/8HUxcnJICJhI
 fJo3l7GLkYtDSGAFo8Su11PYIZwvjBIdD46yQjifGSV+XlvECNPy9N1NqJbljBL3js5FaJm3
 9iwLSBWbgKrElhkv2UFsEQFlicn3pjODFDEL/GSR2HB5I1hCWCBQ4u2292ANLEANxy/+ZgKx
 eQVcJD583Qi1Tl6ic8dusBpOAVeJv41rGSFqBCVOznwCFmcGqmneOpsZov4tu8SyKWkQtotE
 29o2VghbWOLV8S3sELaMxOnJPSwQdrnE04V9YB9ICLQwSjxo/wiVsJY4fPwiUDMH0AJNifW7
 9EFMCQFHidN7mCFMPokbbwUhLuCTmLRtOlSYV6KjTQhihq7EvP9noA6Qluj6vw7K9pC4/a+V
 aQKj4iwkv8xC8ssshLULGJlXMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBKa50/+Of9nB
 uOtP0iFGAQ5GJR5ejVWWsUKsiWXFlbmHGCU4mJVEeLfuAArxpiRWVqUW5ccXleakFh9ilOZg
 URLnrWZ4EC0kkJ5YkpqdmlqQWgSTZeLglGpgTJD7+EPD4O66CLlHj5/el//A+ujBTS7B9Q9z
 pc4dnONz25nb5n9G+Buj49IZB1iCKh7P/mT+6ITQHl/DUDdDWfO4Bf78XcsrT4ie3V62wfDM
 h4jivxcc3Ti3ij/XU01da640fyejT3rX5IgD3De2Ji49n/+44njWnUqeJJn5rtfWnzm81SXj
 lhJLcUaioRZzUXEiAAK7CRFvAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrNIsWRmVeSWpSXmKPExsVy+t/xu7r8ByxjDfbuMLfYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5eglzF9nn/Bd8GKq2fKGhg/8HUxcnJICJhIPH13kxHEFhJYyihx54g5RFxa
 ovH0aiYIW1jiz7Uuti5GLqCaT4wSm6f9AmtgE1CV2DLjJTuILSKgLDH53nRmkCJmgU5WiRVP
 jrCBJIQF/CU2XjkLNokFqOH4xd9gNq+Ai8SHrxsZITbIS3Tu2M0CYnMKuEr8bVwLdZGLRGP/
 MUaIekGJkzOfgNUwA9U3b53NPIFRYBaS1CwkqQWMTKsYRVJLi3PTc4sN9YoTc4tL89L1kvNz
 NzECI3LbsZ+bdzBe2hh8iFGAg1GJh/fCcstYIdbEsuLK3EOMEhzMSiK8W3cAhXhTEiurUovy
 44tKc1KLDzGaAj0xkVlKNDkfmCzySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphak
 FsH0MXFwSjUwhhV98FsWeuBalaGP+JXD5jenLe04GPzQ+OP95j+3UzWt/6RPfsT/Pm/6x6R1
 yyMeOs289/7Hm8i9VU3W6wQyV50+lPe9/tbmXVfPc19+FrOWc9/+5b8if/23nv6YOe5tkHSH
 eFLVZQc9ThGtL7wHzsm9qnW4YR75Y8ODtyxPGS/dCkjunTH30yUlluKMREMt5qLiRABvQ0sS
 3gIAAA==
X-CMS-MailID: 20190725144328eucas1p1e16c826c18c79af8f9c7283a896266a6
X-Msg-Generator: CA
X-RootMTR: 20190725144328eucas1p1e16c826c18c79af8f9c7283a896266a6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190725144328eucas1p1e16c826c18c79af8f9c7283a896266a6
References: <20190725144300.25014-1-k.konieczny@partner.samsung.com>
 <CGME20190725144328eucas1p1e16c826c18c79af8f9c7283a896266a6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_074331_412956_1C7CFD5D 
X-CRM114-Status: GOOD (  18.02  )
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

Both functions exynos_bus_passive_target() and exynos_bus_target()
have the same code, so remove exynos_bus_passive_target(). In
exynos_bus_probe() replace it with exynos_bus_target.

Suggested-by: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
---
This patch is new to this series.

---
 drivers/devfreq/exynos-bus.c | 34 ++--------------------------------
 1 file changed, 2 insertions(+), 32 deletions(-)

diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
index ebb8f46312b6..2aeb6cc07960 100644
--- a/drivers/devfreq/exynos-bus.c
+++ b/drivers/devfreq/exynos-bus.c
@@ -91,7 +91,7 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
 }
 
 /*
- * Must necessary function for devfreq simple-ondemand governor
+ * devfreq function for both simple-ondemand and passive governor
  */
 static int exynos_bus_target(struct device *dev, unsigned long *freq, u32 flags)
 {
@@ -167,36 +167,6 @@ static void exynos_bus_exit(struct device *dev)
 	}
 }
 
-/*
- * Must necessary function for devfreq passive governor
- */
-static int exynos_bus_passive_target(struct device *dev, unsigned long *freq,
-					u32 flags)
-{
-	struct exynos_bus *bus = dev_get_drvdata(dev);
-	struct dev_pm_opp *new_opp;
-	int ret;
-
-	/* Get correct frequency for bus. */
-	new_opp = devfreq_recommended_opp(dev, freq, flags);
-	if (IS_ERR(new_opp)) {
-		dev_err(dev, "failed to get recommended opp instance\n");
-		return PTR_ERR(new_opp);
-	}
-
-	dev_pm_opp_put(new_opp);
-
-	/* Change the frequency according to new OPP level */
-	mutex_lock(&bus->lock);
-	ret = dev_pm_opp_set_rate(dev, *freq);
-	if (!ret)
-		bus->curr_freq = *freq;
-
-	mutex_unlock(&bus->lock);
-
-	return ret;
-}
-
 static void exynos_bus_passive_exit(struct device *dev)
 {
 	struct exynos_bus *bus = dev_get_drvdata(dev);
@@ -417,7 +387,7 @@ static int exynos_bus_probe(struct platform_device *pdev)
 	goto out;
 passive:
 	/* Initialize the struct profile and governor data for passive device */
-	profile->target = exynos_bus_passive_target;
+	profile->target = exynos_bus_target;
 	profile->exit = exynos_bus_passive_exit;
 
 	/* Get the instance of parent devfreq device */
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
