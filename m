Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F7268928
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=miAsvjAc4R6faHc6k981yY8+so7WsevvNPDHjWcV8Xk=; b=fFutgxTbJOzj/qcJqhWoaqIFlB
	zxEJ6t9Ns8sf/nE9sdAPyrqoE4HenCH6atFmjBQbIbVzLUhaTo4xKU+TlQXMYgEx/zk8O+65wjKJb
	7OpbabJ4TVq9hgSyxOTdOYjsdfb7JjkwZMvwYe8ei52hA1sfBTmbwZqETeNr8mi8nYVi4goZC6I+c
	dBL/x+ht8OhVVlLe9NJTJfBVr+1J4AXPy+Fv7/Y7AC8Urts3e0SCRe2LWI4xNDTolXKgMI7Z17GXZ
	d6V0GjFiP4Q/Md+HAXQPsojNM5gufzbhlWw1Qqz4KG6gxhAiJTMTlEtTDV/KtsKOvWkpDtvc8l5o7
	QIwcDAqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0NW-0006Gh-D0; Mon, 15 Jul 2019 12:46:50 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LR-0003f1-HD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:43 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124436euoutp01edb9837daeefdc527039d3cfb612e257~xlUaqnySf1950319503euoutp01T
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124436euoutp01edb9837daeefdc527039d3cfb612e257~xlUaqnySf1950319503euoutp01T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194676;
 bh=Dn0La38UTdK81pTnhGUZ+0DwTUWdoEvIQxo8Zq3bKas=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aSb+iDkRPMoPilXy7uM1eqaxNxiRy8J16AtWa7bcjM/Aahze4AaPYs3prTVH5Qsjx
 yzjLniQ3crV+mHs5uAnUqfqN/jcNaGeBUkGZj5s1rWU5r3GoJrizuCeA45JO6guz2P
 rXdFAAqBRcrKjbx0NVmC2EQgaghL0mRLdBrsO290=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124435eucas1p10f881c6b41b8d7553717ae9608c69417~xlUaLmS1F3092130921eucas1p1Q;
 Mon, 15 Jul 2019 12:44:35 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 92.D1.04377.3357C2D5; Mon, 15
 Jul 2019 13:44:35 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a~xlUZdaFD72439124391eucas1p2D;
 Mon, 15 Jul 2019 12:44:35 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124435eusmtrp1788a565568aaffdca930972e5b89f8cb~xlUZcJcXF0421504215eusmtrp1g;
 Mon, 15 Jul 2019 12:44:35 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-ca-5d2c7533df41
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id C3.F6.04140.3357C2D5; Mon, 15
 Jul 2019 13:44:35 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124434eusmtip2d1ff7cf9bd1e65e58bf6a6cb37d55f08~xlUYqJlzb0518605186eusmtip2d;
 Mon, 15 Jul 2019 12:44:34 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 02/50] clk: samsung: add IDs for Exynos5420 NoC clocks
Date: Mon, 15 Jul 2019 14:43:29 +0200
Message-Id: <20190715124417.4787-3-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG+3Z2ds6syWlGvZRYDELN0m7EB5VdKJiEUVBIF6uZJ7V0rh21
 rNBZrfKWYlFas7ziUNO1RNSmlZlSms4u80YpWlTqsnD+YRdt86z67/c+7/u8z8vHRxNSE7mQ
 jlDGsGqlIlImchFWN0+2r1gTuzx45VutJ+6taCfx/exKEnfZPpH4bpO9zBgaIXBHh4HCL8+P
 UrhX446NQxYSf097T+LXdToRzu5oEOB7Te8oXNzVKcCdL7bjviS9CGvrmyj8dPQyiacs94Wb
 3eTld8qRfKxbS8mNpcki+YOiRPmTryaB/GpVKZKPGz12UftdNoSykRFxrNrP/4hLeOfvONVn
 5nTfN61Qg2pdU5CYBmYtWHtGhA6WMnoEFa/9UpCLnW0IsnNMFF+MI+jP1hN/HVmFxQTfKEGQ
 MfFG8M/SWGgkUxBNixhfqCk96TDMY4oQNE2GOGYIpkcApg+1pKPhxgRAVUPdDAuZpfA888tM
 goTxB11/M+LTFkOZ4fGMLmY2weQNs8ixCJh2Ciw6i/OkbfCosoXk2Q2GW6oont2h9VqakGcO
 NOn5zqXnYCgj1zmzHp62dM4cTTDeUFnnx8tbwGy1ihwyMK7QbZ3rkAk7ZlXfJHhZAlcuSflp
 L6hKMwt4ng8l5Tecy+WQltrmfJ4sBHljhUQmWnzrf1geQqVoARvLRYWx3Gole8qXU0Rxscow
 36PRUUZk/1OtUy22GlT3K6QRMTSSzZFsDvUJlpKKOC4+qhEBTcjmSTZO2CVJqCL+DKuOPqyO
 jWS5RrSIFsoWSM7OGjggZcIUMewJllWx6r9dAS1eqEFlExd+Hj90EMhJa2D5xVzzA7bNm9pZ
 pNJN751K3DE66JVUO9FTofI0JTI5EScMPynvY4Md2z4qDabCABi+vkcSJB72uC3Ri8tyoHJ6
 t09Avqag9dm++IKPP+hkg7k+Ob3C4pbwXKdJdRWvMwRFPBwwJZgDXy1Rhc3eOl2vtcmEXLhi
 1TJCzSn+AGYcEXNPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7rGpTqxBvsvM1vcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mi3/LCl4IVNz+0MrSwLiTr4uRk0NCwERi0uKlzCC2kMBSRokDPdwQ
 cTGJSfu2s0PYwhJ/rnWxdTFyAdV8YpS4s/8tUxcjBwebgJ7EjlWFIDUiAisYJSaf8AapYRZ4
 zSRx5Og7VpCEsICnxJZ9u8BsFgFViZMTXoIt4xWwk5hz/xgjxAJ5idUbDoDFOQXsJX5Ou8AG
 cZCdxOKjP5kmMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERg324793LKDsetd8CFG
 AQ5GJR5ehxTtWCHWxLLiytxDjBIczEoivLZfgUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqc
 D4zpvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjCEJ2RPUWWSc
 MqdICd0KfC2y/JFEbuX9kt88pnxzO/uaBDcci1Hbd/ZKpk+LZrmE4IxjzZxRMg8s3mWvYjss
 0t4q1Lg9ganj2N5XM7zOHvk6rUdiPkPZi6VfDh5mlrcXqg/Y5XYvLdPNTPpMUKx53bIz/On6
 0y8yf3/xUeLf2d27d09hVT67WImlOCPRUIu5qDgRANF3CuKxAgAA
