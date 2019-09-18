Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727A8B61B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 12:47:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=OJw0zh94rk2/ZkCbC18eV3jLcFPddRYPHuvjFWvn8Wk=; b=WQ
	EgZB3hOyvb/DPFKGK7kiaEH5n7h+4HZERC3RD6iKAQ3PPehV9NCFpaCmypc+XidulDT/+ZQ6M0kj0
	gOmN32ji4+4753h3MHOPOeUwMYl/2Vi7XpwfVLe3hM5ERqX/XEP/u1dPknMOSoD+KoKKGKSxc7PzX
	NFJ4PGwLVHjvHDJ3/gLdvLlWQrH41bnaKXLQikSFbf5p4C46AUelRsvrmYHOoYMQ3A0GLirTLyS7R
	n0jY5xgpUmUp1utay52BbtDAJ4DEIJADbEjZbDsBrqLNJ9uxMUhY5zQn1WCm3ldQTEYY+tOZL1Y2t
	t/JPOl8CzutY3o1dvKY/b+Q5U8PbpVjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXUE-0000PR-9x; Wed, 18 Sep 2019 10:47:02 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXU6-0000Ol-SZ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 10:46:56 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190918104652euoutp016f925de31bbacde941a003df064d7c69~FgpLpNfxi1292812928euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 18 Sep 2019 10:46:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190918104652euoutp016f925de31bbacde941a003df064d7c69~FgpLpNfxi1292812928euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568803612;
 bh=ggJz+4OHEUqpSZrdoYYcYTj+Ba5FvZUZV0pOCGMmb8k=;
 h=From:To:Cc:Subject:Date:References:From;
 b=c8rcNFBmJY/mDx16xNixV62Snrx4Jw4CtpMWh6d8iQ24GmnFfd34cSfpEgNceMtMI
 ejK+qbVaROwHcATQ4inNn0MuJRHtiic9kUTRBd3pwpfS6Bvuu2bAi9v4bYJFP3XA/D
 ZV4ECaIc0LF5RgJzvBkZktmxVSx3SzS5c2+CNut4=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190918104651eucas1p15b28111f23924f96ccf4792636cee51d~FgpKsh7Rn2838228382eucas1p1v;
 Wed, 18 Sep 2019 10:46:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 10.B4.04309.B1B028D5; Wed, 18
 Sep 2019 11:46:51 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190918104650eucas1p2288b0b7e8081e872c4f181cb5ca8ba0d~FgpJy2Sw32181121811eucas1p2Q;
 Wed, 18 Sep 2019 10:46:50 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190918104650eusmtrp19ceb2288f128253001e6dbaaee5e1800~FgpJiquYc2822328223eusmtrp19;
 Wed, 18 Sep 2019 10:46:50 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-f6-5d820b1bdca6
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id EC.1C.04117.A1B028D5; Wed, 18
 Sep 2019 11:46:50 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190918104649eusmtip142f4b56d9d48d65ef5cdaa9c2a5c8877~FgpI5PALX0585305853eusmtip1C;
 Wed, 18 Sep 2019 10:46:49 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: broonie@kernel.org
