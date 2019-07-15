Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB3E68A1A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:58:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZulMNnkAhJMLH07DZ/YBVDfXvw60vuN2Bf2xe9u3C8o=; b=N7qqO3kVKS0vYJoUiyopPLfC3t
	IO60E2LZVNgC6cpQyRXXWowxNncVeS0g7L9Mm3J8tIQPpOQf1KmjtfOS1lUDcBQTh1lulBRC9Cu5l
	H8c889cE84J9N62U6ZvYZVQE5pDQ1uy7G0vqkEOqTK7rn4+D7qXbBZT/5c1X3faikwJqlXFjot6Cz
	irtKLzjJUsAVpIYF+F6Std0gfnlJNeMBKkaKyfjKYpD21Pg0a4LIBihslWUiNAeCyOKrn2MIkoqps
	2f2AdbcBh+zmZV9DfJJJWaMYmrSnmRo9JbYHbUSV7fqjzp6zQ6il6KSP2StAgm0/6zNai6U9Q40FS
	8EFD43OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Z2-0001Ok-LS; Mon, 15 Jul 2019 12:58:44 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lq-0004HF-JR
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:10 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124504euoutp022c27385854062b2bcb69945c73e90676~xlU085SVu0714907149euoutp02y
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124504euoutp022c27385854062b2bcb69945c73e90676~xlU085SVu0714907149euoutp02y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194704;
 bh=T1XbMxdJSXy/jko0p7zCuk+CitX2KHWmq2EdXnF1nsA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=sa2JuxnyG8nMajoSqcw2WT85fdm7q7LMHBLfqH0tuy9gALnJvV9mDLet3AXW74bXv
 HaAeFbPiMGf4SMSvE9e4Eol5Q7FHKkn/1IDvq6CYQkSZIozFhdTkHMLUxsww4ckwqB
 VxGTwIP3pOP8kPIJIndXvEahXJdsMQCILG0DtgLY=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124503eucas1p259c18fc319d64a67c9908325a912bad0~xlU0MhKGq2241922419eucas1p29;
 Mon, 15 Jul 2019 12:45:03 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 08.C0.04325.F457C2D5; Mon, 15
 Jul 2019 13:45:03 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124502eucas1p1b795c100232b405070f4700e3ca6130b~xlUzYdfxY3056930569eucas1p1k;
 Mon, 15 Jul 2019 12:45:02 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124502eusmtrp17c00525fb22ba0900dd008f7310cf81f~xlUzKP1t10488104881eusmtrp1_;
 Mon, 15 Jul 2019 12:45:02 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-fe-5d2c754fbd2f
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id E8.17.04140.E457C2D5; Mon, 15
 Jul 2019 13:45:02 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124501eusmtip2fe8b09249a1b491b97f07079193e7347~xlUyTW3zf0528005280eusmtip20;
 Mon, 15 Jul 2019 12:45:01 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 35/50] ARM: dts: exynos: change speed and parent of NoC
 clock in Exynos5420
