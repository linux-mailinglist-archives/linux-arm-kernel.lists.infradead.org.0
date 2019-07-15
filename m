Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B4368A09
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=haeBI1wTX0zXIG5SEElhBdu0Kcnlr+Tb3TyDSOQtuqo=; b=U8s+iBw3K2QLexfGzzEEsia26R
	ApIKyl3HYGBalyJGq0vqE0IpuK2S994wP59hceQ3nWV/QurPmfpI9eanAgT1PPWrwNpqdWk6eZCsZ
	fpkurRWXF1CY1I46A3xo5OU934GhOWlcNJhW7KPUhblF7PT1Z53oEqlpAJAIJJSVI/gJgYD6+Pf4h
	BHYJeVeLjhgtyBFIx837jQcrjDHWZO6A7Dd1ey3p/3fLu+hcWMjjDBc7HYc4VuzGktxaoUPBC58ax
	+Vit9PYPmr5CgcehauAiZKd4lN/EwARsj005NsTjSIFvc7BZ9DhTFHTPOgosWf5dx+qLbzQ777H0v
	j8QaI3pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0Vo-0005uM-NB; Mon, 15 Jul 2019 12:55:24 +0000
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lk-0003vn-4s
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:02 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124458euoutp020d81c47b91dd69de2cdb9c6ed707a68b~xlUvmsguT0714907149euoutp02n
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20190715124458euoutp020d81c47b91dd69de2cdb9c6ed707a68b~xlUvmsguT0714907149euoutp02n
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194698;
 bh=oqtiqLW1OpVVmIG8M/apCby8iZ166UIVroisx7myTFk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rsCMcmjTPXBqAathsD+jibOhjCPBJwT5YYsr/qXt0Bjevbo+7MQF2SE+cZP/+n5Kh
 D7O86K/pPkAqWgUyM+BBUkQXWEtg0kApQD3wg55B+UfP56CVLqNy9Zeau4o6asEIw9
 9P5pAuTzt7NXpGtuJZtYaa9rL2vYZm+VGDYW2SZE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124457eucas1p235fc48f3616a3b58afe7b68823d86f69~xlUusmWDk2241922419eucas1p2x;
 Mon, 15 Jul 2019 12:44:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 9E.B0.04325.9457C2D5; Mon, 15
 Jul 2019 13:44:57 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124457eucas1p1b3033c2505581b350191eed7ba47bb40~xlUt4QqHG0572305723eucas1p1D;
 Mon, 15 Jul 2019 12:44:57 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124456eusmtrp14a8de5bf681a901a86c0201c8a957ab8~xlUtqNJ0x0488104881eusmtrp1f;
 Mon, 15 Jul 2019 12:44:56 +0000 (GMT)
X-AuditID: cbfec7f5-b8fff700000010e5-e9-5d2c7549572d
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 30.17.04140.8457C2D5; Mon, 15
 Jul 2019 13:44:56 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124455eusmtip2d458de21c2bf8a29d2db3d431264ff31~xlUs2cXHQ1115311153eusmtip2c;
 Mon, 15 Jul 2019 12:44:55 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 28/50] ARM: dts: exynos: change OPPs for g2d and g2d_acp
 buses in Exynos5420
