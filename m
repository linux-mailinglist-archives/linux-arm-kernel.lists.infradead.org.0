Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2043689E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:48:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kaYXoBPJaiJSlJMbMNi0eSRTIVODLWnB7wBSG8oONtY=; b=XdsG1Il2eavtMsGCuz+Df3Ia1w
	+hleYPX/Ln5J/hjYLE27zK80aKhNrC6koE0/EbqethodQ/R4MvGmraDYYVw6McjiJIC9l8YEBbVTz
	AXG74ThpK3LmTJzujlSOwDJ/KNLAxnazAK8sH/Mbkx6efPn6fY9zvC7bM3X23XDK9pE7Wek23GwVy
	dWhiY+0owXBtWMtF5+5/Nxjc27htvKj4dpfQyJSUYKW2sJo1PhXIGzN8e2ZOFD/fDSE5m1e6WoDkA
	whVmvvofsBUx3gp9rIywMYe4iEXF0MmwqfhjFN3VX7gnttrI7m6e5Jjrql+Zf5JzGF8jh1ndM5mkn
	qr5LdtvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0PD-0007aP-16; Mon, 15 Jul 2019 12:48:35 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LU-0003hp-TO
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124442euoutp01bd78d32f6a66780ba0f4170c65fdd968~xlUgRQGyu1961119611euoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124442euoutp01bd78d32f6a66780ba0f4170c65fdd968~xlUgRQGyu1961119611euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194682;
 bh=gu9S300xYsEx15w8bkMWrWNLeNOczHmD9nwzaFLG/Q0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZGdo5RDJN83TPwxAVCYdN34OxDPWSl5V5Em9YAzPqAcWTFdyMs70hA5ww80V1sY65
 A8iJiZixM6RWN91UoaC+JNMBkfku6d04PmQ33Qszi9gnUpUJuRwhQ2TECFVL5o8vq4
 C/XzlwE9URrpEZV57h0q86sOZMeqZFr3nknOHrLI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124441eucas1p20e985dad3877d2802343860d50bf6ca7~xlUfeD1nd3211032110eucas1p2s;
 Mon, 15 Jul 2019 12:44:41 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 92.25.04298.9357C2D5; Mon, 15
 Jul 2019 13:44:41 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124440eucas1p10bb25e412f32f0da95761f96831893e6~xlUeXun6M3092130921eucas1p1V;
 Mon, 15 Jul 2019 12:44:40 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124440eusmtrp1c68b5749bd29027e7777e0b3ab1c33b1~xlUeFQGj20462004620eusmtrp14;
 Mon, 15 Jul 2019 12:44:40 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-a1-5d2c75395952
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id F4.40.04146.7357C2D5; Mon, 15
 Jul 2019 13:44:40 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124439eusmtip2e2b53f69de81a94d3e4c2d6eb2253db3~xlUdSAdnM1242312423eusmtip2M;
 Mon, 15 Jul 2019 12:44:39 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 08/50] clk: samsung: change aclk266_isp clocks
 definitions Exynos5420
