Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCC2689B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3TyHEQROPeH5HGdADauu5fmsLifadsYW5BZo4Xs+sg4=; b=iLyOyd9OspIHzAS+j3zyD4dwxW
	kdaEawLbqt3MnmiA4VjvUkLzPXfjnM/5k35XGYgqjk/iQ15ehEjgFXrVRD6Delh9+jcRan7eyUBK7
	HYQ8DhK6aPQAu8F4rpj3aZGWhnIH2vvfN3y00kSY+RpEgWEXIlRqPGVH3Jk60S4dfKtbrRRHfeI/y
	ks/KvXK56dbtRLf7o1fuQMVS8jDLu4/ErzFelLSZbjtt4P2hMdMesxtV7KqKppg7gwpnUFENdhdua
	LZnxo8YDXNY5CXE7rjiW4NAOG+3INh6Wcsr7GwPJidCEBiDlewE2vaqZbsDph+iCW8AgEkunAMX4x
	a+Cs9bbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0OQ-0006yl-Or; Mon, 15 Jul 2019 12:47:46 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LR-0003f5-IW
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:45 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124440euoutp02b8c23f410e293729c0cf2e0c978dcd8a~xlUeSMXzo0595105951euoutp02X
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124440euoutp02b8c23f410e293729c0cf2e0c978dcd8a~xlUeSMXzo0595105951euoutp02X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194680;
 bh=aspHlYa7QfVNbt0m/zM8Gdr/1j4WzgE5QUGHA0dWKzY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tXTuNuGRezkxxPbZX7viwSD+uHlNwMFlfxhivhGKhzRVDVj4AiT+EdCNvfZvfCRRs
 xzfRbGi8Zf9o512C/Qnc5bNa1DEPc8nAL2aTUN+EazJc0s3TNYeFBvC7Bd9ln4i4Us
 B2yzgfXQRc8EJvbKDx7mKG5objNkq8juFsl854Nc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124439eucas1p177ca5f9546bbab51bd42a45a394567fe~xlUdiVZVb3144231442eucas1p1M;
 Mon, 15 Jul 2019 12:44:39 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 27.D1.04377.7357C2D5; Mon, 15
 Jul 2019 13:44:39 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124438eucas1p2ee9d27c451eb7125bd3ec874baf76e14~xlUcvySmp2439124391eucas1p2I;
 Mon, 15 Jul 2019 12:44:38 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124438eusmtrp128127e3b89a328c94d01b2a5b91d0dcd~xlUchqCVh0462004620eusmtrp1x;
 Mon, 15 Jul 2019 12:44:38 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-d3-5d2c75371fd8
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 86.F6.04140.6357C2D5; Mon, 15
 Jul 2019 13:44:38 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124437eusmtip25e20b3aeeb5bb4e47e8422e684c006c5~xlUbu-m4U0518605186eusmtip2f;
 Mon, 15 Jul 2019 12:44:37 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 06/50] clk: samsung: add IDs to ACLK266 clocks in Exynos5420
