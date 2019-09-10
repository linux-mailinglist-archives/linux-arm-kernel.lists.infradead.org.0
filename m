Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AFFAEA93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 14:38:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cWT6Vcu36dt/w8VB7EfBzWuRO+TvDXKdi3y2YDzt+a8=; b=NZ7jKcbeHo3S341OFpi5C9wtru
	TZGUpAHAsJDl3BKdxYitWP1knFc14pM0YnUjMM2waUTm4/fyCzxCW5hpq7ymyiNKmrLrIpIXYfSXw
	P9nENJEMZLVWdpsPgxfN6RPcW9ZBXzXFQZSrpZAFXRJvVVKbjWOyhJ7W+lR6NDgxqI4a8JbHqWZUS
	vp+bWs6rzgyA4pd6ptYve8rkRpX3/gmxdiyrriHvbwvpc9wtLSjFqVX5QyBJ3wq69xiLcSyg9beKf
	Y42qNBg5iSGZK4oVeyIX7Tj6Q8JGv1D0s5P3yAICAP495GTsr2MsTL0doMhqRq1JWw/7LiZt5QiNy
	vozZeYXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7fPq-0005OX-MD; Tue, 10 Sep 2019 12:38:38 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7fO7-00043n-Ut
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 12:36:53 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190910123645euoutp01d90fd02c9cd585d5dd20785409c7ce16~DE_1maJR71126611266euoutp01Q
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 12:36:45 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190910123645euoutp01d90fd02c9cd585d5dd20785409c7ce16~DE_1maJR71126611266euoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1568119005;
 bh=/st2sHUtSHpK29wSDV5RRbNy6rWv74hdtmw8g6Da7HY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SFTsH2KB/e73VjS9TBKb1cJrR0X6FKFWOotwcgW9xAHULI9vOXhmLNt2x43SBZ0VM
 DD9yXoQ8330S9laOEUzNfMDWJ+5LBAiG/8pHZs69B5G77Ql0stOSreJ06IZE+XQZdv
 kCZ5RKNdTilI9CoWjodiUfJNSOozq/Tv92iMmsaI=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190910123645eucas1p123f3ed458be9672ccef08aeaa85fd3b5~DE_1MUPqD2641926419eucas1p1a;
 Tue, 10 Sep 2019 12:36:45 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E4.F6.04309.CD8977D5; Tue, 10
 Sep 2019 13:36:44 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190910123644eucas1p234a55b19e68046900539195f55ea60dd~DE_0iNP381360413604eucas1p2x;
 Tue, 10 Sep 2019 12:36:44 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190910123644eusmtrp1c5904d9fcbf495cda7b5bf0564b2b32d~DE_0TmcF52381323813eusmtrp1W;
 Tue, 10 Sep 2019 12:36:44 +0000 (GMT)
X-AuditID: cbfec7f4-ae1ff700000010d5-d9-5d7798dcfccc
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E1.FC.04117.CD8977D5; Tue, 10
 Sep 2019 13:36:44 +0100 (BST)
