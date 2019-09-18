Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B376B61CC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BW/LmU7Ig0lVA8uZX6blXCbL6kDk/huTaQlQrmIFMNA=; b=NxSajM5qaMM9rUOTnoWb/VCUhE
	/qMWeZDY7VELvwoCn4TMkDGgEAs0lbzLMxJqf3mzsdbMw0mvmTSFl/gx7Z5VBvjP1bmqJUfRJH+fP
	8RnzXdxw4nzyr/CoRfNRy9h/OclyAHFh4rqJfWgU6UFp5c6mTOjlOoovt5u+OpZm16lKf2NcpUko4
	7eWq0FfYQ4AmOkG/jnTEl8NPaHbQ82QgyLJB/1JVPTnrZreoXHZXDhBRMAp3gtW+smDVZXtOoAvaP
	zPl18GYiJGPY4QFuX+kxX8wxG8V379Fv8XEQU5IQEufPPr1v/Uw6ZYRumipJkgR5b4/KbSDPV2gsG
	PZhYfGfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXVw-0002UK-6k; Wed, 18 Sep 2019 10:48:48 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXUT-0000oo-09
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:47:19 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190918104715euoutp015ce44dc3a8e9447e9f795416a95dd181~Fgpg3pUZP1215812158euoutp01C
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:47:15 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190918104715euoutp015ce44dc3a8e9447e9f795416a95dd181~Fgpg3pUZP1215812158euoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568803635;
 bh=xXzfRu9QLTj/XX7HXJ29mEGOJQBJL9qoYmNOwy+z2GM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cBLgTFIlp2xwag5s2nE+XyzqaG6yFfhIwpb5Bph19QJdlHCiBbcwazbIYs06UFuvN
 rdwIZf23QEEyEL+0d3VgMpGjVp0F5G4WphXgxDSMlsfr1zaytcctEQDuk6bnCNm+ZF
 FEfkg8IBSoFtui4z2Lx6UI9wHViVUWGPtmmG8jVI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190918104714eucas1p2b7218f8911155c2d56c4a1da5d80bf05~FgpgCUZJA2379323793eucas1p2q;
 Wed, 18 Sep 2019 10:47:14 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id FC.B4.04309.23B028D5; Wed, 18
 Sep 2019 11:47:14 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680~FgpfElMvl2378523785eucas1p2h;
 Wed, 18 Sep 2019 10:47:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190918104713eusmtrp29acc9faf5d3931e383eca1b2ea862182~Fgpe0-fxX1585315853eusmtrp2S;
 Wed, 18 Sep 2019 10:47:13 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-34-5d820b32dad1
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 84.C6.04166.13B028D5; Wed, 18
 Sep 2019 11:47:13 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190918104712eusmtip1eb199f3c78fc8fa94af113a38915a02c~FgpeNp1H10494604946eusmtip1E;
 Wed, 18 Sep 2019 10:47:12 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v1 8/9] ASoC: samsung: arndale: Add missing OF node
 dereferencing