Date: Mon, 15 Jul 2019 14:44:02 +0200
Message-Id: <20190715124417.4787-36-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFKsWRmVeSWpSXmKPExsWy7djP87r+pTqxBqfvylrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6MyadiC+5xVLRPv8bewLiWvYuRk0NC
 wETi+4ULLCC2kMAKRonDv126GLmA7C+MEje2PmOGcD4zSuzd+YEFpuNM9z5GiMRyRonj308x
 Q7SDtFxz6GLk4GAT0JPYsaoQJCwisIRR4sjPJJB6ZoGbTBJ7nuxkBUkICyRI/Jh0HayXRUBV
 4v/UzWALeAXsJe7P2MUKsUxeYvWGA2A1nEDxn9MusEHEL7FLNL0UhrBdJLZsewFVLyzx6vgW
 qNdkJE5P7oE6uliioXchI4RdI/G4fy5UjbXE4eMXWUFuZhbQlFi/Sx8i7CixduZzZpCwhACf
 xI23giBhZiBz0rbpUGFeiY42IYhqDYktPReYIGwxieVrpkEN95BYu62bBRJSkxglXv87wTaB
 UX4WwrIFjIyrGMVTS4tz01OLjfNSy/WKE3OLS/PS9ZLzczcxAlPU6X/Hv+5g3Pcn6RCjAAej
 Eg+vQ4p2rBBrYllxZe4hRgkOZiURXtuvQCHelMTKqtSi/Pii0pzU4kOM0hwsSuK81QwPooUE
 0hNLUrNTUwtSi2CyTBycUg2M607s4+VMtDu1ZNfxXYY/bsRM1dR9G2Ndyv/kFJ/ijoyZIp5q
 vxPSnsowqu1/O/PXL9cjXs+FPixu2pKqfin4m2jUpQnMD1PuMaySvu+dsHtXQeS/HwUTvS9N
 afz/+rBUsCPzhEXJvYZOch8lbLcvaeR9GtWrf+308u33zi5hsk8WcgjlOWC2TImlOCPRUIu5
 qDgRAPS7YHxNAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7p+pTqxBrumqVrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MyadiC+5xVLRPv8bewLiWvYuRk0NCwETiTPc+RhBbSGApo8TRdxYQ
 cTGJSfu2Q9UIS/y51sXWxcgFVPOJUaL77VmWLkYODjYBPYkdqwpBakQEVjBKTD7hDVLDLPCa
 SeLI0XesIAlhgTiJqQdOMYHYLAKqEv+nbmYBsXkF7CXuz9jFCrFAXmL1hgPMIDYnUPzntAts
 EAfZSSw++pNpAiPfAkaGVYwiqaXFuem5xUZ6xYm5xaV56XrJ+bmbGIFxs+3Yzy07GLveBR9i
 FOBgVOLhdUjRjhViTSwrrsw9xCjBwawkwmv7FSjEm5JYWZValB9fVJqTWnyI0RToqInMUqLJ
 +cCYziuJNzQ1NLewNDQ3Njc2s1AS5+0QOBgjJJCeWJKanZpakFoE08fEwSnVwJj8uevtqdXP
 t1TW7g6buXvx+bm/3GQcnxy878epvLPUo9ec/dE/rpssjU5qyVyLAuayP5RYvfmNobFat8Ll
 VzyX3TeesvRQefTUUeYmy7owz7lPVoeXcf2228V//d7+g4Jflm9mvKkZ8uzUeY5tOTE/tZju
 qhtt+cBVzquRH6XB0v9wk2gdv7wSS3FGoqEWc1FxIgCMVJuvsQIAAA==
X-CMS-MailID: 20190715124502eucas1p1b795c100232b405070f4700e3ca6130b
X-Msg-Generator: CA
X-RootMTR: 20190715124502eucas1p1b795c100232b405070f4700e3ca6130b
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124502eucas1p1b795c100232b405070f4700e3ca6130b
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124502eucas1p1b795c100232b405070f4700e3ca6130b@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054506_991295_134095FF 
X-CRM114-Status: GOOD (  11.18  )
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

This patch changes speed and parent of NoC WCORE bus to 400MHz. The clock
is now attached to a branch were the root is the DPLL which speed is set to
1200MHz. The OPPs are aligned to this rate accordingly.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 25d95de15c9b..aaf18653d8ac 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -46,6 +46,13 @@
 			<&nocp_mem1_0>, <&nocp_mem1_1>;
 	vdd-supply = <&buck3_reg>;
 	exynos,saturation-ratio = <100>;
+	assigned-clocks = <&clock CLK_MOUT_ACLK400_WCORE>,
+			  <&clock CLK_MOUT_SW_ACLK400_WCORE>,
+			  <&clock CLK_DOUT_ACLK400_WCORE>,
+			  <&clock CLK_FOUT_DPLL>;
+	assigned-clock-parents = <&clock CLK_MOUT_SCLK_DPLL>,
+				 <&clock CLK_DOUT_ACLK400_WCORE>;
+	assigned-clock-rates = <0>, <0>, <400000000>, <1200000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
