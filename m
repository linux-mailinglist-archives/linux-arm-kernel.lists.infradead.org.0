Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D20DBC477D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 08:06:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MrxtDKZpO4JFyYzr9np+5txicm3OH0FnaQVyt+CPtPk=; b=V55hbIAiwccq6mOvtYXvPvKMlz
	/ZTvCjA2w95dfIrXKTG5ITqADmTg+a0+eZTFKXlwQMJEn1ZvSWgCRKrddbhIysyDONIU9/V4J/oyK
	q6najbDiz9DbrNp5HkLLREqn6+3DL/tN66vAWQp1lnZjQbOfeCsxx1Y1+tk46DP1bIYi3iw16eceN
	gnNed33rL28ZUzEtuFQXfD0OLTG2RgmzTJtVf4ApCL3lco/yXh0vg6v+P/TBfGWn4x8Z4uaMln6l0
	xwCWzkW6N55piiC4HJXcG0jOmBD23vBUACtjQebiyXzc51E0Y01mgvshCI5aWa7FTJ1GolgOE9ZZw
	FU+hJyTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFXlj-0005MM-K3; Wed, 02 Oct 2019 06:05:47 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFXl6-0004WE-B1
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 06:05:11 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20191002060507euoutp024b9278295689bef9123585c6d1b50469~Jv1K17b3_1401814018euoutp02T
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  2 Oct 2019 06:05:07 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20191002060507euoutp024b9278295689bef9123585c6d1b50469~Jv1K17b3_1401814018euoutp02T
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1569996307;
 bh=EWFRg+8V3OIo8aFqoZNFtrRcYuntoN7h44TTPr+nrkw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=srGpCNttP6knCQUBgx3jYWeZbfPEaAKrS7qx8qysBSbViBo00ivTjspdRAwDuxPJi
 +uWHQv3DGoBjnyZ3w28mcMnCXGabocJT2jJa5EYWqUFC46V9J7pW7cYafPWqqDwCKh
 vukt60F2RZz0ZmWxpAuOE6BPN7KfEiVNrmu+txNc=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20191002060506eucas1p22ee956f1587f12b3d3abd7a8976ff2f5~Jv1KkE9mL1656116561eucas1p2e;
 Wed,  2 Oct 2019 06:05:06 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id 20.D9.04309.21E349D5; Wed,  2
 Oct 2019 07:05:06 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20191002060506eucas1p28c9670128f5adfb628d7e84ce55c6e60~Jv1KLbs6B1257012570eucas1p2q;
 Wed,  2 Oct 2019 06:05:06 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20191002060506eusmtrp2eaee2dd30c61388f9b0a599dc2edd12f~Jv1KKwCew0112001120eusmtrp24;
 Wed,  2 Oct 2019 06:05:06 +0000 (GMT)
X-AuditID: cbfec7f4-afbff700000010d5-60-5d943e126bc1
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 60.24.04166.21E349D5; Wed,  2
 Oct 2019 07:05:06 +0100 (BST)
Received: from AMDC3778.digital.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20191002060505eusmtip2fac233f17aa68714e6d59812cf48e561~Jv1JTt1rw0033000330eusmtip2D;
 Wed,  2 Oct 2019 06:05:05 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 3/4] ARM: dts: exynos: map 0x10000 SFR instead of 0x100
 in DMC Exynos5422