Date: Wed, 18 Sep 2019 12:46:33 +0200
Message-Id: <20190918104634.15216-9-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190918104634.15216-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSe0hTcRTud+/u7lWbXLfKgz2skUFBmfbgUtIDDFeECP0RGZIzL9Ny03bV
 sgiH5StNSxOXDdSMtJk6l2kqpk1zVuZcSSUiKmlvldSifObtKv73ne9xzvfHoXBpCeFGhWui
 Wa1GGSEXO4qqW//atno7JQRt7+x3ZrrsFoyp1FcQTM7AoJjpSjQjJr+lg2BsNhPJ/O5KwRjz
 x3cEo7c9xZiyll6SGR9tJJjEhhaSaf6RTDD2kgnsgLPCNJ4gVtTm9ZIKszFVrHh0L16Ra5hD
 iowqI1KMm9cFkIGOPqFsRHgsq/XcF+wYVlNmEEcVuVzIyjQQOtTgfA05UEDvhNfGL9g15EhJ
 6RIEg8k3CWGYQDBdmbQwjCP4UX1FvBjpK5wkBaEYgf3r56XIs7c1OO8S015w/XkG4vEKehX0
 GFJx3oTT0xgMz+SJeEFGH4ORHtO8iaJEtAe06mQ8LaH3QnnpH1K45g6lpqb/Ox1oHxjr7Bfx
 e4CuI6E4e2Chki8MZbVjApbBN2vVQngNzNXmY0LgCoL0+h5SGG4g6LMWIMG1F5qtdoJvgdOb
 oaLOU6APQuXV2yRPA+0MH4ZdeBqfh1nVubhASyAlSSq4N8KUMXehghukDc6JBKyA9Lt3/mMp
 nYlgNDvwBnLPW7pVgJARubIxnFrFct4a9vw2TqnmYjSqbacj1WY0/z+vZq0TT1DddIgF0RSS
 L5c0vdQFSQllLBentiCgcPkKScDl+CCpJFQZd5HVRp7SxkSwnAWtpkRyV8mlZf0npbRKGc2e
 ZdkoVruoYpSDmw6t9Mtx996U+3DHuamZxz91BXTtrjPePR6eCVH+yWll+TOH/fT+h/w7uO+U
 7+bHvwvC39Turzqeyo6MbZjsJM516/7YGk+UTAUe2ROGGE2b/lfhbvus/qgsJKTtQPeQQ/v6
 ++VrbxYG+1iKbnmp6oPU1hfvlU5tkfDgU8WOJPf45hy5iAtTem3BtZzyH03DFN87AwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42I5/e/4XV1D7qZYg+VX+SyuXDzEZLFxxnpW
 i6kPn7BZXGndxGgx/8g5Vovz5zewW3y70sFksenxNVaLGef3MVmsPXKX3eLz+/2sFq17j7Bb
 HH7TzmpxccUXJgc+jw2fm9g8ds66y+6xaVUnm8fmJfUe0+f8Z/To27KK0ePzJrkA9ig9m6L8
 0pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy1CJ9uwS9jO1r57AVLBas
 mNQ/h7WBcS9fFyMnh4SAicT9hb/Yuxi5OIQEljJKtCw7x9zFyAGUkJKY36IEUSMs8edaFxtE
 zSdGiSmnrjOBJNgEDCV6j/YxgtgiAmISt+d0MoMUMQt0MUu83/GLFSQhLBAo8X3iY1aQoSwC
 qhLHGoRBwrwC1hLrVv9gh1ggL7F6wwFmEJtTwEbi04UHLCC2EFDNgmPTGCcw8i1gZFjFKJJa
 WpybnltsqFecmFtcmpeul5yfu4kRGAvbjv3cvIPx0sbgQ4wCHIxKPLwHTjXECrEmlhVX5h5i
 lOBgVhLhDaitjxXiTUmsrEotyo8vKs1JLT7EaAp000RmKdHkfGCc5pXEG5oamltYGpobmxub
 WSiJ83YIHIwREkhPLEnNTk0tSC2C6WPi4JRqYNS9NoE9X0ZzrqHGyZC9M3oYWeetWj37g7ln
 slr//CM/ggS3O6w9pWa8WiYoeJv1tMqpYitTZ2/+4D9nRfxZjSDLR+ue9M1oTsvjOqN9wnpz
 4f/Gwy8382+Y/OlC6Io2Hcm42G++W+7Yi/kdVpAzmrjBx5fP/bHIk+P/t35cHDgljO/HHosD
 VyKVWIozEg21mIuKEwEA8vqfmwIAAA==
X-CMS-MailID: 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680
X-Msg-Generator: CA
X-RootMTR: 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680
References: <20190918104634.15216-1-s.nawrocki@samsung.com>
 <CGME20190918104713eucas1p2ccfa8e9dff2cda9e8f88ac42dda2b680@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_034717_213036_D063CD87 
X-CRM114-Status: GOOD (  12.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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

Ensure there is no OF node references kept when the driver is removed/unbound.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
 sound/soc/samsung/arndale_rt5631.c | 31 ++++++++++++++++++++++++++++--
 1 file changed, 29 insertions(+), 2 deletions(-)

diff --git a/sound/soc/samsung/arndale_rt5631.c b/sound/soc/samsung/arndale_rt5631.c
index 3744c47742b8..d8da313e898a 100644
--- a/sound/soc/samsung/arndale_rt5631.c
+++ b/sound/soc/samsung/arndale_rt5631.c
@@ -132,6 +132,17 @@ static struct snd_soc_card arndale_wm1811 = {
 	.num_links = ARRAY_SIZE(arndale_wm1811_dai),
 };
 
+static void arndale_put_of_nodes(struct snd_soc_card *card)
+{
+	struct snd_soc_dai_link *dai_link;
+	int i;
+
+	for_each_card_prelinks(card, i, dai_link) {
+		of_node_put(dai_link->cpus->of_node);
+		of_node_put(dai_link->codecs->of_node);
+	}
+}
+
 static int arndale_audio_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
@@ -156,16 +167,31 @@ static int arndale_audio_probe(struct platform_device *pdev)
 	if (!dai_link->codecs->of_node) {
 		dev_err(&pdev->dev,
 			"Property 'samsung,audio-codec' missing or invalid\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto err_put_of_nodes;
 	}
 
 	ret = devm_snd_soc_register_card(card->dev, card);
-	if (ret)
+	if (ret) {
 		dev_err(&pdev->dev, "snd_soc_register_card() failed: %d\n", ret);
+		goto err_put_of_nodes;
+	}
 
+	return 0;
+
+err_put_of_nodes:
+	arndale_put_of_nodes(card);
 	return ret;
 }
 
+static int arndale_audio_remove(struct platform_device *pdev)
+{
+	struct snd_soc_card *card = platform_get_drvdata(pdev);
+
+	arndale_put_of_nodes(card);
+	return 0;
+}
+
 static const struct of_device_id arndale_audio_of_match[] __maybe_unused = {
 	{ .compatible = "samsung,arndale-rt5631",  .data = &arndale_rt5631 },
 	{ .compatible = "samsung,arndale-alc5631", .data = &arndale_rt5631 },
@@ -181,6 +207,7 @@ static struct platform_driver arndale_audio_driver = {
 		.of_match_table = arndale_audio_of_match,
 	},
 	.probe = arndale_audio_probe,
+	.remove = arndale_audio_remove,
 };
 
 module_platform_driver(arndale_audio_driver);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
