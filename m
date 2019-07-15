Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECAB689F8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ALuTPuI1lyza+gtT8XkXhRoyg2m/kJP+kgy0uYsb0n0=; b=gt18KvnKqUVY3dYOmuq3zryXPM
	1tv4eqXIPJ6Tx3doYxh6IgoWeBeOxhUsmPekhGaIu8E1sB9OQtdn44yiLhjnb51zta2tN67pN+C88
	baj8k/I0gYcaho2Kb+eOsDo1bfWdBLh7xA5EWA6EG2k289pml3CXl2qgL2G4e4pvs3VtjUVj8ZPFw
	zrD2aeln1ixYEZyQyZ932UK7JNxdaaU0WOr5MN2WjHx/80oFbklgljsnUYuURft4iT86eFxAeFqp2
	dvLHE5fKmAo1LtSZYDiGIGYbh6z61XJ2DW/7NEg2DC5wXOqWo5pTpHFu1SF0TcqTBoQ2BsF0zzNta
	zFx0bEQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Rg-0002O8-LQ; Mon, 15 Jul 2019 12:51:08 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LZ-0003m0-Kr
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:51 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124448euoutp010c5b92a7dc7904c6a580cc93e9e7074c~xlUlxS2CL1961119611euoutp01U
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124448euoutp010c5b92a7dc7904c6a580cc93e9e7074c~xlUlxS2CL1961119611euoutp01U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194688;
 bh=rfp9DgQhY51JkaM7dDI4cfxRpTkOLy+J/a8uenktk2g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RlYKMGzALSYkueqgSLTxGIYIdtwJUyLyUE5gsrbfa7dudMUxIkfqqJMb8FZIkWoZE
 3Vwx0SPTYy8jKuL67AGU2kGl0Gfoy2O+PxOQ9t1nq3L7nrc8nOxNMRGHj+DqZm3wfm
 DHngelo98u7gyCoj8E619PuBAdGGWU8/kxzaegkA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124447eucas1p2eeb720d39764acd64daefb38d5632c62~xlUkoFje43211132111eucas1p2J;
 Mon, 15 Jul 2019 12:44:47 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 6E.A0.04325.E357C2D5; Mon, 15
 Jul 2019 13:44:46 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124446eucas1p1de55fe42ed5555c7a09b10f8c3ec3c3e~xlUjtOC950154701547eucas1p1E;
 Mon, 15 Jul 2019 12:44:46 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124445eusmtrp1f2b258c6fb4fd864e1acb9f01f0eca8e~xlUjfB8V10462004620eusmtrp1Q;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-c6-5d2c753e9561
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 79.40.04146.D357C2D5; Mon, 15
 Jul 2019 13:44:45 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124445eusmtip2849cde4b0347e975236d81591710da8d~xlUiteKn10518605186eusmtip2i;
 Mon, 15 Jul 2019 12:44:45 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 15/50] clk: samsung: add MPLL rate table in Exynos5420
