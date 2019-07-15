Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1272268A21
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:00:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ExYH6bOeYslVYKR5ALwLDwSnJEdoM7ucUuGDkpD1Gjo=; b=IsNj7U1etwpahK3Ir3IkTYusEf
	9Xgqt4CSob+zV3C5HOOVyOFVE0pUqq/PT4JTycqWrhxGR6kvcX+Hs9hZ6q4+1sPinbTMyiKlyYMYx
	GOuXA1StT3JkYtzX8PT0XOq2H5Eb+m3w4oAWA4TQSQ8dWQtajLZ/++JacjSsE1qFjECtRhmVJomi3
	ZO4OMlAz2TQc9BIOFRhMagbgWomtLDif2M6cDyEwhge1fzPj1C4JtUSqlSsWNwoqAtO8IHwxfJk0O
	iLEj5wCMOg7/FaNh/w0MXvRBAikdQ0YcsrhDVWGllHU9OVShiOQVthK3zUUz1jXY9g2vcNYrUCTbp
	8nBp2J7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0ag-0003Im-HQ; Mon, 15 Jul 2019 13:00:26 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lx-0004oL-Kp
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:18 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124511euoutp01e19b9b8d7b3af8d44742a908de71f8da~xlU7dInzc1960819608euoutp018
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124511euoutp01e19b9b8d7b3af8d44742a908de71f8da~xlU7dInzc1960819608euoutp018
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194711;
 bh=JNlU+ZmxnzoctgxAgCVPM/SH+VMb8GGroKMeCa1CTrc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H6Koa0Aqf/0ypQOLwVQpUk7/HEj37HLQfBhno3YAtxXlf9mISJZe7rA/C1/w3iFpd
 hyyK7vYgLrkJLDaoGyi2+Btl+atFwPEcohzr2Nd0Px5WXcOhK2JGily6Ro/uoahzUm
 0T/YggpgvT+RewGOH9H7wyZFz+/YUdURnxSKDVYA=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124510eucas1p2e1c21a165239ac044c2f9d89ed708ddf~xlU6oH_2f2242322423eucas1p2s;
 Mon, 15 Jul 2019 12:45:10 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 1F.C0.04325.6557C2D5; Mon, 15
 Jul 2019 13:45:10 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124509eucas1p1f2e44af951158fbef1a245467956ef93~xlU5uAkea0154701547eucas1p1j;
 Mon, 15 Jul 2019 12:45:09 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124509eusmtrp1769b02b2087539853d553f6ca8e60e5b~xlU5f0Efw0524305243eusmtrp1E;
 Mon, 15 Jul 2019 12:45:09 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-15-5d2c75561d7d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E3.27.04140.5557C2D5; Mon, 15
 Jul 2019 13:45:09 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124508eusmtip2cf2dc22aa7f72b1418ad8ca53e849f1f~xlU4t1x3h1173411734eusmtip20;
 Mon, 15 Jul 2019 12:45:08 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 43/50] ARM: dts: exynos: add bus_isp in Exynos5422