Date: Mon, 15 Jul 2019 14:43:35 +0200
Message-Id: <20190715124417.4787-9-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNKsWRmVeSWpSXmKPExsWy7djP87qWpTqxBj/WCVvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6Me1NmsxTsVqrYP30rYwPjftkuRk4O
 CQETiTnP/rN3MXJxCAmsYJS4/fUUK4TzhVHiy6Y7zCBVQgKfGSXOf1OD6Vj5oJEJIr6cUeLx
 TDu4hgsnpwElODjYBPQkdqwqBKkREVjCKHHkZxJIDbPATSaJPU92soIkhAWiJC7cfswGUs8i
 oCrx41QlSJhXwE7i9LXzjBC75CVWbzgAdgOngL3Ez2kX2EDmSAicY5c4u34pE0SRi0TbvB0s
 ELawxKvjW9ghbBmJ05N7oOLFEg29C6GG1kg87p8LVWMtcfj4RVaQG5gFNCXW79KHCDtKXO/p
 YwcJSwjwSdx4KwgSZgYyJ22bzgwR5pXoaBOCqNaQ2NJzAeoYMYnla6ZBDfeQuPtgKjRsJzFK
 /Dq4g3UCo/wshGULGBlXMYqnlhbnpqcWG+allusVJ+YWl+al6yXn525iBCap0/+Of9rB+PVS
 0iFGAQ5GJR5ehxTtWCHWxLLiytxDjBIczEoivLZfgUK8KYmVValF+fFFpTmpxYcYpTlYlMR5
 qxkeRAsJpCeWpGanphakFsFkmTg4pRoY+zkWsqwMclPUOly894zMLPE39mHTvZbPNXuYlLvy
 3jsuO7urUVtf2NZxO3OYm38L/M7xM9px8+LVoSJNv6sSuNl2/bIQ1ljpUX1yjevb418zZevV
 Pk3+fyqEMY9PxeF4kK+WwRprSc3kxK+rYtTk9q51sOq431Tw8VZacUjClv7Vi790pfxVYinO
 SDTUYi4qTgQAvhRTZk4DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7oWpTqxBmuDLG6tO8dqsXHGelaL
 61+es1rMPwLk9j9+zWxx/vwGdouzTW/YLW41yFhsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG7
 7BZLr19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDsMeaeWsYPd7faGX32LSqk81j85J6
 j4Pv9jB59G1ZxejxeZNcAHuUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+
 nU1Kak5mWWqRvl2CXsa9KbNZCnYrVeyfvpWxgXG/bBcjJ4eEgInEygeNTF2MXBxCAksZJS5P
 WM8IkRCTmLRvOzuELSzx51oXG0TRJ6Cin4+AEhwcbAJ6EjtWFYLUiAisYJSYfMIbpIZZ4DWT
 xJGj71hBaoQFIiR+/q4AMVkEVCV+nKoEKecVsJM4fe081Cp5idUbDjCD2JwC9hI/p11gA7GF
 gGoWH/3JNIGRbwEjwypGkdTS4tz03GJDveLE3OLSvHS95PzcTYzAqNl27OfmHYyXNgYfYhTg
 YFTi4XVI0Y4VYk0sK67MPcQowcGsJMJr+xUoxJuSWFmVWpQfX1Sak1p8iNEU6KaJzFKiyfnA
 iM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cAYnrVAhX3a50Xn
 fmXFbVkn/6Fv44H0/67uoVcn7j6d65b69IPsZm+Dz68PHneOawmUbP2a5uu3KmJNIW+qv5Rh
 4Tc73diNfgxMfnX2f33iGXZcTrLcoH5h8b0IjQtnu3bcWGkk3nu6aPuMfZF3Yn99jctTuHKs
 c7PwFT2X/d+PX/3qfe2RzCc9JZbijERDLeai4kQArPw0f7ACAAA=
X-CMS-MailID: 20190715124440eucas1p10bb25e412f32f0da95761f96831893e6
X-Msg-Generator: CA
X-RootMTR: 20190715124440eucas1p10bb25e412f32f0da95761f96831893e6
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124440eucas1p10bb25e412f32f0da95761f96831893e6
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124440eucas1p10bb25e412f32f0da95761f96831893e6@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054445_120332_06A04F99 
X-CRM114-Status: GOOD (  12.18  )
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

The ACLK266_ISP has different topology in Exynos5420 and 5422/5800.  In
Exynos5420 this clock does not have dedicated MUX which chooses PLL instead
it takes the clock from 2-level mux from ACLK266.  In Exynos5422 there is a
dedicated clock tree and the PLL can be chosen.  The patch adds needed
MUXes in the exynos5800_mux_cloks, updates exynos5x_mux_clks and
exynos5420_mux_clks properly. It also adds IDs to mange these clocks from
DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 9d54856dbcda..5f251279b4c8 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -432,6 +432,10 @@ PNAME(mout_group16_5800_p)	= { "dout_osc_div", "mout_mau_epll_clk" };
 PNAME(mout_mx_mspll_ccore_phy_p) = { "sclk_bpll", "mout_sclk_dpll",
 					"mout_sclk_mpll", "ff_dout_spll2",
 					"mout_sclk_spll", "mout_sclk_epll"};
+PNAME(mout_group17_5800_p)	= { "dout_aclk266_isp", "dout_sclk_sw" };
+PNAME(mout_group18_5800_p)	= { "dout_osc_div", "mout_sw_aclk266_isp" };
+PNAME(mout_group19_5800_p)	= { "mout_sclk_cpll", "mout_sclk_dpll",
+					"mout_sclk_mpll", "mout_sclk_ipll"};
 
 /* fixed rate clocks generated outside the soc */
 static struct samsung_fixed_rate_clock
