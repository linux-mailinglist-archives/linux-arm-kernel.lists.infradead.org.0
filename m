Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4A66689F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Aj8nlbdZCxGxz9FnYs6xaVsrv86Ccsg58H+j2blns1I=; b=AhkxovRWKlyfZJ/0WW1865XTN0
	2RtTT4lqRxI8Qp/p1jr5XbSGAy10/v3gBBemytQBqblbg5e2XoSIEFpJqHxjoU/kdHYC8uIgeV5KI
	xWgW101Hv6Zi5t+ZqISEUmXLGPYMtnoPDg/8LEDFqy/N0FbbXhrpYQVTQ//jxmLLHBonncQqfM5bH
	baf3g0flRazHJsGc/4jr1DAs0HRQutVj2NhjbLW6ZVHAklLtWQy7peAh01Gu+CF+Th9dZYQP+Kof/
	FjBPG/iZgLK3l+oOXs21+AKGNeKRP/hdk88WrWNQ66pngFwVyB+3ffInKLO9cVU18J/9nXSOoPrgF
	BVBN+5pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Ry-0002dc-Ln; Mon, 15 Jul 2019 12:51:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LZ-0003mL-T4
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:51 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124448euoutp01c66274c68985fd4fdac8a0510c5df29d~xlUmEUj0N1961119611euoutp01V
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124448euoutp01c66274c68985fd4fdac8a0510c5df29d~xlUmEUj0N1961119611euoutp01V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194688;
 bh=EsxerzHQ4ZXYQ6jsCCnM/GUgNUB7wTJMtvJQYjBnbJc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EhhHS3Ec3UqntgFT90v4IHg8kkXgOdlO1spElEwhNkS3zuedBAFYOYUgIXt7UKXGb
 CJIcI1it2PFSvYjwE5Eh1rWtTG2Db/YCwUunGAoVTEoxQWeklwJr540bncCOnv5GIB
 z7MnCJwlK88Z34ukwG5GkwrSyVXry1ObIMeeePJE=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124447eucas1p2fac5d54d14ae1c6ac361c15054fda7b4~xlUlRW4NU1544915449eucas1p26;
 Mon, 15 Jul 2019 12:44:47 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CF.D1.04377.F357C2D5; Mon, 15
 Jul 2019 13:44:47 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124446eucas1p1b9b7ec3235fdd887bf5a253a4e223df0~xlUkfJ2t60147201472eucas1p19;
 Mon, 15 Jul 2019 12:44:46 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124446eusmtrp1ef8567d88b2f386d22a61ddf0c6634e7~xlUkRC-ub0462004620eusmtrp1W;
 Mon, 15 Jul 2019 12:44:46 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-ed-5d2c753f1e01
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B1.07.04140.E357C2D5; Mon, 15
 Jul 2019 13:44:46 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124445eusmtip2c1626aa59bd058113658502445456c66~xlUjeAhEE1115211152eusmtip2K;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 16/50] clk: samsung: add SPLL rate table in Exynos5420