Date: Mon, 15 Jul 2019 14:44:10 +0200
Message-Id: <20190715124417.4787-44-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSf0yMcRzHfe+558fF2eNCX2lubmyECv3xnd+2Ws8YozazYrlzj6u5u3RP
 RdFcmX7cImJJ86Om1rnuqjslrljO0QhXIakVlmklTpM/wuKePRf/vT7v9/vzY999KUx2Dw+m
 kvVprEGv1CqIAPHtx5OeVXvSV+6PGChYgPrqXuDIXlaPozcTwzi67vaVxUOfMeTxNJDoee4Y
 ifqMIcgx1IOj8aJBHL10XiFQmee+CNncAySqftMlQl1Po1F/jplAp++5SfRwLB9HUz128ZZA
 xnrNChhv72mScVgKCeZW1UnmwddWEXO20QKY745Fu8j4gA1qVpucwRrCNx0ISBp5NCw6Mig5
 Nuj8hhnBRcoEJBSkI6H39ZiYZxltBvD64ygTCPDxBICOAismFN8BtFnN5HTH15ZRv1EDYH7L
 O/JfS163Q2QCFEXQYfCOJZVvmEtXAeieVPEZjH4rgq0f7+K8EUhHw495xQTPYnopbCseAzxL
 6c3w2ZVaIGyTw9qGNoxniU+fLO0k+EGQ7iZhk/MUJoSi4E/HKVzgQDja3ug/NQR2XCgSC8xB
 45lK/9ATcKj4qj+zHj5s78L5ozF6Oax3hgvyVvih+hPBy5CeDXu/zOFlzIclty9hgiyFBXky
 Ib0MNhZ1igSeD2uspf7hDPx0s0IsPE8JgOU/H+DngLz8/7IKACwgiE3ndBqWW6tnj4ZxSh2X
 rteEHUzROYDvU3VMtf+4A+7/VrkATQHFLOkW9Yr9MlyZwWXqXABSmGKudOMPnyRVKzOzWENK
 oiFdy3IusJASK4Kkx2e8T5DRGmUae5hlj7CGaVdESYKNYJtEpaq7nNxAJ2SVGU3hwbonnYUh
 N+SeJTEtx93jOXE2r2odIc8ODlq8ZnPjrmptLM7aC3ebByLjYyvVfXGSX6P2vUzFzJRmQ2pr
 jQ6y/ezVP6Y/TVp24aNDr+ZFNBG27dU7vHRMYnNnxj5dszN7xHUoKDc0uX6npk17PsqoEHNJ
 ytWhmIFT/gVQBGnnUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7qhpTqxBpf/SFvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Ml0efMxXc46y4t+sDcwPjFI4uRk4OCQETiXe7XzF3MXJxCAksZZRY
 /e4/C0RCTGLSvu3sELawxJ9rXWwQRZ8YJRo+9zF1MXJwsAnoSexYVQhSIyKwglFi8glvkBpm
 gddMEkeOvmMFSQgLuEo8aetnA7FZBFQlDvS/YQSxeQXsJc7MWc0IsUBeYvWGA8wgNidQ/Oe0
 C2D1QgJ2EouP/mSawMi3gJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmDsbDv2c8sOxq53
 wYcYBTgYlXh4HVK0Y4VYE8uKK3MPMUpwMCuJ8Np+BQrxpiRWVqUW5ccXleakFh9iNAU6aiKz
 lGhyPjCu80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MOoFuVcV
 KPJ/Pve54FrZVv5bvX0Hnlxb8d3q1PQpPduenUuV39+U91Zo+vI/lzoOmz5UjMzpnql2O62m
 b1L3P/2FVg5rufqaCrfmWOaa3i0q2cflO/1vYspvA2HD5363tCX/b+1Ste1UNu3uUlfRCjDw
 db7FlxL0IOaVi+vZg4lz17F2+6z+ocRSnJFoqMVcVJwIADf5qXizAgAA
X-CMS-MailID: 20190715124509eucas1p1f2e44af951158fbef1a245467956ef93
X-Msg-Generator: CA
X-RootMTR: 20190715124509eucas1p1f2e44af951158fbef1a245467956ef93
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124509eucas1p1f2e44af951158fbef1a245467956ef93
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124509eucas1p1f2e44af951158fbef1a245467956ef93@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054515_928869_67A36430 
X-CRM114-Status: GOOD (  11.78  )
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

Add bus_isp which changes ACLK400_ISP clock speed according to the bus
documentation in the documentation. The bus_isp OPP table has been
aligned to the new parent rate. This patch sets the proper parent and
picks the init frequency before the devfreq governor starts working.
It sets also parent rate (DPLL to 1200MHz).

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 990fe03fce75..852cb3dd495d 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -166,6 +166,18 @@
 	status = "okay";
 };
 
+&bus_isp {
+	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK400_ISP>,
+			  <&clock CLK_MOUT_SW_ACLK400_ISP>,
+			  <&clock CLK_DOUT_ACLK400_ISP>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>,
+				 <&clock CLK_DOUT_ACLK400_ISP>;
+	assigned-clock-rates = <0>, <0>, <400000000>, <1200000000>;
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&buck6_reg>;
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
