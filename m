Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F70B9042
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:04:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3KNgIeFa7FSbRLFE5dBYin4Sd3ovv1GKWrwJtTbQljc=; b=FTUxKoDV4XbVAAjLAwZOjaN7ih
	tnbRVzZVfGYuw7b0GD29oQFVtptOd9fzWiZAScxnvZrHO9sptEDUlyhSxxmj2mTZu3vIIpm72ei1b
	sAiI3nyIRzp0kuh2CMxgrY7auKNdVOc2RdZ9s590JwPQk3t72tcrHxedL2y3i4chZmiLoEX058vOm
	BXn7SSOZfgZ+17L6qiOHxExB7RLbVoC3PASle74Nh7kf+kiP9NsDowTkI+aHo7FAvPYywh492vB6n
	LCZI8EJVLL3LcPcVfCd6lOVy7vIACmOu9VjPOvzOPPPokuacNriwvNtC456B5wa0i/t3nOXJjHNtT
	CDzKb34Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIaB-0004Lf-9z; Fri, 20 Sep 2019 13:04:19 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIZG-0003Gg-5d
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:03:23 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130320euoutp02fb3e6502f6488ae302ba04d4fe46e84d~GJy5zRuob2404924049euoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:03:20 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190920130320euoutp02fb3e6502f6488ae302ba04d4fe46e84d~GJy5zRuob2404924049euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984600;
 bh=2CZIhLH33tEifh3ALDvkkJLDMm/NCNj9OqRYGF4YRHk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=QFOBsiPm9Oxb/dseMa2Tm0jwQzOHg/sxAcQ9QfZvxG6ZPgERcLSCpdD95HGdBwQZl
 NFTuRqs/6ggu/lfUmC0VlCH9jj6xt5Q5gRMWyvVogi8Cnto25Zap1h0LmQMWuDSadB
 3baezP7ErAKjO4g7/3x3Hj501ztojIH7v52Ff/G0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190920130319eucas1p2f2c54466421940a071da7c93405b4477~GJy4xcFp81580715807eucas1p2U;
 Fri, 20 Sep 2019 13:03:19 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 80.DB.04309.71EC48D5; Fri, 20
 Sep 2019 14:03:19 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190920130318eucas1p126cc8be60118ffbf1f332626dde1c05a~GJy39A3Km2903729037eucas1p1L;
 Fri, 20 Sep 2019 13:03:18 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190920130318eusmtrp27be8c090e90af22cfc22aaf9ecdf99bd~GJy38ZHrG1022710227eusmtrp28;
 Fri, 20 Sep 2019 13:03:18 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-e8-5d84ce171652
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 46.2B.04166.61EC48D5; Fri, 20
 Sep 2019 14:03:18 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130317eusmtip2dea228b66b0e249c407a03b71d7e9c6c~GJy3OJBHT1336913369eusmtip2z;
 Fri, 20 Sep 2019 13:03:17 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 05/10] ASoC: samsung: arndale: Simplify DAI link
 initialization
Date: Fri, 20 Sep 2019 15:02:14 +0200
Message-Id: <20190920130218.32690-6-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzH+z7PPfc8d3X2dJjvROwmpkTI9oShxvb8V5PZCtMjz7D86s6P
 ZJVxV5fETeS62UiGzoTzo1wr7RyXxM0SyoyW1hQxZ5qp5DzX+u/9/bzfr897++xLoOIWzJlI
 y8xhpZlMuoQv5PUObY4ddRqTJxxrnhdRE+MGhOpUt2NU9acFPjWh0AGqzjiGUWZzB05tTCgR
 Svd5EqPU5pcI1WacxSnLSj9GKV4YcWpg6RZGjbesIxF2dIelmE/3aWZxWqe9zae7Gm/QNbXb
 gC7v1gLaojt4Bj8vDE1m09PyWKlf2AVhql7RhWcrHK+Mjpp5RWByfykQEJA8Ds1bKrwUCAkx
 2QJg64IcsRpich3AzuXTnGEB8KtcgfwjmpQNPM5oBtD4o8mG7xBPSz+g1hSf9Id3B8uBVTuQ
 XnBOXYxZQyi5iEDV4JPdVfZkDJR/V+4CPPIQnHlkhQlCRIbA4seXuTY32NrxajciIEPh4nQD
 Yt0DSR0O378dxrhQJCx/VwU4bQ+/mbpxTrvA7b46G1ACYNnzGZx7qACcM9XbiBA4YBrHrM0o
 6Q3b9X7c+CT80v+GZx1D0g5OL+8eDN2Rlb01KDcWQeVNMZf2gFvaGtuFnOGdhW0ep2nY2fbb
 dq0KAMc0C6gKuGn+l9UDoAVObK4sI4WVBWSy+b4yJkOWm5niezErQwd2/s/IH9P6M6D/lWQA
 JAEk+0T1r+UJYozJkxVkGAAkUImDqDaoOEEsSmYKrrLSrERpbjorM4ADBE/iJCrcMx8nJlOY
 HPYSy2az0n8uQgici0Bl9Ep7ODO87b3We983KsvNhTYETI30FOafmCphVtUEtRHr8jGIHx/4
 c/OUj4d7yBFhwlBSmCEG8w0PjLxmCjsnr+6J9iJd9f5UPu6qqVx62KjVrFqke9NmjFUDK1Fr
 D3xiPZX39J5nEyuW/BzjguMFXv1lEQL368ErOnmVWcKTpTL+h1GpjPkLY/srmTsDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4PV2xcy2xBm9vKlpcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 OPymndXi4oovTA58Hhs+N7F57Jx1l91j06pONo/NS+o9ps/5z+jRt2UVo8fnTXIB7FF6NkX5
 pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GbtaN7MXtIpW
 nD17nqWB8ZpgFyMnh4SAicSyjkUsXYxcHEICSxkl7m5sZOti5ABKSEnMb1GCqBGW+HOtiw2i
 5hOjxJ+1p5hBEmwChhK9R/sYQWwRAU2Jjnm3WUGKmAW+M0kceHwSrEhYIEhi7tZtTCA2i4Cq
 xO3FN5lBFvAKWEs0rSyEWCAvsXrDAbByTgEbiZc3FoGVCwGVnN63l30CI98CRoZVjCKppcW5
 6bnFhnrFibnFpXnpesn5uZsYgbGw7djPzTsYL20MPsQowMGoxMO74ERLrBBrYllxZe4hRgkO
 ZiUR3jmmTbFCvCmJlVWpRfnxRaU5qcWHGE2BbprILCWanA+M07ySeENTQ3MLS0NzY3NjMwsl
 cd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYwCi7WmHG5gK+jgFXDetDJtls3/q2Jt3Hln0vRZ
 t0vMybyeKiWtuS7VUu6wl4TqEoFjky/JMOfbpPrtaIuSimMsrJub8sHu3mrztH9h/3j3XL6j
 Z5kWPttZNkwpvy2juXTh+/NHJLfWOnrpT0oqnB/xgf2l1mUV65W59ot1BG9tdvASCfe9pMRS
 nJFoqMVcVJwIAGErJnKbAgAA
X-CMS-MailID: 20190920130318eucas1p126cc8be60118ffbf1f332626dde1c05a
X-Msg-Generator: CA
X-RootMTR: 20190920130318eucas1p126cc8be60118ffbf1f332626dde1c05a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130318eucas1p126cc8be60118ffbf1f332626dde1c05a
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130318eucas1p126cc8be60118ffbf1f332626dde1c05a@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060322_378852_2D9D6F49 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, robh+dt@kernel.org,
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
