Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B272689F0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:49:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1GYm+aCkP68Bxbx2aSORTc5NWTw3lA0DLpVfryqD7eU=; b=K6p5L6UcgBNvmgnZ0c6v8zZXEQ
	f89yH5ZQpMIHAE3VW55E8a9jwBZ53iuXiTFZbIMzDVXYBtN6V0R3xDQWIsnVkhRI6Z+n9/biy8XPl
	E/4utlcP8k5ZMl3BGhz5r6IttM7pnEO/uaxRtw4U1Djpd94xJ0/fQpM8H6ZZkgFyBuWjWhmjm3fWf
	N0pI9XA9H09+cRjX8NyqWCBIAkXV2zfMy2W2I/MY0v9JRQpa4pxaWzvJEuGB2DH0FOU6ehCvHMIT5
	vjkLrR7sr0B+08pYYB9qXb6RYPxHvcXky/txCPsWbIqLkhFwSgGxX9LDyMUkKrccFJPhu96qaSKc1
	bfWB3hUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Q7-0008JW-CY; Mon, 15 Jul 2019 12:49:31 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LV-0003iM-TZ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:48 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124439euoutp01dd6ae7a95626d1511a1f30da45174128~xlUdjFfvp1960819608euoutp01I
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124439euoutp01dd6ae7a95626d1511a1f30da45174128~xlUdjFfvp1960819608euoutp01I
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194679;
 bh=4zrsUTzlnmSqadoHJ5f+VbeMYaBjak3MZkpWWAiAL3M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BcTsishMJlSsXCdWzQAPjclUpWhYJtGvNjrcMbpbKQv7jaZA4soS6P+J+3S86Aaei
 lFHW/8XnjpR3r6zZ+x0sW4cwzKEU+kqx9u4UnuFxQBWnN+2wzqXpdnwFOYf8Cc+mXa
 VnxbxwcO7D7JSBHgsvmE7VBYL1bF3fTJ+n9WNzqA=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124438eucas1p2d57b3536b548e05df682317febfae6c2~xlUcySrGY0850908509eucas1p2L;
 Mon, 15 Jul 2019 12:44:38 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E5.D1.04377.6357C2D5; Mon, 15
 Jul 2019 13:44:38 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124437eucas1p2d817f0c1fcf4b523c7910218a6e557d9~xlUb-_Zmm2242322423eucas1p2J;
 Mon, 15 Jul 2019 12:44:37 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124437eusmtrp124daa6b8558ca2bb0eb09bbef0fae2d9~xlUbx0ur_0462004620eusmtrp1v;
 Mon, 15 Jul 2019 12:44:37 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-d1-5d2c753630b6
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 45.F6.04140.5357C2D5; Mon, 15
 Jul 2019 13:44:37 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124436eusmtip287acc56a8509bcdeaa79d337e40e1682~xlUa-Bapw1172811728eusmtip2i;
 Mon, 15 Jul 2019 12:44:36 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 05/50] clk: samsung: add IDs to aclk400_isp in Exynos5420
