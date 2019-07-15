Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4568C68A0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:56:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/+ZXUxCS4IDBw+aa9cXQnA0N2cDofjiG++9eLjFo7d0=; b=UBV+2sK8+fKHJ4c15CEnpAPgf0
	lbptkJM5/gzh+kkypFkPN9vzfyUClxL7fgv53QxFk11wGlRIBY2WP4FMqhbWdjVGCusA9lqbJszM4
	ZcPD6l1n71P2VZ64g0uGIHV+LgCA8zS9S6PeGnP8/y1DZjYdzgYoD0H48BUf391eqMh8YxSXhOfdM
	f4cl48Ish75rjMVjhzbQN5Zg7mLjAajESOyN34QHSROpgFhqBmYdGL6NEYUphY+ufniqK/i0bBWPB
	W8AD/qaCLcPVO7nrfN869FNwcYTxRGPlSSpdvYoXgQQ+W4FBWt4sp2dgb3pN8fXR5MSaFM8GiyQxe
	DNZWT1Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Wh-0007jG-Hp; Mon, 15 Jul 2019 12:56:19 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Le-0003qx-UQ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:56 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124453euoutp01aeb9c6cb3c6058543330050ee355bb3a~xlUqutfzu1960819608euoutp01h
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124453euoutp01aeb9c6cb3c6058543330050ee355bb3a~xlUqutfzu1960819608euoutp01h
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194693;
 bh=rqowIlY4bCNTcr2vXgEl4mHT3UFlQgX6gEZbWnELGdc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=r1tZk9ZKn/kXXzen6C/uTZESRuFix9RQF6XQwHAHJs1qOaRbMZ3FGSGl2mLg4m+Ar
 neqVTfjeIiBvsx5Z8MR5jo5O8kXLLKxAO0EY2T8X+w/eIMLIujUKNJp8Pndx+84BYg
 oVTDmyo78iYohN2Ci2RPVcDE2yJe2r3MjI4/zDEk=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124452eucas1p1a90509ba46fb236b751c98063ff13a02~xlUp8XAo53056930569eucas1p1b;
 Mon, 15 Jul 2019 12:44:52 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id C7.B0.04325.4457C2D5; Mon, 15
 Jul 2019 13:44:52 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124451eucas1p28ac87fa7bd7e602ffab69a6915f37536~xlUpKVgf92241522415eucas1p2e;
 Mon, 15 Jul 2019 12:44:51 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124451eusmtrp1d171d79d6bd8d771eb127a526773c3c9~xlUo8Nl100488104881eusmtrp1H;
 Mon, 15 Jul 2019 12:44:51 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-d8-5d2c7544299a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 6F.40.04146.3457C2D5; Mon, 15
 Jul 2019 13:44:51 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124450eusmtip257833d6fe86e20ec790233383714f745~xlUoFFUzM1176011760eusmtip23;
 Mon, 15 Jul 2019 12:44:50 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 22/50] ARM: dts: exynos: OPPs for bus_disp1 in Exynos5420
