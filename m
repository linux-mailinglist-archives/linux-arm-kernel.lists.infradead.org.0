Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD4768A13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:57:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SU7jMWQX6GirgDIDpCsFv3/IunXK7kQAip0pZvDTsUM=; b=gxsFDnwmmNNczrAA60rnxnilY3
	lJuG5dUesPG7OXdEMtGz7M+8Fvvi9Y8f9PQpFzbWWn03RuNkD/g5H4Bjpt7BbK9N4lcphK/v72Uzq
	lH9APQy9b6f7gL2F3FaGahp94Yjh4rgsVhd3DJcH0zE7EFhutlQn6Y4I6GaK+DNd/qlRO5kTL8oei
	Y1KJKQQ9JvEsvNq8hoC1dldAKRh/NVnT3leGhmpkzH/HG9vf5Cfdidr7YvIR+5bJ8VBH1snsBx0I+
	MdgFyOvL4z6O2D6nbeM3nyFZuxO6ewuKip2zaVIL0av7DtpK4jCboqFpNfjJXX/NwS5Mc7+cfSC+k
	PcK7JkEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Xd-0000Ai-Pa; Mon, 15 Jul 2019 12:57:17 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lk-0003w4-GH
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124459euoutp011d743bdd4a4d80bf2b3a5de7788673e2~xlUv6wmho1962419624euoutp01l
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:59 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124459euoutp011d743bdd4a4d80bf2b3a5de7788673e2~xlUv6wmho1962419624euoutp01l
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194699;
 bh=2v4hCpJVfQGiuvIX6+zHl3XxXt1PDpHhQhdwlTF9fno=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=frs4UW9eyzVbr0YcOZKWJivQcbIsdu1+UvF+ua/qy2Z65P4lDIifNsjBvw0I2uZN5
 SKardzQiZPbNfV50QEDyw3SuNeKaboPKXZYEC+/nhZuOOiI3y+XUeUWTjxTpcsbrha
 z3TqvpUBulyuy2Z5sa69cMfgmevsk8DtPXXeFKz0=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124458eucas1p2972be3b4546dbf5c2e7efafa0405f708~xlUvTwIQ-2439624396eucas1p2c;
 Mon, 15 Jul 2019 12:44:58 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id ED.25.04298.A457C2D5; Mon, 15
 Jul 2019 13:44:58 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124457eucas1p20401b92a7c0eb51af1e0910fbebaa0b5~xlUuamtKZ0800208002eucas1p2q;
 Mon, 15 Jul 2019 12:44:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124457eusmtrp1fa3d160cd756dd38a0c75f605a17adf2~xlUuZ_WuE0488104881eusmtrp1l;
 Mon, 15 Jul 2019 12:44:57 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-d5-5d2c754a815a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B1.17.04140.9457C2D5; Mon, 15
 Jul 2019 13:44:57 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124456eusmtip287178ee846cbaaae1932c94e43326c4a~xlUtnZ2bU0573605736eusmtip2M;
 Mon, 15 Jul 2019 12:44:56 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 29/50] ARM: dts: exynos: align OPPs of bus_gen in Exynos5420