Received: from AMDC3061.DIGITAL.local (unknown [106.120.51.75]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190910123643eusmtip178f4201fdedfe656c43931711d9edf6c~DE_zw0J6e0745507455eusmtip1Q;
 Tue, 10 Sep 2019 12:36:43 +0000 (GMT)
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
To: krzk@kernel.org, vireshk@kernel.org
Subject: [PATCH v4 5/6] ARM: dts: Add "syscon" compatible string to chipid node
Date: Tue, 10 Sep 2019 14:36:17 +0200
Message-Id: <20190910123618.27985-6-s.nawrocki@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190910123618.27985-1-s.nawrocki@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprAKsWRmVeSWpSXmKPExsWy7djPc7p3ZpTHGjzZZm6xccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBLFZZOSmpNZllqkb5fAlbFow0WWgk3sFb/ezGBuYGxl
 62Lk5JAQMJE4ueY/UxcjF4eQwApGiYYNOxkhnC+MEifvfGODcD4DZe7/Y4Rp2XGwEaplOaPE
 sZYDrCAJsJYlm71AbDYBQ4neo31gDSIC6hKvTv1nBmlgFljHJLFs1jKwhLBAoMTZy9PAbBYB
 VYm52xeyg9i8AtYS/Ye/MEFsk5dYveEAM4jNKWAjcWr3LrDNEgLd7BJ7vhyCOslF4t71c+wQ
 trDEq+NboGwZidOTe1ggGpoZJXp232aHcCYwStw/vgCq21ri8PGLQD9wAN2nKbF+lz5E2FFi
 +8pHjCBhCQE+iRtvBUHCzEDmpG3TmSHCvBIdbUIQ1SoSv1dNh7pZSqL7yX8WCNtD4vWvhyyQ
 0OpnlLh25T/LBEb5WQjLFjAyrmIUTy0tzk1PLTbKSy3XK07MLS7NS9dLzs/dxAhMJ6f/Hf+y
 g3HXn6RDjAIcjEo8vA/aymOFWBPLiitzDzFKcDArifBe7yuNFeJNSaysSi3Kjy8qzUktPsQo
 zcGiJM5bzfAgWkggPbEkNTs1tSC1CCbLxMEp1cCYrcNT4O31JCiOjU3rMhfri7tl6srKPyVT
 +JkjL7au/qp9ftXebWtW5dys0V8v1hATbvHK+c4aLvMmz5hfyU2rrG7mB7Tebvd9Gc3zN1Oh
 cGJJ002vTYuuZ+5/1DBnj+FBxVa2jLSr0zf1lzor6ZziLt3DciNca/onyYTdF8quShdstb3J
 oK7EUpyRaKjFXFScCAB5+ykIIwMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrHLMWRmVeSWpSXmKPExsVy+t/xu7p3ZpTHGiz8wW2xccZ6Vov5R86x
 WvQ/fs1scf78BnaLTY+vsVpc3jWHzeJz7xFGixnn9zFZrD1yl92ide8RdovDb9pZLTY/OMbm
 wOOxaVUnm8fmJfUefVtWMXp83iQXwBKlZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwe
 a2VkqqRvZ5OSmpNZllqkb5egl7Fow0WWgk3sFb/ezGBuYGxl62Lk5JAQMJHYcbCRCcQWEljK
 KNHTVdDFyAEUl5KY36IEUSIs8edaF1A5F1DJJ0aJT51HWEESbAKGEr1H+xhB6kUENCX2rgOr
 YRbYwSSx99lfsPnCAv4Sjc1tYPUsAqoSc7cvZAexeQWsJfoPf2GCWCAvsXrDAWYQm1PARuLU
 7l1Q91hLvP44hXUCI98CRoZVjCKppcW56bnFRnrFibnFpXnpesn5uZsYgWG97djPLTsYu94F
 H2IU4GBU4uHtaCmPFWJNLCuuzD3EKMHBrCTCe72vNFaINyWxsiq1KD++qDQntfgQoynQUROZ
 pUST84Exl1cSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgVF5pfNf
 06k7XnKq/byZp8HgL/zpqRj/rOMWgn6u0vNKGl65ntymlNK+JT/zSMt9s+L3h35dlwlLt7++
 oSK5/qTVSaYVi+eXXTtSVWA24Vh9Xpg388qqTocl0e+cNzhEGv0+mDXXOWc5a42G6VQetxk+
 /+ye73opVLfjlKforDnGj2d3GNR6xSmxFGckGmoxFxUnAgCVc75rgQIAAA==
X-CMS-MailID: 20190910123644eucas1p234a55b19e68046900539195f55ea60dd
X-Msg-Generator: CA
X-RootMTR: 20190910123644eucas1p234a55b19e68046900539195f55ea60dd
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190910123644eucas1p234a55b19e68046900539195f55ea60dd
References: <20190910123618.27985-1-s.nawrocki@samsung.com>
 <CGME20190910123644eucas1p234a55b19e68046900539195f55ea60dd@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_053652_159522_EF5D6170 
X-CRM114-Status: GOOD (  11.49  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, kgene@kernel.org,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CHIP ID block in addition to exact chip revision information
contains data and control registers for ASV (Adaptive Supply Voltage)
and ABB (Adaptive Body Bias). Add "syscon" compatible so the CHIPID
block can be shared by respective drivers.

Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
---
Changes since v2:
 - none

Changes since v1 (RFC):
 - new patch
---
 arch/arm/boot/dts/exynos5.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5.dtsi b/arch/arm/boot/dts/exynos5.dtsi
index 67f9b4504a42..4801ca759feb 100644
--- a/arch/arm/boot/dts/exynos5.dtsi
+++ b/arch/arm/boot/dts/exynos5.dtsi
@@ -35,8 +35,8 @@
 		#size-cells = <1>;
 		ranges;

-		chipid@10000000 {
-			compatible = "samsung,exynos4210-chipid";
+		chipid: chipid@10000000 {
+			compatible = "samsung,exynos4210-chipid", "syscon";
 			reg = <0x10000000 0x100>;
 		};

--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
