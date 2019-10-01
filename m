Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05FFFC3461
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=3KNgIeFa7FSbRLFE5dBYin4Sd3ovv1GKWrwJtTbQljc=; b=Gp
	n7/6JwC1FafIZT+g7hFVdg3TXnBIb5R7JD1H5nrP0G4Elhes/0QBwCpgA9tSnZCt8VcXiB1JS6Ct1
	SBNvY5Lz3rsedpgz9bt+jETJ5zCL67yhaCjEFhAiWTkimeuE6+CMggFWcs/ANCuAMT1wBvPJxUdWo
	21AQ6f+KO81QcmAL2YzsfaeZAjOxxiqd/6+1+Hka0XhzodhibMJduF7nvMy5enYjiCvplMiyPk3Hl
	Mn9yVSaXGwPeA51pfcLmwcskJt7hN94Uml1AaadFv23jD3fOtQEPCIr+3mxHkId3BAX8ypQydaykv
	zvw4w0VlUHyU/dqFn1YWyxxbFfW8/lMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHOa-0005xH-2M; Tue, 01 Oct 2019 12:36:48 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHOS-0005vp-HJ
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:36:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191001123637euoutp01d483c3c115f47bc4d8170654f83722ea~JhhuE_IsJ0998109981euoutp01-
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 12:36:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191001123637euoutp01d483c3c115f47bc4d8170654f83722ea~JhhuE_IsJ0998109981euoutp01-
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569933397;
 bh=2CZIhLH33tEifh3ALDvkkJLDMm/NCNj9OqRYGF4YRHk=;
 h=From:To:Cc:Subject:Date:References:From;
 b=ckSan4VK7cEsHAvZuvv36CifaRibVleBDm0C3HRMPlZv00wCdmxZNb1E+6ZpolXSv
 7nyC2fKOHOwUXN9Ugx+TmwzTmLR3F+skJ0GH214zzNSuGMH5TvsmfALu8ALrOkI96E
 w6GNEKKd8eLCGr0Js4jo+2TfrYVFgLiRN9mDpmoE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191001123637eucas1p1a5a031dcebe72e27a5623cf58ee42ea4~Jhhtzy6gb1358913589eucas1p1C;
 Tue,  1 Oct 2019 12:36:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 28.19.04309.558439D5; Tue,  1
 Oct 2019 13:36:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5~JhhtfxpQU2028820288eucas1p27;
 Tue,  1 Oct 2019 12:36:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191001123637eusmtrp144f2a02a099c64eb7f5304a4055ad78f~JhhtfBv3U0398103981eusmtrp1h;
 Tue,  1 Oct 2019 12:36:37 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-06-5d9348554c06
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id CC.33.04117.558439D5; Tue,  1
 Oct 2019 13:36:37 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191001123636eusmtip2b2bcedc6b7a6d9d900c1886ae301bccc~Jhhs5dkDU0870908709eusmtip2d;
 Tue,  1 Oct 2019 12:36:36 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v3 RESEND 1/3] ASoC: samsung: arndale: Simplify DAI link
 initialization
Date: Tue,  1 Oct 2019 14:36:23 +0200
Message-Id: <20191001123625.19370-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRTudx+71+HiOhV/rbIaSQ/IF2UXtNAQvD3+kCDKZOktLyq5abs+
 siDNWJmPtZSaicEITZmYOkVSydl8LDK5CfOFiJUSJJngRPKR5na1/vvO953vfIfDIVF5Ga4g
 UzWZnFbDpiklUqytf1k4dokpVwV/+n6AdgzZELq5ohGnn32dkdAOnQXQgtBE0EuOQoS2TI/g
 dIXQhdANvZME7Zy34nTPz0c4PVS3iER6Mk3OAgnTXjlJMBbzYwnTUp3HGKs2AKNvNQPGafGP
 Ja5KI5K4tNRsTht0OlGa0qFrITJ0vrcHBwUsH4x4FQEPElLH4ZihBC8CUlJO1QHYZ23dKhYB
 FOx6VCycAOpWOiXbFuNoMyIKtQDWLy+Bf5aBj+uoq0tChcDSPj1wYR/qEJyqKHDPRal2BH4b
 nsJcgjcVBy0fTJujSBKjAmD+E7dXRoXDggk7ENP2wfqmbvcakCom4MK7WUIUomGN/hcuYm84
 a2/d4vfAgfISTDQ8ALCkc4IQCwOAU3bT1thw2GMfwl3JKHUENnYEiXQU7Kl+j7poSO2EY3Pu
 K6GbsKzNuEXLYOFDudh9EK6ajYiIFbB4ZgMTMQOnC7vc15JTKtg72okYgH/l/ywTAGbgx2Xx
 6mSOD9VwOYE8q+azNMmBN9LVFrD5KQPr9sW3oGPtug1QJFB6ygw/nqrkOJvN56ptAJKo0kcW
 sVamksuS2Nw7nDY9QZuVxvE2sJvElH6yuzu+xMupZDaTu8lxGZx2W0VID0U+2D/PelQ6VgXm
 d2P8m7AY2wnTRM3zFLz9yquVbgTBNmw56tUz45qSvMtz1wRFWHn+Z8VF75jw3HMJoQHRp4jE
 w82l49HKqKI5r07rvCPyfN9rhfcf68AF8GLBEB83/vL+yaTgW6aq4fUutnbXvZU2c46vc0f6
 3tizDWT/5t7tSoxPYUOOolqe/QvfcePkJQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrKLMWRmVeSWpSXmKPExsVy+t/xe7qhHpNjDW7O4rC4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF+fMb2C2+Xelgstj0+BqrxYzz+5gs1h65y27x+f1+VovDb9pZLS6u+MLk
 wOOx4XMTm8fOWXfZPTat6mTz2Lyk3mP6nP+MHn1bVjF6fN4kF8AepWdTlF9akqqQkV9cYqsU
 bWhhpGdoaaFnZGKpZ2hsHmtlZKqkb2eTkpqTWZZapG+XoJexq3Uze0GraMXZs+dZGhivCXYx
 cnJICJhITL++kQnEFhJYyijx/XBBFyMHUFxKYn6LEkSJsMSfa11sXYxcQCWfGCUWvtjCDJJg
 EzCU6D3axwhiiwhoSnTMu80KUsQscJhJYnHHQRaQhLBAuMTNhxOZQIayCKhKNPSD9fIKWEs0
 3T7OCLFAXmL1hgPMExh5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAgM4m3Hfm7Zwdj1
 LvgQowAHoxIPr8XzibFCrIllxZW5hxglOJiVRHht/kyKFeJNSaysSi3Kjy8qzUktPsRoCrR7
 IrOUaHI+MMLySuINTQ3NLSwNzY3Njc0slMR5OwQOxggJpCeWpGanphakFsH0MXFwSjUwcr7S
 DHqiE7VtuWcq25sN79b8yFyXqnh774ZFAs5t6d0detbROaGLFprdkp/jyDRR0FCs65isbmKr
 ZvqLC/7ssXd0j7kfOl33ZEGB3byCa/Ovmp+qjrXx2S7PdnD1akHGk0GmdzXuec3lYnvm+EF8
 bV3AlldZB8/f/vfq5lz1FcuVZVndHqi8U2Ipzkg01GIuKk4EANvBA+t4AgAA
