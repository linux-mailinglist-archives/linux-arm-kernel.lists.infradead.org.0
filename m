Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA58EC86CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 12:57:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=FshCTDj/GI2oI1ooBQj360y1OnZsJuicbmaapGPo8Jw=; b=r2
	/ZnrDyYuwZLDaUtbXrD6DOdUyxVRinXVajaAomUQi0M4CWldZwgckKRVXagFZLamUGfXng3VoSjrW
	uRPSBQH7oX0WrL/5dhiemTAbefMP9+99abt2B2bYwJRaE5O+Isv6HOGZG0KRWVFM7XN/eXTPpsRKz
	7oC3dSZnXA9mhMxpeOBTdjRTcNGBMdfj4kKntXiznXQjD8tOzXb7XdYwFljWYpDMQJRV9l0wNI0E3
	jBi2VjA2e9re3FAp3B3JTTvaVgsSBlnKhJkZ5o1xFAxlo4evyRnCRzJRnOC4Ff17fIFp3i//fajVE
	twfeNJEg1TdNCqLQuroxy2Q0QVsqc54Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcJs-00020r-Vo; Wed, 02 Oct 2019 10:57:21 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcJk-000205-S6
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 10:57:14 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191002105705euoutp02169ef5d7fbf5abab7822fb1b9b6bf685~Jz0GdJ7JX2178521785euoutp02B
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  2 Oct 2019 10:57:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191002105705euoutp02169ef5d7fbf5abab7822fb1b9b6bf685~Jz0GdJ7JX2178521785euoutp02B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1570013825;
 bh=TFmVNOfrv+yK5zpukqFg/VF/zWtyEJHig9qIFw+ejZU=;
 h=From:To:Cc:Subject:Date:References:From;
 b=pH/hcB1e4qA2LLqasiLhqGnj6pwvJZetAcDj9PXPC5TXagklUF7LJHroGSryDoe6c
 4U9XsRHhsGchAp3zDPLwjTqFL7csSunJJlQNiLrsjOsHQUjYV/WNiT4L6VelFrBvfa
 NtpQoZbCkbrFi01dfKl5HdRHwh7+s/DFNqP+6Ems=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191002105705eucas1p1cc956a6b544e69b912bdd4913150bd64~Jz0GRd0OA1562815628eucas1p1R;
 Wed,  2 Oct 2019 10:57:05 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 86.86.04309.182849D5; Wed,  2
 Oct 2019 11:57:05 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20191002105705eucas1p1561d6fb9c9b7355047868e589f6a25c8~Jz0F6Fq1G1561615616eucas1p1J;
 Wed,  2 Oct 2019 10:57:05 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191002105705eusmtrp1ad55a810643357f673f36ea8cd3f8e49~Jz0F5PqA10038800388eusmtrp1W;
 Wed,  2 Oct 2019 10:57:05 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-ba-5d9482815aa9
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4B.15.04117.182849D5; Wed,  2
 Oct 2019 11:57:05 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191002105704eusmtip2b813a5bb473d4ee57442ca68cef4d2ad~Jz0FT-Nxg0110001100eusmtip2B;
 Wed,  2 Oct 2019 10:57:04 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v4 1/3] ASoC: samsung: arndale: Simplify DAI link
 initialization
