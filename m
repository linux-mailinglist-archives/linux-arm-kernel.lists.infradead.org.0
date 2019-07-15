Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73C8A68A10
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:56:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=61TZYkQFEgN99x0XK09Sx/6hf7GAA7L5dlfteoXkVoc=; b=MsJjhm6nPT0FoUkzKVNAx1Owod
	glkOHxbxgNLvuuuONTeY8fO0uK+9HQgvP4vWqW2LwhPQ9N7Y3uQpgsNqrEbzapXPCQU2+NEye1dhd
	hw8cc6gyu2ZhD+REN6e8ENHLFmoeEAjX6fR/dNT8sC9uVTqWvcikTtFJG5xcaG+1LbWuRJpr3f5gX
	hLoMHBXJ9EWjxnW/5baX+gcomci5BkpBdT3wF0jt0jusYpGGAWs/mLqAVVw6YLAZczvsLGXehK4+k
	UOkmgsbR6bjvbT2OWOrHWCZYGN+iZ9s6n1ZvRXw3APglzv4OvfET84rzTWoOHbfeFdvhF2BIS8Sp9
	Z9rKn0hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Wy-0007yI-Sh; Mon, 15 Jul 2019 12:56:37 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lp-00048o-1H
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:07 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124503euoutp02a15db75cc34bae48767af62830e80158~xlUzj4_AB0715707157euoutp02t
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:03 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124503euoutp02a15db75cc34bae48767af62830e80158~xlUzj4_AB0715707157euoutp02t
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194703;
 bh=mU8BAWVoycBCUqWyHydLmeJQHNnHJ75xvo8wMq+ZBMI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W+uoXlglAaODFSipjSpfx3kWa5RbnPKzmvXYbqIKjMdCcIl+ZoDM7nqhkeTd7pjnb
 soslG7BxeRj50nJ0STedp8zzF3kGGniLmuDmUY8i6DeECKyT18aKu3lXgz+bml5ToS
 pcR4kQeaqPsnVtfd57gMjoMnhNtkFeSassI3MP3A=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124502eucas1p1e688f0289c05ec2cfbf40a7a51279b8c~xlUyizFr40154701547eucas1p1X;
 Mon, 15 Jul 2019 12:45:02 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 15.C0.04325.D457C2D5; Mon, 15
 Jul 2019 13:45:01 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124501eucas1p17382ca9cead8bfe1dc938e6fb583b7c5~xlUxuTr8o0147201472eucas1p1O;
 Mon, 15 Jul 2019 12:45:01 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124500eusmtrp1f47ce207a761510938ec4476b8c5d9ff~xlUxgMlDG0488104881eusmtrp14;
 Mon, 15 Jul 2019 12:45:00 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-f9-5d2c754df545
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 17.17.04140.C457C2D5; Mon, 15
 Jul 2019 13:45:00 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124500eusmtip2da58ad3a0fcfb8fedc0cd9b783e24537~xlUww35co0573605736eusmtip2P;
 Mon, 15 Jul 2019 12:45:00 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 33/50] ARM: dts: exynos: set parent clocks to UARTs in
 Exynos5420
