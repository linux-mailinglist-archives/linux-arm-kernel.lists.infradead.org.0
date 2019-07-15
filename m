Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFFF689EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V2tetzoLNJgDb4g/g71xhEhpgQT9kqYArHEQaT0IoPk=; b=I+n3QEuVMIZvCDFYLLgT5pZ0WH
	/YwxZxjG5s10NArX/b9zTc2KLMnbh2OIcvXnXKKTnUaj/eWzcNbOeZDoCJsII7UOvNkpQsJxXTqjW
	ukD5ha9sqaD73LFAjST+UccvuB9y0f0dcz6EBn149UfDcVzcYViWkSlsX5ieYjIVGmLZ5XbmdyLev
	h1486td04sD3sWTZsfDDCBl70Y78RZ9AVq0m0TH3iTyU4DDxwjC/MRXlvX10A4Crqud+5Uy3VeSOS
	ebg+5LOp2r3plrYgqA/EspJaDkRqlbfdNeXJgs+lTeXP/xZsYYiHShPp8UT1os5PcYMhNxp/irY0N
	jV6V2Krw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Pq-00085Y-0U; Mon, 15 Jul 2019 12:49:14 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LV-0003hy-AD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:47 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124443euoutp026fd266dcd978ce5ca682468edab7bd12~xlUhmeUpS0715707157euoutp02L
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124443euoutp026fd266dcd978ce5ca682468edab7bd12~xlUhmeUpS0715707157euoutp02L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194683;
 bh=TNMDlrEGNX0c/FAGLJwBwogSDFomMQGZ5XtYvST6wPU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eh5O17bFBwnwBxJd70Atq/x3LeK8D9H5KeLLo6NbIOqwqY35nHdAjjVypNcuIg1SE
 KNLzPqUHKwnhX1fbjqYoLRuknDrFzUZzJ78PaFGW5eO5ZfnpiOhAYqfNGoEiXAUHZE
 DINtO+xYiqDM/eMg13I9xCoUqGYgei0J9/lmX36k=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124442eucas1p2562922978ee9e08e0f404e1097496662~xlUgrk9Ss3211032110eucas1p2w;
 Mon, 15 Jul 2019 12:44:42 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id DA.D1.04377.A357C2D5; Mon, 15
 Jul 2019 13:44:42 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124441eucas1p29f1205c20e9bea5b33f8f0b5747b1102~xlUfyZRCm2241922419eucas1p2V;
 Mon, 15 Jul 2019 12:44:41 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124441eusmtrp198c759f5d51d3e8d43f6025759cdd4e2~xlUfkQ2CZ0462004620eusmtrp1A;
 Mon, 15 Jul 2019 12:44:41 +0000 (GMT)
X-AuditID: cbfec7f4-5632c9c000001119-df-5d2c753a56d7
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 9A.F6.04140.9357C2D5; Mon, 15
 Jul 2019 13:44:41 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124440eusmtip2f4d8cfd6fc6015a063e3e51c1617dfd8~xlUez3HkV1115211152eusmtip2G;
 Mon, 15 Jul 2019 12:44:40 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 10/50] clk: samsung: change ACLK100_NOC clocks
 definitions Exynos5x
Date: Mon, 15 Jul 2019 14:43:37 +0200
Message-Id: <20190715124417.4787-11-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrDKsWRmVeSWpSXmKPExsWy7djP87pWpTqxBldmqFjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6Mc8tOMhdckqiY/uYLSwNjv2gXIweH
 hICJxMEVGV2MXBxCAisYJfo+/mODcL4wSrQ0TWWHcD4zSqw9eJK1i5ETrGPOrJUsEInljBJd
 8/+wwrWcf/+JGWQum4CexI5VhSANIgJLGCWO/EwCqWEWuMkksefJTrBJwgIREvM/72QGsVkE
 VCWu/mhiArF5Bewlds7YzgSxTV5i9YYDYDWcQPGf0y6A3SchcIld4vvZZSwQRS4SUy/0MELY
 whKvjm9hh7BlJE5P7oGqKZZo6F0IVVMj8bh/LlSNtcTh4xdZQY5mFtCUWL9LHxIujhKfLgRD
 mHwSN94KghQzA5mTtk1nhgjzSnS0CUHM0JDY0nMB6mAxieVrpkHN9pC427oeGoaTGCVeXpvO
 MoFRfhbCrgWMjKsYxVNLi3PTU4uN8lLL9YoTc4tL89L1kvNzNzEC09Tpf8e/7GDc9SfpEKMA
 B6MSD69DinasEGtiWXFl7iFGCQ5mJRFe269AId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rzVDA+i
 hQTSE0tSs1NTC1KLYLJMHJxSDYyBPLn/buzlsONfYM+wWuMH/5vP4jdl10wyfMzykydoypHk
 gHUaaSYvxdbcLpHgW55VFdphf+ju+Tk2ZodS5+XxCqq6nMmc9zp45dGcb/eXhJ4/VctsoXrI
 rOdl8x45gbV/J/7+le8T89vBe2Lvp5o5PFXfDhRNjOPNPB4QwL1LSePJxI/vcpqVWIozEg21
 mIuKEwG5y7KbTwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7qWpTqxBr++qVncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mc8tOMhdckqiY/uYLSwNjv2gXIyeHhICJxJxZK1m6GLk4hASWMkos
 29vNBJEQk5i0bzs7hC0s8edaFxtE0SdGiXNrLjF3MXJwsAnoSexYVQhSIyKwglFi8glvkBpm
 gddMEkeOvmMFSQgLhEn8nfqbDcRmEVCVuPqjCWwBr4C9xM4Z26GWyUus3nCAGcTmBIr/nHYB
 rF5IwE5i8dGfTBMY+RYwMqxiFEktLc5Nzy020itOzC0uzUvXS87P3cQIjJ1tx35u2cHY9S74
 EKMAB6MSD69DinasEGtiWXFl7iFGCQ5mJRFe269AId6UxMqq1KL8+KLSnNTiQ4ymQEdNZJYS
 Tc4HxnVeSbyhqaG5haWhubG5sZmFkjhvh8DBGCGB9MSS1OzU1ILUIpg+Jg5OqQZGx1DGd7uv
 Lp8fE6ney/3fkd922qdb3+zE3y4S+7Ve4eXT+1c5A/ZYNVt2uFhMv3by22J5JbULsVHMZjt+
 M6y5o3bp7s7a2zYrOlkWdWXuePpy+edLapWrv81X4So1esJpdbo/+veyd/qPF/cH9c3yjZRz
 Uojcnf5wRWGVUinjjy/laucfO7FOUWIpzkg01GIuKk4EAL0oZN+zAgAA
