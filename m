Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4C768A24
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 15:01:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fZb2juAShNQdbpyO0R/f7vtSyowwKx16fRlFGhvWnKw=; b=GDRjkgNzsPM9zvB2M+N+pu5pux
	V7LPGY2mTbI5H10u1b8pssJq62xSsOyf5ChVSO6R9n6TDEQAwRHfHdwEk4i249sv78cKqIh0zXQrX
	YRH+6i8u7cs20WkNt1KHfezWyHvZQmUIuogLz/wHqpmkRMKMZIL3srQiBrlKyPs33d3wzJ+Sox0V2
	ihsJrbTmxzuX67k7pPaUJCmdk+6Ud5uPhX/qWGdjNo2+/zyNvA+cqCnxLj1ZRrf+ixdkTIB/LaTNe
	CRfkNlfsZrcHZS0vcwGULL3sRVCYdi9swP2vX4bRpwCGzSRH4WUPDAyZ/W5hJ6NQO4bg+M0ihwO4S
	Lnx3kH2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn0bH-0004Ta-Cx; Mon, 15 Jul 2019 13:01:03 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn0M0-0004wp-8o
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:45:21 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190715124514euoutp01c654fcc654d5ddc789a7c0d12055782a~xlU92LMr31972419724euoutp01p
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 12:45:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190715124514euoutp01c654fcc654d5ddc789a7c0d12055782a~xlU92LMr31972419724euoutp01p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563194714;
 bh=SAzXsKHOymM7Nf0c7urmnuAYn2JuU3b4W7hMQuBtNSk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Hbc1JXcYhmIsgdQZj2aCxkN9ZVpYeWw1Xer3j94RMRfGNcsKgRn+3BMD1qdUqsxF0
 mq62EGHUhPyR1zf70WcgqLt27P/D5aA01MqwVmOI62TEt191H1gH0tGCvYYdSebv+o
 E1TP4EOeCQxiFcNb+YIHihPAPm7xN1YnLUtSqikc=
