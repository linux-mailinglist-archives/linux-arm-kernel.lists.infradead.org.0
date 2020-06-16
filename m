Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBF91FAAE0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GaBw8tkLlRPvz1IBqJRzkaWn2529hzTlVZKAg9HmmAI=; b=WML9xrmI7zyKVor3dVzHF/xwD3
	aAcjmfq95AuLKIEJcpHt8OF1IdIIvrPABQC50OHxoVZW0JwmhbwPxchyG2p84hwQFQ8ZTfpa/Xy5z
	5JhmMpmakdjd+ZUt8yctFl881H2GDfNT8LS1hbxLOYx7VnWWdU4FDZz0D/2KA0aTAXJMiobmEojxJ
	rHNxbPvJ7+45LuTAIQ3gc8QuGjrwX5upFenZ7bgUjA8iLvhoXoVum/SUrGpZU1E7K+/7S5D+B4EkF
	Vl7qeN18jWUWdYrbvs8NRTtEi5Om6rete7sLoeOBUauohhjGeHp9fWhJAkhmDnQn6Ua+GLHbQa0Z1
	M5HQB7tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl6j2-0002gQ-4G; Tue, 16 Jun 2020 08:13:44 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl6iC-0002DF-EO
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:12:55 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200616081250euoutp01473ba78cc7337cb15c7248c6b9baf183~Y_AVanCSK1800818008euoutp01F
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 08:12:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200616081250euoutp01473ba78cc7337cb15c7248c6b9baf183~Y_AVanCSK1800818008euoutp01F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592295170;
 bh=ady02UUfORwMfN1tf+OdaIb6FsoUsoLGlR6OWH++qxs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RY3vHmS1IjtoqnRC/Q+wgH77l3XbIPBPje06SoJd3XoeqovQAFmxJ0gn89Qlch5V7
 l93S5PVwTFR79HJTVcNnzIExOB+f/GU9NdapHJ+Wyuk/ocXCvkbaWQhL3e3cWI52Y/
 QN9BWW7Cz+nDKbZSA2IfSzNd0jAuxSuFDDSSQ1jA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200616081249eucas1p1744d4db33ee08b7e9dcb42f388e25501~Y_AVMaevv2412324123eucas1p12;
 Tue, 16 Jun 2020 08:12:49 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 64.49.60679.10F78EE5; Tue, 16
 Jun 2020 09:12:49 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200616081249eucas1p2ad165b545f265bec88a06270d55fce76~Y_AU3Xf9_2000720007eucas1p2A;
 Tue, 16 Jun 2020 08:12:49 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200616081249eusmtrp1076cd1eed5d122b714828fa3df942678~Y_AU2y82_1314613146eusmtrp1p;
 Tue, 16 Jun 2020 08:12:49 +0000 (GMT)
X-AuditID: cbfec7f4-516ed9c00001ed07-db-5ee87f013edc
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E0.4A.07950.10F78EE5; Tue, 16
 Jun 2020 09:12:49 +0100 (BST)
Received: from AMDC2765.digital.local (unknown [106.120.51.73]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200616081249eusmtip24bf183b14f354795f5efd0fe7bc5e7fe~Y_AUX27pf0162901629eusmtip2f;
 Tue, 16 Jun 2020 08:12:48 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH 2/4] cpuidle: big.LITTLE: enable driver only on Peach-Pit/Pi
 Chromebooks
