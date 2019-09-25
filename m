Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CC3BE263
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:21:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bd1x5ujFHy9IySxftM++tfYDDOLyh/P96zvhU/k7CTg=; b=gvUnc3b2g86jsNeQHWaTchIMSs
	jTlAvqEurKTQ7z1bltHKBPysSMfRI15UB89A3oARD6yqCeDsusjZQQLOmO2Zzq/IlpTjL33oMOYw/
	s7ORD0BjJ8IWQs9t9sDy0Mo85+UWEdoiLsWMpTivll6FPgJa5WnzkiO97q9JsM4XIHBQX3b1xiMPT
	0XBVX/MnZMgj0oFYMHIN8l6znhk3XLVNv7Olc5mn3vsBRJSo0batwkYXri9d4i4VBcNqraMucpi9j
	Hgt3y6GXjjYMYGUOM94/f5W8GpfRcyrtRur+pXShs7wZ1rk5yAvghvXbnHQbGevyROvQzfqm/XtIv
	b7HcJbAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDA2c-0002qN-F5; Wed, 25 Sep 2019 16:21:22 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDA07-0008LC-U0
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:18:50 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190925161844euoutp02419140057a47c8fa20cda0d05629c243~Hur76gThI2001920019euoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 16:18:44 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190925161844euoutp02419140057a47c8fa20cda0d05629c243~Hur76gThI2001920019euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569428324;
 bh=aUsdMGonTqAWq+GWFlk5Uy2pEHFhH5/xFpuHLZ6vFFY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=f7AeI6SlNTG8WsbnNhk3dK78xsqcmVRLFRvd2HID3cdfgj4fHG5iEU4kSNogecSxR
 oUoe/qI71nqc7EET1Z3SVSr/rRN63dLA6shO8CDjyswEMdUVF9FEiiBzohilnrUKN5
 K7whOHGA6Jm8R+5cqkqfbhVv1I0m0mI4wvQVatsA=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190925161843eucas1p244d94d9f0c07f565f2443d631724623d~Hur7WM4ZD0603606036eucas1p2k;
 Wed, 25 Sep 2019 16:18:43 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 40.FC.04469.3639B8D5; Wed, 25
 Sep 2019 17:18:43 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190925161843eucas1p1abaa1aaa20fcf5c55c9e52bb6a491317~Hur62C0Iz0799507995eucas1p1y;
 Wed, 25 Sep 2019 16:18:43 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190925161843eusmtrp10b96972ed299b44f2e62cc2aef086b89~Hur61KknF0531705317eusmtrp1m;
 Wed, 25 Sep 2019 16:18:43 +0000 (GMT)
X-AuditID: cbfec7f2-54fff70000001175-2f-5d8b93630c27
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 9F.14.04166.3639B8D5; Wed, 25
 Sep 2019 17:18:43 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190925161842eusmtip1e57b81fb6968461fac7aa18c6ea00622~Hur6FGMp70353003530eusmtip1Y;
 Wed, 25 Sep 2019 16:18:42 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: exynos: map 0x10000 SFR instead of 0x100 in
 DMC Exynos5422
