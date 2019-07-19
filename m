Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C79236E7C4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 17:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NKnXEBjvAFOMpMWOYmSqO7TUgy2PWdJY1xNjfEIz1k=; b=sjrbBSA8sSiYzf
	3g9zuSmKNm/Vrxj4K9rYtAgfHmipQ81MXAPvAA6DSgTs6ljUtBaKaQWxXejYzn3rNJgtT3lAQp7rr
	RJYL4ubD+MTzJpwL6lMaGY/RYUKAHWZ9newWPly8p/bKhB2ccdFKFG0VXhtTrZOMHNt4Q6d+jol+q
	rL+g0P521jva27B0+nN1NqXmmslC+CFrexFhAk1cnTF9lbOo0UyTgpRa+nflHbHfEqERtVlo+zMi4
	N1lAXZVXAAA/qvTuCpOV4qfJLs2dN5ikWbi6YLlm+ZP2VZzxZuDvrbUOGojqezeK7/dBCu4AGUvEV
	//KczkAzVZT+TX8WmyyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoUTL-0003JK-Jm; Fri, 19 Jul 2019 15:06:59 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoUSP-0002gw-LT
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 15:06:03 +0000
Received: from eucas1p1.samsung.com (unknown [182.198.249.206])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20190719150558euoutp016ebce7c9b3c5a61e10b50f02ce413a82~y10-LaNhZ1727717277euoutp01C
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 19 Jul 2019 15:05:58 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20190719150558euoutp016ebce7c9b3c5a61e10b50f02ce413a82~y10-LaNhZ1727717277euoutp01C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1563548758;
 bh=uK2H2CY5YVkbPXh3EKmhTQmAPpi5mTFt1H3u7NFbf9M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Dv4tnf/AnT0cnBAVTYhsnwdjULtrEcwhihAwb6cftM4K/SYNaSUOK9FRLT4cX3XNE
 SuOZHyUCI4RJdmQbZxnZy+yes3F3iV3EzNLnkGl1FnfRH+UA6KjEaSG5yXidmVtyI9
 buYpQC1MciosWsMQ5MVkumLT8zHK6/dg2CgHKZgo=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTP id
 20190719150557eucas1p2266c376b4f71c2df9f0d45e273004c64~y10_f-qVu2491724917eucas1p2I;
 Fri, 19 Jul 2019 15:05:57 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id A3.19.04377.55CD13D5; Fri, 19
 Jul 2019 16:05:57 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20190719150556eucas1p2bc6f133c48ec1be9b36119a414887969~y1092WE_s1668816688eucas1p2D;
 Fri, 19 Jul 2019 15:05:56 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20190719150556eusmtrp2e4660feafb9c13e5be61d014a8ff74d1~y109oQf353114831148eusmtrp2C;
 Fri, 19 Jul 2019 15:05:56 +0000 (GMT)
