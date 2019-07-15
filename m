Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E0F68A27
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tETq9/mXzvXtX1/4g9y2cQRZGO7q37lv6q3BAOQfVD0=; b=CPsKxTS5x23/+zhLt+9o7Uyt9d
	tNxvMM+DRBhQFtwxSXWLAnaw9orwGsqzEqJn3fhnH9rfqQ/DQK5xS+Gs+9G0utlZTNG+niSTiA5Cu
	OVb5q5OeLMNaOnLgmcXRTortKX/3a56+ST7Mf6wnEsr/ifH6hZeAHwvkcpvrhZdGIlOj1DAMljGCr
	ERUK5d/zi7ma6aUhtZkQ1ga5aIhKEsUpIkswlHMfD3U8s0rA1tF+TIe43KAGUPobK740BI3yzdK4Z
	7oss2EcUwx8rk/TtHzI9dNYkcvrcgvTDY2q2JihWpvaiyuxRQa3b9GrCD1sstF4eyUlavQRdCCdkv
	rontIwwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0ba-0004kL-0Y; Mon, 15 Jul 2019 13:01:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0M0-0004vB-8x
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:21 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124513euoutp028cdb586e3285893e9ed1c8f18c642dcf~xlU89y7Oj0715707157euoutp024
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124513euoutp028cdb586e3285893e9ed1c8f18c642dcf~xlU89y7Oj0715707157euoutp024
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194713;
 bh=o6Z1zLp+glL4NXfMdLJGkavR2ugnNQVpXq1paUuAP3Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NA4xPVQjmiDtYrHIe0AazN67WG5BuRYT+x7FzwvHMTNmbGmk8Ygtlczo++PPTBnZI
 1rGWet4ATE2vSR7RhFZGFL4dsQf8NEGQJ1cn0jopGRrF1mFW6Zc00GObhBIfSmV5yG
 6OGqN3ovkQaTEM2gM3luiJXxsM8OmXtD1o1XnAFI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124512eucas1p17531bb76d9ba80ee553432a7ab274e79~xlU8B6cwP3092130921eucas1p1A;
 Mon, 15 Jul 2019 12:45:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 77.F1.04377.7557C2D5; Mon, 15
 Jul 2019 13:45:11 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124511eucas1p2b11ef3a5bc093e686ae5450d16785225~xlU7QAtye0273902739eucas1p2H;
 Mon, 15 Jul 2019 12:45:11 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124511eusmtrp1aee1a22a77edcdbc09abbe8fc0e2f1df~xlU7B2QlZ0524305243eusmtrp1T;
 Mon, 15 Jul 2019 12:45:11 +0000 (GMT)
X-AuditID: cbfec7f4-12dff70000001119-40-5d2c7557b057
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 28.60.04146.7557C2D5; Mon, 15
 Jul 2019 13:45:11 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124510eusmtip2d955fbabd17b1a22867a36be84bdff71~xlU6PrUmA1099510995eusmtip23;
 Mon, 15 Jul 2019 12:45:10 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 45/50] ARM: dts: exynos: change rate of bus_disp1_fimd in
 Exynos5422