@@ -494,6 +498,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 	MUX(CLK_SCLK_BPLL, "sclk_bpll", mout_bpll_p, SRC_TOP7, 24, 1),
 	MUX(0, "mout_epll2", mout_epll2_5800_p, SRC_TOP7, 28, 1),
 
+	MUX(CLK_MOUT_ACLK266_ISP, "mout_aclk266_isp", mout_group19_5800_p,
+			SRC_TOP8, 12, 2),
 	MUX(0, "mout_aclk550_cam", mout_group3_5800_p, SRC_TOP8, 16, 3),
 	MUX(0, "mout_aclkfl1_550_cam", mout_group3_5800_p, SRC_TOP8, 20, 3),
 	MUX(0, "mout_aclk432_cam", mout_group6_5800_p, SRC_TOP8, 24, 2),
@@ -501,6 +507,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 
 	MUX_F(CLK_MOUT_USER_MAU_EPLL, "mout_user_mau_epll", mout_group16_5800_p,
 			SRC_TOP9, 8, 1, CLK_SET_RATE_PARENT, 0),
+	MUX(CLK_MOUT_USER_ACLK266_ISP, "mout_user_aclk266_isp",
+			mout_group18_5800_p, SRC_TOP9, 12, 1),
 	MUX(0, "mout_user_aclk550_cam", mout_group15_5800_p,
 							SRC_TOP9, 16, 1),
 	MUX(0, "mout_user_aclkfl1_550_cam", mout_group13_5800_p,
@@ -510,6 +518,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 	MUX(0, "mout_user_aclk432_scaler", mout_group9_5800_p,
 							SRC_TOP9, 28, 1),
 
+	MUX(CLK_MOUT_SW_ACLK266_ISP, "mout_sw_aclk266_isp", mout_group17_5800_p,
+			SRC_TOP13, 12, 1),
 	MUX(0, "mout_sw_aclk550_cam", mout_group14_5800_p, SRC_TOP13, 16, 1),
 	MUX(0, "mout_sw_aclkfl1_550_cam", mout_group12_5800_p,
 							SRC_TOP13, 20, 1),
@@ -524,6 +534,8 @@ static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 static const struct samsung_div_clock exynos5800_div_clks[] __initconst = {
 	DIV(CLK_DOUT_ACLK400_WCORE, "dout_aclk400_wcore",
 			"mout_aclk400_wcore", DIV_TOP0, 16, 3),
+	DIV(CLK_DOUT_ACLK266_ISP, "dout_aclk266_isp", "mout_aclk266_isp",
+				DIV_TOP8, 12, 3),
 	DIV(0, "dout_aclk550_cam", "mout_aclk550_cam",
 				DIV_TOP8, 16, 3),
 	DIV(0, "dout_aclkfl1_550_cam", "mout_aclkfl1_550_cam",
@@ -574,6 +586,9 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 	MUX(0, "mout_aclk300_disp1", mout_group1_p, SRC_TOP2, 24, 2),
 	MUX(0, "mout_aclk300_gscl", mout_group1_p, SRC_TOP2, 28, 2),
 
+	MUX(CLK_MOUT_USER_ACLK266_ISP, "mout_user_aclk266_isp",
+			mout_user_aclk266_isp_p, SRC_TOP4, 16, 1),
+
 	MUX(CLK_MOUT_MX_MSPLL_CCORE, "mout_mx_mspll_ccore",
 			mout_group5_5800_p, SRC_TOP7, 16, 2),
 	MUX_F(0, "mout_mau_epll_clk", mout_mau_epll_clk_p, SRC_TOP7, 20, 2,
@@ -641,8 +656,6 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 			SRC_TOP4, 8, 1),
 	MUX(0, "mout_user_aclk333_432_isp0", mout_user_aclk333_432_isp0_p,
 			SRC_TOP4, 12, 1),
-	MUX(0, "mout_user_aclk266_isp", mout_user_aclk266_isp_p,
-			SRC_TOP4, 16, 1),
 	MUX(0, "mout_user_aclk266", mout_user_aclk266_p, SRC_TOP4, 20, 1),
 	MUX(0, "mout_user_aclk166", mout_user_aclk166_p, SRC_TOP4, 24, 1),
 	MUX(CLK_MOUT_USER_ACLK333, "mout_user_aclk333", mout_user_aclk333_p,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
