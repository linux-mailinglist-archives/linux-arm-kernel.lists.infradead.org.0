Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F4FA0159
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ySOFdR6zttrGq9unzNRpzia5n0lA0HQqfs0uUC6NL4U=; b=nRAvlR014hAulX03NPMxxnz+3t
	iX0H+47i2rGO4+mBM1bXkS55CxFM0q5ZGhaa9u6CatwENFDwXAd463JX+75tD9/Y/dPeCmjdc8m2n
	IMwTvyKyS+ZvDWTqJPi3lv+g0myIqe1a2YF20Arbyu9SKtSD3bl+icKnb6XfIXJwDSWSStqofacw7
	foYcWk6sTZtREn4ToM6P3rV5aIWPGSG59996AMID36WFBZDym9tiqXNQwrp56+Ehjlm5+ReP3U4wv
	RG+O7ajJlguOZtU6Idqlg/HX0et1GRXze5M9H4kohp9pB3vznmlicZiGoz8DZAzpgiqORtTUVROJL
	lT6LjxiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2wmW-00057W-T0; Wed, 28 Aug 2019 12:10:33 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2wmF-00056B-Ld
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:10:17 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190828121013euoutp027eb78a9239321299bbae83f1e4b1f096~-FO9hYn-a3275532755euoutp02G
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 12:10:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190828121013euoutp027eb78a9239321299bbae83f1e4b1f096~-FO9hYn-a3275532755euoutp02G
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1566994213;
 bh=cwl8LiQ3L23ajplbU6nEElKWlsR5T+hJrjuLNZahQM4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Cr1a8fwOe9fS2r71Z8Aej0c1YDppvVlLIrPSJ+LUee07UDyPb0EmB1biQvBPM/MSN
 hRk9sHtK9hnEXzHaic39IE7tTHuDoKs3/ErmCixOLjDXQWBXJk5OXm7ZoI8gvpAL8i
 p6YxDO/S23mlOrAeRg5dy0Ozzdv4Ut6xIZFn+F9Y=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190828121012eucas1p294596f4bc354c9a763530f886dcc0167~-FO8xMbEI1356313563eucas1p2l;
 Wed, 28 Aug 2019 12:10:12 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id EC.0D.04374.42F666D5; Wed, 28
 Aug 2019 13:10:12 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11~-FO8AdfJ12730927309eucas1p1U;
 Wed, 28 Aug 2019 12:10:12 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190828121011eusmtrp2414f2f20728718b823ab82b9d166bf84~-FO7ycf1h1346013460eusmtrp2E;
 Wed, 28 Aug 2019 12:10:11 +0000 (GMT)
X-AuditID: cbfec7f5-4f7ff70000001116-3b-5d666f242839
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 89.03.04166.32F666D5; Wed, 28
 Aug 2019 13:10:11 +0100 (BST)
Received: from AMDC2765.DIGITAL.local (unknown [106.120.51.73]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190828121011eusmtip1679343d1fe73ad3f1873b0802628d60b~-FO7cLPx32343323433eusmtip1V;
 Wed, 28 Aug 2019 12:10:11 +0000 (GMT)
From: Marek Szyprowski <m.szyprowski@samsung.com>
To: linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 1/2] ARM: dts: exynos: Add support ARM architected timers
 on Exynos5
