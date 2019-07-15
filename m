Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6142A689FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8IE1PNefUpB+xGdQJxfIW+7wAPlJltHNNvDTx3ckIsE=; b=X0pEdM+ZNgjCRGxSYSwXmFbGSZ
	a3ePvypWI5pHhkpwb3BeD6p87dVWxRDxMxXg8iUojKXfI2iaaTbWMeELwLQNUlWqar/albt81iNvf
	9EUZL3+A6LFNX+eS4vZa1ewi/pQVyS/P2VlBfOW10ZuqGTPykhWmqy1CQmELBoD4MPMGU1Q1iRj34
	Dk4TqzXg/jRH8edMOg5FEvbrVTjRJTJt5J3rxlOgAZx6tW4LhLhbCEhvKaQdtb/p0PeWAQXFOJoxE
	AJ1BfrDd0Kfpttzx2jy2DKGycSpxs+BhTkSqE1E64YjPc3YnNQvt7QV25L70wP4jOPTC+g+r4vIlB
	uyEsdcHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0T2-0003Vt-M5; Mon, 15 Jul 2019 12:52:32 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lb-0003oP-W1
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:53 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124450euoutp0252196204c5cb422854273d05abe38b94~xlUoCJ4km0599405994euoutp02d
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124450euoutp0252196204c5cb422854273d05abe38b94~xlUoCJ4km0599405994euoutp02d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194690;
 bh=0yu/GCB186G2/MeW65t6RpIaAjApTjN5ldP7+MRyAec=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fePyTli9lSNfJmDL7oQZ2G8IfWQrrl4p85tw3rIFibxJlr4+WyFtzmRoUza6+Gf3W
 Ciflg8NrbCJNmbalxtomFT+QQE0py4FedSaARl1FSOStnvUAmewZKEsIkU5w4694Si
 c8frt9p50auwvUog88Fqzil1BHH9CLd1wo1NkVUk=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20190715124450eucas1p10da85ce7eb3932c2a505b59f530fe67a~xlUnhKuab3144231442eucas1p1a;
 Mon, 15 Jul 2019 12:44:50 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A3.B0.04325.1457C2D5; Mon, 15
 Jul 2019 13:44:49 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124449eucas1p130d853368cb8bf02bef337da2d513fff~xlUm0VlnW0146601466eucas1p1M;
 Mon, 15 Jul 2019 12:44:49 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124449eusmtrp13f4b90687480b813d224e6ca59358bbd~xlUmmNrMm0462004620eusmtrp1e;
 Mon, 15 Jul 2019 12:44:49 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-d1-5d2c7541a773
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 05.07.04140.1457C2D5; Mon, 15
 Jul 2019 13:44:49 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124448eusmtip2dfd3a98ece2d652667f4b63a1902fc46~xlUlwfXYH1242312423eusmtip2Q;
 Mon, 15 Jul 2019 12:44:48 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 19/50] ARM: dts: exynos: change OPPs values for FSYS2 in
 Exynos5420
