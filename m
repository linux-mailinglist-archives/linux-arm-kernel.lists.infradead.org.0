Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 755DDB61C8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:48:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vLELqkeKDBuaxL0YTy2tGV7uIRa5ZlpovXh4tPBUwlo=; b=aA7VAEk3lDDpjz2SPJemXM8gmf
	QGWQT1gdkHb+upp99bKItE3fjEw0wAfK0mdXTtR7X5LVae94jxJH9t0Gn5lPY46e2/6K5gAnxz+Dv
	H8FYHdSg5tNyrxarKkVZOlBgHOjj78Qs3SWmzvVFK5+ubDp1KwhcRojXlNT7ytD6AOH7PyCem6bJJ
	ilOnYIFbPr+1ZXk5tUpRgG/Po/Ahdyvm1nlyU4RstDgWuQ4OErA0RznLYKfANGk8kjKdNK3oP0jqF
	vyuzjcB3iiE8NZ9WTp4FIW2VK1yxfuhM9ONYIuvos5vE5Dt2Np8MIVOdaZJ7+Eh2zE/tJ7SaWTAGC
	aBPVJBZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXVa-00021f-Re; Wed, 18 Sep 2019 10:48:26 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXUN-0000hS-1U
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:47:12 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190918104703euoutp02966855a4c1da4fcd3e5d1a59052e46c3~FgpWFB-nt3146631466euoutp02E
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:47:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190918104703euoutp02966855a4c1da4fcd3e5d1a59052e46c3~FgpWFB-nt3146631466euoutp02E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568803623;
 bh=8JclOj5/ENjUUtbfHxdc3+nnNEUeqg8O48HbeczPPFc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Tk2fy+L86+of+jC1btwA1nhNJ0lKpf59+DPkRejSRo+N6zcTZK4sqFqT9WGY0yq6f
 Kt84COX1W4TWTsvrNZkooAoUOHjqxkICKK5vlg9aRKsskGyOGdHWMyYYT7kH0yZXou
 sG5woiZ6JHV7M8djMYdK/VAiZr74vvESJU4M9XcM=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190918104703eucas1p2e0b96105cc5e9aeace08a4903fdb2ea4~FgpVWSc0H2473924739eucas1p2Y;
 Wed, 18 Sep 2019 10:47:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 10.E3.04374.62B028D5; Wed, 18
 Sep 2019 11:47:02 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190918104702eucas1p213070d06c69c4836d15d071b1926e60d~FgpUdVvec2884428844eucas1p2H;
 Wed, 18 Sep 2019 10:47:02 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190918104701eusmtrp2aa3a3018d2a40fc0a3dfcad7b543585d~FgpUNprFj1555615556eusmtrp2i;
 Wed, 18 Sep 2019 10:47:01 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-50-5d820b26ba4f
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 44.2C.04117.52B028D5; Wed, 18
 Sep 2019 11:47:01 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190918104700eusmtip13d92c7a9603aa012e9bacba1e9d911ba~FgpTVgWGv0589205892eusmtip1E;
 Wed, 18 Sep 2019 10:47:00 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v1 5/9] ASoC: samsung: arndale: Simplify DAI link
 initialization
