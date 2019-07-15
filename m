Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7980368A00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:53:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n1zmKniOViUt72N2gAXu4iCoNqZ6tyvlR2nJUauwea0=; b=PO+xJYODDpdudM+X1kufXqBhzC
	b7ttpcUeTqDpQyDZr0QH13Be2FcWvuBCxCu2R7Kn96oKs8/0j47Xeg4rwOA61yli+evEh1LWs6NKQ
	NdjcAUyS6stN9slc35oMFgCjJgwGo+kRAVNcFvJ+k6ZUlKv59jyy/xvDgcuGqFePvV5qtghJoyk8i
	o1peGtzgJOiru1ZxdmZmRKukNBbJTVgT5UafETbG1l/yit/RWMBFVC+3SakK+nmWv9rW026a9SAp4
	Oval2CKRkSdjCTLtpcz67JOMm6gNCfMJU4jdZ/qX7/fIUPaTF8u5Dc+eCh22VkucwSdSgYrGnT0hm
	na208fXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0UE-0004Tk-5P; Mon, 15 Jul 2019 12:53:46 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0Lg-0003se-Kf
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:44:58 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124455euoutp01dbe90f973785795261fcc9d581618336~xlUsV1XuZ1950319503euoutp01x
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:44:55 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124455euoutp01dbe90f973785795261fcc9d581618336~xlUsV1XuZ1950319503euoutp01x
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194695;
 bh=GOd+mMZrwqbVKHJOt6tPNx9LKsGHU6yKQsUM68Fy0u4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ETPQBZbBY84/ksp6YpzxnwwXxTkPq7+84pSDGGrUhMNlAHtlok2LITF6ImSPTczPY
 x1RH4ppiwzgYTow5kFUuYEzTrzLGC7S1PCZRzhSTa3Zy3fNGw7xCiGWwmB91Kb6ACe
 JqTwcIn2CuxQwJ0Qe3DwKRwWN2KWlm4qYOllF+AY=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124454eucas1p2f9ad1d9a45e4205b41bdb66c4008a312~xlUridJWU3211032110eucas1p2B;
 Mon, 15 Jul 2019 12:44:54 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id E5.E1.04377.6457C2D5; Mon, 15
 Jul 2019 13:44:54 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124453eucas1p1dbdfab862499d9a7bd8a853e30944bac~xlUqvuzZ53144231442eucas1p1g;
 Mon, 15 Jul 2019 12:44:53 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124453eusmtrp14a5d202e60b580ba1c20f2f3f1637c2c~xlUqdX55O0488104881eusmtrp1N;
 Mon, 15 Jul 2019 12:44:53 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-02-5d2c75462b4e
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 02.50.04146.5457C2D5; Mon, 15
 Jul 2019 13:44:53 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124452eusmtip22532a2b1ecd4c0e4ea34bd2be0defe89~xlUpqWU9w1176011760eusmtip24;
 Mon, 15 Jul 2019 12:44:52 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 24/50] ARM: dts: exynos: align OPPs with PLL rate for
 MSCL in Exynos5420