Date: Wed, 28 Aug 2019 14:10:04 +0200
Message-Id: <20190828121005.29368-2-m.szyprowski@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828121005.29368-1-m.szyprowski@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrGIsWRmVeSWpSXmKPExsWy7djP87oq+WmxBn83KFlsnLGe1eL6l+es
 FufPb2C32PT4GqvFjPP7mCzWHrnLbrFzzklWB3aPTas62Tw2L6n36NuyitHj8ya5AJYoLpuU
 1JzMstQifbsErowd/44yFjwQqmjpbGZsYLzF38XIwSEhYCIx80RhFyMXh5DACkaJn8deMkI4
 Xxgltv2+ww7hfGaUWLRgO2sXIydYx7XG+WwQieWMEq9aD7DBtUzY8oYJpIpNwFCi620XG4gt
 IuAtMfnMX7BRzAJXGSWWXvvEApIQFoiU2PP6KSPIISwCqhJPJ4eAhHkFbCVmvZ/PDLFNXmL1
 hgNgNqeAncShTZ0sIHMkBJ6zSWzY0sECUeQi0f75P9R5whKvjm9hh7BlJP7vnM8E0dDMKPHw
 3Fp2CKeHUeJy0wxGiCpricPHL7KCXMEsoCmxfpc+RNhR4vWvTYyQUOKTuPFWECTMDGRO2jad
 GSLMK9HRJgRRrSYx6/g6uLUHL1yCut9D4sHe59AwncgosaNjM/sERvlZCMsWMDKuYhRPLS3O
 TU8tNs5LLdcrTswtLs1L10vOz93ECEwNp/8d/7qDcd+fpEOMAhyMSjy8CclpsUKsiWXFlbmH
 GCU4mJVEeB+ppMYK8aYkVlalFuXHF5XmpBYfYpTmYFES561meBAtJJCeWJKanZpakFoEk2Xi
 4JRqYGzQfSGzobzwS3hDs7Jep8oS7UMyW9jSPeeJxYnxfQk9KeLOu6k7/2uc+4nN0oyMem5y
 M+Zb8KwItD6w5nDvzgsNhlrqVd4rT0dqcFqZOe487Rn3INz5fKzIdv7N9kELZj598bj+Hq/8
 p+1/r3zJ8jqxYAlfj7PWlq72lZPd3k9w2/H6aODK00osxRmJhlrMRcWJAJJ3USUJAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrGLMWRmVeSWpSXmKPExsVy+t/xu7rK+WmxBtNfGllsnLGe1eL6l+es
 FufPb2C32PT4GqvFjPP7mCzWHrnLbrFzzklWB3aPTas62Tw2L6n36NuyitHj8ya5AJYoPZui
 /NKSVIWM/OISW6VoQwsjPUNLCz0jE0s9Q2PzWCsjUyV9O5uU1JzMstQifbsEvYwd/44yFjwQ
 qmjpbGZsYLzF38XIySEhYCJxrXE+WxcjF4eQwFJGicPfd7FCJGQkTk5rgLKFJf5c64Iq+sQo
 cWrrRiaQBJuAoUTXW5AEJ4eIgK/E4zcrWUBsZoGbjBI772iA2MIC4RIv92xl7mLk4GARUJV4
 OjkEJMwrYCsx6/18Zoj58hKrNxwAszkF7CQObeoEGyMEVPPg2S7GCYx8CxgZVjGKpJYW56bn
 FhvqFSfmFpfmpesl5+duYgSG6bZjPzfvYLy0MfgQowAHoxIPb0JyWqwQa2JZcWXuIUYJDmYl
 Ed5HKqmxQrwpiZVVqUX58UWlOanFhxhNgW6ayCwlmpwPjKG8knhDU0NzC0tDc2NzYzMLJXHe
 DoGDMUIC6YklqdmpqQWpRTB9TBycUg2M0bM2WlawPLdTVLx0VMrZNHnxBeu9lc7L/0+6eOBo
 rLrNhkeatqtjQ6+tnxuY8CjTSY/dxvLrj+M+k3/yK2rtX3lkZYdLd/q9qXtSYuJnmG6dl973
 meOCRPXu4t32rqlXr3s1/hcvCdzUkH798om3lfs2bDoa4ajqeieKa0Ws25yljvWtigJsSizF
 GYmGWsxFxYkA3Si0sGkCAAA=
X-CMS-MailID: 20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11
X-Msg-Generator: CA
X-RootMTR: 20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11
References: <20190828121005.29368-1-m.szyprowski@samsung.com>
 <CGME20190828121012eucas1p10bac7ebb742d968bca251f21dd3aad11@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_051015_914617_8FD8191C 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All CortexA7/A15 based Exynos5 SoCs have ARM architected timers, so enable
support for them directly in the base dtsi. None of the known firmware
properly configures CNTFRQ arch timer register, so force clock frequency
to 24MHz, which is the only configuration supported by the remaining
clock drivers so far.

Stock firmware for Peach Pit and Pi Chromebooks also doesn't reset
properly other arch timer registers, so add respective properties
indicating that. Other Exynos5-based boards behaves correctly in this area,
what finally allows to enable support for KVM-based virtualization.

Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>
---
 arch/arm/boot/dts/exynos5420-peach-pit.dts | 4 ++++
 arch/arm/boot/dts/exynos54xx.dtsi          | 9 +++++++++
 arch/arm/boot/dts/exynos5800-peach-pi.dts  | 4 ++++
 3 files changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5420-peach-pit.dts b/arch/arm/boot/dts/exynos5420-peach-pit.dts
index f78db6809cca..77e08a4c7300 100644
--- a/arch/arm/boot/dts/exynos5420-peach-pit.dts
+++ b/arch/arm/boot/dts/exynos5420-peach-pit.dts
@@ -1064,6 +1064,10 @@
 	status = "okay";
 };
 
+&timer {
+	arm,cpu-registers-not-fw-configured;
+};
+
 &tmu_cpu0 {
 	vtmu-supply = <&ldo10_reg>;
 };
diff --git a/arch/arm/boot/dts/exynos54xx.dtsi b/arch/arm/boot/dts/exynos54xx.dtsi
index 9c3b63b7cac6..02d34957cd83 100644
--- a/arch/arm/boot/dts/exynos54xx.dtsi
+++ b/arch/arm/boot/dts/exynos54xx.dtsi
@@ -45,6 +45,15 @@
 		status = "disabled";
 	};
 
+	timer: timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
+		clock-frequency = <24000000>;
+	};
+
 	soc: soc {
 		sysram@2020000 {
 			compatible = "mmio-sram";
diff --git a/arch/arm/boot/dts/exynos5800-peach-pi.dts b/arch/arm/boot/dts/exynos5800-peach-pi.dts
index e0f470fe54c8..5e8cec736444 100644
--- a/arch/arm/boot/dts/exynos5800-peach-pi.dts
+++ b/arch/arm/boot/dts/exynos5800-peach-pi.dts
@@ -1033,6 +1033,10 @@
 	status = "okay";
 };
 
+&timer {
+	arm,cpu-registers-not-fw-configured;
+};
+
 &tmu_cpu0 {
 	vtmu-supply = <&ldo10_reg>;
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