Date: Mon, 15 Jul 2019 14:43:33 +0200
Message-Id: <20190715124417.4787-7-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djP87rmpTqxBm9mcVvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6M7jO3mAum8FQ8Or2HuYFxD1cXIyeH
 hICJREvTDPYuRi4OIYEVjBKbbp9lhXC+MEp8WHcByvnMKLGicSYTTMvj18+YIRLLGSUeXu1m
 h2s53HoGqIWDg01AT2LHqkKQBhGBJYwSR34mgdQwC9xkktjzZCdYjbBAoMS/bfIgNSwCqhK3
 uzqYQWxeATuJNVsPs0Msk5dYveEAWJxTwF7i57QLbCBzJAQusUscOPGFGaLIRWLz4k5WCFtY
 4tXxLVDNMhKnJ/ewQNjFEg29Cxkh7BqJx/1zoWqsJQ4fvwh2D7OApsT6XfoQYUeJX39PsoGE
 JQT4JG68FQQJMwOZk7ZNZ4YI80p0tAlBVGtIbOm5AA0eMYnla6ZBDfeQmLNkMdhhQgKTGCW+
 3teZwCg/C2HXAkbGVYziqaXFuempxUZ5qeV6xYm5xaV56XrJ+bmbGIFp6vS/4192MO76k3SI
 UYCDUYmH1yFFO1aINbGsuDL3EKMEB7OSCK/tV6AQb0piZVVqUX58UWlOavEhRmkOFiVx3mqG
 B9FCAumJJanZqakFqUUwWSYOTqkGRm32L0b2Z69vV/zYtDk19v4bJ6ENClXHbRfcCFpe53Uw
 rPRL+bsNzKpStvJfmdXLJhvatYiVLix8JhARL1IrVBK/aHkZm809I0fL+rcm13j8t2vcV/v+
 UfLCrpJwyYkf0rZzrtHe1f2PSUCfZfGtmZVabR+s3eymTTNIMQ91myQ++bvSHO89SizFGYmG
 WsxFxYkAUohn4k8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7pmpTqxBhdPilrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M7jO3mAum8FQ8Or2HuYFxD1cXIyeHhICJxOPXz5i7GLk4hASWMkr0
 rT3OBJEQk5i0bzs7hC0s8edaFxtE0SdGic7Vh4EcDg42AT2JHasKQWpEBFYwSkw+4Q1Swyzw
 mkniyNF3rCAJYQF/iTuvWlhAbBYBVYnbXR3MIDavgJ3Emq2HoRbIS6zecAAszilgL/Fz2gU2
 EFsIqGbx0Z9MExj5FjAyrGIUSS0tzk3PLTbSK07MLS7NS9dLzs/dxAiMnW3Hfm7Zwdj1LvgQ
 owAHoxIPr0OKdqwQa2JZcWXuIUYJDmYlEV7br0Ah3pTEyqrUovz4otKc1OJDjKZAR01klhJN
 zgfGdV5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBsYKZqa1M6un
 rd7VW7fh+9QVJnvf2Bk0p869L9O+LnSu+HOOfp27vF3Pk+pfMD2fbDuhvEA44/J6zhy+U+Uy
 Bpenb+ixeqF2lfHcvZmH3vxhE1qzpo6Tcc16g62FPnzSUk/uhG8Uy5x8aFcFK0e/7IHb32xe
 VshyenhP/yTGFssWWc6WN/uMuagSS3FGoqEWc1FxIgCb9plkswIAAA==
X-CMS-MailID: 20190715124438eucas1p2ee9d27c451eb7125bd3ec874baf76e14
X-Msg-Generator: CA
X-RootMTR: 20190715124438eucas1p2ee9d27c451eb7125bd3ec874baf76e14
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124438eucas1p2ee9d27c451eb7125bd3ec874baf76e14
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124438eucas1p2ee9d27c451eb7125bd3ec874baf76e14@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054441_761371_CF031A66 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, cw00.choi@samsung.com, b.zolnierkie@samsung.com,
 sboyd@kernel.org, mturquette@baylibre.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, a.hajda@samsung.com,
 robh+dt@kernel.org, kyungmin.park@samsung.com, kgene@kernel.org,
 myungjoo.ham@samsung.com, s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IDs to MUXes related to ACLK266 for managing them from DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 74276875bc3e..9b4a1d81f708 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -472,7 +472,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 	MUX(0, "mout_aclk333_432_gscl", mout_group6_5800_p, SRC_TOP1, 0, 2),
 	MUX(0, "mout_aclk333_432_isp", mout_group6_5800_p, SRC_TOP1, 4, 2),
 	MUX(0, "mout_aclk333_432_isp0", mout_group6_5800_p, SRC_TOP1, 12, 2),
-	MUX(0, "mout_aclk266", mout_group5_5800_p, SRC_TOP1, 20, 2),
+	MUX(CLK_MOUT_ACLK266, "mout_aclk266", mout_group5_5800_p,
+			SRC_TOP1, 20, 2),
 	MUX(0, "mout_aclk333", mout_group1_5800_p, SRC_TOP1, 28, 2),
 
 	MUX(0, "mout_aclk400_disp1", mout_group7_5800_p, SRC_TOP2, 4, 3),
@@ -561,7 +562,7 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 	MUX(0, "mout_aclk333_432_isp", mout_group4_p,
 				SRC_TOP1, 4, 2),
 	MUX(0, "mout_aclk333_432_isp0", mout_group4_p, SRC_TOP1, 12, 2),
-	MUX(0, "mout_aclk266", mout_group1_p, SRC_TOP1, 20, 2),
+	MUX(CLK_MOUT_ACLK266, "mout_aclk266", mout_group1_p, SRC_TOP1, 20, 2),
 	MUX(0, "mout_aclk333", mout_group1_p, SRC_TOP1, 28, 2),
 
 	MUX(0, "mout_aclk400_disp1", mout_group1_p, SRC_TOP2, 4, 2),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