Date: Mon, 15 Jul 2019 14:43:49 +0200
Message-Id: <20190715124417.4787-23-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLKsWRmVeSWpSXmKPExsWy7djP87oupTqxBp+nKlncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6Mh2dnMRccZq/o2X2BrYHxDWsXIyeH
 hICJxNP1N5i7GLk4hARWMEo0T+pkhXC+MEpsbH3LDuF8ZpTY0/iQCabl4sF9bBCJ5YwSMx50
 ILRMP/kcyOHgYBPQk9ixqhCkQURgCaPEkZ9JIDXMAjeZJPY82Qm2XFjAR2LhnZdgNouAqsS7
 g8tYQGxeAXuJTdf/skNsk5dYveEAM4jNCRT/Oe0C2GYJgXPsElPWH4c6yUVi1c4PUA3CEq+O
 b4GyZSROT+5hgbCLJRp6FzJC2DUSj/vnQtVYSxw+fhHsaGYBTYn1u/RBTAkBR4nmLxYQJp/E
 jbeCIMXMQOakbdOZIcK8Eh1tQhAzNCS29FyAukVMYvmaaVCzPSSuTmuDhs4kRon+B8fZJjDK
 z0LYtYCRcRWjeGppcW56arFxXmq5XnFibnFpXrpecn7uJkZgojr97/jXHYz7/iQdYhTgYFTi
 4XVI0Y4VYk0sK67MPcQowcGsJMJr+xUoxJuSWFmVWpQfX1Sak1p8iFGag0VJnLea4UG0kEB6
 YklqdmpqQWoRTJaJg1OqgdFua+7PlrUfpnz9qxSSKmw4/01X4+8ue91DTYoL5VteLJxTef4K
 W+PiUKmHd/fLnMzwizjcLvZe+xxffVHYVc2pjnWfo6zDVLR1tcL28fCHXox9uSr139zsxWnx
 YqoKH6/ob9+cV1S+7tCtD8+/zYncLP6rLrxZ9oz5jlcTX35Y2p/6PPXuxHolluKMREMt5qLi
 RAC52S0tUAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7rOpTqxBit2q1ncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mh2dnMRccZq/o2X2BrYHxDWsXIyeHhICJxMWD+9hAbCGBpYwSu44K
 QcTFJCbt284OYQtL/LnWBVTDBVTziVHiy4r5LF2MHBxsAnoSO1YVgtSICKxglJh8whukhlng
 NZPEkaPvwBYIC/hILLzzEsxmEVCVeHdwGQuIzStgL7Hp+l+oBfISqzccYAaxOYHiP6ddgDrI
 TmLx0Z9MExj5FjAyrGIUSS0tzk3PLTbUK07MLS7NS9dLzs/dxAiMnG3Hfm7ewXhpY/AhRgEO
 RiUeXocU7Vgh1sSy4srcQ4wSHMxKIry2X4FCvCmJlVWpRfnxRaU5qcWHGE2BjprILCWanA+M
 6rySeENTQ3MLS0NzY3NjMwslcd4OgYMxQgLpiSWp2ampBalFMH1MHJxSDYwmEx7obg5J6ueK
 W/920z1F0bM/rh9velmm7ph88Pn9WMFT5/hXf2R9tO34jU8vn7928F33eZ+IHyvv4ob93Nrs
 tzIq9px5IJfuz3iy4Gn76lPz2hZvfNKRe38Dw8M/Nx423CkylHkWOjPJ19NH50eMv/SkwPhT
 CWe5d+zJXetvKWPIaijpbiysxFKckWioxVxUnAgAKPVXarICAAA=
X-CMS-MailID: 20190715124451eucas1p28ac87fa7bd7e602ffab69a6915f37536
X-Msg-Generator: CA
X-RootMTR: 20190715124451eucas1p28ac87fa7bd7e602ffab69a6915f37536
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124451eucas1p28ac87fa7bd7e602ffab69a6915f37536
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124451eucas1p28ac87fa7bd7e602ffab69a6915f37536@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054455_192269_88F9E68A 
X-CRM114-Status: GOOD (  12.55  )
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

Update the bus_disp1 OPPs and add 400MHz which is max frequency for this
bus. The frequencies are aligned to parent clock such that it is not
needed to change the PLL rate.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 2b36c2f77a10..6e82ffcbeacd 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1305,7 +1305,7 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <120000000>;
+				opp-hz = /bits/ 64 <150000000>;
 			};
 			opp01 {
 				opp-hz = /bits/ 64 <200000000>;
@@ -1313,6 +1313,9 @@
 			opp02 {
 				opp-hz = /bits/ 64 <300000000>;
 			};
+			opp03 {
+				opp-hz = /bits/ 64 <400000000>;
+			};
 		};
 
 		bus_gscl_opp_table: opp_table15 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
