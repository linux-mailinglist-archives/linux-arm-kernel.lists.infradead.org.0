Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7CA689FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=In2md7IwoM+f8jRAwcbuSXuugQLCkQHdu4IU56Uj5dQ=; b=Fp63iIRklCmylDQpEcOwsnHXCE
	8k07yQ3aEynHJj/Nd8mh1sjqVQVGGudUU9fxxpdu7FthLe7/X//ppvWMfcBySdeRp6PBViPb8p6SU
	m4b7rrMWNG5TqjjnYNdNmKas6732mdftuQNYcjwPyHkctHq25UPiLg7Q3aRiEQK0gNMTDxRHYowbu
	+u2G9LPwR1xPeOfb6kjnA/ZW4eaT/oQZtnNShpy0SNZyLWXy+NCCJk0FvuJkFNMe6/E/t+1t5kl4H
	bQHjp2de9JsHw23Wza3eEy5fnkB8HVpqYh47qGYv1zIFGm01SBTekbeY6l8FfZHvixIU+0bOK9lO3
	Vu8uT/Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0TQ-0003pc-3S; Mon, 15 Jul 2019 12:52:56 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Ld-0003pK-4A
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:54 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124451euoutp01eaa4c42da4acb7b71ccd2022488a6b31~xlUpDYOsI1972419724euoutp01H
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:51 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124451euoutp01eaa4c42da4acb7b71ccd2022488a6b31~xlUpDYOsI1972419724euoutp01H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194691;
 bh=aLhnyTWdZ5o8tYVZnpxOlyYCNVbl4sFXcCeL4NDnAzA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mr1Q5BNnJX05hVaeDYUZ1wttZbZ1MQPW3fGI2ighsqEKb/yTq6ko/bLF8xBRN0wWW
 oWw+ejT3OL8fVvUiwtXdad8vslidgg2LZzAW/jGKythVJeUr/DTuo7GnM+jCTJyq20
 KuCTtvUG0DDyxR6i2YcbE3EdSEZvCXV0rk2F3UTQ=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124451eucas1p15f2d0d90b44efa83f2ef99b3e5f2e043~xlUoQ6V460571105711eucas1p16;
 Mon, 15 Jul 2019 12:44:51 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id E4.B0.04325.2457C2D5; Mon, 15
 Jul 2019 13:44:50 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124450eucas1p189043d196375aa6adacf898de81bfa9b~xlUnk9cAm0154001540eucas1p1F;
 Mon, 15 Jul 2019 12:44:50 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124450eusmtrp1cd38d6f5340299905ea08b0461293d57~xlUnW0GLU0462004620eusmtrp1h;
 Mon, 15 Jul 2019 12:44:50 +0000 (GMT)
X-AuditID: cbfec7f5-b75ff700000010e5-d2-5d2c754264e2
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 3D.40.04146.1457C2D5; Mon, 15
 Jul 2019 13:44:49 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124449eusmtip2f61e0c5c000efa07dbc20e389625a118~xlUmir9vb1176011760eusmtip21;
 Mon, 15 Jul 2019 12:44:49 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 20/50] ARM: dts: exynos: change and rename FSYS OPP table
 in Exynos5420