Date: Mon, 15 Jul 2019 14:43:43 +0200
Message-Id: <20190715124417.4787-17-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHKsWRmVeSWpSXmKPExsWy7djP87r2pTqxBtNvylrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6M5o0vWAve81ecvLCAsYFxL28XIyeH
 hICJRNvrz6xdjFwcQgIrGCUWb33CBuF8YZS4t2s5lPOZUeLqn0mMMC2bJv6GSixnlDi4/DYj
 XMucD2uBMhwcbAJ6EjtWFYI0iAgsYZQ48jMJpIZZ4CaTxJ4nO1lBEsICnhI9i3qYQWwWAVWJ
 RT9us4PYvAL2Eq8W72KH2CYvsXrDAbAaTqD4z2kXwDZLCJxjl5jR38cKUeQisfT0YyYIW1ji
 1fEtUM0yEqcn97BA2MUSDb0LoV6okXjcPxeqxlri8PGLrCBHMwtoSqzfpQ8RdpT41TidGSQs
 IcAnceOtIEiYGcictA0mzCvR0SYEUa0hsaXnAtQBYhLL10yDGu4hsWbRaRZI8ExilHjfMYdt
 AqP8LIRlCxgZVzGKp5YW56anFhvlpZbrFSfmFpfmpesl5+duYgSmqtP/jn/ZwbjrT9IhRgEO
 RiUeXocU7Vgh1sSy4srcQ4wSHMxKIry2X4FCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeasZHkQL
 CaQnlqRmp6YWpBbBZJk4OKUaGOUFVpRF5h8V3XP6bZNu9tPDlv2KPI5BNseO3ui0E1ZsmOhl
 l32XbdVsk3nq1odq30TVKvftUFarM9nktkz0yLaaB59dMz6bPmkx2Vcu+Z89Y8KSb8UOn9aH
 BJzgLWePmtXCO7/3euCPny0CAq4P4lbmPN7sU9ky6fTM1wtW6ivGmO2+s/OblhJLcUaioRZz
 UXEiAPtb1JxRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7p2pTqxBmt3qlvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M5o0vWAve81ecvLCAsYFxL28XIyeHhICJxKaJv9lAbCGBpYwSj68Z
 Q8TFJCbt284OYQtL/LnWBVTDBVTziVHiz/vdrF2MHBxsAnoSO1YVgtSICKxglJh8whukhlng
 NZPEkaPvWEESwgKeEj2LephBbBYBVYlFP26DDeUVsJd4tXgX1AJ5idUbDoDVcALFf067AHWQ
 ncTioz+ZJjDyLWBkWMUoklpanJueW2ykV5yYW1yal66XnJ+7iREYOduO/dyyg7HrXfAhRgEO
 RiUeXocU7Vgh1sSy4srcQ4wSHMxKIry2X4FCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA+M
 6rySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYwTznxzdFyx6O/p
 CavOO3pWa2cq2R+4dE5Ep1Z576JuqfuXdgovUirR2HSQeemMqVnp/hn+IWtORZhu2jpTbY7i
 3Wdl21kPZStsPTNhhspOV98lR1vFlD1Kyg2kY1Nz9966fnufbfiiuwpXbVbuWxHYuD+hNueN
 7HmbK1EXY+yztuXkzzq6+GuLEktxRqKhFnNRcSIAqCYO3rICAAA=
X-CMS-MailID: 20190715124446eucas1p1b9b7ec3235fdd887bf5a253a4e223df0
X-Msg-Generator: CA
X-RootMTR: 20190715124446eucas1p1b9b7ec3235fdd887bf5a253a4e223df0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124446eucas1p1b9b7ec3235fdd887bf5a253a4e223df0
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124446eucas1p1b9b7ec3235fdd887bf5a253a4e223df0@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054450_187095_1D8D96CF 
X-CRM114-Status: GOOD (  13.70  )
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

The MPLL has fixed frequency left by the bootloader and it is not possible
to change it. With this patch the SPLL gets rate table the same for the
whole PLL family (similar as APLL, KPLL according to RM) so the frequency
might be changed to one of the values defined there.
It is needed for further patches which change the MPLL frequency to feed
the clocks with proper base.
It also sets CLK_IS_CRITICAL for SCLK_SPLL due to some drivers which could
disable master clock, which is then populated higher and tries to disable
PLL, which casues system crash. The flag is needed for this kind of use
cases.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index cded46f360f1..ead569a164cf 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -690,7 +690,8 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 	MUX_F(CLK_MOUT_SCLK_MPLL, "mout_sclk_mpll", mout_mpll_p, SRC_TOP6, 0, 1,
 			CLK_IS_CRITICAL, 0),
 	MUX(CLK_MOUT_VPLL, "mout_sclk_vpll", mout_vpll_p, SRC_TOP6, 4, 1),
-	MUX(CLK_MOUT_SCLK_SPLL, "mout_sclk_spll", mout_spll_p, SRC_TOP6, 8, 1),
+	MUX_F(CLK_MOUT_SCLK_SPLL, "mout_sclk_spll", mout_spll_p, SRC_TOP6, 8, 1,
+			CLK_IS_CRITICAL, 0),
 	MUX(0, "mout_sclk_ipll", mout_ipll_p, SRC_TOP6, 12, 1),
 	MUX(0, "mout_sclk_rpll", mout_rpll_p, SRC_TOP6, 16, 1),
 	MUX_F(CLK_MOUT_EPLL, "mout_sclk_epll", mout_epll_p, SRC_TOP6, 20, 1,
@@ -1520,6 +1521,7 @@ static void __init exynos5x_clk_init(struct device_node *np,
 		exynos5x_plls[epll].rate_table = exynos5420_epll_24mhz_tbl;
 		exynos5x_plls[kpll].rate_table = exynos5420_pll2550x_24mhz_tbl;
 		exynos5x_plls[mpll].rate_table = exynos5420_pll2550x_24mhz_tbl;
+		exynos5x_plls[spll].rate_table = exynos5420_pll2550x_24mhz_tbl;
 	}
 
 	if (soc == EXYNOS5420)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
