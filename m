Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02FD568A0D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wWiNOOmt2AHjPLHEotXVSUufc0A818XZ/QpVaDYPyjU=; b=TM0VQ8sQByJ+T1YGMQnsbpn82k
	mCmc0V6S53OaVJ0ca/ehQ31/9gRLzvp/ag+LqW+3+BpGiUOTER1x/cc+D9NyaJmvb7/9BCeXKNKCW
	BUwLCkQPgZniTu4v6PZChT1AALbjP/rAP6ftLR4WT7q2sAyh7zuMtdWlYRF+2x87BBIzcDpDIjoaG
	bW93MnJLRqPmjjZfhP6lZPijs9694F/+FMgOpW3rNxK1tliwVFme0yHwiqRNw67t6ZZV6llJLuGhA
	gn5klJEjRzGJS2wHSF9m6wsgHTKXnB94CxqgnL1rgM4FoIMSenEPzY8BIxpriTi03l9pZnVe3vSIp
	8np6A4bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0W7-0007Ay-R7; Mon, 15 Jul 2019 12:55:43 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Ln-000416-Lv
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:06 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124501euoutp011e7bff0af38d4683ec3748f48bca0b82~xlUyVI7Rh1972419724euoutp01Y
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:01 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124501euoutp011e7bff0af38d4683ec3748f48bca0b82~xlUyVI7Rh1972419724euoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194701;
 bh=81fCMMNKhM4b6YHz9B0/lpvfP3ePnpoi35A/mfij7Bk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eA2tEJoIxJ6mYpS2YrnZmYuYYDj3vYCTdW7hul6wkK4RjsUEC9+vJL61BXON0lcG4
 BVp/lKSU1fssYAIa7isrQnnV7LArNMnsWamYgnFfbkBmENHTxz/aXw3b/ZHOgxS0Fi
 aBJ1sr1YQIaYSHM3x2Mun8Jjg7g/PmO6JjNGoYhE=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124501eucas1p25187f7f6dd0070b4e8d6a9574e8b5dd2~xlUxySWoH0850908509eucas1p2u;
 Mon, 15 Jul 2019 12:45:01 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id A3.C0.04325.C457C2D5; Mon, 15
 Jul 2019 13:45:00 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124500eucas1p114c6cbbbb4efa421b2e24d49a6d3d603~xlUxDN3WM3125231252eucas1p1_;
 Mon, 15 Jul 2019 12:45:00 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124500eusmtrp139374356e6388c5eb902db633e2b2ec7~xlUw1ImQL0488104881eusmtrp10;
 Mon, 15 Jul 2019 12:45:00 +0000 (GMT)
X-AuditID: cbfec7f5-fbbf09c0000010e5-f6-5d2c754cb67a
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 95.17.04140.C457C2D5; Mon, 15
 Jul 2019 13:45:00 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124459eusmtip2dd3d2a181aaa74fe5283a5f9a8e36789~xlUv_rbj31100811008eusmtip2f;
 Mon, 15 Jul 2019 12:44:59 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 32/50] ARM: dts: exynos: remove lowest OPP from bus_mfc
 in Exynos5420
