Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2F0B9043
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 15:04:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/ZWhjvmDOcewgW0E1pC0/bmGou+c7DBlQZtyC6NlXvI=; b=IEFbXrx7GlZ/jUgtNZoowctBfu
	VraYQ1k/V23xfhBHkwEnOcNmikPCfC6wVLUQCvLLTdy7AI9A2acHgnOjm7HVuCg2fjgrm+2yFUgwp
	SbZOQGAchJ+1C8GulJLgR24GW7O5KzOsa7SUT9TjxCpJLsLQ7DKJJeFrn8VkauP4m8i02K2hj3mSf
	fZNzy41DF7j8zRLK/3UMlPTGlVZ5ZLfEr51EaXKCNbsfxQ4NBvAJSyCcsW4feXib7SrtTvNeT4sE0
	RoKsxUMWbmGnbr52jPtKL77nWbiU5hKFZ8IgGYg1NpHkhVkBg2aTfbEExzTR+DVCs251vUp+BMDag
	FR7E5+Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBIaK-0004az-5w; Fri, 20 Sep 2019 13:04:28 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBIZH-0003Ih-H5
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 13:03:25 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190920130321euoutp01019a9fbd515ed7e4d7120360a9549db4~GJy6-en_E3045630456euoutp01c
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 20 Sep 2019 13:03:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190920130321euoutp01019a9fbd515ed7e4d7120360a9549db4~GJy6-en_E3045630456euoutp01c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568984601;
 bh=JlOPACoW2mjd+3bF1MoPEIsxNgc0uMnAeyavRXGANVA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KC7PZXRTlxZekOZD2IhRahuKjDCF1vk4zVQNSLR6Zt/cL+zsi2U8u96bWC/SW+5Hm
 INn0j0gNDmx+vySIhQ2mrN6Z1OGj+jgAozrC10uPqR1gGXtJ2DyuDGuYaT26Ypw7UN
 lwR6+x0VFCwtsRc/0mdIbAuYyDDqETPEvSqj2hT0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190920130321eucas1p14eddd716a9d563b55218a2ec6b8475cb~GJy6M9b8_2917429174eucas1p18;
 Fri, 20 Sep 2019 13:03:21 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id D1.DB.04309.81EC48D5; Fri, 20
 Sep 2019 14:03:20 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190920130320eucas1p1ade2cf71fadfd442bcd79748e8512e09~GJy5cIFoJ2912129121eucas1p1C;
 Fri, 20 Sep 2019 13:03:20 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190920130319eusmtrp1a7f0cc47063296e8af21306821b1553d~GJy5Km6Tx0476604766eusmtrp1f;
 Fri, 20 Sep 2019 13:03:19 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-ee-5d84ce1895bb
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 40.11.04117.71EC48D5; Fri, 20
 Sep 2019 14:03:19 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190920130319eusmtip2c7bdcb035f356389188b0fe5a03b5587~GJy4eTcu_1303613036eusmtip27;
 Fri, 20 Sep 2019 13:03:19 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org, krzk@kernel.org
Subject: [PATCH v2 06/10] ASoC: dt-bindings: Document
 "samsung,arndale-wm1811" compatible