Date: Mon, 15 Jul 2019 14:43:46 +0200
Message-Id: <20190715124417.4787-20-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrFKsWRmVeSWpSXmKPExsWy7djP87qOpTqxBl8PWFjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6M/Yca2Au6OCu2XyxqYJzC3sXIySEh
 YCLR0N7P2sXIxSEksIJR4lJzAyOE84VR4v3Ra+wQzmdGiWlr/jPCtCy5cggqsZxRYm5/CxNI
 Aqzl0/H0LkYODjYBPYkdqwpBwiICSxgljvxMAqlnFrjJJLHnyU5WkISwQITEr9ltYL0sAqoS
 S37tAovzCthLHJu6ghlimbzE6g0HwGxOoPjPaRfYQAZJCJxilzi7t50ZZJmEgItE64pKiHph
 iVfHt0D9JiNxenIPC4RdLNHQuxDqgRqJx/1zoWqsJQ4fv8gKMoZZQFNi/S59iImOEneaBSFM
 PokbbwVBipmBzEnbpkPt5JXoaBOCmKEhsaXnAhOELSaxfM00qNkeEl82tDJBAmoSo0TTqknM
 ExjlZyHsWsDIuIpRPLW0ODc9tdg4L7Vcrzgxt7g0L10vOT93EyMwRZ3+d/zrDsZ9f5IOMQpw
 MCrx8DqkaMcKsSaWFVfmHmKU4GBWEuG1/QoU4k1JrKxKLcqPLyrNSS0+xCjNwaIkzlvN8CBa
 SCA9sSQ1OzW1ILUIJsvEwSnVwBh1Rfqlgrz7SflumUOxr/6HLXexsdh03FFy9y7PbX12Nn5l
 Bg8dFru9vTVBVjMike1tJd/5w1Pme1w2eK5n9Z3nBJdvw2Jxi3SeOTtUJwnw/F1QlZdx58Pd
 829ljlh67DV+fzNivtjFah7PzVt/pbC/a+pNU626cnqNzyxdgx+1W0R0Tt1Z/U+JpTgj0VCL
 uag4EQDGG/coTQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprPIsWRmVeSWpSXmKPExsVy+t/xe7qOpTqxBk3rOSxurTvHarFxxnpW
 i+tfnrNazD8C5PY/fs1scf78BnaLs01v2C1uNchYbHp8jdXiY889VovLu+awWcw4v4/JYu2R
 u+wWS69fZLK4eMrV4nbjCjaL1r1H2C0Ov2lntfh3bSOLg7DHmnlrGD3e32hl99i0qpPNY/OS
 eo+D7/YwefRtWcXo8XmTXAB7lJ5NUX5pSapCRn5xia1StKGFkZ6hpYWekYmlnqGxeayVkamS
 vp1NSmpOZllqkb5dgl7G/kMN7AVdnBXbLxY1ME5h72Lk5JAQMJFYcuUQkM3FISSwlFFi7dyp
 LBAJMYlJ+7ZDFQlL/LnWxQZR9IlRYu7Jf0AOBwebgJ7EjlWFIDUiAisYJSaf8AapYRZ4zSRx
 5Og7VpCEsECYxI/7h9lAbBYBVYklv3aBxXkF7CWOTV3BDLFAXmL1hgNgNidQ/Oe0C2D1QgJ2
 EouP/mSawMi3gJFhFaNIamlxbnpusZFecWJucWleul5yfu4mRmDkbDv2c8sOxq53wYcYBTgY
 lXh4HVK0Y4VYE8uKK3MPMUpwMCuJ8Np+BQrxpiRWVqUW5ccXleakFh9iNAU6aiKzlGhyPjCq
 80riDU0NzS0sDc2NzY3NLJTEeTsEDsYICaQnlqRmp6YWpBbB9DFxcEo1MLJae5ofXfx7t96X
 9Bla3/5tuJGxaNGEMw0OK53nrjzJbZj8XGlPn9QOx+UaVQWhW1zvKnOf2Mn7+t/d/51zf6YL
 xaunCJ5o4M6omR8q833VMqPYRq4t09+Xfd6gq+7FGSKXeKU2OS50hcOm943TerINa8oC1mm6
 +V29xizGdeisdZ7eaot0ByWW4oxEQy3mouJEAE9pPsyyAgAA
X-CMS-MailID: 20190715124449eucas1p130d853368cb8bf02bef337da2d513fff
X-Msg-Generator: CA
X-RootMTR: 20190715124449eucas1p130d853368cb8bf02bef337da2d513fff
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124449eucas1p130d853368cb8bf02bef337da2d513fff
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124449eucas1p130d853368cb8bf02bef337da2d513fff@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054452_426279_73F34B9C 
X-CRM114-Status: GOOD (  13.28  )
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

The OPPs values for FSYS2 does not reflect the real possible frequencies.
According to the documentation the maximum frequency is 240MHz. This clock
is important to MMC controller controlling the AXI data bus speed and
internal buses. The new OPP values are aligned to parent PLL rate so that
there is no need of reprogramming PLL and the integer values are possible
to get using only a clock divider.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 1b717c5c3b1a..941c58bdd809 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1161,13 +1161,13 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <75000000>;
+				opp-hz = /bits/ 64 <150000000>;
 			};
 			opp01 {
-				opp-hz = /bits/ 64 <100000000>;
+				opp-hz = /bits/ 64 <200000000>;
 			};
 			opp02 {
-				opp-hz = /bits/ 64 <150000000>;
+				opp-hz = /bits/ 64 <240000000>;
 			};
 		};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
