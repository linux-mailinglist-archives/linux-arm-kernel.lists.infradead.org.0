Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BCE68926
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:45:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vJQqKXBgTZW7eGTv3gF2YUeZHJwIfieHDmJsNVw7NNU=; b=nFFxTe2Qpb14pLKsF1zOKFNih/
	NP3Hed0iU0m8rJ9oJEhhRfJclPMGm/TnZF8/pq2ftkXG1CqQYmxp/XsKPUFmkz7OlcY8RfRDmW39H
	cNtRn4Cpg+4JKPZ6bPhsixMFLrYJsXMWn/BcYJaVU9OlpSWSICEriT0vN4svaHoZafuue3fLf53a+
	2P3Q5ehVX03HTwDffHTWGuEncrnGSxIUiImdpHN7AO9uPccVJesLFGkmAwAT1Ux+E643YhIWh2e9M
	yAMtBSnpJ7RuzP0yuo22jNxb/RFjA2pa5orqnQzi+fh4kVWjVtflA1UoebdpVf8cRP4Nmecg006N5
	Umxhvyng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Me-0005R1-Vw; Mon, 15 Jul 2019 12:45:57 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LQ-0003f4-Nj
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:42 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124438euoutp02f5690a3f4d2531ede458d506ac4e6502~xlUc4BOot0595105951euoutp02V
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:38 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124438euoutp02f5690a3f4d2531ede458d506ac4e6502~xlUc4BOot0595105951euoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194678;
 bh=XoFa4dmm8dDeVK12ljWsbis1GfZPOfLYGWx2zF9kYwI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=LdTZIvUVNL74ZESo49vC4TL5yo3FqaKH9OOthO7jo2rmIHMjhRJoeptts/fD7lfRw
 dRNXpNYkPmxbFiF7IFuy+FrUBO32IQZBDW3Qrn0P2W12cDTkMxoBgHFCd5EOgvg3DY
 hwfWxlPf92y044zEGTDpxGpCIf/Z924JY8JakjW8=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124437eucas1p2747bd7e25bfb480364258190704768f9~xlUcC4CGL2439124391eucas1p2G;
 Mon, 15 Jul 2019 12:44:37 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 44.D1.04377.5357C2D5; Mon, 15
 Jul 2019 13:44:37 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad~xlUbOkbKw3056930569eucas1p1L;
 Mon, 15 Jul 2019 12:44:37 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124436eusmtrp132f287fdda1f87a01171592cbe97eb9b~xlUbAcVPJ0462004620eusmtrp1u;
 Mon, 15 Jul 2019 12:44:36 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-cf-5d2c75359474
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id A1.40.04146.4357C2D5; Mon, 15
 Jul 2019 13:44:36 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124435eusmtip2929ecdd38a0b73990242b46860f21749~xlUaOaKN01101111011eusmtip2H;
 Mon, 15 Jul 2019 12:44:35 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 04/50] clk: samsung: add IDs to manage aclk400_mscl in
 Exynos5420