Received: from eusmges1new.samsung.com (unknown [203.254.199.242]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190715124513eucas1p279ca6f45a7660c16bb8a8999ce8a8b7c~xlU82OqX52439624396eucas1p2v;
 Mon, 15 Jul 2019 12:45:13 +0000 (GMT)
Received: from eucas1p2.samsung.com ( [182.198.249.207]) by
 eusmges1new.samsung.com (EUCPMTA) with SMTP id 0F.35.04298.8557C2D5; Mon, 15
 Jul 2019 13:45:12 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
 20190715124512eucas1p1bd847805f945ada00f2b7952592cc104~xlU8GE5aJ0572305723eucas1p1f;
 Mon, 15 Jul 2019 12:45:12 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20190715124512eusmtrp1a046ecf1e93c0bceb3d7b9d366f470ab~xlU734WUQ0524305243eusmtrp1X;
 Mon, 15 Jul 2019 12:45:12 +0000 (GMT)
X-AuditID: cbfec7f2-f13ff700000010ca-08-5d2c75589bb0
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id 17.27.04140.7557C2D5; Mon, 15
 Jul 2019 13:45:12 +0100 (BST)
Received: from AMDC3778.DIGITAL.local (unknown [106.120.51.20]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20190715124511eusmtip2ca884ce70884c076ff777cc9e27659fe~xlU7B8ra81184611846eusmtip2b;
 Mon, 15 Jul 2019 12:45:11 +0000 (GMT)
From: Lukasz Luba <l.luba@partner.samsung.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH v1 46/50] ARM: dts: exynos: change rates of bus_disp1 in
 Exynos5422
Date: Mon, 15 Jul 2019 14:44:13 +0200
Message-Id: <20190715124417.4787-47-l.luba@partner.samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190715124417.4787-1-l.luba@partner.samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA0WSaUhUURzFu/PmLU69eo2WN7WkCSFzayDhgmYGBQN9qC9FWJZjPlTU0eY5
 lgs4FZMLLrmgppUGbrjkmpm5lI4Ko6ljoOZQitNqWuYCWTE14xvr2+9//ufcw71cChN34Q5U
 uCKWVSrkkRJCJGwbWB/1OK9yDzycleONph+N4KipqAFHk6sfcVSqNY/Zxi8YGh1tJNHLmwsk
 mlY7oWbjBI6+Z7zF0auOewQqGu0WoHrtGxJVTOoFSK87iQw3qgmk6dKSqG8hBUemiSahv62s
 7kEdkH2b0pCy5po0QtZSnix78bVTIMtqrQGyleZ9Z8gAkW8IGxkexyq9/IJEYRX9S2TMAHk9
 Py0PV4M2Ih3YUJA5AvX6RmE6EFFiphpATaPROqwCmDavsQ4rAC7mF+ObkZz6QoJfVAGYUmnC
 /kVGRtSCdEBRBOMJ22uuWgJ2TDmA2vVgiwdjXgtg57unGyfZMmdhZ3cpsLCQcYEltakbWZo5
 Bud0gXyZM6xtfI5Z2MYsrxeMbRRDZoSEcz9mSN50Aqbl3rKyLZwfbLWyExzKyxDyzEF15kPA
 cxI0Zt+3enxg36Aet/RijCts6PDi5eNQo7NckjLzdji1uNMiY2bMbSvEeJmGqbfFvPsgbM0Y
 E/C8G1bVFVgPl8HWqQKcf51cAD8PG/A7wLn4f1kZADXAnlVxUaEsJ1Ww1zw5eRSnUoR6XomO
 agbmTzVkGlxuB2vjwb2AoYBkG+0f4hYoxuVxXHxUL4AUJrGjj66ZJTpEHp/AKqMvK1WRLNcL
 HCmhxJ5O3DJ7QcyEymPZCJaNYZWbWwFl46AGtcYxrTT/t9/CtIlypnvcPhjq/8TrQpOS54mE
 u+8zt4/TMYoml8JglV9nJRbjuGNiVrq17HHPgcSLhS6f4B6v5b0VOac9nlHy1f58H3opINA9
 M8ikk/oA9ycG112XlHne54jhbpHv/pZfVdUOedDV9lTxzxk2w5BSQgU49URIhFyYXHoIU3Ly
 v962fj9QAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHIsWRmVeSWpSXmKPExsVy+t/xe7oRpTqxBl88LW6tO8dqsXHGelaL
 61+es1rMPwLk9j9+zWxx/vwGdouzTW/YLW41yFhsenyN1eJjzz1Wi8u75rBZzDi/j8li7ZG7
 7BZLr19ksrh4ytXiduMKNovWvUfYLQ6/aWe1+HdtI4uDsMeaeWsYPd7faGX32LSqk81j85J6
 j4Pv9jB59G1ZxejxeZNcAHuUnk1RfmlJqkJGfnGJrVK0oYWRnqGlhZ6RiaWeobF5rJWRqZK+
 nU1Kak5mWWqRvl2CXsbSox/YC46xV0zpnMzawLiNrYuRk0NCwERi4trpQDYXh5DAUkaJ7VfP
 MEEkxCQm7dvODmELS/y51gVV9IlR4u6uW0AJDg42AT2JHasKQWpEBFYwSkw+4Q1Swyzwmkni
 yNF3rCAJYYFgiY9LVrOA2CwCqhKzV3cwgfTyCthLPDoVCzFfXmL1hgPMIDYnUPjntAtgxwkJ
 2EksPvqTaQIj3wJGhlWMIqmlxbnpucVGesWJucWleel6yfm5mxiBcbPt2M8tOxi73gUfYhTg
 YFTi4XVI0Y4VYk0sK67MPcQowcGsJMJr+xUoxJuSWFmVWpQfX1Sak1p8iNEU6KaJzFKiyfnA
 mM4riTc0NTS3sDQ0NzY3NrNQEuftEDgYIySQnliSmp2aWpBaBNPHxMEp1cBYdazgaZbaLuVn
 r84EV3zrVbbWYuqs/JkXqzFr+YpzrqURfz4xzQqtWvDFkXfK489vg2LP3V1RFRXx76tSYOZJ
 7muXpq1X1vvlL2gW+ev4ZMXzh59X/Xe8lXxD69yM2ULxmge6bdkbFuhOXfut7/n7dv3716Ua
 VCdu4DZ0PrCNk2dH3/w17OellFiKMxINtZiLihMBzjyds7ECAAA=
X-CMS-MailID: 20190715124512eucas1p1bd847805f945ada00f2b7952592cc104
X-Msg-Generator: CA
X-RootMTR: 20190715124512eucas1p1bd847805f945ada00f2b7952592cc104
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190715124512eucas1p1bd847805f945ada00f2b7952592cc104
References: <20190715124417.4787-1-l.luba@partner.samsung.com>
 <CGME20190715124512eucas1p1bd847805f945ada00f2b7952592cc104@eucas1p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_054516_675867_2D276759 
X-CRM114-Status: GOOD (  11.94  )
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

The bus_disp1 OPP table has been aligned to the new parent rate. This patch
sets the proper frequencies before the devfreq governor starts working. It
sets 200MHz to bus ACLK_200_DISP1 which is controlled via CLK_DOUT_ACLK200
and 400MHz to ACLK400_DISP1 which is controlled via CLK_DOUT_ACLK400_DISP1.

Signed-off-by: Lukasz Luba <l.luba@partner.samsung.com>
---
 arch/arm/boot/dts/exynos5422-odroid-core.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
index 2cfe1effe290..fac5659516ad 100644
--- a/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
+++ b/arch/arm/boot/dts/exynos5422-odroid-core.dtsi
@@ -150,6 +150,9 @@
 
 &bus_disp1 {
 	devfreq = <&bus_wcore>;
+	assigned-clocks = <&clock CLK_DOUT_ACLK200>,
+			  <&clock CLK_DOUT_ACLK400_DISP1>;
+	assigned-clock-rates = <200000000>, <400000000>;
 	status = "okay";
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