Subject: [PATCH v1 0/9] Basic sound support for Arndale board / wm8994 updates
Date: Wed, 18 Sep 2019 12:46:25 +0200
Message-Id: <20190918104634.15216-1-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+85l5zjdOE7JLw2FUX8UeZkEO2CEZcT+KRQLShs186DmNm3H
 eYtymCs1NfGOLDRJ0jlvy8uy8roaJKTWCkHUvESkSeYkCDXzdJT++33P+zy8Dy8fiUpqcV8y
 SZvG6LQqtVQgxHre/B4L9HPPVYasvPSinRPDCN1Z047TlXOLAtpptAK6zv4Op8fGOgj6lzMf
 oa0Ln3C6ZqwfoVvt0wTt+jGA08ZXdoIe+X4fpyea1pFwsaLDlStQPK+dJhRWc4FA8exJjqLa
 tA0UJV1moHBZ/SOJGOGJeEadlM7ogk9eEyZ2bvUKUhvdM+sa6nEDWCQLgRsJqePQONQPCoGQ
 lFBNAA58tSDcQEKtA1iRf4xnF4DjqzF7gfnuZoQPPAWwrLVgN70TGMotQDmXgJLB4tclgGNv
 aj+cMnG6kESpTQSubNVihYAkvahIaOk+wHkw6jAcHyzHOBZRYdA09UjAbwuALR2D/7KQaiDg
 /EwPxg/OwLKWEYRnL7jk6CJ4PghHy4swPnAXwKIXUwT/KAVw1lEPeFcYHHFM4FwLlDoC2/uC
 efkU7DEbEE6GlBhOrnhyMrqDZT3VKC+LYP49Ce8+BDfM1bsVfOGDxe3dago47aoi+Msp4ftZ
 F1IK/Gv/76oHwAx8GD2rSWDYUC2TEcSqNKxemxB0PUVjBTs/ZvSPY90G+jbjhgFFAqmHaPCt
 QSnBVelslmYYQBKVeosib+coJaJ4VVY2o0u5qtOrGXYY+JGY1Ed0a9/nWAmVoEpjkhkmldHt
 TRHSzdcA2mSmK8kRBmdU8UMdMPTGZfRnWhZ+bkba0DtRJZfbvkSvXrpw1ujf0JbuYauSm9NY
 2XK2U/7B4t09zTx63OyIPbc0Z5R3bulPB1KTFQFCfE1uu1GZczMkXEYJzs9c3HYVqPOiI5a/
 FX7czvPEGje6VGSSvHtNbBfX4aE2vRRjE1Wyo6iOVf0FuGyyMi0DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrALMWRmVeSWpSXmKPExsVy+t/xu7pS3E2xBnffiVpcuXiIyWLjjPWs
 FlMfPmGzuNK6idFi/pFzrBbnz29gt/h2pYPJYtPja6wWM87vY7JYe+Quu8Xn9/tZLVr3HmG3
 OPymndXi4oovTA58Hhs+N7F57Jx1l91j06pONo/NS+o9ps/5z+jRt2UVo8fnTXIB7FF6NkX5
 pSWpChn5xSW2StGGFkZ6hpYWekYmlnqGxuaxVkamSvp2NimpOZllqUX6dgl6GRv/bmcrWMpd
 MX/RAtYGxiccXYycHBICJhKPtq5k6mLk4hASWMoo0fpmLWMXIwdQQkpifosSRI2wxJ9rXWwg
 tpDAJ0aJH+1mIDabgKFE79E+RhBbREBM4vacTmaQOcwCXcwS73f8YgVJCAv4STzZ9YIdxGYR
 UJW4cGAyC4jNK2AtMef2XDaIBfISqzccYJ7AyLOAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+
 7iZGYGhvO/Zzyw7GrnfBhxgFOBiVeHglzjbECrEmlhVX5h5ilOBgVhLhDaitjxXiTUmsrEot
 yo8vKs1JLT7EaAq0fCKzlGhyPjDu8kriDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YW
 pBbB9DFxcEo1MApOs3VRmDVZYZroC9Hm721pBqKHcrj1X6wxNuvc4Da5xVr//Qn103ftlzPe
 78mMvsVj1DhD8fivmE8MdRcXzZ13c+69d/812uez7FX9Edvs8JDfr8742o13ATNTrQ/p8lzT
 WvGl1vBC+aMpBf/ZNyX917iZrHvQS6JxpsK0UNeTH85b37wjulKJpTgj0VCLuag4EQBJQJG8
 gwIAAA==
X-CMS-MailID: 20190918104650eucas1p2288b0b7e8081e872c4f181cb5ca8ba0d
X-Msg-Generator: CA
X-RootMTR: 20190918104650eucas1p2288b0b7e8081e872c4f181cb5ca8ba0d
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190918104650eucas1p2288b0b7e8081e872c4f181cb5ca8ba0d
References: <CGME20190918104650eucas1p2288b0b7e8081e872c4f181cb5ca8ba0d@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_034655_129743_C77B83F2 
X-CRM114-Status: GOOD (  10.10  )
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

This patch series adds basic audio support for Exynos5250 SoC based Arndale 
board, the Bluetooth receiver source and HDMI output are not covered yet.

There is also one fix for wm8994 driver related to WM1811 CODEC and wm8994
updates to handle MCLK clocks, similar to patches:
 ae1ea48c5c59 ("ASoC: arizona: Add gating for source clocks of the FLLs")
 7a4413d0dc96 ("ASoC: arizona: Add gating for clock when used for direct MCLK")

Sylwester Nawrocki (9):
  ASoC: wm8994: Do not register inapplicable controls for WM1811
  mfd: wm8994: Add support for MCLKn clock control
  ASoC: wm8994: Add support for setting MCLKn clock rate
  ASoC: wm8994: Add support for MCLKn clock gating
  ASoC: samsung: arndale: Simplify DAI link initialization
  ASoC: dt-bindings: Document "samsung,arndale-wm1811" compatible
  ASoC: samsung: arndale: Add support for WM1811 CODEC
  ASoC: samsung: arndale: Add missing OF node dereferencing
  ARM: dts: arndale: Add audio support (WM1811 CODEC boards)

 .../devicetree/bindings/sound/arndale.txt     |   5 +-
 arch/arm/boot/dts/exynos5250-arndale.dts      |  27 ++-
 drivers/mfd/wm8994-core.c                     |   9 +
 include/linux/mfd/wm8994/core.h               |   9 +
 sound/soc/codecs/wm8994.c                     | 164 +++++++++++++++---
 sound/soc/samsung/arndale_rt5631.c            | 155 +++++++++++++----
 6 files changed, 306 insertions(+), 63 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
