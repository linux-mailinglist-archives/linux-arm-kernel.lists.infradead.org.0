Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FFE689F4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gC69DzUoEh7tXirqdnaOzglNDC/yIEruaP2TRZrqRmA=; b=egnBtkMSbvgEB+IvJwiFaTCm0i
	SJZy7gpaT4hDMvTRMh+0/CTbxnq6aVjIpsKIkt8iK6JvHDr6PaEe/Yu0vJLt5UyerTeUr89vQhatK
	Xe48tz2FLoN+3aX8QF2HHfw2OwzLen5F6vbJ630qc00HgHyM1M2ut5V9nhRweLTkSH1/Al5NMzUCT
	DyP2iKbGyw6bEETMD6ihkwuxXL2rtuROKfsoXc/Wvv3U9kDeZL7adJG6EWdQpe0XZRdMhAnzOo+7O
	RIbVyVXjCWWqPx4eKqBiH6BlGqrFR6yYr6waBn4eS/S10HfPNn4/QE2kC5WGGibgykQtnrN7NN0iC
	QmM1kFXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Qm-0000VV-Bx; Mon, 15 Jul 2019 12:50:12 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LX-0003jy-6X
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:49 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124445euoutp01ab83aec9f304d63f61826be4c1c421ba~xlUjfCSqv1961119611euoutp01R
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124445euoutp01ab83aec9f304d63f61826be4c1c421ba~xlUjfCSqv1961119611euoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194685;
 bh=I0OgqZ2CWuBbzFVPzjbpMciCe+FwTz52wvrMkQPDL5M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ObnQuiRvdNyYX9RLbw5zfKcJ7MZ2NjnNrcvhxw8X05vJ0upeI3HsX6Jb6Fzea4GUr
 GvPbT4STPD4HhxVpVuZdo2xUR2g/ETfyhTXfBTX75RQCsEYZpKf2mfs79RAefkZc+a
 KR/WxW6lN/GAv8jaYLvAoJ3LNf1VyeoQvUKcqYDo=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124445eucas1p1cadbf6f8142613a4c6698072f6a76f2d~xlUjA0E280156501565eucas1p1E;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 76.25.04298.D357C2D5; Mon, 15
 Jul 2019 13:44:45 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea~xlUiPFHjO0850908509eucas1p2R;
 Mon, 15 Jul 2019 12:44:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124444eusmtrp1f2cf85a295731db67f52673a8212a215~xlUh7zPut0462004620eusmtrp1L;
 Mon, 15 Jul 2019 12:44:44 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-ad-5d2c753d0c8a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 1E.F6.04140.C357C2D5; Mon, 15
 Jul 2019 13:44:44 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124443eusmtip2d58fdac071ad32fdd16f4b5966dd5450~xlUhJJv4X1176011760eusmtip2z;
 Mon, 15 Jul 2019 12:44:43 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 13/50] clk: samsung: add DPLL rate table in Exynos5420