Date: Mon, 15 Jul 2019 14:43:55 +0200
Message-Id: <20190715124417.4787-29-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNKsWRmVeSWpSXmKPExsWy7djPc7qepTqxBjNOqlrcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KC6blNSczLLUIn27BK6Ms1tqC85yV9w8zt7AeIqji5GTQ0LA
 ROLogo2MXYxcHEICKxglHv/dA+V8YZR40bqNGcL5zChxYPt5ZpiWB3PvQCWWM0qsnNjGBNdy
 6fAn1i5GDg42AT2JHasKQRpEBJYwShz5mQRSwyxwk0liz5OdrCAJYYFEiRsH94DZLAKqEnPX
 t7KB2LwC9hJvz+9lg9gmL7F6wwGwzZxA8Z/TLrCBDJIQuMQusXf5XEaQZRICLhIn1jlB1AtL
 vDq+hR3ClpE4PbmHBcIulmjoXcgIYddIPO6fC1VjLXH4+EWwm5kFNCXW79KHCDtKPLu5iwli
 Op/EjbeCIGFmIHPStunMEGFeiY42IYhqDYktPReYIGwxieVrpkEN95C4dnMxGyR0JgHDcMkW
 tgmM8rMQli1gZFzFKJ5aWpybnlpsnJdarlecmFtcmpeul5yfu4kRmKRO/zv+dQfjvj9JhxgF
 OBiVeHgdUrRjhVgTy4orcw8xSnAwK4nw2n4FCvGmJFZWpRblxxeV5qQWH2KU5mBREuetZngQ
 LSSQnliSmp2aWpBaBJNl4uCUamAs2nbkQsHTLXqzVR6VXHsxt+Fdicjq6t13rnoU8bEZJu2o
 fC69UK5u7Y4Z8VHmS5vWP2XQi0somvJijyFPyHux4PsKUYdXBi27+c3n/NtGH4P6RwoSTSFz
 nbvb7/89t3SLa97ZDp5OppeP1PZ0TFwnajJjZqL3750Fpbe3/aoPf3hv68qrUZfeKLEUZyQa
 ajEXFScCAP1avbxOAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLIsWRmVeSWpSXmKPExsVy+t/xe7oepTqxBtNn6VjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Ms1tqC85yV9w8zt7AeIqji5GTQ0LAROLB3DvMILaQwFJGiTV/hCHi
 YhKT9m1nh7CFJf5c62LrYuQCqvnEKNE38xJrFyMHB5uAnsSOVYUgNSICKxglJp/wBqlhFnjN
 JHHk6DtWkISwQLzEhktnmUBsFgFVibnrW9lAbF4Be4m35/eyQSyQl1i94QDYEZxA8Z/TLrBB
 HGQnsfjoT6YJjHwLGBlWMYqklhbnpucWG+kVJ+YWl+al6yXn525iBEbNtmM/t+xg7HoXfIhR
 gINRiYfXIUU7Vog1say4MvcQowQHs5IIr+1XoBBvSmJlVWpRfnxRaU5q8SFGU6CjJjJLiSbn
 AyM6ryTe0NTQ3MLS0NzY3NjMQkmct0PgYIyQQHpiSWp2ampBahFMHxMHp1QDI+e9Y97dWUcj
 TirEt4Xt+/LuB0PG5byjL45vq9HbnzcjpuXHtcm+IrPzzV9vuLp099IErgxHgVWf2zoVT6/I
 uXztrlHa9N3vTr1dsvmm+CXPMpfsLgN2dZ2GCT0rIjn+iT12CHfefIO38lrhtLfVK+53Ost9
 K3tmu+z7HSZru70Mk3x3v1nUl6TEUpyRaKjFXFScCAAkk+y8sAIAAA==
X-CMS-MailID: 20190715124457eucas1p1b3033c2505581b350191eed7ba47bb40
X-Msg-Generator: CA
X-RootMTR: 20190715124457eucas1p1b3033c2505581b350191eed7ba47bb40
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124457eucas1p1b3033c2505581b350191eed7ba47bb40
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124457eucas1p1b3033c2505581b350191eed7ba47bb40@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054500_661355_A8EBA386 
X-CRM114-Status: GOOD (  12.15  )
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

Align the frequencies in OPPs to values which are possible to set using
a divider and parent clock rate. Keep the OPP number in the table equal
or less to the number in bus_wcore (any higher OPPs would not be set).

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index a355c76af5a5..3a128cd717e2 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1216,7 +1216,7 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <84000000>;
+				opp-hz = /bits/ 64 <110000000>;
 			};
 			opp01 {
 				opp-hz = /bits/ 64 <167000000>;
@@ -1225,9 +1225,6 @@
 				opp-hz = /bits/ 64 <222000000>;
 			};
 			opp03 {
-				opp-hz = /bits/ 64 <300000000>;
-			};
-			opp04 {
 				opp-hz = /bits/ 64 <333000000>;
 			};
 		};
@@ -1236,16 +1233,16 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <67000000>;
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