Date: Mon, 15 Jul 2019 14:43:59 +0200
Message-Id: <20190715124417.4787-33-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSe0hTURzHO7tPxcVtVh4sWqyEyjLLkgNp2QsuJpR/FYbl1NusdOquj9TA
 mVgp06WVimQaGI5lLc2G2tLSldTQaZb5ICuUStNe2kMKbdc767/P73c+39/vcDg0JrMQnvRx
 dRKnUStjFaQrbn483bkhJHl9uO+HngA0cKuTQLWlJgK9nHpPoAqro9QPf8SQ3X6bQh1nxik0
 oF2O6oZ7CfRVN0SgnqYrJCq1N0vQTesrCl1/2S1B3U/3osEsA4ly7lsp1DZ+jkAzvbV4kDtb
 c7UGsJ/7cii2zphLsneqMtmHnywStqDeCNjJuhUHqDDXgGgu9ngKp9m4PcI1ZtYwCBL01KnL
 LSWkFpiIPOBCQ2YLfHepgsoDrrSMMQD4wpwLxGIKwNHfpZRgyZhJAAdbVs4ntJ9ycVGqBrBG
 9476lxgrGHXEaZpkfGCDMVEILGaqALRORwoOxvRLoGWkcW63OxMGq2/ewwXGGS84cvfJHEuZ
 HdCUMwnEbXJ44/YDTGAXR3+6uIsUBkHmGQVtbSantAfqs+cD7nCsvZ4SeTm0XdThIvNQm3/N
 6ZyGw/pyp7MNtrV3E8KlMWYtNDVtFBAyO2F9/j4RF8K+iUWCjDmwyFyCiW0pPH9WJs5YA+t1
 XRKRl8LqmmLnbBYazP3O9ywCsLmskrwA5GX/d1UCYAQeXDIfp+J4PzWX6sMr4/hktconKj6u
 Djj+lG2m/XsDaP4T2QoYGijcpEHR3uEyQpnCp8W1AkhjisXSwO+OljRamZbOaeKPapJjOb4V
 LKNxhYc0Y8GbwzJGpUziTnJcAqeZP5XQLp5aUGT0vORm3NmYP4Ty3CyN23u61ResIxWKByXB
 KtOkn323rzki9e23VVNBhcHYxLEiyhDawbZ8ebHkZ3nK562PvE8c6ZwgvNL3V2XL7M+1m/1H
 uT0+oa+zfkhDeoEqzbjkoIe8cFdURqDtkPssnfm0S+6y6meFbfWvhJmYwtJE//cKnI9RblqH
 aXjlXyoyQDlPAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7o+pTqxBq8+s1ncWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2M/ytuMxb0s1dM3T+drYFxPWsXIyeHhICJRMO7TpYuRi4OIYGljBL7
 16xlh0iISUzatx3KFpb4c62LDaLoE6PEun+/gTo4ONgE9CR2rCoEqRERWMEoMfmEN0gNs8Br
 JokjR9+BbRAWiJCYePEIG4jNIqAq8WTrSRYQm1fAXmJ962dGiAXyEqs3HGAGsTmB4j+nXQCr
 FxKwk1h89CfTBEa+BYwMqxhFUkuLc9Nzi430ihNzi0vz0vWS83M3MQJjZ9uxn1t2MHa9Cz7E
 KMDBqMTD65CiHSvEmlhWXJl7iFGCg1lJhNf2K1CINyWxsiq1KD++qDQntfgQoynQUROZpUST
 84FxnVcSb2hqaG5haWhubG5sZqEkztshcDBGSCA9sSQ1OzW1ILUIpo+Jg1OqgTFr5iOTuxsu
 uMe3bkmMWaJta3L20cfelN0yb6KDJvz0zy9wz3NZLGFrkiYRnG7xgO/iZ6n+XNZFC6NUJSd+
 /Xp3+cwuGxPz51LloZP+HF5U+PvrPmN51W3nr6qLF4l1LC1Yuzdl+8HVzhfOSl5efym5PPPy
 ua+LCkKXGHAGL5umnOH/rUY4ykyJpTgj0VCLuag4EQAb4UQkswIAAA==
X-CMS-MailID: 20190715124500eucas1p114c6cbbbb4efa421b2e24d49a6d3d603
X-Msg-Generator: CA
X-RootMTR: 20190715124500eucas1p114c6cbbbb4efa421b2e24d49a6d3d603
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124500eucas1p114c6cbbbb4efa421b2e24d49a6d3d603
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124500eucas1p114c6cbbbb4efa421b2e24d49a6d3d603@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054504_440302_B026A7CF 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.8 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 2.3 TVD_SUBJ_WIPE_DEBT     Spam advertising a way to eliminate debt
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

Align number of OPPs with the number in bus_wcore OPP table.
The higher OPPs would not be set, thus clean them.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 0be799f843dc..18c5273091bd 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1171,18 +1171,15 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <96000000>;
-			};
-			opp01 {
 				opp-hz = /bits/ 64 <111000000>;
 			};
-			opp02 {
+			opp01 {
 				opp-hz = /bits/ 64 <167000000>;
 			};
-			opp03 {
+			opp02 {
 				opp-hz = /bits/ 64 <222000000>;
 			};
-			opp04 {
+			opp03 {
 				opp-hz = /bits/ 64 <333000000>;
 			};
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