Date: Mon, 15 Jul 2019 14:44:12 +0200
Message-Id: <20190715124417.4787-46-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLKsWRmVeSWpSXmKPExsWy7djP87rhpTqxBgveW1vcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6MibdmMBY0sVX0d09gamCcyNrFyMkh
 IWAi8ffCIbYuRi4OIYEVjBKtSx6xQzhfGCX+tH9lBKkSEvjMKDFxZRVMx+7dT5ghipYzSlxo
 2ckC13Fry3Wgdg4ONgE9iR2rCkEaRASWMEoc+ZkEUsMscJNJYs+TnWC7hQUiJZZ/+8IOYrMI
 qEp83LwWbBuvgL3E9qMXmCC2yUus3nCAGcTmBIr/nHYB7FYJgXPsEpsvPoZ6wkWi4eJGRghb
 WOLV8S3sELaMxOnJPSwQdrFEQ+9CqJoaicf9c6FqrCUOH7/ICnI0s4CmxPpd+hBhR4m1G1vA
 fpEQ4JO48VYQJMwMZE7aNp0ZIswr0dEmBFGtIbGlB+ZiMYnla6ZBDfeQ6Lu+Fxqgkxgllh/c
 wDqBUX4WwrIFjIyrGMVTS4tz01OLjfJSy/WKE3OLS/PS9ZLzczcxAhPV6X/Hv+xg3PUn6RCj
 AAejEg+vQ4p2rBBrYllxZe4hRgkOZiURXtuvQCHelMTKqtSi/Pii0pzU4kOM0hwsSuK81QwP
 ooUE0hNLUrNTUwtSi2CyTBycUg2MK58obBZqmN7yUGTlrIvGQf93KrM9MXM7GT9JY1HKRKv1
 FYfrmD8evxX3wi3qu6b3Y43Vt7rz5M4d/cf46Ry/zKHms3zSkst89pnPnv9E703x9b0rQ98v
 q2hf5vHlctivmNB8d0+VeS/mul9uz/q/69fCD+cnt+xYc3n7xorni16pzQ35vEZiooISS3FG
 oqEWc1FxIgDOYTn8UAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7rhpTqxBuc+sVvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5veAJU0yFhsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG7
 7BZLr19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDsMeaeWsYPd7faGX32LSqk81j85J6
 j4Pv9jB59G1ZxejxeZNcAHuUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+
 nU1Kak5mWWqRvl2CXsbEWzMYC5rYKvq7JzA1ME5k7WLk5JAQMJHYvfsJM4gtJLCUUWLDrEiI
 uJjEpH3b2SFsYYk/17rYuhi5gGo+MUpsXfWZqYuRg4NNQE9ix6pCkBoRgRWMEpNPeIPUMAu8
 ZpI4cvQd2AJhgXCJ9qPvwAaxCKhKfNy8lhHE5hWwl9h+9AITxAJ5idUbDoAdwQkU/zntAhvE
 QXYSi4/+ZJrAyLeAkWEVo0hqaXFuem6xoV5xYm5xaV66XnJ+7iZGYORsO/Zz8w7GSxuDDzEK
 cDAq8fA6pGjHCrEmlhVX5h5ilOBgVhLhtf0KFOJNSaysSi3Kjy8qzUktPsRoCnTURGYp0eR8
 YFTnlcQbmhqaW1gamhubG5tZKInzdggcjBESSE8sSc1OTS1ILYLpY+LglGpgjPJU+qidECwq
 cqDpXYm0SeP1zUmB3/0V8yQdzJ5yX9zL6Oq2ZzHHdxbHWZXdTb9r/1YcmLHH9eLuyVXbfkyS
 3iKwV/u98g/tdzniHz+d+qT9YfuMglcPT7IGHp5lU3qqI6J7qliUxtaZr9wStf8//Hrw/9Kt
 l7wWNS9nuD7bK6P11G0u25Ko6UosxRmJhlrMRcWJAI30x4uyAgAA
X-CMS-MailID: 20190715124511eucas1p2b11ef3a5bc093e686ae5450d16785225
X-Msg-Generator: CA
X-RootMTR: 20190715124511eucas1p2b11ef3a5bc093e686ae5450d16785225
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124511eucas1p2b11ef3a5bc093e686ae5450d16785225
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124511eucas1p2b11ef3a5bc093e686ae5450d16785225@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054516_696364_04EA438F 
X-CRM114-Status: GOOD (  12.20  )
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

The bus_disp1_fimd OPP table has been aligned to the new parent rate. This
patch sets the proper frequency before the devfreq governor starts working.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 27f6ed323ba1..2cfe1effe290 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -143,6 +143,8 @@
 
 &bus_disp1_fimd {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_DOUT_ACLK300_DISP1>;
+	assigned-clock-rates = <300000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