X-CMS-MailID: 20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a
X-Msg-Generator: CA
X-RootMTR: 20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124435eucas1p2099cd7670a3d85d9b11eb0ff86041a2a@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054441_705747_836A2E8F 
X-CRM114-Status: GOOD (  11.60  )
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

The patch adds NoC WCORE clock IDs needed used for changing parent of the
main NoC clock from the DT device.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index 16ad498e3f3f..d353870e7fda 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -463,7 +463,8 @@ static const struct samsung_fixed_factor_clock
 static const struct samsung_mux_clock exynos5800_mux_clks[] __initconst = {
 	MUX(0, "mout_aclk400_isp", mout_group3_5800_p, SRC_TOP0, 0, 3),
 	MUX(0, "mout_aclk400_mscl", mout_group3_5800_p, SRC_TOP0, 4, 3),
-	MUX(0, "mout_aclk400_wcore", mout_group2_5800_p, SRC_TOP0, 16, 3),
+	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group2_5800_p,
+			SRC_TOP0, 16, 3),
 	MUX(0, "mout_aclk100_noc", mout_group1_5800_p, SRC_TOP0, 20, 2),
 
 	MUX(0, "mout_aclk333_432_gscl", mout_group6_5800_p, SRC_TOP1, 0, 2),
@@ -548,7 +549,8 @@ static const struct samsung_mux_clock exynos5420_mux_clks[] __initconst = {
 
 	MUX(0, "mout_aclk400_isp", mout_group1_p, SRC_TOP0, 0, 2),
 	MUX(0, "mout_aclk400_mscl", mout_group1_p, SRC_TOP0, 4, 2),
-	MUX(0, "mout_aclk400_wcore", mout_group1_p, SRC_TOP0, 16, 2),
+	MUX(CLK_MOUT_ACLK400_WCORE, "mout_aclk400_wcore", mout_group1_p,
+			SRC_TOP0, 16, 2),
 	MUX(0, "mout_aclk100_noc", mout_group1_p, SRC_TOP0, 20, 2),
 
 	MUX(0, "mout_aclk333_432_gscl", mout_group4_p, SRC_TOP1, 0, 2),
@@ -674,8 +676,8 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 			SRC_TOP10, 8, 1),
 	MUX(0, "mout_sw_aclk200_fsys2", mout_sw_aclk200_fsys2_p,
 			SRC_TOP10, 12, 1),
-	MUX(0, "mout_sw_aclk400_wcore", mout_sw_aclk400_wcore_p,
-			SRC_TOP10, 16, 1),
+	MUX(CLK_MOUT_SW_ACLK400_WCORE, "mout_sw_aclk400_wcore",
+			mout_sw_aclk400_wcore_p, SRC_TOP10, 16, 1),
 	MUX(0, "mout_sw_aclk100_noc", mout_sw_aclk100_noc_p,
 			SRC_TOP10, 20, 1),
 	MUX(0, "mout_sw_pclk200_fsys", mout_sw_pclk200_fsys_p,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
