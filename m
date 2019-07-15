Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6120F68A22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:00:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NdIbdUXvrSqaOBqeb3BU8o5KuKBH/51L3pPdfiBTBXU=; b=OGFA9Wd4Vc3SrN4bvYyeS1DBt9
	EfysKE2qwMGDEdBrJqjdL3lYx32jQQhzTIjIxXkK6/8AFB04BVkHT2IWPfDTDazawZBv9mg+MiWw6
	M2Bzs/yFGlK9M5j/94t5VQqrkBO7+m9Rc1t9Btiasl9Yj/R5Bqhen99DOTVNwBVz7n3qcV/AzSJTU
	MdTXcNeyNeGsMPBg+ooTyqmojtzwf56SW6UJZDOpMQlyvqc/JXllN5ZnLjrZihuyOuaTxqjmWtrFO
	za7N/5pujI6WGQZCy7suZrCJscXvMBhhTQa0WrDuwNPLUm7zAiTdlYmZRxT90x2k+NZNV6XCdVKDX
	7bwS+avA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0az-0004FC-Iq; Mon, 15 Jul 2019 13:00:45 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lx-0004j2-90
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:18 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124510euoutp0276cda59b86f0445c26ed4e378b19a71f~xlU6jo6ey0731207312euoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124510euoutp0276cda59b86f0445c26ed4e378b19a71f~xlU6jo6ey0731207312euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194710;
 bh=dWEd0/DZ+13JAJ+RMOvQKrkdBKE1toKGyUC8I38ocEE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AUSnw1qQ14scOap3lTRxUblLX66EO/kcGoEUxwTCSM0Y+XddSa+SN3r86OwQVjWoP
 NaMDpChSV/phurZsRHh7icWaM7PnlK2kN91FZu3SrM1dzKvuR4nlhjCGfbIp1nMfGN
 2+3npX1Fr3jkLnY2XUaTGo977rv20iMTVJe3rVkQ=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124509eucas1p2ab93d8b09ab3547efb0799d596495831~xlU5zNXw93211132111eucas1p2j;
 Mon, 15 Jul 2019 12:45:09 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 63.F1.04377.5557C2D5; Mon, 15
 Jul 2019 13:45:09 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124508eucas1p2f2e09e296dd4ad97a52a2023ede8ae98~xlU462H3e1859018590eucas1p2S;
 Mon, 15 Jul 2019 12:45:08 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124508eusmtrp146c0c5bb31a6a5b68d6f832e0206ba56~xlU4swOzv0488104881eusmtrp1k;
 Mon, 15 Jul 2019 12:45:08 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-34-5d2c75551239
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id F1.27.04140.4557C2D5; Mon, 15
 Jul 2019 13:45:08 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124507eusmtip2931182578dc8771e17aa1a6eee51acd3~xlU39DPDc1172811728eusmtip2p;
 Mon, 15 Jul 2019 12:45:07 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 42/50] ARM: dts: exynos: change parent and rate of
 bus_mscl in Exynos5422
