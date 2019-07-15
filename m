Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38E2689F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:50:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VBgCR/yX3nUA2YDPdWgsUYKN5WosWTqlAA2oJdERXtA=; b=Cp/eiMMCpP7D9fE5EssC+FmSu0
	txlLdxXy64+FlvM7vr80N+p02RnnBtC26tN+XJe0fw44xEsVGJIfQIXBHf18QfxcRk22OmY/1nigX
	GGNTVPepwgj+FVccrWhqwScaXTo5zu1lVEgpP1lttf3qxMitpbWS7cf3DXKiupvcpqVrFaGLWs4Tl
	fN7j9RMspk5NPUBkfjNgOwv1NLYEq+t0Eehi4Qy/fC+KBxDSWtyQPmWytez1qNy04HYez9yepmH2z
	FxhgV3Sass5EFrcAM3a5Pp/k+8j0mj3C9/qm1ZLpL51wKgoJBvfHeODgl+kG2iCb2TVLsdrUunMzS
	VKIG7mpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0RL-00029a-Pq; Mon, 15 Jul 2019 12:50:47 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LY-0003kg-M3
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:50 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124446euoutp01d0ba025c648f6a7c3b81e2c83c88ffd3~xlUkgpbCJ1962419624euoutp01R
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124446euoutp01d0ba025c648f6a7c3b81e2c83c88ffd3~xlUkgpbCJ1962419624euoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194687;
 bh=3BRlMgsWN3g08+Y/eeiArBFHKGehsKQXE+uUMNRN0mE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=A7VqZtAUP2A8e52mJGNLcZEQldjRkMcg7J4dFqEMTCXUiPN5uJg7RqjydLsOxVk2a
 8F6OvKAV01tK1mY5tZ2A1g1R/+3Z8CGfu8Pr1axXFQX9sqhvmjdZGqS/mE6ICk1zcE
 l27xP5brKJchz4Nr0qXTkzeK2c4ax+iTC6GtJTg8=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124446eucas1p2c695ff9d9181b128a754a68d105cb2c0~xlUjx6Rim2241522415eucas1p2V;
 Mon, 15 Jul 2019 12:44:46 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 2E.D1.04377.D357C2D5; Mon, 15
 Jul 2019 13:44:45 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124445eucas1p1a73385fcbe6205d868ae63b1198ff572~xlUjDQ5_v0154701547eucas1p1D;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124445eusmtrp184e4b75c6c69c1d6cc6eef546f578d50~xlUixhnhN0462004620eusmtrp1N;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-e8-5d2c753d0429
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 5F.F6.04140.C357C2D5; Mon, 15
 Jul 2019 13:44:45 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124444eusmtip20f09feefb130d4ef0abae4837fe7c00e~xlUh5dj2f1115211152eusmtip2J;
 Mon, 15 Jul 2019 12:44:44 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 14/50] clk: samsung: add CLK_MOUT_SCLK_CPLL in the
 Exynos5420
