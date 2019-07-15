Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BB2A68A11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:56:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XSFWAXHVjdR7l5aj42tThijpucFghDN/8JjfZ6Wj830=; b=F0qBKjI4JfEa0ZeFDDF8hJoSE6
	wczsg5CxMWWLyZ5Cj6UvcFRRShFugtzLRGB37ScYa7wtZ5lGZSIkECyqFTbUH5jIENLw9z7mAU65q
	tG+jkLYNMJ3QCB+cPDw4iN5DsTLDzExeUaFv5X1XcpHKjAw9Q95ZerAalX7n6MpAyJYZWJwxfSNdz
	ete79moij8tQVsPxulGfGV5UP5G4oAGfShUJaGt0EKly6GlEsI/ZxZg6m6CDQdPbPAnhTKLUVpvQs
	cxs2HiBcZmiVhNmKB1o/S33/m5KFaoe0QJZOs+fUuNWs1vibti1Qpw5qPzqlK0qRXKSxmoT/ckLks
	rtOXo98Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0XF-0008D5-Cp; Mon, 15 Jul 2019 12:56:53 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Ll-0003wT-4H
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:04 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124457euoutp01afe93f17fbbe96acce3530971c8fda93~xlUueJvE21972419724euoutp01R
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124457euoutp01afe93f17fbbe96acce3530971c8fda93~xlUueJvE21972419724euoutp01R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194697;
 bh=kj3mAoTibXuXqP7RtEEJ98wUQnanVJPJVicA1HV43MM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sRJh8JNwlPL5lAlWJFWpH18BE095zmkxQ8nEKS4EIrRCS4qrxc/6f8i6A6w38xd9F
 LjwADpkdOzGrvKGHQnHBsybkQVs7Lm0avrpHHGbQkP87ClZoZRgI665mz7JA7VpuaB
 Pgfyy3SUMEREy80G75Qg8Aj7MOy+DunQ0jGqZ514=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124456eucas1p1f99829193ba832bd2e59a205828f76a6~xlUtw49YN0154001540eucas1p1M;
 Mon, 15 Jul 2019 12:44:56 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id DC.B0.04325.8457C2D5; Mon, 15
 Jul 2019 13:44:56 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f~xlUs7DUvv0800208002eucas1p2n;
 Mon, 15 Jul 2019 12:44:56 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124456eusmtrp17476f77b4fab1799e2326d2805ff5c7f~xlUs6cWlj0488104881eusmtrp1b;
 Mon, 15 Jul 2019 12:44:56 +0000 (GMT)
X-AuditID: cbfec7f5-fbbf09c0000010e5-e5-5d2c7548549e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id FE.07.04140.7457C2D5; Mon, 15
 Jul 2019 13:44:55 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124455eusmtip254a7da76ff3fdd558aa332875e37ed99~xlUsEoy4D1115211152eusmtip2R;
 Mon, 15 Jul 2019 12:44:55 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 27/50] ARM: dts: exynos: align bus_wcore OPPs in Exynos5420