Date: Mon, 15 Jul 2019 14:44:09 +0200
Message-Id: <20190715124417.4787-43-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrJKsWRmVeSWpSXmKPExsWy7djPc7qhpTqxBtseKVrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6M3/tnMBXs5a7YffgmewPjKc4uRg4O
 CQETiSePDboYuTiEBFYwSuyYepYRwvnCKNHefpEFwvnMKPF27h9WmI453yq6GDmB4ssZJWYd
 jIdrmPTyMRNIDZuAnsSOVYUgNSICSxgljvxMAqlhFrjJJLHnyU5WkISwQJzEktbZ7CA2i4Cq
 xPkde8Hm8wrYS8z7mwUSlhCQl1i94QAziM0JFP457QIbyBwJgXPsEt/n9TNDFLlIdK2+xA5h
 C0u8Or4FypaROD25hwXCLpZo6F3ICGHXSDzunwtVYy1x+PhFsL3MApoS63fpQ7zoKLFuhjeE
 ySdx460gSDEzkDlp23RmiDCvREebEMQMDYktPReYIGwxieVrpkHN9pC49aeFFRI4kxgl7rxd
 xDSBUX4Wwq4FjIyrGMVTS4tz01OLjfJSy/WKE3OLS/PS9ZLzczcxAhPU6X/Hv+xg3PUn6RCj
 AAejEg+vQ4p2rBBrYllxZe4hRgkOZiURXtuvQCHelMTKqtSi/Pii0pzU4kOM0hwsSuK81QwP
 ooUE0hNLUrNTUwtSi2CyTBycUg2Mwool93umdDQsN6w7tubH2f+fGX+0yWnM2jon9GTlL+vF
 037GFXRLs5wqjEz6v+3BsWjB42J8eapbzdmEA89yeH1nP7ZXS7eA1aX9efdkla55he/ym7Ks
 Am4c8r7oM+fe208cO0Sdt7Ae3PTycHlJL+/DtoVvOGteC1UsjpN6d0/zxaRY89NSSizFGYmG
 WsxFxYkA4jj4T0wDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDIsWRmVeSWpSXmKPExsVy+t/xe7ohpTqxBgunqVvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M3/tnMBXs5a7YffgmewPjKc4uRg4OCQETiTnfKroYuTiEBJYySix7
 voGpi5ETKC4mMWnfdnYIW1jiz7UuNhBbSOATo8SraeIgvWwCehI7VhWChEUEVjBKTD7hDTKH
 WeA1k8SRo+9YQWqEBWIkpu1TAqlhEVCVOL9jL1iYV8BeYt7fLIjp8hKrNxxgBrE5gcI/p12A
 2mQnsfjoT6YJjHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBMbMtmM/t+xg7HoXfIhR
 gINRiYfXIUU7Vog1say4MvcQowQHs5IIr+1XoBBvSmJlVWpRfnxRaU5q8SFGU6CbJjJLiSbn
 A+M5ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QD48SE2oz5c35X
 7f55k9fiIMuTcq7wkv8uJl1POPTM14Xva23M1gkKnLlBsN7kh/gR66QM+caZSw5ZzrhqwHVH
 MLX1kGMya5WlsO3G5dNyQ10VhEUFZtrwJ8z/6Wol9sMoRSxzf8wNz4UC3ov/+G/hylj0lEP5
 Q/aEr2EnHuxYkuoza+UVRTdDJZbijERDLeai4kQAV54j+68CAAA=
X-CMS-MailID: 20190715124508eucas1p2f2e09e296dd4ad97a52a2023ede8ae98
X-Msg-Generator: CA
X-RootMTR: 20190715124508eucas1p2f2e09e296dd4ad97a52a2023ede8ae98
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124508eucas1p2f2e09e296dd4ad97a52a2023ede8ae98
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124508eucas1p2f2e09e296dd4ad97a52a2023ede8ae98@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054515_930953_85A571E3 
X-CRM114-Status: GOOD (  13.14  )
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

The bus_mscl OPP table has been aligned to the new parent rate. This patch
sets the proper parents in the clock tree and picks the init frequency
before the devfreq governor starts working. It sets also parent rate (MPLL
to 600MHz).

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 198e33cf115f..990fe03fce75 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -103,7 +103,8 @@
 &bus_gen {
 	devfreq = <&bus_wcore>;
 	assigned-clocks = <&clock CLK_MOUT_ACLK266>,
-			  <&clock CLK_DOUT_ACLK266>, <&clock CLK_FOUT_MPLL>;
+			  <&clock CLK_DOUT_ACLK266>,
+			  <&clock CLK_FOUT_MPLL>;
 	assigned-clock-parents = <&clock CLK_MOUT_SCLK_MPLL>;
 	assigned-clock-rates = <0>, <300000000>,<600000000>;
 	status = "okay";
@@ -155,6 +156,13 @@
 
 &bus_mscl {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK400_MSCL>,
+			  <&clock CLK_MOUT_SW_ACLK400_MSCL>,
+			  <&clock CLK_DOUT_ACLK400_MSCL>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>,
+				 <&clock CLK_DOUT_ACLK400_MSCL>;
+	assigned-clock-rates = <0>, <0>, <400000000>, <1200000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
