Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E9D689E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:48:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lCidHii5cIgJ4FAhS2VxMAkwjiBJxL9twEbg7bP/uUw=; b=jv4vGz+lZpOgoVRvDiIiLxHZb6
	jyl070Q6Upau/3Fd9J6y8GSPu3MzIePpcnrSnnwiERMKzKmTwzQQowItgfXwPDhq/JelkmOccel8p
	mULYPZfp2bp31iF5A2KtqMRKjpfKwrzqqzr3dTcWjd03bM+AqZa/NFP71XiPSKQPStUcKlLqRzTWa
	pemxoFRsOwCreKtF3/c1CXynuEBfBTquuANxCt9MFJFNwgqnfg81Ln/ne/w776XAol3+iziW0lakY
	kpZpsVYRJXvhv5QFaOSIqPOrQhcOP64ELIYgKlU0jk7N58cv7F5/yiUQHsjZpLIFTAOmLgeQSXKO5
	H1Wf9ytA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0PV-0007qr-7A; Mon, 15 Jul 2019 12:48:53 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0LV-0003iR-VD
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:47 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124444euoutp01d72ed9d20143fa350ab9d47c83a8fbfa~xlUiXH3AP1960819608euoutp01Q
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124444euoutp01d72ed9d20143fa350ab9d47c83a8fbfa~xlUiXH3AP1960819608euoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194684;
 bh=hJvLE4/1zHLBMBiw9JWZYJYoJ7BCSK7oKsNEylp/Y0o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=n2aHK+vKY2TTNFscJx7qYNQEjHomzLtWKUTj1KUDsa/MFgUmljrsTu6b86+ot07xd
 R2WhTxPTA22IfBzFe+7GfDrR03OsQDmVaH7jVGoXY3SPvyYDIcvhKUD5UrcXCkt80G
 LJw9la3Y3ReZDLZjQ2udZ0Iar9FeYZJrm6eydlRI=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124443eucas1p1ca94b9f118a63ae32468976857d9e834~xlUhbRrpE3191231912eucas1p1T;
 Mon, 15 Jul 2019 12:44:43 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 34.25.04298.B357C2D5; Mon, 15
 Jul 2019 13:44:43 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124442eucas1p197b23d50f6986477467d23f53b84d187~xlUgke1OZ0153601536eucas1p16;
 Mon, 15 Jul 2019 12:44:42 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124442eusmtrp1bec50f776fb0c84a8ad1c48eef097a93~xlUgWYVDF0462004620eusmtrp1E;
 Mon, 15 Jul 2019 12:44:42 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-a6-5d2c753bbe0d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 4C.F6.04140.A357C2D5; Mon, 15
 Jul 2019 13:44:42 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124441eusmtip24fa6eb4ab2197d7b9ce1b806ed2bc69b~xlUfkQa7l0518605186eusmtip2h;
 Mon, 15 Jul 2019 12:44:41 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 11/50] clk: samsung: add IDs to UART clocks in Exynos5420