Date: Mon, 15 Jul 2019 14:43:41 +0200
Message-Id: <20190715124417.4787-15-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUURzFu/NWB8eeo+XFRGliSHNLk7gtpkHGfIgIPyZiYz7Ucp3nklmk
 uZumGZlEbqRpai7TKI6Y69homkvmkqYEimFp5o5U0ozP6tvvf+4558+9XBoTNxPmdGBIBKsI
 kQdJSCHe8Gar39410s776LPU42iiup9AdXk1BBpb+0KgQo1uzJr5hqGBgVoKvbu7QKGJOAuk
 nBkl0HLGNIGGm56SKG+gRYBeaqYoVDo2JEBDbz3QZHw5iZJeayjUuZBCoO3ROtzdRFZVUAVk
 S+NJlExZkUbKXpXckbV/bxbI7qsqgGxVaXmJuiw87ccGBUaxCsczV4QB5SlDRFgVdWM4X03G
 gXIyHdA0ZFxgeuXJdCCkxUw5gIWffgv4YQ3ArL45nB9WAfywtKFLGOwketJ/7LrKAJyvb6X+
 RdJG23B9L8k4wMaKcH3AlCkBULPlq/dgzEcBbJ5VE/oDE8YTjqw92GGckcKCom5czyLGDf4s
 2MT4bVawsrZthw10+lbuIKkvgsx7CvZM11L8Jc7Beq077zeBX7UqimcL2PswA+eZg3GZxYDn
 W3AmK3/Xcwp2aocIfQ3G2MCaJkdePgvrGjIB324ExxeN9TKmw5yGxxgvi2Bqsph3W0NVxqCA
 5/2wrCp3t1wGR1crd18nB8AXZYtkNrB68n9ZEQAVwIyN5IL9Wc45hI124OTBXGSIv8PV0GAl
 0P2p3m3tWiNo+uXbARgaSAxF7n623mJCHsXFBHcASGMSU5Hruk4S+cljbrKKUB9FZBDLdYAD
 NC4xE8Xu+ewlZvzlEex1lg1jFX9PBbSBeRyINtxs15iYShXktcT2SantvZVhm4OBY2MtifHW
 YKLW0hOVdnmFZtkcnpfefuSR0KGcHRinszeM/ItdD4W72QvVfcvamuGUBPWJC6qLy92utnOT
 Nc9bjbsEU/ucynyObdmtxNDrUpLJN1PFOisXq/1Gllx699b3uqgxl0lx8nkJzgXInY5gCk7+
 B3HionlPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7q2pTqxBrcmM1rcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MFe0XWQvWsFdcnruTrYFxBVsXIyeHhICJxMmuD0xdjFwcQgJLGSX+
 bz3KApEQk5i0bzs7hC0s8edaFxtE0SdGib6fu1m7GDk42AT0JHasKgSpERFYwSgx+YQ3SA2z
 wGsmiSNH37GCJIQFAiReXt8NNohFQFVi3oITYAt4Bewlfs/7zgyxQF5i9YYDYDYnUPzntAtg
 1wkJ2EksPvqTaQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBsbPt2M8tOxi73gUf
 YhTgYFTi4XVI0Y4VYk0sK67MPcQowcGsJMJr+xUoxJuSWFmVWpQfX1Sak1p8iNEU6KiJzFKi
 yfnAuM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cA4RbhUNPHh
 XR9twThL/o74ve5LnYrvT1q41Mxg26En0R0v+AwlX6yNOrvezZ03+PnDPKvkoxGbL/0R+PLg
 dV3+r6kXdddxbY14e+l9yx9lodU2zon1ijUvNuwR6S3YfvCidPiT9qsvOfdG5qduvbTHKK68
 +lYk09X3RZJFIfuvMT/WsV5fZhmjxFKckWioxVxUnAgAgmBHGrMCAAA=
X-CMS-MailID: 20190715124445eucas1p1a73385fcbe6205d868ae63b1198ff572
X-Msg-Generator: CA
X-RootMTR: 20190715124445eucas1p1a73385fcbe6205d868ae63b1198ff572
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124445eucas1p1a73385fcbe6205d868ae63b1198ff572
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124445eucas1p1a73385fcbe6205d868ae63b1198ff572@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054448_994642_4FA3B7EA 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
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

Add ID to mout_sclk_cpll MUX to make possible children connection in
the DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 2395b02ce8c5..6d1a0ef9172e 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -696,7 +696,7 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 			CLK_SET_RATE_PARENT, 0),
 	MUX_F(CLK_MOUT_SCLK_DPLL, "mout_sclk_dpll", mout_dpll_p,
 			SRC_TOP6, 24, 1, CLK_IS_CRITICAL, 0),
-	MUX(0, "mout_sclk_cpll", mout_cpll_p, SRC_TOP6, 28, 1),
+	MUX(CLK_MOUT_SCLK_CPLL, "mout_sclk_cpll", mout_cpll_p, SRC_TOP6, 28, 1),
 
 	MUX(CLK_MOUT_SW_ACLK400_ISP, "mout_sw_aclk400_isp",
 			mout_sw_aclk400_isp_p, SRC_TOP10, 0, 1),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