Date: Mon, 15 Jul 2019 14:43:32 +0200
Message-Id: <20190715124417.4787-6-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju29nZOa6Wp2n6ZpK46GZmabcPMkvKOIVBP+qPoTX1ZBedtqOW
 GWSRaaJZBmoXy2ipTTPzrrg0XY0yt0mR5lDDSRe7pwmjsjaP0r/nfZ/by8dHE/Im0oM+pErk
 1CplrEIiFdc/sRlXrEvyDV9lvjsX91UaSfyg8D6Je8bekfim3j7mWj8S2GSqonDXmU8U7kvz
 xNXWVyT+nj1A4hfN1yW40PRQhO/p+yl8p6dbhLufhWDL6TIJTtfpKdzxKYPEE68eiDe7sBU3
 KhD7tTedYqu15yVsjeYU++hLi4i9UKtF7Gj1gl1UmDQwmos9lMypVwbtlx5816URJ3xwPv7Y
 LE1DL2RZyIkGZg08MV8TZSEpLWfKEDTUGykHIWfGEBhH4wViFMGviV5q2pGRoxELRCkCi6UA
 CYPd0XomV5KFaFrC+EGj9qjD4MpoEOhtkQ4NwbwWQctwE+kgXJhQ0AxkT2IxswgsxSWTDTIm
 CO4Y/oiFNi8or2ojHNiJ2QS2fLPEEQSMkYLyLutkGTBb4e0fL0HvAiOG2qlLPaHzcvZUDg9p
 ObeQgE+CNbdoSrMBOgzdpCOGYJbB/eaVQmIwNJoCBDgbej/PcYgJO8yrLyCEtQwyz8mFjKVQ
 m20WCdgNSivyp7JZuPLyKSE8Zx6CuktrLyKvq/+rihHSIncuiY+L4fgAFXfMj1fG8UmqGL+o
 +LhqZP9QnROGsUbU/DuyHTE0UsySbY5eHi4nlcl8Slw7AppQuMo2/rSvZNHKlBOcOn6fOimW
 49vRfFqscJelznizV87EKBO5IxyXwKmnWRHt5JGGGrbs+ZGqjcQB/QaXIcR66rZfCKlZkh+Y
 TI2ofiu3bUz5dnZekM2NHdR9Wa/w7mgtG/cJDtXBzImqnpHAkAND/eleJfIw/+6OvPH3bsO2
 TP26oB2m8OfkUJR+619FkehjhDZ+UBfhW7JzkevXSsvt1rbS6N3Oh1cvXOytq6zr/KUQ8weV
 /j6Emlf+A5jimflMAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7qmpTqxBvtfK1jcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M52eXsBS85K84eoGrgfEybxcjJ4eEgIlEe+8Sli5GLg4hgaWMEqfv
 LGOGSIhJTNq3nR3CFpb4c62LDcQWEvjEKPH3YmYXIwcHm4CexI5VhSBhEYEVjBKTT3iDzGEW
 eM0kceToO1aQhLCAj8SSez1gNouAqsTtBcvAZvIK2EksPf6XBWK+vMTqDQfA9nIK2Ev8nHYB
 apedxOKjP5kmMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERg324793LKDsetd8CFG
 AQ5GJR5ehxTtWCHWxLLiytxDjBIczEoivLZfgUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqc
 D4zpvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjBcfeJ18tnfN
 LaNIpqUvV7Q3XX47K5Rz//9os1YGnkVmxyNzrWOjvdy8phuoMUgI2fNnldyqiO/Q/nn/eIjH
 LV6Dmf+crJxlnY5mXVlqOW9BSeTKxVb/WD/MZV5wVc1Ug0Voxfe4a25N9TXRR14clG/7eGRL
 08v3E12KZX3XdQYa75qQJF66TImlOCPRUIu5qDgRAH5zF3mxAgAA
X-CMS-MailID: 20190715124437eucas1p2d817f0c1fcf4b523c7910218a6e557d9
X-Msg-Generator: CA
X-RootMTR: 20190715124437eucas1p2d817f0c1fcf4b523c7910218a6e557d9
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124437eucas1p2d817f0c1fcf4b523c7910218a6e557d9
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124437eucas1p2d817f0c1fcf4b523c7910218a6e557d9@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054446_218559_0C964C6E 
X-CRM114-Status: GOOD (  11.37  )
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

Add clock IDs to MUXes related to ACLK400_ISP for managing them from DT
devices.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 8f1d39cb2f1e..74276875bc3e 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -461,7 +461,8 @@ static const struct samsung_fixed_factor_clock
 };
 
 static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
-	MUX(0, "mout_aclk400_isp", mout_group3_5800_p, SRC_TOP0, 0, 3),
+	MUX(CLK_MOUT_ACLK400_ISP, "mout_aclk400_isp", mout_group3_5800_p,
+			SRC_TOP0, 0, 3),
 	MUX(CLK_MOUT_ACLK400_MSCL, "mout_aclk400_mscl", mout_group3_5800_p,
 			SRC_TOP0, 4, 3),
 	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group2_5800_p,
@@ -548,7 +549,8 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 	MUX(0, "mout_aclk400_wcore_bpll", mout_aclk400_wcore_bpll_p,
 				TOP_SPARE2, 4, 1),
 
-	MUX(0, "mout_aclk400_isp", mout_group1_p, SRC_TOP0, 0, 2),
+	MUX(CLK_MOUT_ACLK400_ISP, "mout_aclk400_isp", mout_group1_p,
+			SRC_TOP0, 0, 2),
 	MUX(CLK_MOUT_ACLK400_MSCL, "mout_aclk400_mscl", mout_group1_p,
 			SRC_TOP0, 4, 2),
 	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group1_p,
@@ -670,8 +672,8 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 	MUX(0, "mout_sclk_dpll", mout_dpll_p, SRC_TOP6, 24, 1),
 	MUX(0, "mout_sclk_cpll", mout_cpll_p, SRC_TOP6, 28, 1),
 
-	MUX(0, "mout_sw_aclk400_isp", mout_sw_aclk400_isp_p,
-			SRC_TOP10, 0, 1),
+	MUX(CLK_MOUT_SW_ACLK400_ISP, "mout_sw_aclk400_isp",
+			mout_sw_aclk400_isp_p, SRC_TOP10, 0, 1),
 	MUX(CLK_MOUT_SW_ACLK400_MSCL, "mout_sw_aclk400_mscl",
 			mout_sw_aclk400_mscl_p,	SRC_TOP10, 4, 1),
 	MUX(CLK_MOUT_SW_ACLK200, "mout_sw_aclk200", mout_sw_aclk200_p,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