Date: Mon, 15 Jul 2019 14:43:56 +0200
Message-Id: <20190715124417.4787-30-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSWUwTURSGvbN0BmLN0KJcBSQ20SgooPHhGhWRSFKXB/TBGA2BwY5ApKAd
 Ku4WQxHZl1gWFTWgkAoipTZl0QgUUYiURUUhECMYVFDCogkPJXYyRd++85//zznn5tK4rIVc
 Q8cnJnOaRDZBIXEnLK8WerYc0G6ODE6bkaOhJz0kqi+pI9Hg/ASJ7tmcZd7YJI7s9qcUent9
 ikJDOh9kGvtAopnsURINNN2RoBL7CwzV2kYo9HCwD0N9XeFoOLVagvTPbRRqn7pBosUP9USo
 XFlTXgOU0x/1lNJkvClRNlReU7b+asGUuWYjUM6Z1kZQx913qbiE+HOcJigk2j3u1Ww7dqae
 Pv/lfQahAy2STOBGQ2Y7LM90kJnAnZYx1QA225spsZgHMGvRgonFHIC1BUawFHkz98YVqQLw
 Vtpr/F9kYXKAyAQ0LWECodV4Vgh4MpUA2hZiBA/OfMJgy3gjKTTkzGE4/icVE5hg1sPptFJC
 YCmzBzqKjZg4zQ8+fvoSF9jNqS8Yel2L91PwdtkmkffB247PuMhy+KPTTInsA7uLsgmReajL
 eeC64DIcy7vr8uyE7Z19pLAzzmyCdU1BorwX3v1ShAkyZFbAjz89BBl3YqGlGBdlKcxIl4nu
 jdCc3etaeBWsqjFQokUJu/oPio9TCKB+VI/lA7+y/7PuA2AEXpyWV8dy/NZELiWQZ9W8NjE2
 8GSS2gScf6p7sXPWCn73x7QBhgaK5dJQVUCkjGTP8RfUbQDSuMJTuvu3U5Kq2AsXOU1SlEab
 wPFtwJsmFF7SS8s+n5AxsWwyd5rjznCapS5Gu63RgWZrNCGXBx8yl6jC2xpDpo9cdTwrXQzQ
 GtZVRHRnSYuDmZQO68pZ78JLFd8vDmzwPTVssoSV265sj8j5uv9bv+89/yyiKMhLbxs5VjAa
 RTzq7pBEv4susX71U3UoUkp16YaGozvsI6RFaphgM9R1rfUzScP5HtuK2OYDYYdX5yoIPo7d
 6o9rePYvp2442U8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7qepTqxBssmKVvcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2MY58OMxVs5Kh4dLWDpYFxD1sXIyeHhICJxMnPJ1m7GLk4hASWMkp8
 3XCDGSIhJjFp33Z2CFtY4s+1LjaIok+MEk/mLGfpYuTgYBPQk9ixqhCkRkRgBaPE5BPeIDXM
 Aq+ZJI4cfccKkhAW8JfYtnsG2CAWAVWJ9y0zWUBsXgF7ib/TVzFBLJCXWL3hANhiTqD4z2kX
 wK4TErCTWHz0J9MERr4FjAyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAmNn27GfW3Ywdr0L
 PsQowMGoxMPrkKIdK8SaWFZcmXuIUYKDWUmE1/YrUIg3JbGyKrUoP76oNCe1+BCjKdBRE5ml
 RJPzgXGdVxJvaGpobmFpaG5sbmxmoSTO2yFwMEZIID2xJDU7NbUgtQimj4mDU6qBUbfudqqQ
 TInizfhm6f9R+sFhro851/Rd0Pi+/j3D7X8fF1xYlsxl4yR+XU0/oiYnRVCBz1gz79LXHEN2
 9wNZNRb/xEoX+TB4q5Uyx9xjnvVm/gz7Fd3rzeNWGsbNEQo4W7vC4FaRuc3ytX/kpvjfun/9
 esHboB8ZD7d5tYr472GddXB9/719SizFGYmGWsxFxYkA8oLHOrMCAAA=
X-CMS-MailID: 20190715124457eucas1p20401b92a7c0eb51af1e0910fbebaa0b5
X-Msg-Generator: CA
X-RootMTR: 20190715124457eucas1p20401b92a7c0eb51af1e0910fbebaa0b5
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124457eucas1p20401b92a7c0eb51af1e0910fbebaa0b5
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124457eucas1p20401b92a7c0eb51af1e0910fbebaa0b5@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054500_724233_5C44C7D6 
X-CRM114-Status: GOOD (  11.25  )
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

Align the OPPs' frequencies to the master clock rate such that the values
are possible to set using only a clock divider. Set max OPP frequency equal
to the max possible for that bus (according to the documentation).

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 3a128cd717e2..f2e2e77a86d6 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1191,16 +1191,16 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <89000000>;
+				opp-hz = /bits/ 64 <100000000>;
 			};
 			opp01 {
-				opp-hz = /bits/ 64 <133000000>;
+				opp-hz = /bits/ 64 <150000000>;
 			};
 			opp02 {
-				opp-hz = /bits/ 64 <178000000>;
+				opp-hz = /bits/ 64 <200000000>;
 			};
 			opp03 {
-				opp-hz = /bits/ 64 <267000000>;
+				opp-hz = /bits/ 64 <300000000>;
 			};
 		};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