Date: Wed, 25 Sep 2019 18:18:12 +0200
Message-Id: <20190925161813.21117-3-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190925161813.21117-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrEKsWRmVeSWpSXmKPExsWy7djP87rJk7tjDW5vNLXYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9igum5TUnMyy1CJ9uwSujNtzvjEVXGWveHOni6mBcQNbFyMHh4SAiURXP0sX
 IyeHkMAKRoktM4O6GLmA7C+MEo8PH2KEcD4zShzffo0ZpAqkYdnTJWwQieWMEm2nD7PAtdxa
 PQ9sLJuAnsSOVYUgDSICixklvh2OAqlhFtjGJPFg1TdWkISwQLTEgj07wGwWAVWJHZ+3M4LY
 vAL2Es/bWlggtslLrN5wAGwzp4CDxKe3O5lABkkIHGOXaL48G+okF4m3sy6wQ9jCEq+Ob4Gy
 ZSROT+6BGlQs0dC7kBHCrpF43D8XqsZa4vDxi6wgRzMLaEqs36UPCRZHiX/7qiFMPokbbwVB
 ipmBzEnbpjNDhHklOtqEIGZoSGzpucAEYYtJLF8zDWq2h8TsydOZIKEzmVFi9btPrBMY5Wch
 7FrAyLiKUTy1tDg3PbXYMC+1XK84Mbe4NC9dLzk/dxMjMCWd/nf80w7Gr5eSDjEKcDAq8fAe
 COuOFWJNLCuuzD3EKMHBrCTCO0umK1aINyWxsiq1KD++qDQntfgQozQHi5I4bzXDg2ghgfTE
 ktTs1NSC1CKYLBMHp1QDo4vOkfel10xtLrR+FrqT5tqhxjrjRfCTnJfhwh5GTJqWeY9Wp8/g
 vNbzO3OZzNmeINnZOgo9V+ds4uQtre5xzFUMP7ZlkqLTt3Jug8uNO8y+cb6WKNmTXm8uq7JR
 bX9IffPSjrZCtTjn3LrkOXvruT8/DorZPOXKNNVLkxa8yucUDM7+fWqHEktxRqKhFnNRcSIA
 4ilE2UUDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBIsWRmVeSWpSXmKPExsVy+t/xu7rJk7tjDZ6+FLXYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy
 1CJ9uwS9jNtzvjEVXGWveHOni6mBcQNbFyMnh4SAicSyp0uAbC4OIYGljBJfVt9jgkiISUza
 t50dwhaW+HOtC6roE6PEujm9QAkODjYBPYkdqwpB4iICyxkljq16ywziMAscYZI4uvoaI0i3
 sECkxJeuuWDrWARUJXZ83g4W5xWwl3je1sICsUFeYvWGA8wgNqeAg8SntzvBrhACqVlzgmkC
 I98CRoZVjCKppcW56bnFhnrFibnFpXnpesn5uZsYgbGy7djPzTsYL20MPsQowMGoxMN7IKw7
 Vog1say4MvcQowQHs5II7yyZrlgh3pTEyqrUovz4otKc1OJDjKZAR01klhJNzgfGcV5JvKGp
 obmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTUgtQimD4mDk6pBkaBP/GTv7s9nSfBz2B3f9Wp
 6cy1zk8DJb8tncbGX31B79qrG00H5xh+vxtw+VFt99oHDkrcPy0XZ6TcmzZvLef/hDc2Qi4v
 Fomq9kYEH37u4/nxQEb1Y/48f7/fAY7nExLeMrx8nnH335WNzgESp844bVo2b+PNknW76tqe
 T2p2WLRrylxza25rJZbijERDLeai4kQAJo2teqsCAAA=
X-CMS-MailID: 20190925161843eucas1p1abaa1aaa20fcf5c55c9e52bb6a491317
X-Msg-Generator: CA
X-RootMTR: 20190925161843eucas1p1abaa1aaa20fcf5c55c9e52bb6a491317
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190925161843eucas1p1abaa1aaa20fcf5c55c9e52bb6a491317
References: <20190925161813.21117-1-l.luba@partner.samsung.com>
 <CGME20190925161843eucas1p1abaa1aaa20fcf5c55c9e52bb6a491317@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091848_281711_588940BA 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

There is a need to access registers at address offset near 0x10000.
These registers are private DMC performance counters, which might be used
as interrupt trigger when overflow. Potential usage is to skip polling
in devfreq framework and switch to interrupt managed bandwidth control.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 72738e620d11..b695f07f7eed 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -239,7 +239,7 @@
 
 		dmc: memory-controller@10c20000 {
 			compatible = "samsung,exynos5422-dmc";
-			reg = <0x10c20000 0x100>, <0x10c30000 0x100>;
+			reg = <0x10c20000 0x10000>, <0x10c30000 0x10000>;
 			interrupt-parent = <&combiner>;
 			interrupts = <16 0>;
 			clocks = <&clock CLK_FOUT_SPLL>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