Date: Mon, 15 Jul 2019 14:43:51 +0200
Message-Id: <20190715124417.4787-25-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSeUhUURTGu+/NW1wmXqPoRUVroMw0NSm4YLlQxiAt0j9BYTrqw6WZ0eap
 ZYqNppWDS1mZhKaF4Z7b4KiZTKM4lLmVubaRQWBmhkuJoc3jTfTf737nO985HC6NSzoJJzpe
 lcyqVXKFlLQWtfevDe09muIV7mtqY9D0kyECtZQ2EWhi+SuBKvrMz6LZbzgaHm6m0GD2PIWm
 NS6odXacQD/zPxDoTVcZiUqHezDU2PeeQo8nRjE0+jIEzWTVkCj3WR+FeuevE2hjvEUUZCdr
 eNAAZD8mcylZa10eKWuruiJ7vtCNyQp1dUC21OoaRp2xPhjDKuJTWbVPQKR13OrvbDJpir60
 mV0ENOAtqQU0DZn98G7BaS2woiVMDYAvmo9pgbWZlwE0DJcD4bEEYOdsFsa7+IYe7WtM6KgG
 sKcgQ2Bzx7un/nwoyXjDjroLvGzPVAHYtxbF5+DMFAa7v3QSfMGOCYeT3esinkXMTjhxq4Pk
 WcwEQq3+s0iY5Qbrmw04z1Zmfa1khOSDIDNEwaqKGlwwHYE9q/2W5ezgnElHCewCB27nW4I4
 qCl4CATOgLNF5RaPP+w1jRL80jjjAZu6fAQ5GC5fzaOEA22Fk9+38TJuxuL2e7ggi+GNaxLB
 vRvq8kcsCzjA6oYSS7gM6gfu4MJ1igFcb8JuArf7/2dVAlAHHNkUThnLcn4q9qI3J1dyKapY
 7+hEZSswf6iBDdNyB+j6E2UEDA2ktuKgGM9wCSFP5dKURgBpXGovPrRilsQx8rTLrDoxQp2i
 YDkjcKZFUkdx+pZPZyVMrDyZPc+ySaz6XxWjrZw0IC59JHRu6pdh1Y9MXcwNH2QVAZV6vXtD
 TFjmRHDZUt6UsevAyQSHzFcKjxylyVAw5ntqJZ7YsUg5T+fM6GoN0QkbNiNWgVX1h0NmFo57
 ebuOql2bI7kxG4OJnlsq3O6CeUaMdRRu/ei+eUKl09tmYUHnGotjQ2sbK3cZH3W2S0VcnHzf
 HlzNyf8CfRx3+EwDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrAIsWRmVeSWpSXmKPExsVy+t/xe7qupTqxBu/eiVjcWneO1WLjjPWs
 Fte/PGe1mH8EyO1//JrZ4vz5DewWZ5vesFvcapCx2PT4GqvFx557rBaXd81hs5hxfh+Txdoj
 d9ktll6/yGRx8ZSrxe3GFWwWrXuPsFscftPOavHv2kYWB2GPNfPWMHq8v9HK7rFpVSebx+Yl
 9R4H3+1h8ujbsorR4/MmuQD2KD2bovzSklSFjPziElulaEMLIz1DSws9IxNLPUNj81grI1Ml
 fTublNSczLLUIn27BL2Mbz+a2ApuclT8b+pnbGC8ytbFyMkhIWAisa/rElMXIxeHkMBSRolT
 3/ezQiTEJCbt284OYQtL/LnWxQZR9IlR4vidH0BFHBxsAnoSO1YVgtSICKxglJh8whukhlng
 NZPEkaPvwAYJC0RL7Ny8D2wbi4CqxPWJO8BsXgF7ia7tj1ggFshLrN5wgBnE5gSK/5x2AaxG
 SMBOYvHRn0wTGPkWMDKsYhRJLS3OTc8tNtQrTswtLs1L10vOz93ECIydbcd+bt7BeGlj8CFG
 AQ5GJR5ehxTtWCHWxLLiytxDjBIczEoivLZfgUK8KYmVValF+fFFpTmpxYcYTYGOmsgsJZqc
 D4zrvJJ4Q1NDcwtLQ3Njc2MzCyVx3g6BgzFCAumJJanZqakFqUUwfUwcnFINjP7+a5gcfWze
 s7k/fyP555Tv4Tbn4qnvjbSMptbre1QkhUv9SqzQ2lexhVeZ9+LVf2amsrlb4xncPV9z7p3i
 c2B/56LA3ruXpDbeXq1/SnWxY+dm378nNYp+G0oE5MWmTer9Hrk0dXNHoyzXr6W7OY58Obbg
 qtZzOeazp/ZZX98ePGu2XaySphJLcUaioRZzUXEiABubiwmzAgAA
X-CMS-MailID: 20190715124453eucas1p1dbdfab862499d9a7bd8a853e30944bac
X-Msg-Generator: CA
X-RootMTR: 20190715124453eucas1p1dbdfab862499d9a7bd8a853e30944bac
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124453eucas1p1dbdfab862499d9a7bd8a853e30944bac
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124453eucas1p1dbdfab862499d9a7bd8a853e30944bac@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054456_996820_71B451CF 
X-CRM114-Status: GOOD (  11.66  )
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

The OPPs must reflect possible values after dividing the master clock.
The old values 400 and 333, 222, etc does not have common parent rate.
Thus, align the values to parent rate such that they will be set exactly
using only a divider.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5420.dtsi | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/exynos5420.dtsi b/arch/arm/boot/dts/exynos5420.dtsi
index 0739e7bd4628..74d014f3eaa6 100644
--- a/arch/arm/boot/dts/exynos5420.dtsi
+++ b/arch/arm/boot/dts/exynos5420.dtsi
@@ -1336,18 +1336,15 @@
 			compatible = "operating-points-v2";
 
 			opp00 {
-				opp-hz = /bits/ 64 <84000000>;
+				opp-hz = /bits/ 64 <150000000>;
 			};
 			opp01 {
-				opp-hz = /bits/ 64 <167000000>;
+				opp-hz = /bits/ 64 <200000000>;
 			};
 			opp02 {
-				opp-hz = /bits/ 64 <222000000>;
+				opp-hz = /bits/ 64 <300000000>;
 			};
 			opp03 {
-				opp-hz = /bits/ 64 <333000000>;
-			};
-			opp04 {
 				opp-hz = /bits/ 64 <400000000>;
 			};
 		};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