Date: Mon, 15 Jul 2019 14:43:38 +0200
Message-Id: <20190715124417.4787-12-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0xSYRju43A4Rwo7Qat36bLRZaUlNf3xmVa21cZabf1qrWaFevKSIHEk
 s1qREy2jy9CMXPfRNKIMdE5Nu4ilZSqUXbRZLlulWa3UmuUk8ND697zP5b18+2hCWk/OotM0
 WaxOo8qQi8TC6oej7Uti9YsTlh57MAN332wnscNSQeKXwx9JfLHJV57s+0zgjo5bFG7LHaRw
 tyEUO/tekPi76Q2Jn9WdE2FLxx0BvtHUQ+GrLz0C7Hm8Fr8+XC7CxoYmCrsGC0g8/sIhjJcp
 7RfsSPntlZFSOm1HRcpK6yHl/a/1AuWJKhtSDjlnb6S2iOOS2Yy0PaxOsXKHOPWJaa62UrzX
 0lJEGtAYXYiCaGCi4ZrnvKgQiWkpU47g7qcRyi9ImWEE1tZ0XhhCcOX2L/QvcfWHBfFCGYIu
 e36g8CVKbNcEhYimRUwk1Nh2+wPTGSuCptFEv4dgugRQ/76W9AsyZj2c7X090VXIzIc/Y+8I
 P5Ywq8Bs9FL8tDC4fuveBB/k40dL3BO7AtNOwfDxPBFvWgN2b0MgIIOB5qoADoXWIpOQxxwY
 jl8OnHAA+k6eD3hiwdXsIf1LE8wiqKhT8PRqcNjuCf00MMHw6ss0P034oLn6DMHTEjiSL+Xd
 C6HK5BbweAaU2UsCzZUwnOei+OcxI3judVCnUFjp/2GXELKhmayeU6ew3DINmx3JqdScXpMS
 mZSpdiLfn2odb/5Rg0aeJjYihkbyKZL45IgEKanaw+WoGxHQhHy6ZMWIj5Ikq3L2sbrM7Tp9
 Bss1ohBaKJ8p2T+pd6uUSVFlsbtYVsvq/qkCOmiWAWVpnaM/Y5l4Y45Mm6cIjy7tizdEHOwJ
 NcfNO52/ub+2bZ67YFtwteI3rFblhxcL06Mmu2H2wLNKzwLaXVEUbHUcHAu570poEVfnnskV
 y3TZXR86yzZNjToSk5TeOaXf6+ot1yzPeuQgrNzWUEVM+Ok52ze4it/Ob6mbXLluZ4VcyKWq
 loUTOk71F0cZRE1PAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7pWpTqxBj+nyFrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MMz3KBZu5KmacmMzawPiHo4uRk0NCwERi6acZjF2MXBxCAksZJb6t
 W8wMkRCTmLRvOzuELSzx51oXG0TRJ0aJratfAiU4ONgE9CR2rCoEqRERWMEoMfmEN0gNs8Br
 JokjR9+xgiSEBXwkZj64zQhiswioSvz+8whsAa+AvcSk1v9QC+QlVm84ABbnBIr/nHaBDcQW
 ErCTWHz0J9MERr4FjAyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAiNn27GfW3Ywdr0LPsQo
 wMGoxMPrkKIdK8SaWFZcmXuIUYKDWUmE1/YrUIg3JbGyKrUoP76oNCe1+BCjKdBRE5mlRJPz
 gVGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qB0WzL2hXTI25t
 vXYhVJ/l6joWrhffjHKVufKev53/pS9sXYjYn/uq25cpFW2/rx116kCH09Vj1vv58g+JxDez
 O1gI3DghrCqaHXR2keyUV/sytHoi9rPm3ZD5G6G4b13Bd/+a3LLqox9nSr/6E3Q4ecqb2Ol3
 enxDT/1P1XVx9HDkD77jrHwqXYmlOCPRUIu5qDgRAM1l+BKyAgAA
X-CMS-MailID: 20190715124442eucas1p197b23d50f6986477467d23f53b84d187
X-Msg-Generator: CA
X-RootMTR: 20190715124442eucas1p197b23d50f6986477467d23f53b84d187
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124442eucas1p197b23d50f6986477467d23f53b84d187
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124442eucas1p197b23d50f6986477467d23f53b84d187@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054446_203516_83EA9AD9 
X-CRM114-Status: GOOD (  10.57  )
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

Add IDs to MUXes for UART to manage them from DT.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 drivers/clk/samsung/clk-exynos5420.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/samsung/clk-exynos5420.c b/drivers/clk/samsung/clk-exynos5420.c
index c13f34d3d9a1..7bf74401c4e7 100644
--- a/drivers/clk/samsung/clk-exynos5420.c
+++ b/drivers/clk/samsung/clk-exynos5420.c
@@ -768,10 +768,10 @@ static const struct samsung_mux_clock exynos5x_mux_clks[] __initconst = {
 	MUX(0, "mout_mphy_refclk", mout_group2_p, SRC_FSYS, 28, 3),
 
 	/* PERIC Block */
-	MUX(0, "mout_uart0", mout_group2_p, SRC_PERIC0, 4, 3),
-	MUX(0, "mout_uart1", mout_group2_p, SRC_PERIC0, 8, 3),
-	MUX(0, "mout_uart2", mout_group2_p, SRC_PERIC0, 12, 3),
-	MUX(0, "mout_uart3", mout_group2_p, SRC_PERIC0, 16, 3),
+	MUX(CLK_MOUT_UART0, "mout_uart0", mout_group2_p, SRC_PERIC0, 4, 3),
+	MUX(CLK_MOUT_UART1, "mout_uart1", mout_group2_p, SRC_PERIC0, 8, 3),
+	MUX(CLK_MOUT_UART2, "mout_uart2", mout_group2_p, SRC_PERIC0, 12, 3),
+	MUX(CLK_MOUT_UART3, "mout_uart3", mout_group2_p, SRC_PERIC0, 16, 3),
 	MUX(0, "mout_pwm", mout_group2_p, SRC_PERIC0, 24, 3),
 	MUX(0, "mout_spdif", mout_spdif_p, SRC_PERIC0, 28, 3),
 	MUX(0, "mout_audio0", mout_audio0_p, SRC_PERIC1, 8, 3),
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