Date: Fri, 20 Sep 2019 15:02:15 +0200
Message-Id: <20190920130218.32690-7-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190920130218.32690-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSfyyUcRzH+z53zz2Pq7OnIz5h5MaaNiQ1z0LLVtv908paW2VWhyfEHd3j
 R+qPpBPJz1r5keZI0bXCcYpQznHXLJexUs0QtpimcbPJr5yH+u/1fX/e7+/7s+++JE9cgzuR
 sYokRqmQxUsEQn5zz6LZG/pU4fsbZnzowX49RjeU1OH0g7EJAT2YqUV0haEPp83meoJeGMzG
 aO34Z5wuMXdg9EvDMEHPz77D6cx2A0F3zWThdH+tBTtqK62fzxBIW8qGCalWc0cgbay+IS0u
 X0PS/CYNks5rXU8R54VBUUx8bAqj9D1yURhTVDQsSPxJXNWVPcfT0YAgB9mQQB0EVccAZmUx
 VYtA/ycxBwnX2YJgyNSAc4d5BC0T7fhWYuJRFcYNahB8nG7k/4uov2oJq0tA+UFedz6ysj21
 F0ZKMjau4lFTGBR2v9ootKPCQF1iXg+QJJ/yhOKncVZZRAWCrq8C49rc4EX9e56VbaggmBri
 moHSElA6OUpwpmPQttC5yXYwbWzaZBfovZ/L5wK3EOS+/U5wh0IEI0Y14lyB0GXsx61b8Cgv
 qGv15eQQMHY3biwHlC0M/dpplXnreK+5mMfJIsi+LebcHrCkKd7c2QnuTqzxOZbCUFuNgHvf
 AgSVpfJC5Fb2v0uNkAY5MsmsPJphDyiYVB9WJmeTFdE+kQlyLVr/Pr2rRssb1LocoUcUiSQ7
 RGqTKlyMy1LYNLkeAcmT2IvKD2WEi0VRsrRrjDLhgjI5nmH1yJnkSxxF17eNhompaFkSE8cw
 iYxya4qRNk7pSBchDFedCAaPc54FlsiboToHw2ztalZ8gEvI8uloO4/MKndLlLPG4fLJVH+L
 eE/6yq42798/8qpfn61UsSp3NGf0z/Jz8Ao+s5jmatr9CS49kSXlm3r6tn87nLj6uHU57UqA
 cGzluGMnw6bO6L7Qk0HjoYoWUd1S1gebZ3PkQwmfjZH57eMpWdlfF2Ss6zoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpjkeLIzCtJLcpLzFFi42I5/e/4PV3xcy2xBh9PWVhcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 OPymndXi4oovTA58Hhs+N7F57Jx1l91j06pONo/NS+o9ps/5z+jRt2UVo8fnTXIB7FF6NkX5
 pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GRMn3mUreMFe
 sXXWStYGxstsXYycHBICJhJPZi9iArGFBJYySizaKdfFyAEUl5KY36IEUSIs8edaF1A5F1DJ
 J0aJnz1P2UESbAKGEr1H+xhBbBEBTYmOebdZQYqYBb4zSRx4fJIZZJCwQKTEwVc2ICaLgKrE
 9KXZIOW8AtYSW8/NZ4KYLy+xesMBZhCbU8BG4uUNmHOsJU7v28s+gZFvASPDKkaR1NLi3PTc
 YiO94sTc4tK8dL3k/NxNjMA42Hbs55YdjF3vgg8xCnAwKvHwehxriRViTSwrrsw9xCjBwawk
 wjvHtClWiDclsbIqtSg/vqg0J7X4EKMp0E0TmaVEk/OBMZpXEm9oamhuYWlobmxubGahJM7b
 IXAwRkggPbEkNTs1tSC1CKaPiYNTqoGxX/FXxbmZi5qOPPmrJr3Adrt/S1GnY+7lkxP+z9hd
 17t7UrTdsf2bdiwxmtZe95mDg+dwwfn7U+d8EePqy6tQrBEw227GbCwk9O7X7Ypm9gQNNsvJ
 zzfVxC6Rv+v45ljeF2enixUX5L1fBa0vC6k4/37/87ayqs1rM267qS50fLH5f4vQlpPSSizF
 GYmGWsxFxYkALdGSTJkCAAA=
X-CMS-MailID: 20190920130320eucas1p1ade2cf71fadfd442bcd79748e8512e09
X-Msg-Generator: CA
X-RootMTR: 20190920130320eucas1p1ade2cf71fadfd442bcd79748e8512e09
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190920130320eucas1p1ade2cf71fadfd442bcd79748e8512e09
References: <20190920130218.32690-1-s.nawrocki@samsung.com>
 <CGME20190920130320eucas1p1ade2cf71fadfd442bcd79748e8512e09@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_060323_715657_59EAB5A4 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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

Add compatible string for boards with WM1811 CODEC to the list.

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v1:
 - none
---
 Documentation/devicetree/bindings/sound/arndale.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/arndale.txt b/Documentation/devicetree/bindings/sound/arndale.txt
index 0e76946385ae..17530120ccfc 100644
--- a/Documentation/devicetree/bindings/sound/arndale.txt
+++ b/Documentation/devicetree/bindings/sound/arndale.txt
@@ -1,8 +1,9 @@
 Audio Binding for Arndale boards
 
 Required properties:
-- compatible : Can be the following,
-			"samsung,arndale-rt5631"
+- compatible : Can be one of the following:
+		"samsung,arndale-rt5631",
+		"samsung,arndale-wm1811"
 
 - samsung,audio-cpu: The phandle of the Samsung I2S controller
 - samsung,audio-codec: The phandle of the audio codec
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