Date: Mon, 15 Jul 2019 14:43:31 +0200
Message-Id: <20190715124417.4787-5-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeyyVcRjH+73veS/M0esgv2HUWVoXORTbb0vSlu0df6R12boYR95cDzov
 SmlRKcxtmGRJNsack1uYhIWzQy65LURJsbW5nWP0hzRyvKr/Ps/3+T7P97dnPxqXtBLWdGhk
 DKeMlEdISWNRo3Zt4KhbrKOfc8/HA2ii6gOBaguqCTS2+oNAxZqtMmtmHkcDAzUU6n+wQKGJ
 RFtUNzNKoOX0KQKNND8nUcFAG4Zeab5QqGxsCENDPV5oMqmCRMmtGgp1Ljwh0MZorcjTnFW/
 UANWN55MsXWVqST7uvQ+277UgrGZ9ZWAXamz86WuGLsHcRGhcZxS5hFgHDKa2YNH63bfzs4b
 IRNBvzgN0DRkXKH2K5UGjGkJUwFg75AKF4pVAIsKZ3eKFQBrlqqINGC0PTE6oSWFRjmAJdpk
 0b+R0r4GzLCXZJxgU+VNw4AFUwqgZi3Q4MGZTxhsmX2zvcmcuQTbH85jBhYxDnAjP4M0sJjx
 gI/al3AhzR6qat5tsxFzCq7lD24nQ2aYgtWN70nBdAYulnSKBDaHc131lMC2sDc3fUfnYWJG
 CRA4Ac5kFe14TsDOriHC8GicOQSrm2WCfBpWpeSSwo1M4fiimUHGtzCn8SkuyGKY8lgiuA/C
 +vRBTOA9sFydv7OchfqGNUw4Tw6AS3P1omxgX/g/7CUAlcCKi+UVwRx/LJK75cTLFXxsZLDT
 9ShFHdj6VL0bXatNoPl3YAdgaCA1EXsGHfGTEPI4Pl7RASCNSy3EJ39uSeIgefwdThnlr4yN
 4PgOYEOLpFbiu7umr0qYYHkMF85x0ZzybxejjawTQRbR0jFGK+O9vyvVJa54qeV5VXjqPRfZ
 upeZV1i3rzpbP+ngPhyjveDm7NyZw1EqOuHXdPPZGxoff0d0vO3auu3mswBUQC6b+NB5e1uc
 3ppcVMTrLhP7Ct3tiLDQsnCVabBOHzQsq04q1pt9m2pfr9p0PNfnb9lts7/2s5e3VMSHyF0O
 40pe/geGh6QfUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7ompTqxBlvadCxurTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamS
 vp1NSmpOZllqkb5dgl7Gtb5TzAXv+SsmTLnM1sB4lreLkZNDQsBE4tqtY2xdjFwcQgJLGSVe
 Le1igkiISUzat50dwhaW+HOtiw3EFhL4xCixvS2/i5GDg01AT2LHqkKQsIjACkaJySe8QeYw
 C7xmkjhy9B0rSEJYIETiztsLYDNZBFQl/k3rBZvDK2An0XLwHTPEfHmJ1RsOgNmcAvYSP6dd
 gNplJ7H46E+mCYx8CxgZVjGKpJYW56bnFhvqFSfmFpfmpesl5+duYgRGzrZjPzfvYLy0MfgQ
 owAHoxIPr0OKdqwQa2JZcWXuIUYJDmYlEV7br0Ah3pTEyqrUovz4otKc1OJDjKZAR01klhJN
 zgdGdV5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkbv9LVH92RL
 XfbY4qMl7Vd2v/j4ZIEvmR7rphxJ9+RIzTG7cKP4Elvd86OLt8zRY2Z0yZq24Jmsw9Qv4R8M
 1t0RnhB+RNdT/MEJ/tVb1T5uWGFSckv16LIPz7SfPuOf0rhh2vYtL21ZAr+cClBe3VB6M/jV
 zy8aKrHs+SxJ6y+9WPk7SDgp4MZZJZbijERDLeai4kQAk0CNrbICAAA=
X-CMS-MailID: 20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad
X-Msg-Generator: CA
X-RootMTR: 20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124437eucas1p1827d7b5d7196f060799e5df6c27d29ad@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054440_906666_81B952F7 
X-CRM114-Status: GOOD (  11.73  )
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

Add needed IDs to MUXes which are used from DT to properly set clock
hierarchy.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 361ee53fc9fc..8f1d39cb2f1e 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -462,7 +462,8 @@ static const struct samsung_fixed_factor_clock
 
 static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 	MUX(0, "mout_aclk400_isp", mout_group3_5800_p, SRC_TOP0, 0, 3),
-	MUX(0, "mout_aclk400_mscl", mout_group3_5800_p, SRC_TOP0, 4, 3),
+	MUX(CLK_MOUT_ACLK400_MSCL, "mout_aclk400_mscl", mout_group3_5800_p,
+			SRC_TOP0, 4, 3),
 	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group2_5800_p,
 			SRC_TOP0, 16, 3),
 	MUX(0, "mout_aclk100_noc", mout_group1_5800_p, SRC_TOP0, 20, 2),
@@ -548,7 +549,8 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 				TOP_SPARE2, 4, 1),
 
 	MUX(0, "mout_aclk400_isp", mout_group1_p, SRC_TOP0, 0, 2),
-	MUX(0, "mout_aclk400_mscl", mout_group1_p, SRC_TOP0, 4, 2),
+	MUX(CLK_MOUT_ACLK400_MSCL, "mout_aclk400_mscl", mout_group1_p,
+			SRC_TOP0, 4, 2),
 	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group1_p,
 			SRC_TOP0, 16, 2),
 	MUX(0, "mout_aclk100_noc", mout_group1_p, SRC_TOP0, 20, 2),
@@ -670,8 +672,8 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 
 	MUX(0, "mout_sw_aclk400_isp", mout_sw_aclk400_isp_p,
 			SRC_TOP10, 0, 1),
-	MUX(0, "mout_sw_aclk400_mscl", mout_sw_aclk400_mscl_p,
-			SRC_TOP10, 4, 1),
+	MUX(CLK_MOUT_SW_ACLK400_MSCL, "mout_sw_aclk400_mscl",
+			mout_sw_aclk400_mscl_p,	SRC_TOP10, 4, 1),
 	MUX(CLK_MOUT_SW_ACLK200, "mout_sw_aclk200", mout_sw_aclk200_p,
 			SRC_TOP10, 8, 1),
 	MUX(0, "mout_sw_aclk200_fsys2", mout_sw_aclk200_fsys2_p,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