Date: Mon, 15 Jul 2019 14:44:00 +0200
Message-Id: <20190715124417.4787-34-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0iTYRTGe/ddtVaf0/LNLGER5CVNrHgpS4Uugyj6y6Kymvqh4n2fs6zA
 ZVkmM0NDV6amWYrXuZY3dJmKhuY9nBlaoBSYznRKTMXa/BT/e87vPM97DoeXxkRNhAMdFhXH
 yqKkEWLSGq9pN/UcOCd3CziYs+KBRip7CFStqiKQfv4XgfLbzGX6+G8M9faqKdSdNEWhEYUj
 0owPEWhWOUagwYaXJFL16gSoom2UQm/0/QLU33kKfbtXQqLkpjYKtU49ItDKUDXuayspzysH
 kpnhZEqiKX1MSt4VJUo+GhoFkifaUiAxavZcoC5bewezEWHxrMzjxA3r0AatioxpEd7KM5aR
 CpCzORVY0ZA5BLMGpslUYE2LmBIAVSoDzhfzAE71fF8rjAC+H39OrEeSPk0SfKMYQJ1esxHp
 zK/DUgFNk4w7rCuNtQTsmCIA20yBFg/GfBXAxon61ZdsGX+oHv1AWjTO7IOLhQWrXMj4wPtv
 VYCf5gTL1M2YRVuZuSmrb3VZyPRQMGW+j+RNJ2HqgHEtYAsnO7QUrx1hV6YS5zUHFWkFa567
 cDw9d81zDLZ29BOWpTHGGVY1ePDYD45OKFYxZLbC4WkbC8bMMqMmG+OxEKY8FPHu/VCr7BPw
 egcsLs+ieIsEplXG8tfJALCvXUk8BU4vNma9AqAU2LNyLjKE5byi2JvunDSSk0eFuAdFR2qA
 +VN1rXQs1AHdcmALYGgg3iL0DXYNEBHSeC4hsgVAGhPbCY8vmJEwWJpwm5VFX5fJI1iuBeyi
 cbG98M6mH1dETIg0jg1n2RhWtt4V0FYOClB7NMI4YyLS2ddeel3uHB5SeNXzbJaferQ+DMwb
 xq4l2pT79Bf+m1Eyrdnb/xDGnCXce7YjoPKIa6FbRdBfw+5Fw2zez8PKGVw9aOjeu5R7Zsr2
 Wf6sCelrT7cmeOb7f/m8bdkZyffgrEvs+QeZzYl6EHYpOvwivtOmZI7FxTgXKvV0wWSc9D9x
 bcChUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7o+pTqxBlNfm1vcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MXVtmsBUc4q2Y93k1WwPjbO4uRk4OCQETiaYTr1hBbCGBpYwSK46J
 QsTFJCbt284OYQtL/LnWxdbFyAVU84lR4tb2DqYuRg4ONgE9iR2rCkFqRARWMEpMPuENUsMs
 8JpJ4sjRd2BDhQVCJPY9ucoMYrMIqEr8WrQQLM4rYC/RvGwGI8QCeYnVGw6A1XACxX9Ou8AG
 cZCdxOKjP5kmMPItYGRYxSiSWlqcm55bbKRXnJhbXJqXrpecn7uJERg524793LKDsetd8CFG
 AQ5GJR5ehxTtWCHWxLLiytxDjBIczEoivLZfgUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqc
 D4zqvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjGuecvhqXTgz
 qeLJdTZh+1axS5N/GjXmRukuXLZ4TptZ9EFns6LZRc9vTk4Lqvu5W2/V7+v3nCy5D/xozPuy
 amfQhE1OkvPVZGfIrdNj7z1/Qn6jANcStoT3Pxu02V1N7P+I1K3IE+Wb1DL90lsV/w8/nbmF
 FTceTuktZ+Ex6WULVb1baTBvtxJLcUaioRZzUXEiABEyggSyAgAA
X-CMS-MailID: 20190715124501eucas1p17382ca9cead8bfe1dc938e6fb583b7c5
X-Msg-Generator: CA
X-RootMTR: 20190715124501eucas1p17382ca9cead8bfe1dc938e6fb583b7c5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124501eucas1p17382ca9cead8bfe1dc938e6fb583b7c5
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124501eucas1p17382ca9cead8bfe1dc938e6fb583b7c5@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054505_477397_F3ADB5FE 
X-CRM114-Status: GOOD (  11.74  )
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

Change the parents of UART clocks to the CPLL which has 666MHz.
The UARTs' dividers use /10 rate so they would have 66.6MHz.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 18c5273091bd..79f635043247 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1486,6 +1486,8 @@
 &serial_0 {
 	clocks = <&clock CLK_UART0>, <&clock CLK_SCLK_UART0>;
 	clock-names = "uart", "clk_uart_baud0";
+	assigned-clocks = <&clock CLK_MOUT_UART0>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_CPLL>;
 	dmas = <&pdma0 13>, <&pdma0 14>;
 	dma-names = "rx", "tx";
 };
@@ -1493,6 +1495,8 @@
 &serial_1 {
 	clocks = <&clock CLK_UART1>, <&clock CLK_SCLK_UART1>;
 	clock-names = "uart", "clk_uart_baud0";
+	assigned-clocks = <&clock CLK_MOUT_UART1>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_CPLL>;
 	dmas = <&pdma1 15>, <&pdma1 16>;
 	dma-names = "rx", "tx";
 };
@@ -1500,6 +1504,8 @@
 &serial_2 {
 	clocks = <&clock CLK_UART2>, <&clock CLK_SCLK_UART2>;
 	clock-names = "uart", "clk_uart_baud0";
+	assigned-clocks = <&clock CLK_MOUT_UART2>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_CPLL>;
 	dmas = <&pdma0 15>, <&pdma0 16>;
 	dma-names = "rx", "tx";
 };
@@ -1507,6 +1513,8 @@
 &serial_3 {
 	clocks = <&clock CLK_UART3>, <&clock CLK_SCLK_UART3>;
 	clock-names = "uart", "clk_uart_baud0";
+	assigned-clocks = <&clock CLK_MOUT_UART3>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_CPLL>;
 	dmas = <&pdma1 17>, <&pdma1 18>;
 	dma-names = "rx", "tx";
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