Date: Tue, 16 Jun 2020 10:12:28 +0200
Message-Id: <20200616081230.31198-3-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200616081230.31198-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupileLIzCtJLcpLzFFi42LZduznOV3G+hdxBjcPGllsnLGe1WLeZ1mL
 8+c3sFtsenyN1eJz7xFGixnn9zFZvPn9gt1iYVMLu8XaI3fZHTg91sxbw+ixaVUnm8eda3vY
 PDYvqffo27KK0ePzJrkAtigum5TUnMyy1CJ9uwSujEMLXzEVNHBWfG7mbmA8z97FyMkhIWAi
 8X3nCtYuRi4OIYEVjBK9EzdAOV8YJbZvWsgM4XxmlDj5fR8TTMve6Z0sEInljBKTf31mgms5
 9/8qM0gVm4ChRNfbLjYQW0QgXeLe3yXsIEXMAhOYJN4097OCJIQFoiROHZ4BZrMIqErM2XAY
 rJlXwFZiaUsXM8Q6eYnVGw6A2ZwCdhLLNj8H2yYh8JtNYuG392wQRS4S/1e8grpPWOLV8S1Q
 78lInJ7cwwLR0Mwo8fDcWnYIp4dR4nLTDEaIKmuJO+d+AU3iALpPU2L9Ln2IsKPE7C/TmEDC
 EgJ8EjfeCoKEmYHMSdumM0OEeSU62oQgqtUkZh1fB7f24IVLUPd7SPRuuQINoYmMEt173rFM
 YJSfhbBsASPjKkbx1NLi3PTUYqO81HK94sTc4tK8dL3k/NxNjMAUcvrf8S87GHf9STrEKMDB
 qMTDGxH0PE6INbGsuDL3EKMEB7OSCK/T2dNxQrwpiZVVqUX58UWlOanFhxilOViUxHmNF72M
 FRJITyxJzU5NLUgtgskycXBKNTBqdhYpaex7vuHqwjlJq1YXpJ8XdLEIT2hN/6NvVnjkw5Lq
 e9PeWe2dG6rT7irNfkjP2+5Ymt31dcmTDftTaxXYRexL1bh9w/TMzx44Y+W00jcg1Wb6S/XJ
 J6t49rR51m+cyfzdu3+d2kHJYK6EO7O0+j4UpXq7f+Fz2vm5luPljkuR3/LsXyixFGckGmox
 FxUnAgDZ2r5dHQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrBLMWRmVeSWpSXmKPExsVy+t/xe7qM9S/iDA7cVrDYOGM9q8W8z7IW
 589vYLfY9Pgaq8Xn3iOMFjPO72OyePP7BbvFwqYWdou1R+6yO3B6rJm3htFj06pONo871/aw
 eWxeUu/Rt2UVo8fnTXIBbFF6NkX5pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2
 NimpOZllqUX6dgl6GYcWvmIqaOCs+NzM3cB4nr2LkZNDQsBEYu/0ThYQW0hgKaPE6l08EHEZ
 iZPTGlghbGGJP9e62CBqPjFKzH2sCmKzCRhKdL2FiIsIZEosPHcTaCYXB7PAFCaJHe92giWE
 BSIk1p1fBjaIRUBVYs6Gw8wgNq+ArcTSli5miAXyEqs3HACzOQXsJJZtfs4EscxWYtnZi8wT
 GPkWMDKsYhRJLS3OTc8tNtIrTswtLs1L10vOz93ECAzlbcd+btnB2PUu+BCjAAejEg9vRNDz
 OCHWxLLiytxDjBIczEoivE5nT8cJ8aYkVlalFuXHF5XmpBYfYjQFOmois5Rocj4wzvJK4g1N
 Dc0tLA3Njc2NzSyUxHk7BA7GCAmkJ5akZqemFqQWwfQxcXBKNTAerM/vmsn2lztp6eoOhzkM
 TWEOsUW/5cz2zL/ZvXQdV/PsydWOyk/CrTKCijWrJrrYbjs3S5pv7Ya6PNPllzX3vJrivvaU
 3IMWjgPRgvderHa0O3X0aEbHt/Rnb5iszf9aaux9NCF61t+uF01cC80d07se3BGVOmH3vObq
 7SlblAIPiN661TFJiaU4I9FQi7moOBEA3JD7ZHsCAAA=
X-CMS-MailID: 20200616081249eucas1p2ad165b545f265bec88a06270d55fce76
X-Msg-Generator: CA
X-RootMTR: 20200616081249eucas1p2ad165b545f265bec88a06270d55fce76
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200616081249eucas1p2ad165b545f265bec88a06270d55fce76
References: <20200616081230.31198-1-m.szyprowski@samsung.com>
 <CGME20200616081249eucas1p2ad165b545f265bec88a06270d55fce76@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_011252_815509_3FD5677A 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Lukasz Luba <lukasz.luba@arm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver always worked properly only on the Exynos 5420/5800 based
Chromebooks (Peach-Pit/Pi), so change the required compatible string to
the 'google,peach', to avoid enabling it on the other Exynos 542x/5800
boards, which hangs in such case. The main difference between Peach-Pit/Pi
and other Exynos 542x/5800 boards is the firmware - Peach platform doesn't
use secure firmware at all.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 drivers/cpuidle/cpuidle-big_little.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/cpuidle/cpuidle-big_little.c b/drivers/cpuidle/cpuidle-big_little.c
index 7f8ddc04342d..abe51185f243 100644
--- a/drivers/cpuidle/cpuidle-big_little.c
+++ b/drivers/cpuidle/cpuidle-big_little.c
@@ -155,8 +155,7 @@ static int __init bl_idle_driver_init(struct cpuidle_driver *drv, int part_id)
 
 static const struct of_device_id compatible_machine_match[] = {
 	{ .compatible = "arm,vexpress,v2p-ca15_a7" },
-	{ .compatible = "samsung,exynos5420" },
-	{ .compatible = "samsung,exynos5800" },
+	{ .compatible = "google,peach" },
 	{},
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