X-CMS-MailID: 20190715124441eucas1p29f1205c20e9bea5b33f8f0b5747b1102
X-Msg-Generator: CA
X-RootMTR: 20190715124441eucas1p29f1205c20e9bea5b33f8f0b5747b1102
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124441eucas1p29f1205c20e9bea5b33f8f0b5747b1102
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124441eucas1p29f1205c20e9bea5b33f8f0b5747b1102@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054445_858169_8C7DE5AD 
X-CRM114-Status: GOOD (  11.63  )
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

The ACLK100_NOC has different topology in Exynos5420 and 5422/5800.  In
Exynos5420 this clock divider has 3 bits while in 5422/5800 has 4 bits.
The patch adds needed dividers in the exynos5800_div_clks, updates
exynos5x_div_clks and exynos5420_div_clks properly. It also adds IDs to
manage clocks from DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 6164d0ca75e0..c13f34d3d9a1 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -471,7 +471,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 			SRC_TOP0, 4, 3),
 	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group2_5800_p,
 			SRC_TOP0, 16, 3),
-	MUX(0, "mout_aclk100_noc", mout_group1_5800_p, SRC_TOP0, 20, 2),
+	MUX(CLK_MOUT_ACLK100_NOC, "mout_aclk100_noc", mout_group1_5800_p,
+			SRC_TOP0, 20, 2),
 
 	MUX(0, "mout_aclk333_432_gscl", mout_group6_5800_p, SRC_TOP1, 0, 2),
 	MUX(0, "mout_aclk333_432_isp", mout_group6_5800_p, SRC_TOP1, 4, 2),
@@ -534,6 +535,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 static const struct samsung_div_clock exynos5800_div_clks[] __initconst = {
 	DIV(CLK_DOUT_ACLK400_WCORE, "dout_aclk400_wcore",
 			"mout_aclk400_wcore", DIV_TOP0, 16, 3),
+	DIV(CLK_DOUT_ACLK100_NOC, "dout_aclk100_noc", "mout_aclk100_noc",
+				DIV_TOP0, 20, 4),
 	DIV(CLK_DOUT_ACLK266_ISP, "dout_aclk266_isp", "mout_aclk266_isp",
 				DIV_TOP8, 12, 3),
 	DIV(0, "dout_aclk550_cam", "mout_aclk550_cam",
@@ -569,7 +572,8 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 			SRC_TOP0, 4, 2),
 	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group1_p,
 			SRC_TOP0, 16, 2),
-	MUX(0, "mout_aclk100_noc", mout_group1_p, SRC_TOP0, 20, 2),
+	MUX(CLK_MOUT_ACLK100_NOC, "mout_aclk100_noc", mout_group1_p,
+			SRC_TOP0, 20, 2),
 
 	MUX(0, "mout_aclk333_432_gscl", mout_group4_p, SRC_TOP1, 0, 2),
 	MUX(0, "mout_aclk333_432_isp", mout_group4_p,
@@ -600,6 +604,8 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 static const struct samsung_div_clock exynos5420_div_clks[] __initconst = {
 	DIV(CLK_DOUT_ACLK400_WCORE, "dout_aclk400_wcore",
 			"mout_aclk400_wcore", DIV_TOP0, 16, 3),
+	DIV(CLK_DOUT_ACLK100_NOC, "dout_aclk100_noc", "mout_aclk100_noc",
+			DIV_TOP0, 20, 3),
 };
 
 static const struct samsung_gate_clock exynos5420_gate_clks[] __initconst = {
@@ -798,8 +804,6 @@ static const struct samsung_div_clock exynos5x_div_clks[] __initconst = {
 			DIV_TOP0, 8, 3),
 	DIV(CLK_DOUT_ACLK200_FSYS2, "dout_aclk200_fsys2", "mout_aclk200_fsys2",
 			DIV_TOP0, 12, 3),
-	DIV(CLK_DOUT_ACLK100_NOC, "dout_aclk100_noc", "mout_aclk100_noc",
-			DIV_TOP0, 20, 3),
 	DIV(CLK_DOUT_PCLK200_FSYS, "dout_pclk200_fsys", "mout_pclk200_fsys",
 			DIV_TOP0, 24, 3),
 	DIV(CLK_DOUT_ACLK200_FSYS, "dout_aclk200_fsys", "mout_aclk200_fsys",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