Date: Mon, 15 Jul 2019 14:43:47 +0200
Message-Id: <20190715124417.4787-21-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0VSeyxVcRzvd849D3duO13Gz6PMFeuFSm2/Db2m7bb6g1abKauLE/LsHlek
 lZI8klclC8nmtUvhMkNSuItYXVTctFK0Wd6Ghsm6x2H99/l+Xt/vfvvRuPQlYUkHh0exynBF
 qIwUi+rfLukcj6n2+O5danVEgy8+EKgmt4pAA/OjBCrUGsaMkXEc6XTVFHp/e4JCg/HWSDPS
 T6DZtO8E+tiUT6JcXQuGnmu/UahkoBdDvV3H0ddb5SRKfKWlUPtEEoFW+2tER0zklU8rgXxa
 n0jJNeoUUl5bfFPeOtWMydPr1EA+p9nmSfmI3QLY0OBoVul86KI4qDZzkYgcF8eUDU2L4sFP
 OhUY0ZA5ANtTu8hUIKalTDmAo8sNmDDMA6jVDOHCMAfgvcYqciOSPjdICUIZgOPFy4AX1iL1
 2hupgKZJxgk2qK/wtClTbGha8uP9OPMFg82/GgleMGHOw5TpWpL3ixh7mPzJlqclzGFYsjBN
 CbtsYEX1G5zHRgZ+Kadn7VTI9FGwtDAN8FnIeMCkBFPBbwLHOurWs9aw+0GaSMAcjL9fBAR8
 HY5kFKx7XGF7Ry/B1+DMTljV5CzQR+Hw70lMaN8M9ZNbeBo3wOz6x7hAS2DyXang3gHr0now
 AZvBssqc9XI5TJgYXn+obACHelaxTGDz5P+yZwCogTmr4sICWc4lnL3qxCnCOFV4oJN/RJgG
 GL5U92rHQgNoWfFrAwwNZMaSIwG7faWEIpqLDWsDkMZlphL3BQMlCVDEXmOVEReUqlCWawNW
 tEhmLonb9OOclAlURLEhLBvJKjdUjDayjAfpq/UgLybrb1+kq+JOl7dF52X8oRvZqffeflLc
 WeBYpGvLem3vBcZiM4oD9PCPJL+5Iw4PHrcz7z84k+vknxfs+jnk9NlTtVunxlyUnp3Gcw75
 sskKu3QgszJ6NNMcY9Fu68NdClnZ746X2i6yJSoHvVfvuwi1uVnTGY/ZExYyERek2LcLV3KK
 f88lzFVOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7qOpTqxBjs3W1rcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MzRN+sBa85qpYfv89SwPjQ44uRk4OCQETib7Pt9i7GLk4hASWMkq8
 XXKFDSIhJjFp33Z2CFtY4s+1LjaIok+MEmffrmftYuTgYBPQk9ixqhCkRkRgBaPE5BPeIDXM
 Aq+ZJI4cfccKkhAWiJI4frabCaSeRUBVouOKIkiYV8BeYunX91Dz5SVWbzjADGJzAsV/TrsA
 doOQgJ3E4qM/mSYw8i1gZFjFKJJaWpybnltsqFecmFtcmpeul5yfu4kRGDnbjv3cvIPx0sbg
 Q4wCHIxKPLwOKdqxQqyJZcWVuYcYJTiYlUR4bb8ChXhTEiurUovy44tKc1KLDzGaAt00kVlK
 NDkfGNV5JfGGpobmFpaG5sbmxmYWSuK8HQIHY4QE0hNLUrNTUwtSi2D6mDg4pRoYCx+0b5fp
 tmlVf1+u+Vot+Pghyf1lDxJ+WzK/t1RXm3N9bs/a8HOTnJ5af3pjmFojave6ouDWkarv181M
 G2QkPd/+j9jY4K02K+iI7W6RkAJmi2tqHIHm2t7dNya9fuD4Iid9pTkzm4Bwb2WWkuZ/nm0S
 N7xWl3eu1kh5dYJ/+506zq6pWZJKLMUZiYZazEXFiQAGR0t+sgIAAA==
X-CMS-MailID: 20190715124450eucas1p189043d196375aa6adacf898de81bfa9b
X-Msg-Generator: CA
X-RootMTR: 20190715124450eucas1p189043d196375aa6adacf898de81bfa9b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124450eucas1p189043d196375aa6adacf898de81bfa9b
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124450eucas1p189043d196375aa6adacf898de81bfa9b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054453_479323_A599EAB5 
X-CRM114-Status: GOOD (  13.04  )
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

The FSYS and FSYS2 buses have similar characteristics and both have max
frequency 240MHz. The old OPP table bus_fsys_apb_opp_table should be used
only to FSYS APB bus because APB max frequency is 200MHz.
The new OPPs for FSYS should increase its performance and related devices.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 941c58bdd809..c7fc4b829b2a 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -995,7 +995,7 @@
 			compatible = "samsung,exynos-bus";
 			clocks = <&clock CLK_DOUT_ACLK200_FSYS>;
 			clock-names = "bus";
-			operating-points-v2 = <&bus_fsys_apb_opp_table>;
+			operating-points-v2 = <&bus_fsys_opp_table>;
 			status = "disabled";
 		};
 
@@ -1003,7 +1003,7 @@
 			compatible = "samsung,exynos-bus";
 			clocks = <&clock CLK_DOUT_ACLK200_FSYS2>;
 			clock-names = "bus";
-			operating-points-v2 = <&bus_fsys2_opp_table>;
+			operating-points-v2 = <&bus_fsys_opp_table>;
 			status = "disabled";
 		};
 
@@ -1157,7 +1157,7 @@
 			};
 		};
 
-		bus_fsys2_opp_table: opp_table5 {
+		bus_fsys_opp_table: opp_table5 {
 			compatible = "operating-points-v2";
 
 			opp00 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