Date: Wed,  2 Oct 2019 08:04:54 +0200
Message-Id: <20191002060455.3834-4-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191002060455.3834-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSa0hTYRju29m5aE6OU/RzWeIgqTCtVPpKMwOLBUIRQWBorTyoeN9xliU0
 Q8tJanhJkUxNTZuGtnTeo+ZISdSGoJKJtx+B99S85LB22rH+Pe9zeZ+Xj4/CxM24hIqKS2IU
 cfIYKWEt1H3aGjgqDigIPaZa8UBvixtwNLL2HUdlhgEc5c7MYWhwsJFE/Q/nSfRV5YK0M8M4
 Gmp/TqDVbANAxYPvBeiNYZxE1SNGARpLqyVQRpeBRN3zj3G03jsNAu1k9S/qgaytZJyUaTVq
 Qvau6oHs42KnQJbTpAGyVe2By2SItX84ExOVzCi8Am5aRy4vpYOEafLuq8KXhAp0EFnAioK0
 DzROVZixNSWmawHsn1ELLMMagNOZOcAyrJoVU7pgN7Ixm867agDc2NaDf5FldatZoSiC9oSt
 mkQu4EBXArjeHcJ5MFongJOadZwT7OkwmPGr6+8hQvogzBidEHJYRAfAXpNJaGlzhXWNHzAO
 W9Fn4eLEKMYtgvRnElY3bwOLKQiub47wAXs429NEWrAL/N1Wxp/NQlV2Be9PhTO5pbzHD3b3
 GHHuaIw+DBvavSz0OWjoXMY4GtK2cHTBjqMxM8zTFfG0CGY+Elvch2DTky98kSOsqX/GL5fB
 qpYS/q3yAOwdLwBPgWvJ/7JyADTAiVGysREMeyKOuePJymNZZVyE5+34WC0wf6a+nZ61VtBu
 uqUHNAWkNiLVlfxQMS5PZlNi9QBSmNRB5G/KCxWLwuUp9xhF/A2FMoZh9WAfJZQ6ie7vmbwu
 piPkSUw0wyQwil1VQFlJVEAZovFounjB9/VydN+Wd6Bv3cCUW4X+p6MkJssQpM1vWEgpLAr4
 Id3xVbc0EO6baZSR6Kg0OQ+X0rZGZfeKtzu2oPZ1XOr7VpOTOLd36FLQ+ZMFY7pKKu/qmVSv
 0hzJ6fnyoWD9QovfoI9XsMkpNHpKnKQANqfcnPfLr4UZaqVCNlJ+/AimYOV/AER5huVIAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprOIsWRmVeSWpSXmKPExsVy+t/xe7pCdlNiDVb85rfYOGM9q8X1L89Z
 LeYfOcdq0f/4NbPF+fMb2C3ONr1ht7jVIGOx6fE1VovLu+awWXzuPcJoMeP8PiaLtUfuslss
 vX6RyeJ24wo2i9a9R9gtDr9pZ7X4duIRo4Ogx5p5axg9ds66y+6xaVUnm8fmJfUeB9/tYfLo
 27KK0ePzJrkA9ig9m6L80pJUhYz84hJbpWhDCyM9Q0sLPSMTSz1DY/NYKyNTJX07m5TUnMyy
 1CJ9uwS9jA/vWxgLHrFXLJu6iK2BcTdbFyMnh4SAicT3Vy1MXYxcHEICSxklJv39zgyREJOY
 tG87O4QtLPHnWhcbRNEnRomdP1+zdDFycLAJ6EnsWFUIEhcRWM4ocWzVW2YQh1ngCJPE0dXX
 GEG6hQViJJb8/gm2jkVAVaL1xn0WEJtXwE7ixJ8/LBAb5CVWbzgAtplTwF7i3f0bzCALhIBq
 /p+pnMDIt4CRYRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgpGw79nPzDsZLG4MPMQpwMCrx
 8DYETY4VYk0sK67MPcQowcGsJMJr82dSrBBvSmJlVWpRfnxRaU5q8SFGU6CbJjJLiSbnA6M4
 ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDo6igfm/kRsUAR9vi
 /301pryb/t2Jq9j/fdUBgZqpre8ZBJ+2p+7p9ahWDXoySeBv0pNkka1u58MsVrdK9HZ9/P5y
 q4GhoEQ/Z2yD43+Nfp1FPxnsUj3Wlr99Ov38lYLnkg4PVm3iWl8hu+xOvcSTmLDmLuOeHet+
 M3o1qLgeFG24NGmb9Ku/SizFGYmGWsxFxYkAP+hTaKoCAAA=
X-CMS-MailID: 20191002060506eucas1p28c9670128f5adfb628d7e84ce55c6e60
X-Msg-Generator: CA
X-RootMTR: 20191002060506eucas1p28c9670128f5adfb628d7e84ce55c6e60
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20191002060506eucas1p28c9670128f5adfb628d7e84ce55c6e60
References: <20191002060455.3834-1-l.luba@partner.samsung.com>
 <CGME20191002060506eucas1p28c9670128f5adfb628d7e84ce55c6e60@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_230508_515090_396C55D6 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
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

There is a need to access registers at address offset near 0x10000.
These registers are private DMC performance counters, which might be used
as interrupt trigger when overflow. Potential usage is to skip polling
in devfreq framework and switch to interrupt managed bandwidth control.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 98f6c71f57d8..c829bbdc5711 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -239,7 +239,7 @@
 
 		dmc: memory-controller@10c20000 {
 			compatible = "samsung,exynos5422-dmc";
-			reg = <0x10c20000 0x100>, <0x10c30000 0x100>;
+			reg = <0x10c20000 0x10000>, <0x10c30000 0x10000>;
 			interrupt-parent = <&combiner>;
 			interrupts = <16 0>, <16 1>;
 			interrupt-names = "drex_0", "drex_1";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