X-AuditID: cbfec7f4-113ff70000001119-7b-5d31dc553c0b
Received: from eusmtip1.samsung.com ( [203.254.199.221]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 74.9F.04146.45CD13D5; Fri, 19
 Jul 2019 16:05:56 +0100 (BST)
Received: from AMDC3218.DIGITAL.local (unknown [106.120.51.18]) by
 eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20190719150555eusmtip1ce8f0fdb626b0b71e4a3c68029e11ac2~y108yjwBz2871128711eusmtip10;
 Fri, 19 Jul 2019 15:05:55 +0000 (GMT)
From: k.konieczny@partner.samsung.com
To: k.konieczny@partner.samsung.com
Subject: [PATCH v3 5/5] dt-bindings: devfreq: exynos-bus: remove unused
 property
Date: Fri, 19 Jul 2019 17:05:35 +0200
Message-Id: <20190719150535.15501-6-k.konieczny@partner.samsung.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA01Se0hTYRz1u4/d62pynYYfKoaLpILyQcEXRlQYLQgqe0APyZUXlZzKbvNV
 kT00N2iZVtoKNdIU89HmMh8pvtp6+Egis3QiuShNLdtIjXK5Xa3+O7/zO+c7vwMfjYuHSG86
 Nv4Uq4iXxUkEQqLWONu99sBgcETQz4teSJdfTaK3tk8kKuzoJpGm2Q7Q1ZEvOOrpeUihrgvj
 FNKP9JHodcMdAbJe6QAov6cZQ5UdZgqVvO3F0MD5MgEan+nCUEZTB4Xm+nQEqhk2CraIpRUF
 FUCqL1cJpDXF56Stk08wqcZQDqSm/seY1Kr320MdFm6KYuNik1hF4OZIYUxV/a5EM51ys6mQ
 TAftlBq40pBZDzV53QI1ENJipgzAG9ctFD/YAFQNTBL8YAXQ1DBGLFpaB9UYvygFsKqij/hr
 sVt7cYdKwKyEhvxRZ4gnswLmDuXhDhHOzBLw4Wudc+HBhEOtxQgcmJg3vMmsdZpFTBj88evR
 woXLoaqu0RntymyHttavFK9xh89vWZw8Pq+5+Og2zusnKJj7zpPHYdCWVYjx2AOOmQwLb/pC
 e/0inww/3tU4S0PmEoDDl6cWeobCdlMvqQb0fMBqWN0QyNNb4efvc4SDhowb7J9w509wgzm1
 jo4OWgSzMsW8ei0ssHeSPPaBanvVApbCqQktyAb+2v/KaP8ro/2XWwTwcuDFKjl5NMuFxLPJ
 6ziZnFPGR687kSDXg/lf93LOZKsDDb+OtwGGBpKlom/vgyPEpCyJS5W3AUjjEk/RwGhghFgU
 JUtNYxUJxxTKOJZrAz40IfESnXYZPiJmomWn2JMsm8gqFrcY7eqdDiJXcTOV7O8XAeZlFuWZ
 a/5+yGSrMUeGgfqxtJYdatWd4o1n65ZseHrvS+Y5TO2mS6qbdTl09GzOtmfGEItQHbCv12d/
 0VB2askDfaPZPTzZ6LL3YP80JZ4yHP8Qm2caVmrcU0Jf7XaxGqdLN7QZwu936nxb5Bk9zGR/
 0PROVbiE4GJkwWtwBSf7A16+BApxAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrLIsWRmVeSWpSXmKPExsVy+t/xu7ohdwxjDZZ9VbbYOGM9q8X1L89Z
 LeYfOcdq0bfvP6NF/+PXzBbnz29gtzjb9IbdYtPja6wWl3fNYbP43HuE0WLG+X1MFmuP3GW3
 WHr9IpPF7cYVbBZvfpxlsmjde4Td4t+1jSwWmx8cY3MQ8lgzbw2jx6ZVnWwem5fUexx8t4fJ
 o2/LKkaP4ze2M3l83iQXwB6lZ1OUX1qSqpCRX1xiqxRtaGGkZ2hpoWdkYqlnaGwea2VkqqRv
 Z5OSmpNZllqkb5egl7Fup0/BXY6KaXvnszYwHmbvYuTkkBAwkTh4p4upi5GLQ0hgKaPEqr+r
 2CAS0hKNp1czQdjCEn+udbFBFH1ilLj5expYgk1AVWLLjJdgk0QElCUm35vODFLELNDJKrHi
 yRGwScICARL/L/5kBbFZgBqutm1jBrF5BVwkvv3ZCnWGvETnjt0sIDangKvEl4PvweJCQDU7
 Vs6DqheUODnzCVgNM1B989bZzBMYBWYhSc1CklrAyLSKUSS1tDg3PbfYUK84Mbe4NC9dLzk/
 dxMjMCq3Hfu5eQfjpY3BhxgFOBiVeHg/3DKMFWJNLCuuzD3EKMHBrCTCe/ulfqwQb0piZVVq
 UX58UWlOavEhRlOgJyYyS4km5wMTRl5JvKGpobmFpaG5sbmxmYWSOG+HwMEYIYH0xJLU7NTU
 gtQimD4mDk6pBkbbbu/i7r5Vzu7Ob8+U790f9rBE/s/ShhvV7sXu//fm9emkBG5hf31zasVf
 r0kOetdOOnHtuntpmpzI4ZRrpg/3rTjmX73yqsHe1WrP/L9dPXauWCA/v4Ypzfd1sxaLNuPM
 J27vI7ZJTvzTr23Cd+DY7LNFIXe/ZU79YR8prH6J23jNGe1XK6SUWIozEg21mIuKEwGyGisE
 4AIAAA==
X-CMS-MailID: 20190719150556eucas1p2bc6f133c48ec1be9b36119a414887969
X-Msg-Generator: CA
X-RootMTR: 20190719150556eucas1p2bc6f133c48ec1be9b36119a414887969
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20190719150556eucas1p2bc6f133c48ec1be9b36119a414887969
References: <20190719150535.15501-1-k.konieczny@partner.samsung.com>
 <CGME20190719150556eucas1p2bc6f133c48ec1be9b36119a414887969@eucas1p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_080601_835531_CE2E08DD 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.1 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 linux-samsung-soc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, devicetree@vger.kernel.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unused DT property "exynos,voltage-tolerance".

Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
---
 Documentation/devicetree/bindings/devfreq/exynos-bus.txt | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
index f8e946471a58..e71f752cc18f 100644
--- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
+++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
@@ -50,8 +50,6 @@ Required properties only for passive bus device:
 Optional properties only for parent bus device:
 - exynos,saturation-ratio: the percentage value which is used to calibrate
 			the performance count against total cycle count.
-- exynos,voltage-tolerance: the percentage value for bus voltage tolerance
-			which is used to calculate the max voltage.
 
 Detailed correlation between sub-blocks and power line according to Exynos SoC:
 - In case of Exynos3250, there are two power line as following:
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
