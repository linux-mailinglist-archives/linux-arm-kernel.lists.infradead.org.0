Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15ADBC34F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 14:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nm2qyPM1xyNrkGf/hfAGMaVn3hK5439siqqUYmRlOkQ=; b=gWxJmVRRH6WdHlL7Bc7uc6UtLD
	Fyq9gBrM0z3KGNbHMRXWsHKAhWJbEWAPpmH9FdRR28lXT1YZcXgnV0t59PLmV22llWz+5oyHVFgTD
	SvO7IyV3PszCYcRcQQHkBIuE/CgOuBneFajsb0itnU/b7GADqH4Z14+YVwoAfBcBBeJpWrTKLG9xj
	NSr0Ui4X4Op784dVpfapIbKLPHdz7N+lSg25LTTfDQTzzTAZJnXfeBiBRMnz8K0k7sQIQbU/kdHf+
	lHkb2r52ap2Q4zYYglhCr4jrzyLgFdgSN8mLTIj+NNokZp/PrlzSFMQYsq5knBuUlVRPtbRZR0fhp
	p6S39p6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFHhW-0000Hc-FM; Tue, 01 Oct 2019 12:56:22 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFHgB-0006QF-P2
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 12:55:05 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20191001125446euoutp01582e7fec86f7867e1a85d2f67951a204~JhxkBmT8h2453424534euoutp01L
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  1 Oct 2019 12:54:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20191001125446euoutp01582e7fec86f7867e1a85d2f67951a204~JhxkBmT8h2453424534euoutp01L
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569934486;
 bh=PpWKyDmydHtOPxqWzMFW/iVCNPUXbzoiAejFA8kjhHM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=DURd+T4ui7IDAlN0MsZCENj80/rt892dPP6s000aspUWJIvH3ijxfkEResWPG6Q7U
 Z0ghPYdO80P4iHved3NyHfvLG8X8uJJVwC8vruhG9lWJ3fgBd4LafhDqEpKY/0GQxr
 D22M9DVvZ/OWeEMZSYMby/G7YGnCDiGm3Wz+c8io=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20191001125446eucas1p16aee0a57fcdaa144e77435816b0b3f50~JhxjnVzyn2261922619eucas1p1V;
 Tue,  1 Oct 2019 12:54:46 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 49.E6.04469.69C439D5; Tue,  1
 Oct 2019 13:54:46 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191001125445eucas1p21ea21a92cec96d660994d8d7f91128e0~JhxjP5Bko2030020300eucas1p2y;
 Tue,  1 Oct 2019 12:54:45 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20191001125445eusmtrp159ce962d55950884ef059f9b8e54fcf3~JhxjPOtSR1469914699eusmtrp1u;
 Tue,  1 Oct 2019 12:54:45 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-9d-5d934c9622ab
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 63.D5.04117.59C439D5; Tue,  1
 Oct 2019 13:54:45 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20191001125444eusmtip13eee4dda350294e71d313d53522657ab~JhxidadUa2359723597eusmtip1M;
 Tue,  1 Oct 2019 12:54:44 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] ARM: dts: exynos: Add interrupt to DMC controller in
 Exynos5422