Date: Mon, 15 Jul 2019 14:43:42 +0200
Message-Id: <20190715124417.4787-16-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURjAO7u7D1fT25Q8mGiMAi0fPdQOaGZkcAusoCispFbeVPLVro8s
 LR/4SCxFcQ01H5Voy8ecMlI0TEUhWXNGTg1fKUg1DVFDK6zNq/Xf7/u+3/fgcChM0o47UBHR
 caw8WhYpJURCbe+q3t0/3i1kf3nlQTTa8B5HTcpGHBmXZnFU0WMO86e/YUivV5NIl24i0Wiq
 I9JMD+FoIW8cRx/aygik1L8RoPqeMRJVGw0CZHh3An1KqyVQZkcPibpN2ThaG2oSBtgydeV1
 gPk+nEkyGtVDgml+8YB5O98uYB63qACzqHE6S14S+YWykREJrNzT/5oovEv5i4htsrkzb1KD
 VJAtzgVWFKS9YPYXHZELRJSErgVwtlpB8sESgFklRgEfLAJYv/IM32zJaJ3F+UINgLqXU8J/
 LYULH80ViiJoD/haddvSYEe/ALBn9brFwegRAWyfaV13bOmTsLMoxeII6T0wo6GAsLCYPgpH
 ynKE/DJn+ErdiVnYypxfVQys3wrpQRIqZxQbUiBcyezAeLaFX/taSJ4dYX9R3obDwdRHVYDn
 ZDid/3TD8YXdfYb1ezDaFTa2eVoQ0sdgpcKdR2s4PLfdImNmLNQ+wfi0GOZkSfgZLrAlb0DA
 8w5YU6fYmM1AfasW4x+nEMDitMdkAXAu+b+rEgAVsGfjuagwljsUzSZ6cLIoLj46zONGTJQG
 mP9U/1rf8mvw5vf1LkBTQLpNHBC6L0SCyxK4pKguAClMaic+smxOiUNlSXdZecxVeXwky3WB
 nZRQai++t2XysoQOk8Wxt1g2lpVvVgWUlUMq6A4uPROjQSN9abplzbUZ3Z9ig9a76bOLU/HE
 +JgxJVHrWj5Z7Th1pbco6GYg8fzC4C7r+l1Gb3WyId29YXYi8IdLYL6vau7+6RhH2bmQPBtp
 2OFw/6ILESWngoOaV022FUxvuGjsfLDBxw1e3LpYOlTmUyUk/RTFx3d7ef8cn5MKuXDZgb2Y
 nJP9BfpuMx5PAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7q2pTqxBr1Nxha31p1jtdg4Yz2r
 xfUvz1kt5h8Bcvsfv2a2OH9+A7vF2aY37Ba3GmQsNj2+xmrxseceq8XlXXPYLGac38dksfbI
 XXaLpdcvMllcPOVqcbtxBZtF694j7BaH37SzWvy7tpHFQdhjzbw1jB7vb7Sye2xa1cnmsXlJ
 vcfBd3uYPPq2rGL0+LxJLoA9Ss+mKL+0JFUhI7+4xFYp2tDCSM/Q0kLPyMRSz9DYPNbKyFRJ
 384mJTUnsyy1SN8uQS/j0IzfbAUb+SvevdnA2MDYztvFyMkhIWAi0bzzOWsXIxeHkMBSRolz
 rbsYIRJiEpP2bWeHsIUl/lzrYoMo+sQosfbVXSCHg4NNQE9ix6pCkBoRgRWMEpNPeIPUMAu8
 ZpI4cvQdK0iNsICnxIHJtSA1LAKqEs3rJrCB2LwC9hI353SwQMyXl1i94QAziM0JFP857QJY
 jZCAncTioz+ZJjDyLWBkWMUoklpanJueW2yoV5yYW1yal66XnJ+7iREYOduO/dy8g/HSxuBD
 jAIcjEo8vA4p2rFCrIllxZW5hxglOJiVRHhtvwKFeFMSK6tSi/Lji0pzUosPMZoCHTWRWUo0
 OR8Y1Xkl8YamhuYWlobmxubGZhZK4rwdAgdjhATSE0tSs1NTC1KLYPqYODilGhgj32wUPf5r
 LdNW1uqJTLHX32R3XioJ7tt57twjzYCv04O3KK6+lbj+/nK75dkvTj7yll9XwJOw8bLXwybb
 WSG/Wo7q5Z/1ZvAT+v7I3Ca9TPn63ALZdWFnnH5Mqnl/WFCnp+p0UO25md62Ge5rP928w7lW
 Ytk0b81zXxkM67PfTQpaZOGQsU1YiaU4I9FQi7moOBEAeaHc3LICAAA=
X-CMS-MailID: 20190715124446eucas1p1de55fe42ed5555c7a09b10f8c3ec3c3e
X-Msg-Generator: CA
X-RootMTR: 20190715124446eucas1p1de55fe42ed5555c7a09b10f8c3ec3c3e
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124446eucas1p1de55fe42ed5555c7a09b10f8c3ec3c3e
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124446eucas1p1de55fe42ed5555c7a09b10f8c3ec3c3e@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054450_169027_AB5B41BB 
X-CRM114-Status: GOOD (  13.91  )
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
to change it. With this patch the MPLL gets rate table the same for the
whole PLL family (similar as APLL, KPLL according to RM) so the frequency
might be changed to one of the values defined there.
It is needed for further patches which change the MPLL frequency to feed
the clocks with proper base.
It also sets CLK_IS_CRITICAL for SCLK_MPLL due to some drivers which could
disable master clock, which is then populated higher and tries to disable
PLL, which casues system crash. The flag is needed for this kind of use
cases.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 6d1a0ef9172e..cded46f360f1 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -687,7 +687,8 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 	MUX(CLK_MOUT_USER_ACLK300_GSCL, "mout_user_aclk300_gscl",
 			mout_user_aclk300_gscl_p, SRC_TOP5, 28, 1),
 
-	MUX(0, "mout_sclk_mpll", mout_mpll_p, SRC_TOP6, 0, 1),
+	MUX_F(CLK_MOUT_SCLK_MPLL, "mout_sclk_mpll", mout_mpll_p, SRC_TOP6, 0, 1,
+			CLK_IS_CRITICAL, 0),
 	MUX(CLK_MOUT_VPLL, "mout_sclk_vpll", mout_vpll_p, SRC_TOP6, 4, 1),
 	MUX(CLK_MOUT_SCLK_SPLL, "mout_sclk_spll", mout_spll_p, SRC_TOP6, 8, 1),
 	MUX(0, "mout_sclk_ipll", mout_ipll_p, SRC_TOP6, 12, 1),
@@ -1518,6 +1519,7 @@ static void __init exynos5x_clk_init(struct device_node *np,
 		exynos5x_plls[dpll].rate_table = exynos5420_pll2550x_24mhz_tbl;
 		exynos5x_plls[epll].rate_table = exynos5420_epll_24mhz_tbl;
 		exynos5x_plls[kpll].rate_table = exynos5420_pll2550x_24mhz_tbl;
+		exynos5x_plls[mpll].rate_table = exynos5420_pll2550x_24mhz_tbl;
 	}
 
 	if (soc == EXYNOS5420)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