X-CMS-MailID: 20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5
X-Msg-Generator: CA
X-RootMTR: 20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5
References: <CGME20191001123637eucas1p25c7551d4c967e4a2855f6c8d3b096ff5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_053640_779321_5F3E9389 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 ckeepax@opensource.cirrus.com, b.zolnierkie@samsung.com, sbkim73@samsung.com,
 patches@opensource.cirrus.com, lgirdwood@gmail.com,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is only one DAI link so we can drop an unnecessary loop statement.
Use card->dai_link in place of direct static arndale_rt5631_dai[] array
dereference as a prerequisite for adding support for other CODECs.
Unnecessary assignment of dai_link->codecs->name to NULL is removed.

Reviewed-by: Charles Keepax <ckeepax@opensource.cirrus.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1:
 - rebased due to reordering patches in the series
---
 sound/soc/samsung/arndale_rt5631.c | 42 +++++++++++++-----------------
 1 file changed, 18 insertions(+), 24 deletions(-)

diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale_rt5631.c
index fd8c6642fb0d..004c84fafad9 100644
--- a/sound/soc/samsung/arndale_rt5631.c
+++ b/sound/soc/samsung/arndale_rt5631.c
@@ -88,36 +88,30 @@ static void arndale_put_of_nodes(struct snd_soc_card *card)
 
 static int arndale_audio_probe(struct platform_device *pdev)
 {
-	int n, ret;
 	struct device_node *np = pdev->dev.of_node;
 	struct snd_soc_card *card = &arndale_rt5631;
+	struct snd_soc_dai_link *dai_link;
+	int ret;
 
 	card->dev = &pdev->dev;
+	dai_link = card->dai_link;
+
+	dai_link->cpus->of_node = of_parse_phandle(np, "samsung,audio-cpu", 0);
+	if (!dai_link->cpus->of_node) {
+		dev_err(&pdev->dev,
+			"Property 'samsung,audio-cpu' missing or invalid\n");
+		return -EINVAL;
+	}
 
-	for (n = 0; np && n < ARRAY_SIZE(arndale_rt5631_dai); n++) {
-		if (!arndale_rt5631_dai[n].cpus->dai_name) {
-			arndale_rt5631_dai[n].cpus->of_node = of_parse_phandle(np,
-					"samsung,audio-cpu", n);
-
-			if (!arndale_rt5631_dai[n].cpus->of_node) {
-				dev_err(&pdev->dev,
-				"Property 'samsung,audio-cpu' missing or invalid\n");
-				return -EINVAL;
-			}
-		}
-		if (!arndale_rt5631_dai[n].platforms->name)
-			arndale_rt5631_dai[n].platforms->of_node =
-					arndale_rt5631_dai[n].cpus->of_node;
-
-		arndale_rt5631_dai[n].codecs->name = NULL;
-		arndale_rt5631_dai[n].codecs->of_node = of_parse_phandle(np,
-					"samsung,audio-codec", n);
-		if (!arndale_rt5631_dai[0].codecs->of_node) {
-			dev_err(&pdev->dev,
+	if (!dai_link->platforms->name)
+		dai_link->platforms->of_node = dai_link->cpus->of_node;
+
+	dai_link->codecs->of_node = of_parse_phandle(np, "samsung,audio-codec", 0);
+	if (!dai_link->codecs->of_node) {
+		dev_err(&pdev->dev,
 			"Property 'samsung,audio-codec' missing or invalid\n");
-			ret = -EINVAL;
-			goto err_put_of_nodes;
-		}
+		ret = -EINVAL;
+		goto err_put_of_nodes;
 	}
 
 	ret = devm_snd_soc_register_card(card->dev, card);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