Date: Mon, 15 Jul 2019 14:43:54 +0200
Message-Id: <20190715124417.4787-28-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTYRjG/c7Z2Y6jyWlqfpokLKSyUruAn2SmkHAgMv+SqKRmHlSatx21
 LPESeGWpqJmEl0TFNc17tkxFpzlSy1upTdRKQTErzOtIRptn1n+/93ney8PHR+LiTsKBDI+M
 ZeSRUpmEL+S19euHT9JxJ4Lcd74eQbr6DwRqKm4g0OT6IoHK+4xl7vx3HA0PNwrQ+4crAqRL
 cUTN8xMEWlXMEmi8vYSPioe7MPSib0aAqidHMTQ64IemU5V8lNbZJ0C9KxkEMkw08Xys6bqy
 OkD/mkoT0M2qLD7dUpVM9/zswOicVhWg15oPBQiuCb1CGFl4PCN3874lDFO8GeFHD4jvLW8v
 Eylg0CobWJKQOgs3Mof42UBIiiklgFv1CxhXrAOom3xpdtYAXMxd5e2NpGaNAc6oAbDyUzr+
 b0RbMERkA5LkU65QrYoxDdhQVQD26YNNPTj1GYMdC68Jk2FNBcDpV5O7W3mUM0zdLsZMLKIu
 wDbtEs5dc4K1jd27bGnU9UUjfE4fE8BpfTLHF+Hit1GMY2u4rG0VcOwIBwsU5tQsTHlUAThO
 hPO5peaec7BXO7qbGaeOwYZ2N072hQ3KLcwkQ8oKTv3Yb5JxI+a3PcE5WQQz08Vc91HYqhgx
 BzgAa+qKzMtp2DNkYtPr5ANYu5jKywNOT/8fewaACtgxcWxEKMOeiWTuurLSCDYuMtT1dlRE
 MzB+qkGDdkMNunaCNYAigWSfyCfkeJCYkMazCREaAElcYiM6v2GURCHShPuMPOqmPE7GsBpw
 kORJ7EQPLL5cF1Oh0ljmDsNEM/I9FyMtHVKAuuZSpZ1/4O+lzY8GT7lt4BWlvjDLR53kZ1Wx
 fNpipgREF246OMn++GoM692aVfus/rDwRKvnK8nqrQL/6saw9DqN+qpLWnjeu1LblsvuBpc5
 b1JZWqM6XO4LdVeSemct7WzHkzLmFO0esjHnfr8yjxv2zl5vY1oKtY9zSJ2nhMeGSU+54HJW
 +hcp3mxHUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7rupTqxBit/mlncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mnt0X2ApOCVW8+vGKtYHxNF8XIyeHhICJRGPnJcYuRi4OIYGljBKn
 Wj6wQCTEJCbt284OYQtL/LnWxQZR9IlRoufsa6YuRg4ONgE9iR2rCkFqRARWMEpMPuENUsMs
 8JpJ4sjRd6wgNcICfhKfV1aB1LAIqEo0/pjBBGLzCthLbDv+ghlivrzE6g0HwGxOoPjPaRfY
 QGwhATuJxUd/Mk1g5FvAyLCKUSS1tDg3PbfYSK84Mbe4NC9dLzk/dxMjMHK2Hfu5ZQdj17vg
 Q4wCHIxKPLwOKdqxQqyJZcWVuYcYJTiYlUR4bb8ChXhTEiurUovy44tKc1KLDzGaAh01kVlK
 NDkfGNV5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYdygzR/cd
 qKqabrBWItnguOA7TTnWfQ/+JhgIvN4ws3DCkdv39ol8+3P12O2HJ4NtY+RqBfkTeGZ/3+77
 13E5x+NffZ8PhSzKCTrmILF7hmHd3CmmDtHFXwUlbmU6TLhlHGt38TfbysTksydSdEvfu63U
 EGfY/k9ms8G9mQsOKn1dozb54ZNN05RYijMSDbWYi4oTAePgB9OyAgAA
X-CMS-MailID: 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f
X-Msg-Generator: CA
X-RootMTR: 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124456eucas1p2acf15d00e3fa7b77fe3a2b10ce1ab74f@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054501_449762_5B85A634 
X-CRM114-Status: GOOD (  14.70  )
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

This is the most important bus in the Exynos5x SoC. The whole communication
inside SoC does through that bus (apart from direct requests from CCI to
DRAM controller). It is also modeled as a master bus in devfreq framework.
It is also the only one OPP table throughout other buses which has voltage
values. The devfreq software controls the speed of that bus and other
buses. The other buses follows the rate of the master. There is only one
regulator. The old lowest OPP had pair 925mV, 84MHz which is enough for
this frequency. However, due to the fact that the other buses follows the
WCORE bus by taking the OPP from their table with the same id, e.g. opp02,
the children frequency should be stable with the set voltage.
It could cause random faults very hard to debug.
Thus, the patch removes the lowest OPP to make other buses' lowest OPPs
working. The new lowest OPP has voltage high enough for buses working up
to 333MHz. It also changes the frequencies of the OPPs to align them to
PLL value such that it is possible to set them using only a divider without
reprogramming OPP. Reprogramming the PLL was not set, so the real frequency
values were not the one from the OPP table, which could confuse the
governor algorithms which relay on OPP speed values making the system to
behave weird.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index f8c36ff0d4c3..a355c76af5a5 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1107,22 +1107,18 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <84000000>;
-				opp-microvolt = <925000>;
+				opp-hz = /bits/ 64 <150000000>;
+				opp-microvolt = <950000>;
 			};
 			opp01 {
-				opp-hz = /bits/ 64 <111000000>;
+				opp-hz = /bits/ 64 <200000000>;
 				opp-microvolt = <950000>;
 			};
 			opp02 {
-				opp-hz = /bits/ 64 <222000000>;
+				opp-hz = /bits/ 64 <300000000>;
 				opp-microvolt = <950000>;
 			};
 			opp03 {
-				opp-hz = /bits/ 64 <333000000>;
-				opp-microvolt = <950000>;
-			};
-			opp04 {
 				opp-hz = /bits/ 64 <400000000>;
 				opp-microvolt = <987500>;
 			};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