Date: Wed,  2 Oct 2019 12:56:50 +0200
Message-Id: <20191002105652.24821-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprIKsWRmVeSWpSXmKPExsWy7djPc7qNTVNiDY5cV7S4cvEQk8XGGetZ
 LaY+fMJmcaV1E6PF+fMb2C2+Xelgstj0+BqrxYzz+5gs1h65y27x+f1+VovDb9pZLS6u+MLk
 wOOx4XMTm8fOWXfZPTat6mTz2Lyk3mP6nP+MHn1bVjF6fN4kF8AexWWTkpqTWZZapG+XwJXx
 6McT1oK/ohUv/i1ha2DcL9TFyMkhIWAi8at1K3MXIxeHkMAKRolZHzcwQjhfGCX+HZzLAuF8
 ZpQ4NeUMI0zLlh0b2CASyxklVv+eygzXcrl3KQtIFZuAoUTv0T6wDhEBMYnbczqZQWxmgVNM
 Ek/e2HQxcnAICwRJLHltChJmEVCVaFv7FqyVV8Ba4mbPKahl8hKrNxwAmy8h0M0u0bfvARtE
 wkXi+uaPUEXCEq+Ob2GHsGUkTk/uYYFoaGaU6Nl9mx3CmcAocf/4AqgOa4nDxy+yglzBLKAp
 sX6XPkTYUWLH0l6wsIQAn8SNt4IQN/NJTNo2nRkizCvR0QYNOxWJ36umM0HYUhLdT/6zQNge
 Etv7W1hBbCGBWIm+6VdYJzDKzULYtYCRcRWjeGppcW56arFRXmq5XnFibnFpXrpecn7uJkZg
 Qjn97/iXHYy7/iQdYhTgYFTi4W0ImhwrxJpYVlyZe4hRgoNZSYTX5s+kWCHelMTKqtSi/Pii
 0pzU4kOM0hwsSuK81QwPooUE0hNLUrNTUwtSi2CyTBycUg2Mi469bdf/NfnAHq/5EV49XHtd
 gs+xK4i9WFfj9yZ/6oObk+ZpsKcyqSfJyFRe59t0b6mdWLDNd9kzXU3nbPnfz65PSSkSVn09
 k/X7qpTJSTNOWlT8rXkdvm3Lu2VLD28+Yqub0uRgqsTzLEb1m+XqByf3/N0Yzel/1cja/0+r
 wzedk5VtvImzlFiKMxINtZiLihMBmkKUYSQDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrGLMWRmVeSWpSXmKPExsVy+t/xe7qNTVNiDXp3cVhcuXiIyWLjjPWs
 FlMfPmGzuNK6idHi/PkN7BbfrnQwWWx6fI3VYsb5fUwWa4/cZbf4/H4/q8XhN+2sFhdXfGFy
 4PHY8LmJzWPnrLvsHptWdbJ5bF5S7zF9zn9Gj74tqxg9Pm+SC2CP0rMpyi8tSVXIyC8usVWK
 NrQw0jO0tNAzMrHUMzQ2j7UyMlXSt7NJSc3JLEst0rdL0Mt49OMJa8Ff0YoX/5awNTDuF+pi
 5OSQEDCR2LJjAxuILSSwlFHi5GvNLkYOoLiUxPwWJYgSYYk/17qASriASj4xSnz4+YMdJMEm
 YCjRe7SPEcQWERCTuD2nkxmkiFngGpPEplmPWUASwgIBEi1PlrCC2CwCqhJta9+CxXkFrCVu
 9pxihNggL7F6wwHmCYw8CxgZVjGKpJYW56bnFhvpFSfmFpfmpesl5+duYgSG8bZjP7fsYOx6
 F3yIUYCDUYmHtyFocqwQa2JZcWXuIUYJDmYlEV6bP5NihXhTEiurUovy44tKc1KLDzGaAi2f
 yCwlmpwPjLG8knhDU0NzC0tDc2NzYzMLJXHeDoGDMUIC6YklqdmpqQWpRTB9TBycUg2MUW/4
 NxR4z3F/f9orQ4HLVr+AQ92uLn/+xidWz4S4K/2kBX6qbQrYEq/Gayy0xPWRog+HsPt5UTbN
 WpF8jbXvUiw67ue9/bfwstuvma4Lsy+15x5cqv9tW2bfxWWMs/Ved9ipCBu8tnG7ov45KJPn
 2KomD5Og7+8FHt9ZI526uqZGs9Xi9zslluKMREMt5qLiRACtDIJreQIAAA==
X-CMS-MailID: 20191002105705eucas1p1561d6fb9c9b7355047868e589f6a25c8
X-Msg-Generator: CA
X-RootMTR: 20191002105705eucas1p1561d6fb9c9b7355047868e589f6a25c8
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191002105705eucas1p1561d6fb9c9b7355047868e589f6a25c8
References: <CGME20191002105705eucas1p1561d6fb9c9b7355047868e589f6a25c8@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_035713_042371_36185777 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alsa-devel@alsa-project.org, linux-samsung-soc@vger.kernel.org,
 ckeepax@opensource.cirrus.com, b.zolnierkie@samsung.com, sbkim73@samsung.com,
 patches@opensource.cirrus.com, lgirdwood@gmail.com, krzk@kernel.org,
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
Based on for-next branch from
git://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound

Changes since v2:
 - none.

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
