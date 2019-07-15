Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8538868A2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IgfKXhlp1baUBD6jzzKQQz7YyIMBsQu6pOKU/sOXcKw=; b=tr7FDvsReY3nkyVJkWhTQzbM/l
	+gmxdDv576bmwWFxuV2jcEjota8TNvjEsGDeTYatU3gW9aOX5otXSGkyn39HOin8v3aH2I2lybzNs
	yPhEflLvBckrCLUJftcFFH5jZUEuXdHHUJdp/2xL9iAm3p0ATCDYJcV9CWWYB1EXbPV+mYpaVTK0u
	MYYUVXZKKZHIQmKC8VpwZMDHk75MUAvx2GI8oA/kz3MwOFbXOg4TvkhkPuhgmc+VuzE4qKLQLyBbp
	fVlOE12WyxtR7dLJ4vOe1ok40Q8JQ3T4GRM885WicQrFsZ29/qi4UdHgWhdIrLBoxjDh8qU3YhcAN
	QnHuQd0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0cE-0005Fr-Lf; Mon, 15 Jul 2019 13:02:02 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0M0-0004yD-97
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:22 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124514euoutp01ea8300a70e45004bade49546a403d336~xlU_aQPX21984619846euoutp01X
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124514euoutp01ea8300a70e45004bade49546a403d336~xlU_aQPX21984619846euoutp01X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194714;
 bh=FjmbfDssqB1Pt5EstrFD/CLWu/qb+x06QxtPLMK5QfE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=gnOQge25LU+Z1PAUZeg842LC9nix6uzLNf2JC7uU5E2u8GVYtM/+kOUeLYgEnP+7H
 JNBa7/L+6lySE7J0lYLj7pg/RXhrbzUy2CLBafWgfNxX2ThuMkRGobsFFc7FnvfjYL
 Y7RvSaBLyERzh25bVHmzOdG/bXPs+vGRn1gDcgBQ=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124514eucas1p1ab4218808c3a1c386d88f954ceef1bed~xlU9qyvx50147201472eucas1p1l;
 Mon, 15 Jul 2019 12:45:14 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 70.45.04298.9557C2D5; Mon, 15
 Jul 2019 13:45:13 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124513eucas1p2c30a951141622994d350df5e61fdaed4~xlU84p03j3211032110eucas1p2Z;
 Mon, 15 Jul 2019 12:45:13 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190715124512eusmtrp254a37a7793c98d1b0bfd479a3396b732~xlU8qY3Uf2735227352eusmtrp2J;
 Mon, 15 Jul 2019 12:45:12 +0000 (GMT)
X-AuditID: cbfec7f2-f2dff700000010ca-0b-5d2c75597d1e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id AB.60.04146.8557C2D5; Mon, 15
 Jul 2019 13:45:12 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124512eusmtip262d35c752c7d48281902dc0616b3d84c~xlU71xqNH1099510995eusmtip25;
 Mon, 15 Jul 2019 12:45:12 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 47/50] ARM: dts: exynos: change rate of bus_gscl_scaler
 in Exynos5422
Date: Mon, 15 Jul 2019 14:44:14 +0200
Message-Id: <20190715124417.4787-48-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHKsWRmVeSWpSXmKPExsWy7djPc7qRpTqxBkcbNCxurTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7FJdNSmpOZllqkb5dAlfGz/etbAXNbBXv7v9gb2CcxNrFyMkh
 IWAi8fTIWrYuRi4OIYEVjBKNN/8xQzhfGCWu7jzFCuF8ZpR42f2LCaZlRtNxJojEckaJ5vd3
 WeFavm5cx97FyMHBJqAnsWNVIUiDiMASRokjP5NAapgFbjJJ7HmyE2y5sECUxNO709hBbBYB
 VYmFF2eAxXkF7CXWzl3KCLFNXmL1hgPMIDYnUPzntAtgx0oIXGKX2D5nJjtEkYvEiubPUA3C
 Eq+Ob4GKy0j83zkf6uxiiYbehVA1NRKP++dC1VhLHD5+kRXkaGYBTYn1u/Qhwo4Sny7sYgIJ
 SwjwSdx4KwgSZgYyJ22bzgwR5pXoaBOCqNaQ2NJzAWqRmMTyNdOghntI9Py8Bg3RSYwSz/7t
 YZnAKD8LYdkCRsZVjOKppcW56anFhnmp5XrFibnFpXnpesn5uZsYganq9L/jn3Ywfr2UdIhR
 gINRiYfXIUU7Vog1say4MvcQowQHs5IIr+1XoBBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHeaoYH
 0UIC6YklqdmpqQWpRTBZJg5OqQbG7vgNKivPXWm622PW4fxLYLfogTPXH5ydHLbxlbu9L9fF
 D0kpUks+nI9+Zz2lpmz2ywczChj0nbbei7mXbiu1Qa3h6/3s0ibnE/wK62V3vRM+NsPyoXaW
 3rtZQgZl//k8kk79mKx5nFHlut3CPy9/L2X/e3vP10/pyRO+7a59f/ZE0JwlRtmu9kosxRmJ
 hlrMRcWJALx7g0lRAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7oRpTqxBk9fGFvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mn+9b2Qqa2Sre3f/B3sA4ibWLkZNDQsBEYkbTcaYuRi4OIYGljBI/
 1i9hhkiISUzat50dwhaW+HOtiw3EFhL4xCjx8nN2FyMHB5uAnsSOVYUgYRGBFYwSk094g8xh
 FnjNJHHk6DuwBcICERJLZs9kBLFZBFQlFl6cARbnFbCXWDt3KSPEfHmJ1RsOgO3lBIr/nHYB
 apedxOKjP5kmMPItYGRYxSiSWlqcm55bbKhXnJhbXJqXrpecn7uJERg524793LyD8dLG4EOM
 AhyMSjy8DinasUKsiWXFlbmHGCU4mJVEeG2/AoV4UxIrq1KL8uOLSnNSiw8xmgIdNZFZSjQ5
 HxjVeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGHs3n5tnVneO
 QfL5utWbbY5UGfx2COUJ/LBrz5SSq/qLnmz/4jA3LyLcxujpzbTfwaI3gnseXykpNE0/fqsx
 dFLKvuWv+A1nn+O+u0CuuOfp/g36axOWndkYv3t+fp6h7a38f/Ovdqpe9BBmiFkqETPXip+5
 R/6ulll6irjmjOOtf962Pz+QnKzEUpyRaKjFXFScCAAIgydtsgIAAA==
X-CMS-MailID: 20190715124513eucas1p2c30a951141622994d350df5e61fdaed4
X-Msg-Generator: CA
X-RootMTR: 20190715124513eucas1p2c30a951141622994d350df5e61fdaed4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124513eucas1p2c30a951141622994d350df5e61fdaed4
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124513eucas1p2c30a951141622994d350df5e61fdaed4@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054516_829058_7D866F91 
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

The bus_gscl_scaler OPP table has been aligned to the new parent rate. This
patch sets the proper frequency before the devfreq governor starts working.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index fac5659516ad..d278339f259c 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -158,6 +158,8 @@
 
 &bus_gscl_scaler {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_DOUT_ACLK300_GSCL>;
+	assigned-clock-rates = <300000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