Date: Mon, 15 Jul 2019 14:43:40 +0200
Message-Id: <20190715124417.4787-14-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUwTQRTHnW73aKW6FoQJciQ1GrzAJn4YORQSSdYYTflkohhdYAMEWrBr
 VdRoUfHACoIE1EgFU5UUPKgN1oqo0IBiuFEQo1HQiHc4asQIcZdF/fZ7v/m/eS+ToTC1Gw+k
 0g27OKOBzdQQSnld80T7ihjT8m0r84YxNHCjHUe1527iqG/8A44ueYSycOgzhjo6bpGo7fAX
 Eg2Yg5Bj6DmORiyvcdTjvkigcx0NMnTd84pEV/q6ZKirNR69zK0iUN59D4mavhzH0dTzWnms
 L1NjrQHM9/48knHYTxLMbdsh5tG3ehlT4LQDZswRoiO3KKNTuMz03ZwxYs0OZVrv+QdktnXu
 3pHmVWYw6pMPFBSkV8EGZxkhspquArD8rTYfKAUeB/DzQD2QijEAr/6+h/3t6HF4gdRxDcD8
 XNm/jj5XgVBQFEGHQ5d9p5jxo20AeiaSxAxGv5DB+nd3cfHAl14PPzbXTrOcXgR73J3Ta6jo
 tbDjyFG5NCwUVt96OD1YIfiJUjGjFHw3CU9Z6nEptA5Omq2kxL7wU4tzhoPg07OWmYt4aD5d
 CSQ+AIcKy2cyUbCppQsXl8boJfCmO0LScdB75wIhakjPgf1f54kaE7C4rgyTtAqeOKaW0mHQ
 aemUSewPr9WUklKEgRXFodLrFAPYMllFngGhF/7PqgDADgI4E69P5XitgdsTzrN63mRIDU/O
 0juA8KOeTrWMuoC3O6kR0BTQ+KhiU5ZtU+Psbj5H3wgghWn8VDFeQalS2Jx9nDFru9GUyfGN
 YAEl1wSo9s96s1VNp7K7uAyOy+aMf09llCLQDDJrNEWRnQka/5HI2Sq3JThsCxxfPRDi2UAs
 3nC5YFPiL52u92tSsu4gOTUYa9hsrSxp7Y+Zo3gfyf3cNMbmLo6Ua0sS1MfbP2TMtz1u1SXY
 3G+HtSQW7Co0+T/zCdqYGK2vcKqejBdFpbcxKUF2R/WooosdXPiDKIg/GAffa+R8Gqtdihl5
 9g9aa1gHTQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7o2pTqxBi8WclrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MKzP3sxfM46/4eMykgfETTxcjJ4eEgInE5U1fGbsYuTiEBJYySvzY
 8o4JIiEmMWnfdnYIW1jiz7UuNhBbSOATo8TE2a5djBwcbAJ6EjtWFYKERQRWMEpMPuENModZ
 4DWTxJGj71hBEsICnhIvj20Es1kEVCUu77oANodXwF7ifHMLC8R8eYnVGw4wg9icQPGf0y5A
 7bKTWHz0J9MERr4FjAyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAuNm27GfW3Ywdr0LPsQo
 wMGoxMPrkKIdK8SaWFZcmXuIUYKDWUmE1/YrUIg3JbGyKrUoP76oNCe1+BCjKdBRE5mlRJPz
 gTGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBMVts+YpvB12O
 f882iLI+mPNzDdfNlJbItyZ39z5XYnPYHakw0eDU0mVlz5auXKwXYhK+aUb6fL2XabWfbjf2
 nv66rsnvmE3l3pfztieINiwK/vR/R5fVYcvz//x03hrsm8HdHCO76dz9tdHNTboPn7padMVv
 +XL6k4kVS1yy+IbVdpPWzj4RMl2JpTgj0VCLuag4EQDO9qW9sQIAAA==
X-CMS-MailID: 20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea
X-Msg-Generator: CA
X-RootMTR: 20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124444eucas1p2683c9896e8be45d6a0cd4afeb681a2ea@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054447_776924_2C81F9DE 
X-CRM114-Status: GOOD (  13.84  )
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

The DPLL has fixed frequency left by the bootloader and it is not possible
to change it. With this patch the DPLL gets rate table the same for the
whole  PLL family (similar as APLL, KPLL according to RM) so the frequency
might be changed to one of the values defined there.
It is needed for further patches which change the DPLL frequency to feed
the clocks with proper base.
It also sets CLK_IS_CRITICAL for SCLK_DPLL due to some drivers which could
disable master clock, which is then populated higher and tries to disable
PLL, which casues system crash. The flag is needed for this kind of use
cases.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 7f8221527633..2395b02ce8c5 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -694,7 +694,8 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 	MUX(0, "mout_sclk_rpll", mout_rpll_p, SRC_TOP6, 16, 1),
 	MUX_F(CLK_MOUT_EPLL, "mout_sclk_epll", mout_epll_p, SRC_TOP6, 20, 1,
 			CLK_SET_RATE_PARENT, 0),
-	MUX(0, "mout_sclk_dpll", mout_dpll_p, SRC_TOP6, 24, 1),
+	MUX_F(CLK_MOUT_SCLK_DPLL, "mout_sclk_dpll", mout_dpll_p,
+			SRC_TOP6, 24, 1, CLK_IS_CRITICAL, 0),
 	MUX(0, "mout_sclk_cpll", mout_cpll_p, SRC_TOP6, 28, 1),
 
 	MUX(CLK_MOUT_SW_ACLK400_ISP, "mout_sw_aclk400_isp",
@@ -1514,6 +1515,7 @@ static void __init exynos5x_clk_init(struct device_node *np,
 
 	if (_get_rate("fin_pll") == 24 * MHZ) {
 		exynos5x_plls[apll].rate_table = exynos5420_pll2550x_24mhz_tbl;
+		exynos5x_plls[dpll].rate_table = exynos5420_pll2550x_24mhz_tbl;
 		exynos5x_plls[epll].rate_table = exynos5420_epll_24mhz_tbl;
 		exynos5x_plls[kpll].rate_table = exynos5420_pll2550x_24mhz_tbl;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