Date: Wed, 18 Sep 2019 12:46:30 +0200
Message-Id: <20190918104634.15216-6-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918104634.15216-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJKsWRmVeSWpSXmKPExsWy7djP87pq3E2xBtt6dS2uXDzEZLFxxnpW
 i6kPn7BZXGndxGgx/8g5Vovz5zewW3y70sFksenxNVaLGef3MVmsPXKX3eLz+/2sFq17j7Bb
 HH7TzmpxccUXJgc+jw2fm9g8ds66y+6xaVUnm8fmJfUe0+f8Z/To27KK0ePzJrkA9igum5TU
 nMyy1CJ9uwSujBO3NrAX9ItWPJmn3MD4SLCLkZNDQsBEYt70zcxdjFwcQgIrGCU2/t3PCOF8
 YZR4e/sdC4TzmVFi2ZGzLDAt+w89YINILGeUaDv4gB2u5fuSM6wgVWwChhK9R/sYQWwRATGJ
 23M6wZYwC/xhknj7dxbYKGGBIIlvz5cygdgsAqoSH9ZfAGvgFbCW2LbzCBvEOnmJ1RsOMIPY
 nAI2Ep8uPAC7SUJgG7vE3Qu9UEUuEnMfLmOFsIUlXh3fwg5hy0j83zmfCaKhmVGiZ/dtdghn
 AqPE/eMLGCGqrCUOH78I1M0BdJ+mxPpd+hBhR4nlr9czg4QlBPgkbrwFBxkzkDlp23SoMK9E
 R5sQRLWKxO9V05kgbCmJ7if/ocHlIXG45Tk0hPqBtv6ezTqBUX4WwrIFjIyrGMVTS4tz01OL
 jfNSy/WKE3OLS/PS9ZLzczcxAhPQ6X/Hv+5g3Pcn6RCjAAejEg+vxNmGWCHWxLLiytxDjBIc
 zEoivAG19bFCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeasZHkQLCaQnlqRmp6YWpBbBZJk4OKUa
 GG8tY2qwWLhJWaGzSP9Sb2J9edQFf903KtYdwb/+Za1oKQidWizw00StXst70g+GuBlzXD5E
 u01bs/jjXOt36/b/du2dv5Pn8cs/W5KuFdavsA+fyOaRZqBTUHxwvZuCZbfdQuH6Sl5pnVWc
 h38VbT98s4o/dcGuydNlJpkmfzgaG9gvNLdnkhJLcUaioRZzUXEiAPOSki08AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4XV1V7qZYg9btShZXLh5istg4Yz2r
 xdSHT9gsrrRuYrSYf+Qcq8X58xvYLb5d6WCy2PT4GqvFjPP7mCzWHrnLbvH5/X5Wi9a9R9gt
 Dr9pZ7W4uOILkwOfx4bPTWweO2fdZffYtKqTzWPzknqP6XP+M3r0bVnF6PF5k1wAe5SeTVF+
 aUmqQkZ+cYmtUrShhZGeoaWFnpGJpZ6hsXmslZGpkr6dTUpqTmZZapG+XYJexolbG9gL+kUr
 nsxTbmB8JNjFyMkhIWAisf/QA7YuRi4OIYGljBIHZu5n7GLkAEpIScxvUYKoEZb4c60LquYT
 o8ScDyuYQBJsAoYSvUf7GEFsEQExidtzOplBipgFupgl3u/4xQqSEBYIkJi84jYbiM0ioCrx
 Yf0FsAZeAWuJbTuPsEFskJdYveEAM4jNKWAj8enCAxYQWwioZsGxaYwTGPkWMDKsYhRJLS3O
 Tc8tNtIrTswtLs1L10vOz93ECIyFbcd+btnB2PUu+BCjAAejEg+vxNmGWCHWxLLiytxDjBIc
 zEoivAG19bFCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA+M07ySeENTQ3MLS0NzY3NjMwsl
 cd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYxLDL6yn8yXuMl/f0Xqp8zTUsXiUyUWScw/X7bC
 /PQ32yuJ8habo2SYmV/uzpqUtiJN6fm7vCcZ0+bKn/2WpaAubzBh73PdT3vMvy9bLj1J2tWX
 /1NDzazA2iTxB8XCNq/nuq72MQoPKMtvnSN/wm693k6m9HlzpMM+6V7Wnrpf76zYTpOo7HAl
 luKMREMt5qLiRAANYwJMmwIAAA==
X-CMS-MailID: 20190918104702eucas1p213070d06c69c4836d15d071b1926e60d
X-Msg-Generator: CA
X-RootMTR: 20190918104702eucas1p213070d06c69c4836d15d071b1926e60d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104702eucas1p213070d06c69c4836d15d071b1926e60d
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104702eucas1p213070d06c69c4836d15d071b1926e60d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_034711_240888_F7B49D50 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, krzk@kernel.org, robh+dt@kernel.org,
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

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 sound/soc/samsung/arndale_rt5631.c | 42 ++++++++++++------------------
 1 file changed, 17 insertions(+), 25 deletions(-)

diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale_rt5631.c
index c213913eb984..c5c8e3b5772f 100644
--- a/sound/soc/samsung/arndale_rt5631.c
+++ b/sound/soc/samsung/arndale_rt5631.c
@@ -76,41 +76,33 @@ static struct snd_soc_card arndale_rt5631 = {
 
 static int arndale_audio_probe(struct platform_device *pdev)
 {
-	int n, ret;
 	struct device_node *np = pdev->dev.of_node;
 	struct snd_soc_card *card = &arndale_rt5631;
+	struct snd_soc_dai_link *dai_link;
+	int ret;
 
 	card->dev = &pdev->dev;
+	dai_link = card->dai_link;
 
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
-			"Property 'samsung,audio-codec' missing or invalid\n");
+	dai_link->cpus->of_node = of_parse_phandle(np, "samsung,audio-cpu", 0);
+	if (!dai_link->cpus->of_node) {
+		dev_err(&pdev->dev, "Property 'samsung,audio-cpu' missing or invalid\n");
 			return -EINVAL;
-		}
 	}
 
-	ret = devm_snd_soc_register_card(card->dev, card);
+	if (!dai_link->platforms->name)
+		dai_link->platforms->of_node = dai_link->cpus->of_node;
+
+	dai_link->codecs->of_node = of_parse_phandle(np, "samsung,audio-codec", 0);
+	if (!dai_link->codecs->of_node) {
+		dev_err(&pdev->dev,
+			"Property 'samsung,audio-codec' missing or invalid\n");
+		return -EINVAL;
+	}
 
+	ret = devm_snd_soc_register_card(card->dev, card);
 	if (ret)
-		dev_err(&pdev->dev, "snd_soc_register_card() failed:%d\n", ret);
+		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n", ret);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