Date: Tue,  1 Oct 2019 14:54:34 +0200
Message-Id: <20191001125436.24086-3-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191001125436.24086-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMKsWRmVeSWpSXmKPExsWy7djP87rTfCbHGjyYz2yxccZ6VovrX56z
 Wsw/co7Vov/xa2aL8+c3sFucbXrDbnGrQcZi0+NrrBaXd81hs/jce4TRYsb5fUwWa4/cZbdY
 ev0ik8XtxhVsFq17j7BbHH7Tzmrx7cQjRgdBjzXz1jB67Jx1l91j06pONo/NS+o9Dr7bw+TR
 t2UVo8fnTXIB7FFcNimpOZllqUX6dglcGV+/bmIt+MZeMXPGbpYGxpNsXYycHBICJhI9F5qY
 uxi5OIQEVjBK7L30lAXC+cIocWLdCSYI5zOjxPdvn4BaOMBani0qgYgvZ5TYuvEfI1zHjAlv
 WUCK2AT0JHasKgRZISKwmFHi2+EokBpmgW1MEg9WfWMFSQgLREp83PmTHcRmEVCVWNmzCewm
 XgF7ifPXr7NA3CcvsXrDAWYQm1PAQWLZpa2sIIMkBM6xS/y7/JERoshFYs75l8wQtrDEq+Nb
 2CFsGYnTk3ugBhVLNPQuhKqvkXjcPxeqxlri8PGLrCBHMwtoSqzfpQ/xpKPEpod8ECafxI23
 giDFzEDmpG3TmSHCvBIdbUIQMzQktvRcYIKwxSSWr5kGNdtD4unTPmh4TmaUmHR6DvsERvlZ
 CLsWMDKuYhRPLS3OTU8tNsxLLdcrTswtLs1L10vOz93ECExKp/8d/7SD8eulpEOMAhyMSjy8
 Fs8nxgqxJpYVV+YeYpTgYFYS4bX5MylWiDclsbIqtSg/vqg0J7X4EKM0B4uSOG81w4NoIYH0
 xJLU7NTUgtQimCwTB6dUA2PLFJXqz1cW2b5V+yu++PdFjld3Ft3UTaqr0hXQbnM+nJ+oUBsa
 /WDdi4RU419vFSfFCLnsFlF42Rs61yriYt+b00dv/F2+4XT64aMurwyVJrza9u/g3o1n3+6N
 kb7v0GC7teKZoeBKJv8tcyO0zB5G+Dgu2bk+3UZ3SWJNGVegZoiehjFH7GQlluKMREMt5qLi
 RACj95jYRgMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xu7pTfSbHGvSeUbfYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy
 1CJ9uwS9jK9fN7EWfGOvmDljN0sD40m2LkYODgkBE4lni0q6GLk4hASWMkosmt/D3sXICRQX
 k5i0bzuULSzx51oXG0TRJ0aJU9fOMII0swnoSexYVQgSFxFYzihxbNVbZhCHWeAIk8TR1dcY
 QbqFBcIlftw6wARiswioSqzs2cQGYvMK2Eucv36dBWKDvMTqDQeYQWxOAQeJZZe2soLYQkA1
 U/a9ZpzAyLeAkWEVo0hqaXFuem6xkV5xYm5xaV66XnJ+7iZGYKRsO/Zzyw7GrnfBhxgFOBiV
 eHgtnk+MFWJNLCuuzD3EKMHBrCTCa/NnUqwQb0piZVVqUX58UWlOavEhRlOgoyYyS4km5wOj
 OK8k3tDU0NzC0tDc2NzYzEJJnLdD4GCMkEB6YklqdmpqQWoRTB8TB6dUA2Nc++L96eUx/zZF
 3KxfGlmdfLy6Zdra0Mvh6f96jS9uvpj45p+Ex9Mb7UvjeY+mKopH2N2OfOyXMd1ly8cHAgkK
 K/a9+6uh69uTfajEZ/qDNYuKHj6QsXyy5tP7xMYupmvrHZeyt0pypsdGNL/jE+DyNP6ZepPR
 ua3rw6offgZKxXIXHSb2rlZiKc5INNRiLipOBADmPvGqqgIAAA==
X-CMS-MailID: 20191001125445eucas1p21ea21a92cec96d660994d8d7f91128e0
X-Msg-Generator: CA
X-RootMTR: 20191001125445eucas1p21ea21a92cec96d660994d8d7f91128e0
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191001125445eucas1p21ea21a92cec96d660994d8d7f91128e0
References: <20191001125436.24086-1-l.luba@partner.samsung.com>
 <CGME20191001125445eucas1p21ea21a92cec96d660994d8d7f91128e0@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_055459_961176_93617D14 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, willy.mh.wolff.ml@gmail.com, robh+dt@kernel.org,
 b.zolnierkie@samsung.com, krzk@kernel.org,
 Lukasz Luba <l.luba@partner.samsung.com>, cw00.choi@samsung.com,
 kyungmin.park@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com,
 s.nawrocki@samsung.com, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add interrupt to Dynamic Memory Controller in Exynos5422 and Odroid
XU3-family boards. It will be used instead of devfreq polling mode
governor. The interrupt is connected to performance counters private
for DMC, which might track utilisation of the memory channels.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index ac49373baae7..45f63cd82e56 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -240,6 +240,9 @@
 		dmc: memory-controller@10c20000 {
 			compatible = "samsung,exynos5422-dmc";
 			reg = <0x10c20000 0x100>, <0x10c30000 0x100>;
+			interrupt-parent = <&combiner>;
+			interrupts = <16 0>, <16 1>;
+			interrupt-names = "drex_0", "drex_1";
 			clocks = <&clock CLK_FOUT_SPLL>,
 				 <&clock CLK_MOUT_SCLK_SPLL>,
 				 <&clock CLK_FF_DOUT_SPLL2>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
